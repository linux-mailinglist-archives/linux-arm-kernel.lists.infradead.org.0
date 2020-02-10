Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E96157F17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:45:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YmxDN+igCkN+IRpXFZ0KuIRoX2Hy+i2CbrX5QSyQ+hU=; b=rP7On0rw151pOj66j/U2ezNDF
	fmI0V6ogDRijaoX7/C9OjUY/zxAHCQBhDMqqbYEFfnMNMgEIsfENB9Yk+CALoqBJ9VMallMIj0rUt
	SfAj1BVJRf0wipkLaaZaUNhkrSgbRNYbBStzYqQReuAk7zr1zlB4cPAQZ4Eu3KMbTkybcBVypTgEC
	f3zii0v2r8s2v+UNNjsNRqu9S9Wksbkwg98XDLWd/tcI4T+mngivl/w/U/z/Q8UlVflYn7rSOrwSo
	sjEmvBKamdgNiLDFJp1BYgCziNcrVWitNdRYuBiCRQAjPWVcCeawkY7RjWoLfvm3Br6JeUfR55Lj4
	/WQYh0jXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1BFI-0005o9-Ge; Mon, 10 Feb 2020 15:45:12 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1BF4-0005iM-Nl
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:45:00 +0000
Received: from LHREML712-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 4D502DA62C9806B46650;
 Mon, 10 Feb 2020 15:44:50 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML712-CAH.china.huawei.com (10.201.108.35) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 10 Feb 2020 15:44:50 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 10 Feb
 2020 15:44:49 +0000
Subject: Re: [PATCH RFC 4/7] perf pmu: Rename uncore symbols to include system
 PMUs
To: Jiri Olsa <jolsa@redhat.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-5-git-send-email-john.garry@huawei.com>
 <20200210120715.GC1907700@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <fac99c40-dace-3e2e-c8f4-b2afed8b7c61@huawei.com>
Date: Mon, 10 Feb 2020 15:44:48 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200210120715.GC1907700@krava>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_074458_923407_C5CF586E 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/02/2020 12:07, Jiri Olsa wrote:
> On Fri, Jan 24, 2020 at 10:35:02PM +0800, John Garry wrote:
> 
> SNIP
> 
>>   		/* Only split the uncore group which members use alias */
>> -		if (!evsel->use_uncore_alias)
>> +		if (!evsel->use_uncore_or_system_alias)
>>   			goto out;
>>   
>>   		/* The events must be from the same uncore block */
>> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
>> index 8b99fd312aae..569aba4cec89 100644
>> --- a/tools/perf/util/pmu.c
>> +++ b/tools/perf/util/pmu.c
>> @@ -623,7 +623,7 @@ static struct perf_cpu_map *pmu_cpumask(const char *name)
>>   	return NULL;
>>   }
>>   
>> -static bool pmu_is_uncore(const char *name)
>> +static bool pmu_is_uncore_or_sys(const char *name)
> 

Hi jirka,

> so we detect uncore PMU by checking for cpumask file
> 

For PMUs which could be considered "system" PMUs, they also have a 
cpumask, like the PMU I use as motivation for this series:

root@(none)$ pwd
/sys/bus/event_source/devices/smmuv3_pmcg_100020
root@(none)$ ls -l
total 0
-r--r--r--    1 root     root          4096 Feb 10 14:50 cpumask
drwxr-xr-x    2 root     root             0 Feb 10 14:50 events
drwxr-xr-x    2 root     root             0 Feb 10 14:50 format
-rw-r--r--    1 root     root          4096 Feb 10 14:50 
perf_event_mux_interval_ms
drwxr-xr-x    2 root     root             0 Feb 10 14:50 power
lrwxrwxrwx    1 root     root             0 Feb 10 14:50 subsystem -> 
../../bus/event_source
-r--r--r--    1 root     root          4096 Feb 10 14:50 type
-rw-r--r--    1 root     root          4096 Feb 10 14:50 uevent


Other PMU drivers which I have checked in drivers/perf also have the same.

Indeed I see no way to differentiate whether a PMU is an uncore or 
system. So that is why I change the name to cover both. Maybe there is a 
better name than the verbose pmu_is_uncore_or_sys().

> I don't see the connection here with the sysid or '_sys' checking,
> that's just telling which ID to use when looking for an alias, no?

So the connection is that in perf_pmu__find_map(), for a given PMU, the 
matching is now extended from only core or uncore PMUs to also these 
system PMUs. And I use the sysid to find an aliasing table for any 
system PMUs present.

> shouldn't that be separated?

Yes, I now think that this would be a better option. So currently I am 
combining it and it causes a problem, like I have noted in patch #5:

struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
{
[SNIP]
	sysid = perf_pmu__getsysid();

   /*
   * Match sysid as first perference for uncore/sys PMUs.
   *
   * x86 uncore events match by cpuid, but we would not have 	map->socid
* set for that arch (so any matching here would fail for that).
*/
if (pmu && pmu_is_uncore_or_sys(pmu->name) &&
    !is_arm_pmu_core(pmu->name) && sysid) {


Thanks,
John


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
