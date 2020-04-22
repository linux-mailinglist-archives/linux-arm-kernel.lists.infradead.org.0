Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D34D1B43D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wcd/wxIhiv0rdVgZzvXJ3rfHyL3WhL+jO9pw+W9F67A=; b=nhUdtJlp0udercMBtNmgqhIlD
	fn5EqP7xc8pFKQWLXxyuH95bbhRpY49E1lQnVbydbyl3AWkc5qcp8AM1DclFdjykRg5lFlhk74DMb
	TLvl9SB0hTnky2H8es7lswxL0vkyrDl29LqVtcBATfhTIksAjLCQSrT0uU/vHzfk8wY+u25VNroRJ
	0zlOtEPl/Jpa/o04VDGGVVayDWDwRcCeWdfC5aY5+E+cu8v/WJ8t5eB7IBV8DkvQnTz8GLM7QnkZt
	MV8q44b/uZc8/B0ymuk/840R+Lw1XY8GY/MaLnPIxcNQiubOr4HgOG0jltEWj2TxXNX/+V0cLmBub
	BIAZjDAwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRE4z-0004WX-VR; Wed, 22 Apr 2020 12:02:13 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRE3n-0003cy-JU
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:01:01 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 64EC8B75D221856C0CEB;
 Wed, 22 Apr 2020 13:00:58 +0100 (IST)
Received: from [127.0.0.1] (10.47.10.232) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Wed, 22 Apr
 2020 13:00:56 +0100
Subject: Re: [RFC PATCH v2 10/13] perf metricgroup: Split up
 metricgroup__add_metric()
To: Jiri Olsa <jolsa@redhat.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-11-git-send-email-john.garry@huawei.com>
 <20200422114432.GH962614@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <b793b75e-0c55-a986-0a5e-a7aac269cae5@huawei.com>
Date: Wed, 22 Apr 2020 13:00:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200422114432.GH962614@krava>
Content-Language: en-US
X-Originating-IP: [10.47.10.232]
X-ClientProxiedBy: lhreml709-chm.china.huawei.com (10.201.108.58) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_050059_785845_8C65D5B7 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, irogers@google.com, ak@linux.intel.com,
 qiangqing.zhang@nxp.com, peterz@infradead.org, robin.murphy@arm.com,
 linuxarm@huawei.com, acme@kernel.org, linux-kernel@vger.kernel.org,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/04/2020 12:44, Jiri Olsa wrote:
>>   static int metricgroup__add_metric(const char *metric, struct strbuf *events,
>>   				   struct list_head *group_list)
>>   {
>> @@ -502,37 +542,12 @@ static int metricgroup__add_metric(const char *metric, struct strbuf *events,
>>   			break;
>>   		if (!pe->metric_expr)
>>   			continue;
>> -		if (match_metric(pe->metric_group, metric) ||
>> -		    match_metric(pe->metric_name, metric)) {
>> -			const char **ids;
>> -			int idnum;
>> -			struct egroup *eg;
>> -
>> -			pr_debug("metric expr %s for %s\n", pe->metric_expr, pe->metric_name);
>>   
>> -			if (expr__find_other(pe->metric_expr,
>> -					     NULL, &ids, &idnum) < 0)
>> -				continue;
>> -			if (events->len > 0)
>> -				strbuf_addf(events, ",");
>> -
>> -			if (metricgroup__has_constraint(pe))
>> -				metricgroup__add_metric_non_group(events, ids, idnum);
>> -			else
>> -				metricgroup__add_metric_weak_group(events, ids, idnum);
>> -
>> -			eg = malloc(sizeof(struct egroup));
>> -			if (!eg) {
>> -				ret = -ENOMEM;
>> -				break;
>> -			}
>> -			eg->ids = ids;
>> -			eg->idnum = idnum;
>> -			eg->metric_name = pe->metric_name;
>> -			eg->metric_expr = pe->metric_expr;
>> -			eg->metric_unit = pe->unit;
>> -			list_add_tail(&eg->nd, group_list);
>> -			ret = 0;
> also this place got changed just recently a lot,
> so you might want to rebase to the Arnaldo's latest perf/core

Hi jirka,

Yeah, I saw that. I can check.

TBH, apart from that, I would be welcome to opinion on this latter patch 
of the series, concerned with metrics. I just split (butcher) the 
function and call common parts from 2x places now. Maybe there's a more 
fluid way to do this.

Cheers,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
