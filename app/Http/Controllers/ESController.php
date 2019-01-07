<?php
    
namespace App\Http\Controllers;

use ElasticSearch;

class ESController extends Controller
{


	public function index() {
	    extract(\ElasticSearch::setSearchParams(request()));

	    $clicks = [];
	    $total = 0;

	    if ($hits = \ElasticSearch::search($query, $options, $date_range)) {
	        $clicks = $hits['hits']['hits'];
	        $total = $hits['hits']['total'];
	    }
	}


}