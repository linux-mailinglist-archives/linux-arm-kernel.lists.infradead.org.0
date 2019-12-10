Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78334119100
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwpXQmbT8w5kMQDI2Ngu9gMmSgQPyQq9k5CxlFa/6o0=; b=Ru1AOfqdxLK4gu
	Kkq6PXg2q6t+SOrF0AHBVjDCSE1KUfBUI56hlbPPqcPtPMymc9snQ9+2CZ6OG4w9BKqAvRQBMm1Ny
	n7KYDzdOVSazO3KfxaBpN3tfpEI1yd/kGAZltgsMxu4iWBZALcgAAXC0tZrVUIJPw89RZQ9J8TnsV
	UfahYWfmbmNERvgcij1fdLSbDnfsnrvzWIsccrXEB54PpWQ/FPw+xHYyc27bsPIPbfCnanrAhwwbK
	zzb0t57Eb3lMhvLiFT+rWQ+K4QrYiV/6Cp3tRDXTcU4TN3/lJF1zWyZp5BDXXg0latY8tZYsjE1MK
	9VMaq4kxYErgSPj1Eryw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielUn-0003hD-LV; Tue, 10 Dec 2019 19:48:33 +0000
Received: from 179-240-167-103.3g.claro.net.br ([179.240.167.103]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielUj-0003gg-Kl; Tue, 10 Dec 2019 19:48:29 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id CBA0140352; Tue, 10 Dec 2019 16:48:25 -0300 (-03)
Date: Tue, 10 Dec 2019 16:48:25 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Jiri Olsa <jolsa@redhat.com>
Subject: Re: perf top for arm64?
Message-ID: <20191210194825.GC13965@kernel.org>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210163655.GG14123@krava>
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
Cc: mark.rutland@arm.com, peterz@infradead.org,
 John Garry <john.garry@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Dec 10, 2019 at 05:36:55PM +0100, Jiri Olsa escreveu:
> On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
> > Hi all,
> > 
> > I find to my surprise that "perf top" does not work for arm64:
> > 
> > root@ubuntu:/home/john/linux# tools/perf/perf top
> > Couldn't read the cpuid for this machine: No such file or directory
> 
> there was recent change that check on cpuid and quits:
>   608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine
> 
> Arnaldo,
> maybe this should be just a warning/info, because it seems to be related
> to annotations only..?

Right, my bad, I'll look into making this just a debug message and then
check in the annotation code when this is really needed to show an
error/popup window :-\

- Arnaldo
 
> get_cpuid is defined only for s390/x86/powerpc, so I guess it won't work
> on the rest as well
> 
> jirka
> 
> > 
> > That's v5.5-rc1 release.
> > 
> > It seems that we are just missing an arm64 version of get_cpuid() - with the
> > patch below, I now get as hoped:
> > 
> >    PerfTop:   32857 irqs/sec  kernel:85.0%  exact:  0.0% lost: 0/0 drop: 0/0
> > [4000Hz cycles],  (all, 64 CPUs)
> > -------------------------------------------------------------------------------
> > 
> >      8.99%  [kernel]          [k] arm_smmu_cmdq_issue_cmdlist
> >      5.80%  [kernel]          [k] __softirqentry_text_start
> >      4.49%  [kernel]          [k] _raw_spin_unlock_irqrestore
> >      3.48%  [kernel]          [k] el0_svc_common.constprop.2
> >      3.37%  [kernel]          [k] _raw_write_lock_irqsave
> >      3.28%  [kernel]          [k] __local_bh_enable_ip
> >      3.05%  [kernel]          [k] __blk_complete_request
> >      2.07%  [kernel]          [k] queued_spin_lock_slowpath
> >      1.93%  [vdso]            [.] 0x0000000000000484
> > 
> > 
> > Was this just missed? Or is there a good reason to omit?
> > 
> > Thanks,
> > John
> > 
> > --->8---
> > 
> > Subject: [PATCH] perf: Add perf top support for arm64
> > 
> > Copied from get_cpuid_str() essentially...
> > 
> > Signed-off-by: John Garry <john.garry@huawei.com>
> > 
> > diff --git a/tools/perf/arch/arm64/util/header.c
> > b/tools/perf/arch/arm64/util/header.c
> > index a32e4b72a98f..ecd1f86e29cc 100644
> > --- a/tools/perf/arch/arm64/util/header.c
> > +++ b/tools/perf/arch/arm64/util/header.c
> > @@ -1,10 +1,12 @@
> >  #include <stdio.h>
> >  #include <stdlib.h>
> >  #include <perf/cpumap.h>
> > +#include <util/cpumap.h>
> >  #include <internal/cpumap.h>
> >  #include <api/fs/fs.h>
> >  #include "debug.h"
> >  #include "header.h"
> > +#include <errno.h>
> > 
> >  #define MIDR "/regs/identification/midr_el1"
> >  #define MIDR_SIZE 19
> > @@ -12,6 +14,59 @@
> >  #define MIDR_VARIANT_SHIFT      20
> >  #define MIDR_VARIANT_MASK       (0xf << MIDR_VARIANT_SHIFT)
> > 
> > +int
> > +get_cpuid(char *buffer, size_t sz)
> > +{
> > +	char *buf = NULL;
> > +	char path[PATH_MAX];
> > +	const char *sysfs = sysfs__mountpoint();
> > +	int cpu;
> > +	u64 midr = 0;
> > +	FILE *file;
> > +
> > +	if (!sysfs)
> > +		return EINVAL;
> > +
> > +	buf = malloc(MIDR_SIZE);
> > +	if (!buf)
> > +		return EINVAL;
> > +
> > +	/* read midr from list of cpus mapped to this pmu */
> > +	for (cpu = 0; cpu < cpu__max_present_cpu(); cpu++) {
> > +		scnprintf(path, sz, "%s/devices/system/cpu/cpu%d"MIDR,
> > +				sysfs, cpu);
> > +
> > +		file = fopen(path, "r");
> > +		if (!file) {
> > +			pr_debug("fopen failed for file %s\n", path);
> > +			continue;
> > +		}
> > +
> > +		if (!fgets(buf, MIDR_SIZE, file)) {
> > +			fclose(file);
> > +			continue;
> > +		}
> > +		fclose(file);
> > +
> > +		/* Ignore/clear Variant[23:20] and
> > +		 * Revision[3:0] of MIDR
> > +		 */
> > +		midr = strtoul(buf, NULL, 16);
> > +		midr &= (~(MIDR_VARIANT_MASK | MIDR_REVISION_MASK));
> > +		scnprintf(buffer, MIDR_SIZE, "0x%016lx", midr);
> > +		/* got midr break loop */
> > +		break;
> > +	}
> > +
> > +	if (!midr) {
> > +		pr_err("failed to get cpuid string\n");
> > +		free(buf);
> > +		return EINVAL;
> > +	}
> > +	return 0;
> > +}
> > +
> > 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
