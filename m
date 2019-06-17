Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C50C147DE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w4p00nDIy0kaSCYaaDN8jiKjO0xF17GWFVFaNbRIxds=; b=EzguguXdkxm1wgfRPtobBwrja
	g9j4961BylGNdpQrkO831ddfcoOe/YI3OvyVvfrXOK+kDorgX8/keO46wblmopFUkrE3qZVmJofFI
	KPLprQJP/BWQuyXubpHqsAldtJ6lUAerR6CSjxO9jqySyE79mjUXbbOhX9+jRGOrSrtK1fFoq0ALO
	rpRhkhcsF/D+HTicRbR+sTshf68CGeAOEnuxeAHKVa7vaj7L16qW0J8HTWOp399LZww9LLoO/7Ot4
	0KX7ksoD12VSdLzPAQlU/pqeXq8uKa/q7yYWCYPGBzwiwczXagT79BhEM46A0fRgGD7q7Ikyzizqv
	9VCylYyrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnbG-00038t-Qq; Mon, 17 Jun 2019 09:06:51 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnb3-00037X-7i
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:06:38 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id AC84D6217BBE20132385;
 Mon, 17 Jun 2019 17:06:28 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 17 Jun 2019 17:06:16 +0800
Subject: Re: [PATCH v2 2/5] perf pmu: Support more complex PMU event aliasing
To: Jiri Olsa <jolsa@redhat.com>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-3-git-send-email-john.garry@huawei.com>
 <20190616095844.GC2500@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <a27e65b4-b487-9206-6dd0-6f9dcec0f1f5@huawei.com>
Date: Mon, 17 Jun 2019 10:06:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190616095844.GC2500@krava>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_020637_517399_216349B5 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, mathieu.poirier@linaro.org,
 peterz@infradead.org, tmricht@linux.ibm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, linuxarm@huawei.com,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, ben@decadent.org.uk,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/06/2019 10:58, Jiri Olsa wrote:
> On Fri, Jun 14, 2019 at 10:08:00PM +0800, John Garry wrote:
>> The jevent "Unit" field is used for uncore PMU alias definition.
>>
>> The form uncore_pmu_example_X is supported, where "X" is a wildcard,
>> to support multiple instances of the same PMU in a system.
>>
>> Unfortunately this format not suitable for all uncore PMUs; take the Hisi
>> DDRC uncore PMU for example, where the name is in the form
>> hisi_scclX_ddrcY.
>>
>> For the current jevent parsing, we would be required to hardcode an uncore
>> alias translation for each possible value of X. This is not scalable.
>>
>> Instead, add support for "Unit" field in the form "hisi_sccl,ddrc", where
>> we can match by hisi_scclX and ddrcY. Tokens in Unit field are
>> delimited by ','.
>>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>> ---
>>  tools/perf/util/pmu.c | 39 ++++++++++++++++++++++++++++++++++-----
>>  1 file changed, 34 insertions(+), 5 deletions(-)
>>
>> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
>> index 7e7299fee550..bc71c60589b5 100644
>> --- a/tools/perf/util/pmu.c
>> +++ b/tools/perf/util/pmu.c
>> @@ -700,6 +700,39 @@ struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
>>  	return map;
>>  }
>>
>> +static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
>> +{
>> +	char *tmp, *tok, *str;
>> +	bool res;
>> +
>> +	str = strdup(pmu_name);
>> +	if (!str)
>> +		return false;
>> +
>> +	/*
>> +	 * uncore alias may be from different PMU with common
>> +	 * prefix or matching tokens.
>> +	 */
>> +	tok = strtok_r(str, ",", &tmp);
>> +	if (strncmp(pmu_name, tok, strlen(tok))) {
>

Hi Jirka,

> if tok is NULL in here we crash
>

As I see, tok could not be NULL. If str contains no delimiters, then we 
just return same as str in tok.

Can you see tok being NULL?

>> +		res = false;
>> +		goto out;
>> +	}
>> +
>> +	for (; tok; name += strlen(tok), tok = strtok_r(NULL, ",", &tmp)) {
>
> why is name shifted in here?

I want to ensure that we match the tokens in order and also guard 
against possible repeated token matches in 'name'.

Thanks,
John

>
> jirka
>
>> +		name = strstr(name, tok);
>> +		if (!name) {
>> +			res = false;
>> +			goto out;
>> +		}
>> +	}
>> +
>> +	res = true;
>> +out:
>> +	free(str);
>> +	return res;
>> +}
>> +
>>  /*
>>   * From the pmu_events_map, find the table of PMU events that corresponds
>>   * to the current running CPU. Then, add all PMU events from that table
>> @@ -730,12 +763,8 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
>>  			break;
>>  		}
>>
>> -		/*
>> -		 * uncore alias may be from different PMU
>> -		 * with common prefix
>> -		 */
>>  		if (pmu_is_uncore(name) &&
>> -		    !strncmp(pname, name, strlen(pname)))
>> +		    pmu_uncore_alias_match(pname, name))
>>  			goto new_alias;
>>
>>  		if (strcmp(pname, name))
>> --
>> 2.17.1
>>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
