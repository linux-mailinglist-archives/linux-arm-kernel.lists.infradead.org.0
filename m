Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948AB15A4D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cITan6CIUFTXc+g6aWsSK04GLsstwseedW/e9IhrjQ=; b=jplue4PDYhtVFZ
	6Z4N+5dv+gYRkUqu4c3Zft5UNKOvY3SHN2o8+moL1hIp4u9YISnZCQnCDlimOoGcdhlIHiR9ZnmW8
	tTvRhyJiCn8ggmB4hPgpSGxPYj87Y+MpLbPfiUDN1+eo+ArfMC36nzyXqGDcPxFN3OC1c7znWqnYj
	/7TMY+M0aQm00QsZjsiP6hmsb5HkQuQ25PR6ROFwOG8QLisc4ku8AsVORQosoXhvlIy/GzCxjsI4X
	8r96Seq6hwCmeEtL4Y4gG8h6+TOAfzrXVndN5OXFYi7PIYPfstQ5BJSzaqtyX7qRhs3RpGLqWInGO
	cZdFe5Nt8ihjXIwGGUmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1oMh-0003L4-Dc; Wed, 12 Feb 2020 09:31:27 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1oMY-0003HV-1y
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 09:31:19 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7BA28551258B46250CA0;
 Wed, 12 Feb 2020 17:31:07 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Wed, 12 Feb 2020
 17:30:56 +0800
Subject: Re: [PATCH] perf tools: Add arm64 version of get_cpuid()
To: John Garry <john.garry@huawei.com>, <peterz@infradead.org>,
 <mingo@redhat.com>, <acme@kernel.org>, <mark.rutland@arm.com>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>
References: <1576245255-210926-1-git-send-email-john.garry@huawei.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <4ccf4455-b33d-441b-50ed-28211dd87c7c@hisilicon.com>
Date: Wed, 12 Feb 2020 17:30:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <1576245255-210926-1-git-send-email-john.garry@huawei.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_013118_271637_2D45A737 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxarm@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

I tested this patch on my new ARM64 Kunpeng 920 server.
[root@node1 zsk]# ./perf --version
perf version 5.6.rc1.g2cdb955b7252

Both perf list and perf stat can work.

Tested-by: Shaokun Zhang <zhangshaokun@hisilicon.com>

Thanks,
Shaokun

On 2019/12/13 21:54, John Garry wrote:
> Add an arm64 version of get_cpuid(), which is used for various annotation
> and headers - for example, I now get the CPUID in "perf report --header",
> as shown in this snippet:
> 
> # hostname : ubuntu
> # os release : 5.5.0-rc1-dirty
> # perf version : 5.5.rc1.gbf8a13dc9851
> # arch : aarch64
> # nrcpus online : 96
> # nrcpus avail : 96
> # cpuid : 0x00000000480fd010
> 
> Since much of the code to read the MIDR is already in get_cpuid_str(),
> factor out this code.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> 
> diff --git a/tools/perf/arch/arm64/util/header.c b/tools/perf/arch/arm64/util/header.c
> index a32e4b72a98f..d730666ab95d 100644
> --- a/tools/perf/arch/arm64/util/header.c
> +++ b/tools/perf/arch/arm64/util/header.c
> @@ -1,8 +1,10 @@
>  #include <stdio.h>
>  #include <stdlib.h>
>  #include <perf/cpumap.h>
> +#include <util/cpumap.h>
>  #include <internal/cpumap.h>
>  #include <api/fs/fs.h>
> +#include <errno.h>
>  #include "debug.h"
>  #include "header.h"
>  
> @@ -12,26 +14,21 @@
>  #define MIDR_VARIANT_SHIFT      20
>  #define MIDR_VARIANT_MASK       (0xf << MIDR_VARIANT_SHIFT)
>  
> -char *get_cpuid_str(struct perf_pmu *pmu)
> +static int _get_cpuid(char *buf, size_t sz, struct perf_cpu_map *cpus)
>  {
> -	char *buf = NULL;
> -	char path[PATH_MAX];
>  	const char *sysfs = sysfs__mountpoint();
> -	int cpu;
>  	u64 midr = 0;
> -	struct perf_cpu_map *cpus;
> -	FILE *file;
> +	int cpu;
>  
> -	if (!sysfs || !pmu || !pmu->cpus)
> -		return NULL;
> +	if (!sysfs || sz < MIDR_SIZE)
> +		return EINVAL;
>  
> -	buf = malloc(MIDR_SIZE);
> -	if (!buf)
> -		return NULL;
> +	cpus = perf_cpu_map__get(cpus);
>  
> -	/* read midr from list of cpus mapped to this pmu */
> -	cpus = perf_cpu_map__get(pmu->cpus);
>  	for (cpu = 0; cpu < perf_cpu_map__nr(cpus); cpu++) {
> +		char path[PATH_MAX];
> +		FILE *file;
> +
>  		scnprintf(path, PATH_MAX, "%s/devices/system/cpu/cpu%d"MIDR,
>  				sysfs, cpus->map[cpu]);
>  
> @@ -57,12 +54,48 @@ char *get_cpuid_str(struct perf_pmu *pmu)
>  		break;
>  	}
>  
> -	if (!midr) {
> +	perf_cpu_map__put(cpus);
> +
> +	if (!midr)
> +		return EINVAL;
> +
> +	return 0;
> +}
> +
> +int get_cpuid(char *buf, size_t sz)
> +{
> +	struct perf_cpu_map *cpus = perf_cpu_map__new(NULL);
> +	int ret;
> +
> +	if (!cpus)
> +		return EINVAL;
> +
> +	ret = _get_cpuid(buf, sz, cpus);
> +
> +	perf_cpu_map__put(cpus);
> +
> +	return ret;
> +}
> +
> +char *get_cpuid_str(struct perf_pmu *pmu)
> +{
> +	char *buf = NULL;
> +	int res;
> +
> +	if (!pmu || !pmu->cpus)
> +		return NULL;
> +
> +	buf = malloc(MIDR_SIZE);
> +	if (!buf)
> +		return NULL;
> +
> +	/* read midr from list of cpus mapped to this pmu */
> +	res = _get_cpuid(buf, MIDR_SIZE, pmu->cpus);
> +	if (res) {
>  		pr_err("failed to get cpuid string for PMU %s\n", pmu->name);
>  		free(buf);
>  		buf = NULL;
>  	}
>  
> -	perf_cpu_map__put(cpus);
>  	return buf;
>  }
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
