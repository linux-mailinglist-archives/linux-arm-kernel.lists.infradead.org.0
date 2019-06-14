Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC182461FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 17:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7kLSk3EKz+BKkx94tyHxHgodepOm0KqpEuRqgVZ+wBM=; b=paFOrDOlw5EIDNXInCNjBBf3P
	KWHxNUKFVKaXCLaZX/dnsHv+VnydPKfHIIN4WWdo6VCK7B1/7vS0onHh8uYxqp159vPTFFCkZF6wv
	6MucrDPF5baH1mWTtCqI643noT1oMVE3P0b9h2B6hIH8PrHCxeuU850gs9ANdD5bS1pD8UbyuCZAg
	qSE6tO5hYoAVAnJaCKqLFUzzuRmtAgtNCq+enpkq9GBuSHUX7wpUOV7mOwXfgHnUzxcj9XRVJIrRy
	C93zJdMH6U70pquvQlWUFUTYR+Y8UDd+SakAxRTAc4hDhzH/sBsFZHthrNI40zPgICLKQjfcnoDKn
	rUzRYvpgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnlD-0003Xd-Tw; Fri, 14 Jun 2019 15:04:59 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnl5-0003UW-Sh
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 15:04:53 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3ABFC8AF69B1F40DE6E4;
 Fri, 14 Jun 2019 23:04:45 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 14 Jun 2019 23:04:35 +0800
Subject: Re: [PATCH v2 1/5] perf pmu: Fix uncore PMU alias list for ARM64
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-2-git-send-email-john.garry@huawei.com>
 <20190614144656.GF1402@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <275d1699-23a3-f06b-3fad-750784318cc1@huawei.com>
Date: Fri, 14 Jun 2019 16:04:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190614144656.GF1402@kernel.org>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_080452_156183_CC11D6E1 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
 peterz@infradead.org, ben@decadent.org.uk, tmricht@linux.ibm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/06/2019 15:46, Arnaldo Carvalho de Melo wrote:
> Em Fri, Jun 14, 2019 at 10:07:59PM +0800, John Garry escreveu:
>> In commit 292c34c10249 ("perf pmu: Fix core PMU alias list for X86
>> platform"), we fixed the issue of CPU events being aliased to uncore
>> events.
>>
>> Fix this same issue for ARM64, since the said commit left the (broken)
>> behaviour untouched for ARM64.
>
> So I added:
>
> Cc: stable@vger.kernel.org
> Fixes: 292c34c10249 ("perf pmu: Fix core PMU alias list for X86 platform")
>
> So that the stable trees get this fix and add it to the versions where
> it should have been together with the x86 fix, ok?

Hi Arnaldo,

I have a slight hesitation about this qualifying for the stable.

It's fixing uncore pmu aliasing for arm64. But this series is also the 
first to introduce any actual arm64 uncore pmu aliases.

Thanks,
John

>
> - Arnaldo
>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>> ---
>>  tools/perf/util/pmu.c | 28 ++++++++++++----------------
>>  1 file changed, 12 insertions(+), 16 deletions(-)
>>
>> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
>> index f2eff272279b..7e7299fee550 100644
>> --- a/tools/perf/util/pmu.c
>> +++ b/tools/perf/util/pmu.c
>> @@ -709,9 +709,7 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
>>  {
>>  	int i;
>>  	struct pmu_events_map *map;
>> -	struct pmu_event *pe;
>>  	const char *name = pmu->name;
>> -	const char *pname;
>>
>>  	map = perf_pmu__find_map(pmu);
>>  	if (!map)
>> @@ -722,28 +720,26 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
>>  	 */
>>  	i = 0;
>>  	while (1) {
>> +		const char *cpu_name = is_arm_pmu_core(name) ? name : "cpu";
>> +		struct pmu_event *pe = &map->table[i++];
>> +		const char *pname = pe->pmu ? pe->pmu : cpu_name;
>>
>> -		pe = &map->table[i++];
>>  		if (!pe->name) {
>>  			if (pe->metric_group || pe->metric_name)
>>  				continue;
>>  			break;
>>  		}
>>
>> -		if (!is_arm_pmu_core(name)) {
>> -			pname = pe->pmu ? pe->pmu : "cpu";
>> -
>> -			/*
>> -			 * uncore alias may be from different PMU
>> -			 * with common prefix
>> -			 */
>> -			if (pmu_is_uncore(name) &&
>> -			    !strncmp(pname, name, strlen(pname)))
>> -				goto new_alias;
>> +		/*
>> +		 * uncore alias may be from different PMU
>> +		 * with common prefix
>> +		 */
>> +		if (pmu_is_uncore(name) &&
>> +		    !strncmp(pname, name, strlen(pname)))
>> +			goto new_alias;
>>
>> -			if (strcmp(pname, name))
>> -				continue;
>> -		}
>> +		if (strcmp(pname, name))
>> +			continue;
>>
>>  new_alias:
>>  		pr_err("%s new_alias name=%s pe->name=%s\n", __func__, name, pe->name);
>> --
>> 2.17.1
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
