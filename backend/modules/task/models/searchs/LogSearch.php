<?php

namespace task\models\searchs;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use task\models\Log;

/**
 * Menu represents the model behind the search form about [[\rbac\models\Menu]].
 * 
 * @author Misbahul D Munir <misbahuldmunir@gmail.com>
 * @since 1.0
 */
class LogSearch extends Log
{

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['req_id', 'appname', 'job_key'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Searching menu
     * @param  array $params
     * @return \yii\data\ActiveDataProvider
     */
    public function search($params)
    {
        $query = Log::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'req_id' => $this->req_id,
            'appname' => $this->appname,
            'job_key' => $this->job_key,
        ]);

        return $dataProvider;
    }
}
