Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534C615AA1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 14:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsSuUX9Z+ElZ0qtZdPrmIEfqCgZGgqjrSBwuSnYHfsw=; b=ZtB1Vu3HVJdLjS
	g6Ni8sRSvYJSXmQK96CkEP042P9FKe80ZAcoP+ZiFYSUTfI59lt44TxX6V6DDERSqYyjnHE5kXgy1
	G9ZN7btrJmSZMRBjZolhr0OvQD7jDf5YqCKLNK/MH8jhTS4IVv8087Q/bYIHODfJdPHa5cGvVgvsv
	gtNLl811i52+vUBQfpW1V7tvYMy6grQCbiCxrYvmGt8JcxXOtqYD0mwJh9uWnt6+6qlQTZtn7wnrr
	H8MrnCjZGdE3Zj3jxOPelaLJrOGlxMahoaXdI672EFUyWhVMnlqXb6SZpRbf9jwvOmrk+IUTyVwlq
	DwzNSJ7BPBElevWD2u5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sAc-0004Qp-IB; Wed, 12 Feb 2020 13:35:14 +0000
Received: from [179.97.37.151] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sAU-0003pi-IS; Wed, 12 Feb 2020 13:35:06 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 335BC40A7D; Wed, 12 Feb 2020 10:35:02 -0300 (-03)
Date: Wed, 12 Feb 2020 10:35:02 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] perf tools: Add arm64 version of get_cpuid()
Message-ID: <20200212133502.GB22501@kernel.org>
References: <1576245255-210926-1-git-send-email-john.garry@huawei.com>
 <4ccf4455-b33d-441b-50ed-28211dd87c7c@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ccf4455-b33d-441b-50ed-28211dd87c7c@hisilicon.com>
X-Url: http://acmel.wordpress.com
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
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 namhyung@kernel.org, jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Feb 12, 2020 at 05:30:56PM +0800, Shaokun Zhang escreveu:
> Hi John,
> 
> I tested this patch on my new ARM64 Kunpeng 920 server.
> [root@node1 zsk]# ./perf --version
> perf version 5.6.rc1.g2cdb955b7252
> 
> Both perf list and perf stat can work.
> 
> Tested-by: Shaokun Zhang <zhangshaokun@hisilicon.com>

Thanks for the test and for (re)bringing this patch to my attention, I'll
process it now.

Thanks!

- Arnaldo
 
> Thanks,
> Shaokun
> 
> On 2019/12/13 21:54, John Garry wrote:
> > Add an arm64 version of get_cpuid(), which is used for various annotation
> > and headers - for example, I now get the CPUID in "perf report --header",
> > as shown in this snippet:
> > 
> > # hostname : ubuntu
> > # os release : 5.5.0-rc1-dirty
> > # perf version : 5.5.rc1.gbf8a13dc9851
> > # arch : aarch64
> > # nrcpus online : 96
> > # nrcpus avail : 96
> > # cpuid : 0x00000000480fd010
> > 
> > Since much of the code to read the MIDR is already in get_cpuid_str(),
> > factor out this code.
> > 
> > Signed-off-by: John Garry <john.garry@huawei.com>
> > 
> > diff --git a/tools/perf/arch/arm64/util/header.c b/tools/perf/arch/arm64/util/header.c
> > index a32e4b72a98f..d730666ab95d 100644
> > --- a/tools/perf/arch/arm64/util/header.c
> > +++ b/tools/perf/arch/arm64/util/header.c
> > @@ -1,8 +1,10 @@
> >  #include <stdio.h>
> >  #include <stdlib.h>
> >  #include <perf/cpumap.h>
> > +#include <util/cpumap.h>
> >  #include <internal/cpumap.h>
> >  #include <api/fs/fs.h>
> > +#include <errno.h>
> >  #include "debug.h"
> >  #include "header.h"
> >  
> > @@ -12,26 +14,21 @@
> >  #define MIDR_VARIANT_SHIFT      20
> >  #define MIDR_VARIANT_MASK       (0xf << MIDR_VARIANT_SHIFT)
> >  
> > -char *get_cpuid_str(struct perf_pmu *pmu)
> > +static int _get_cpuid(char *buf, size_t sz, struct perf_cpu_map *cpus)
> >  {
> > -	char *buf = NULL;
> > -	char path[PATH_MAX];
> >  	const char *sysfs = sysfs__mountpoint();
> > -	int cpu;
> >  	u64 midr = 0;
> > -	struct perf_cpu_map *cpus;
> > -	FILE *file;
> > +	int cpu;
> >  
> > -	if (!sysfs || !pmu || !pmu->cpus)
> > -		return NULL;
> > +	if (!sysfs || sz < MIDR_SIZE)
> > +		return EINVAL;
> >  
> > -	buf = malloc(MIDR_SIZE);
> > -	if (!buf)
> > -		return NULL;
> > +	cpus = perf_cpu_map__get(cpus);
> >  
> > -	/* read midr from list of cpus mapped to this pmu */
> > -	cpus = perf_cpu_map__get(pmu->cpus);
> >  	for (cpu = 0; cpu < perf_cpu_map__nr(cpus); cpu++) {
> > +		char path[PATH_MAX];
> > +		FILE *file;
> > +
> >  		scnprintf(path, PATH_MAX, "%s/devices/system/cpu/cpu%d"MIDR,
> >  				sysfs, cpus->map[cpu]);
> >  
> > @@ -57,12 +54,48 @@ char *get_cpuid_str(struct perf_pmu *pmu)
> >  		break;
> >  	}
> >  
> > -	if (!midr) {
> > +	perf_cpu_map__put(cpus);
> > +
> > +	if (!midr)
> > +		return EINVAL;
> > +
> > +	return 0;
> > +}
> > +
> > +int get_cpuid(char *buf, size_t sz)
> > +{
> > +	struct perf_cpu_map *cpus = perf_cpu_map__new(NULL);
> > +	int ret;
> > +
> > +	if (!cpus)
> > +		return EINVAL;
> > +
> > +	ret = _get_cpuid(buf, sz, cpus);
> > +
> > +	perf_cpu_map__put(cpus);
> > +
> > +	return ret;
> > +}
> > +
> > +char *get_cpuid_str(struct perf_pmu *pmu)
> > +{
> > +	char *buf = NULL;
> > +	int res;
> > +
> > +	if (!pmu || !pmu->cpus)
> > +		return NULL;
> > +
> > +	buf = malloc(MIDR_SIZE);
> > +	if (!buf)
> > +		return NULL;
> > +
> > +	/* read midr from list of cpus mapped to this pmu */
> > +	res = _get_cpuid(buf, MIDR_SIZE, pmu->cpus);
> > +	if (res) {
> >  		pr_err("failed to get cpuid string for PMU %s\n", pmu->name);
> >  		free(buf);
> >  		buf = NULL;
> >  	}
> >  
> > -	perf_cpu_map__put(cpus);
> >  	return buf;
> >  }
> > 
> 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
