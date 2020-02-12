Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F58E15AC56
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 16:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CgQb6qXZmbI5AnITE0+AVOsptncLKeJvF+LPh5rBJgw=; b=iTkPEgoiDn1R++0CI99iozRVG
	Zp3uH/p1Z/NRV/XGePtUNamigIgfz3NRdBO1D8+GTXKaKrrMic+N4TcxvZ4f5nt+UcpNT73JQwI2l
	zjI9AVbrXIwCu+/kbCkxamY75zjFlsmqcewQWb0kSTxjq33/hBM4LcePry85mBVgDnB9vfXAkJJ+u
	3RMqNW1rNvPa+njPgRQqdKM3VmO/nHgt3+cmpXre7r9K64lM/2drS5s8f52EkeKc+Mb1pLPdLTTcU
	BpviVYTAV4yjtnz49oyswJBNiZ+xjJcL3soiLMRAhstDrlz8wUYirqSfhglG88D/+fagPfe2SQRnp
	jLosaqwQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uGX-0000JV-8s; Wed, 12 Feb 2020 15:49:29 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uGP-0000I5-7Q
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 15:49:23 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 57CD0E97AC3E97CA8733;
 Wed, 12 Feb 2020 15:49:02 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML710-CAH.china.huawei.com (10.201.108.33) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 12 Feb 2020 15:49:01 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 12 Feb
 2020 15:49:01 +0000
Subject: Re: [PATCH] perf tools: Add arm64 version of get_cpuid()
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <1576245255-210926-1-git-send-email-john.garry@huawei.com>
 <1005f572-e32a-a90e-1572-c85a2f202fdf@huawei.com>
 <20200212134024.GC22501@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <ae11aac0-0edf-633c-cafd-6db39faef6b1@huawei.com>
Date: Wed, 12 Feb 2020 15:49:01 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200212134024.GC22501@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_074921_416346_D3FAE257 
X-CRM114-Status: GOOD (  18.53  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, will@kernel.org,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/02/2020 13:40, Arnaldo Carvalho de Melo wrote:
> Em Tue, Jan 07, 2020 at 09:13:43AM +0000, John Garry escreveu:
>> On 13/12/2019 13:54, John Garry wrote:
>>
>> Hi Arnaldo,
>>
>> Do we need some reviews on this? Or was it missed/still catching up?
> 
> Got lost in the holidays, devconf.cz, vacations, sorry, picking it up
> now, together with a Tested-by by Shaokun Zhang, some issues with the
> formatting of the patch:
> 
> - Avoid starting lines with '#' as those will vanish when I use 'git am'

ah, so this must be why people use, for example, '/include "..."' in 
commit logs

> 
> - Separate the commit log message from the diff using a '---' at the
>    begining of the line, otherwise 'git am' fails

apologizes, I must have cut that by mistake

> 
> I fixed those up now, will test with my build containers, thanks.
> 

Thanks

> - Arnaldo
>   
>> Cheers,
>> John
>>
>>> Add an arm64 version of get_cpuid(), which is used for various annotation
>>> and headers - for example, I now get the CPUID in "perf report --header",
>>> as shown in this snippet:
>>>
>>> # hostname : ubuntu
>>> # os release : 5.5.0-rc1-dirty
>>> # perf version : 5.5.rc1.gbf8a13dc9851
>>> # arch : aarch64
>>> # nrcpus online : 96
>>> # nrcpus avail : 96
>>> # cpuid : 0x00000000480fd010
>>>
>>> Since much of the code to read the MIDR is already in get_cpuid_str(),
>>> factor out this code.
>>>
>>> Signed-off-by: John Garry <john.garry@huawei.com>
>>>
>>> diff --git a/tools/perf/arch/arm64/util/header.c b/tools/perf/arch/arm64/util/header.c
>>> index a32e4b72a98f..d730666ab95d 100644
>>> --- a/tools/perf/arch/arm64/util/header.c
>>> +++ b/tools/perf/arch/arm64/util/header.c
>>> @@ -1,8 +1,10 @@
>>>    #include <stdio.h>
>>>    #include <stdlib.h>
>>>    #include <perf/cpumap.h>
>>> +#include <util/cpumap.h>
>>>    #include <internal/cpumap.h>
>>>    #include <api/fs/fs.h>
>>> +#include <errno.h>
>>>    #include "debug.h"
>>>    #include "header.h"
>>> @@ -12,26 +14,21 @@
>>>    #define MIDR_VARIANT_SHIFT      20
>>>    #define MIDR_VARIANT_MASK       (0xf << MIDR_VARIANT_SHIFT)
>>> -char *get_cpuid_str(struct perf_pmu *pmu)
>>> +static int _get_cpuid(char *buf, size_t sz, struct perf_cpu_map *cpus)
>>>    {
>>> -	char *buf = NULL;
>>> -	char path[PATH_MAX];
>>>    	const char *sysfs = sysfs__mountpoint();
>>> -	int cpu;
>>>    	u64 midr = 0;
>>> -	struct perf_cpu_map *cpus;
>>> -	FILE *file;
>>> +	int cpu;
>>> -	if (!sysfs || !pmu || !pmu->cpus)
>>> -		return NULL;
>>> +	if (!sysfs || sz < MIDR_SIZE)
>>> +		return EINVAL;
>>> -	buf = malloc(MIDR_SIZE);
>>> -	if (!buf)
>>> -		return NULL;
>>> +	cpus = perf_cpu_map__get(cpus);
>>> -	/* read midr from list of cpus mapped to this pmu */
>>> -	cpus = perf_cpu_map__get(pmu->cpus);
>>>    	for (cpu = 0; cpu < perf_cpu_map__nr(cpus); cpu++) {
>>> +		char path[PATH_MAX];
>>> +		FILE *file;
>>> +
>>>    		scnprintf(path, PATH_MAX, "%s/devices/system/cpu/cpu%d"MIDR,
>>>    				sysfs, cpus->map[cpu]);
>>> @@ -57,12 +54,48 @@ char *get_cpuid_str(struct perf_pmu *pmu)
>>>    		break;
>>>    	}
>>> -	if (!midr) {
>>> +	perf_cpu_map__put(cpus);
>>> +
>>> +	if (!midr)
>>> +		return EINVAL;
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +int get_cpuid(char *buf, size_t sz)
>>> +{
>>> +	struct perf_cpu_map *cpus = perf_cpu_map__new(NULL);
>>> +	int ret;
>>> +
>>> +	if (!cpus)
>>> +		return EINVAL;
>>> +
>>> +	ret = _get_cpuid(buf, sz, cpus);
>>> +
>>> +	perf_cpu_map__put(cpus);
>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +char *get_cpuid_str(struct perf_pmu *pmu)
>>> +{
>>> +	char *buf = NULL;
>>> +	int res;
>>> +
>>> +	if (!pmu || !pmu->cpus)
>>> +		return NULL;
>>> +
>>> +	buf = malloc(MIDR_SIZE);
>>> +	if (!buf)
>>> +		return NULL;
>>> +
>>> +	/* read midr from list of cpus mapped to this pmu */
>>> +	res = _get_cpuid(buf, MIDR_SIZE, pmu->cpus);
>>> +	if (res) {
>>>    		pr_err("failed to get cpuid string for PMU %s\n", pmu->name);
>>>    		free(buf);
>>>    		buf = NULL;
>>>    	}
>>> -	perf_cpu_map__put(cpus);
>>>    	return buf;
>>>    }
>>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
