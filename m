Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912D41CD837
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fY9VN8us4WPWkgXsx32bFx590vetwP9Kxmtwyuhf608=; b=NHS2Zdn02Y0NvKK2U+5VSHq1G
	sFc1Ri/Uhk9gQQx7Rvt37le/cKt/TtEO3pXbZFseuKb6giSmlD6tqyqdTYnovgo9C18RsWfweaKvk
	V2+YaSetvYTRa3NogOXJLPoKeayydK9088JLTt0bYfv5qt5jFS0U2Sc9d5ax0KmPxjXarARJbPKJf
	sEiA4/EkpXV7zn8xiJomw8NEuyh4VpbjXIH61WElBnu5RcZVX2NERO0rgAEXBAhg1hlK5qtNrj/lw
	fmh+i2hiRTuKmNeWtfkxic3OroVyLCrixYy7RtFLzGsiIHmbXGQlagiNASzgUdlCQG+YlR/xgSxA4
	TM7BC1D+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6ak-0007ge-DY; Mon, 11 May 2020 11:27:26 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Zi-0006qN-AV
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:26:33 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 3774A85C518BDB71CCA5;
 Mon, 11 May 2020 12:26:15 +0100 (IST)
Received: from [127.0.0.1] (10.47.0.142) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 11 May
 2020 12:26:13 +0100
Subject: Re: [PATCH RFC v3 09/12] perf metricgroup: Split up
 metricgroup__add_metric()
To: Jiri Olsa <jolsa@redhat.com>, <qiangqing.zhang@nxp.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-10-git-send-email-john.garry@huawei.com>
 <20200511110118.GA2986380@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <eeb29c90-52fc-fd17-6ad0-745372a1a15d@huawei.com>
Date: Mon, 11 May 2020 12:25:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200511110118.GA2986380@krava>
Content-Language: en-US
X-Originating-IP: [10.47.0.142]
X-ClientProxiedBy: lhreml705-chm.china.huawei.com (10.201.108.54) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042622_531584_715F1296 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/05/2020 12:01, Jiri Olsa wrote:
> On Thu, May 07, 2020 at 07:57:48PM +0800, John Garry wrote:
>> To aid supporting system event metric groups, break up the function
>> metricgroup__add_metric() into a part which iterates metrics and a part
>> which actually "adds" the metric.
>>
>> No functional change intended.
> 
> this no longer applied on Arnaldo's perf/core,


Hi jirka,

> it's very busy part now :-\

Right.

So I could rebase and resend, but I rather avoid that if possible since 
the metric code is so busy.

The point is that I would like to see progress on the kernel part first 
(to expose per-PMU sysfs identifier file). Once we agreement there, then 
I can promote this series to non-RFC and ensure I'm based on acme tip.

Hi Joakim, can you progress 
https://lore.kernel.org/linux-arm-kernel/20200226073433.5834-1-qiangqing.zhang@nxp.com/ 
to non-RFC now?

Thanks,
John


> 
> jirka
> 
>>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>> ---
>>   tools/perf/util/metricgroup.c | 75 ++++++++++++++++++++++++++-----------------
>>   1 file changed, 45 insertions(+), 30 deletions(-)
>>
>> diff --git a/tools/perf/util/metricgroup.c b/tools/perf/util/metricgroup.c
>> index 926449a7cdbf..d1033756a1bc 100644
>> --- a/tools/perf/util/metricgroup.c
>> +++ b/tools/perf/util/metricgroup.c
>> @@ -231,6 +231,12 @@ static bool match_metric(const char *n, const char *list)
>>   	return false;
>>   }
>>   
>> +static bool match_pe_metric(struct pmu_event *pe, const char *metric)
>> +{
>> +	return match_metric(pe->metric_group, metric) ||
>> +	       match_metric(pe->metric_name, metric);
>> +}
>> +
>>   struct mep {
>>   	struct rb_node nd;
>>   	const char *name;
>> @@ -485,6 +491,40 @@ static bool metricgroup__has_constraint(struct pmu_event *pe)
>>   	return false;
>>   }
>>   
>> +static int metricgroup__add_metric_pmu_event(struct pmu_event *pe,
>> +					     struct strbuf *events,
>> +					     struct list_head *group_list)
>> +{
>> +	const char **ids;
>> +	int idnum;
>> +	struct egroup *eg;
>> +
>> +	pr_debug("metric expr %s for %s\n", pe->metric_expr, pe->metric_name);
>> +
>> +	if (expr__find_other(pe->metric_expr, NULL, &ids, &idnum) < 0)
>> +		return 0;
>> +
>> +	if (events->len > 0)
>> +		strbuf_addf(events, ",");
>> +
>> +	if (metricgroup__has_constraint(pe))
>> +		metricgroup__add_metric_non_group(events, ids, idnum);
>> +	else
>> +		metricgroup__add_metric_weak_group(events, ids, idnum);
>> +
>> +	eg = malloc(sizeof(*eg));
>> +	if (!eg)
>> +		return -ENOMEM;
>> +	eg->ids = ids;
>> +	eg->idnum = idnum;
>> +	eg->metric_name = pe->metric_name;
>> +	eg->metric_expr = pe->metric_expr;
>> +	eg->metric_unit = pe->unit;
>> +	list_add_tail(&eg->nd, group_list);
>> +
>> +	return 0;
>> +}
>> +
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
>> +		if (match_pe_metric(pe, metric)) {
>> +			ret = metricgroup__add_metric_pmu_event(pe, events,
>> +								group_list);
>> +			if (ret)
>> +				return ret;
>>   		}
>>   	}
>>   	return ret;
>> -- 
>> 2.16.4
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
