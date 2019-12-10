Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBA1118E34
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:53:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dZBnmee+UC0xT517FydNUvPTrH1NCqi+gUJZU3BEuzE=; b=t6hTYLfAih/yZZnb/+tgK1xgr
	RX29j5PRYWMuVzJ5hwELj6RsMZDds3AOfIYWqQ6bp59XPdC+FfBgAD1KNx5x+vHQckuzyv9d4WrbS
	A7NatzgYn0Tv0aMobCuWIVpPC4ULm19X6DSguZrnCrj3JxtVwmYFz0Gh0XEPfIJFTwBJFe5hg36mu
	j9XQk9Jd369VlTKdObIGeLDaUOa2XohoJDb0LSKQyjwWAqBf9WfmYGeF/jZQ0mLvcfJLX+BCUDv8L
	HfHrUSXHiha1kjPo6OGnxqlz01T4RqkrOArN0lyCzLdXULemYHssFqixrsOqmEMq0JhTH7oKh1fpJ
	frTetJ/8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieikz-00015z-QK; Tue, 10 Dec 2019 16:53:05 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieikr-00015I-Kh
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 16:52:59 +0000
Received: from lhreml701-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 7DC06A37E7AD78E2535D;
 Tue, 10 Dec 2019 16:52:54 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml701-cah.china.huawei.com (10.201.108.42) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 10 Dec 2019 16:52:53 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 10 Dec
 2019 16:52:53 +0000
Subject: Re: perf top for arm64?
To: Jiri Olsa <jolsa@redhat.com>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
Date: Tue, 10 Dec 2019 16:52:52 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191210163655.GG14123@krava>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml728-chm.china.huawei.com (10.201.108.79) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_085257_824946_55D78B8C 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, peterz@infradead.org, Linuxarm <linuxarm@huawei.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 16:36, Jiri Olsa wrote:
> On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
>> Hi all,
>>
>> I find to my surprise that "perf top" does not work for arm64:
>>
>> root@ubuntu:/home/john/linux# tools/perf/perf top
>> Couldn't read the cpuid for this machine: No such file or directory
> 

Hi Jirka,

> there was recent change that check on cpuid and quits:
>    608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine
> 

ok, this is new code. I obviously didn't check the git history...

But, apart from this, there are many other places where get_cpuid() is 
called. I wonder what else we're missing out on, and whether we should 
still add it.

Thanks,
John

> Arnaldo,
> maybe this should be just a warning/info, because it seems to be related
> to annotations only..?
> 
> get_cpuid is defined only for s390/x86/powerpc, so I guess it won't work
> on the rest as well
> 
> jirka
> 
>>
>> That's v5.5-rc1 release.
>>
>> It seems that we are just missing an arm64 version of get_cpuid() - with the
>> patch below, I now get as hoped:
>>
>>     PerfTop:   32857 irqs/sec  kernel:85.0%  exact:  0.0% lost: 0/0 drop: 0/0
>> [4000Hz cycles],  (all, 64 CPUs)
>> -------------------------------------------------------------------------------
>>
>>       8.99%  [kernel]          [k] arm_smmu_cmdq_issue_cmdlist
>>       5.80%  [kernel]          [k] __softirqentry_text_start
>>       4.49%  [kernel]          [k] _raw_spin_unlock_irqrestore
>>       3.48%  [kernel]          [k] el0_svc_common.constprop.2
>>       3.37%  [kernel]          [k] _raw_write_lock_irqsave
>>       3.28%  [kernel]          [k] __local_bh_enable_ip
>>       3.05%  [kernel]          [k] __blk_complete_request
>>       2.07%  [kernel]          [k] queued_spin_lock_slowpath
>>       1.93%  [vdso]            [.] 0x0000000000000484
>>
>>
>> Was this just missed? Or is there a good reason to omit?
>>
>> Thanks,
>> John
>>
>> --->8---
>>
>> Subject: [PATCH] perf: Add perf top support for arm64
>>
>> Copied from get_cpuid_str() essentially...
>>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>>
>> diff --git a/tools/perf/arch/arm64/util/header.c
>> b/tools/perf/arch/arm64/util/header.c
>> index a32e4b72a98f..ecd1f86e29cc 100644
>> --- a/tools/perf/arch/arm64/util/header.c
>> +++ b/tools/perf/arch/arm64/util/header.c
>> @@ -1,10 +1,12 @@
>>   #include <stdio.h>
>>   #include <stdlib.h>
>>   #include <perf/cpumap.h>
>> +#include <util/cpumap.h>
>>   #include <internal/cpumap.h>
>>   #include <api/fs/fs.h>
>>   #include "debug.h"
>>   #include "header.h"
>> +#include <errno.h>
>>
>>   #define MIDR "/regs/identification/midr_el1"
>>   #define MIDR_SIZE 19
>> @@ -12,6 +14,59 @@
>>   #define MIDR_VARIANT_SHIFT      20
>>   #define MIDR_VARIANT_MASK       (0xf << MIDR_VARIANT_SHIFT)
>>
>> +int
>> +get_cpuid(char *buffer, size_t sz)
>> +{
>> +	char *buf = NULL;
>> +	char path[PATH_MAX];
>> +	const char *sysfs = sysfs__mountpoint();
>> +	int cpu;
>> +	u64 midr = 0;
>> +	FILE *file;
>> +
>> +	if (!sysfs)
>> +		return EINVAL;
>> +
>> +	buf = malloc(MIDR_SIZE);
>> +	if (!buf)
>> +		return EINVAL;
>> +
>> +	/* read midr from list of cpus mapped to this pmu */
>> +	for (cpu = 0; cpu < cpu__max_present_cpu(); cpu++) {
>> +		scnprintf(path, sz, "%s/devices/system/cpu/cpu%d"MIDR,
>> +				sysfs, cpu);
>> +
>> +		file = fopen(path, "r");
>> +		if (!file) {
>> +			pr_debug("fopen failed for file %s\n", path);
>> +			continue;
>> +		}
>> +
>> +		if (!fgets(buf, MIDR_SIZE, file)) {
>> +			fclose(file);
>> +			continue;
>> +		}
>> +		fclose(file);
>> +
>> +		/* Ignore/clear Variant[23:20] and
>> +		 * Revision[3:0] of MIDR
>> +		 */
>> +		midr = strtoul(buf, NULL, 16);
>> +		midr &= (~(MIDR_VARIANT_MASK | MIDR_REVISION_MASK));
>> +		scnprintf(buffer, MIDR_SIZE, "0x%016lx", midr);
>> +		/* got midr break loop */
>> +		break;
>> +	}
>> +
>> +	if (!midr) {
>> +		pr_err("failed to get cpuid string\n");
>> +		free(buf);
>> +		return EINVAL;
>> +	}
>> +	return 0;
>> +}
>> +
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
