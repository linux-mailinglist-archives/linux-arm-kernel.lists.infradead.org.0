Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81A4118DB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WvSytKOsu0PHFbq0Pn1x06aEDbB1CDiSGE150yW3sE=; b=KBaZA8jvWQZtl6
	3KnJv/1vIljiVBwE5BFeROAszDm6ZRri0NfBOrJVStwcUXT4/2UmJLvM35FhEK1qTX/2YjNsel8rK
	C8pBVvPteMBe58mbHxG/7hNRYb048JwVB235aPLFDi/5ELu6MkW6Gg7i5QOS5QLqlxTfw4VyA3mv9
	e1UnDEYOpcX8h1g78FVSE3lhKTXJgzYx7YAbbHc7qvbxxDjV/1UdqXz4eUlcgYXZ7aympfOdF1Lmu
	2bP5yMh4IdyoFQI1BGEtp0EzZe8gYoKlkNNvuyWy3b3HTNXKGrYRnMackEGVzR8rwZYtX4+a51sLq
	6Im7nFzQYSoRnmeTJ86g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieiW9-0001uB-QO; Tue, 10 Dec 2019 16:37:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiW3-0001tz-Hz
 for linux-arm-kernel@bombadil.infradead.org; Tue, 10 Dec 2019 16:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6db9343SFTPQev9ZuOYUBJv5oalrvJlNCQGZKQHORtI=; b=pdlIzm/BCjs9D/Vy6dzo8dueuw
 S56p89Q8LD91e41YpaE3KdO0lX9ZeoiDCRgy+9ovsRAXMNMiRsLiCCWXMOPkcpgttys1jaJ6Ts7Z5
 Sdn3wFXK/JLQ/BHL8thUFLY6IBf0XjLSG17Wp6QtCmfPzQ8FGCIdeJW56gpF6ePMKS1DmTht4NR1c
 2WA8PGlh0L5NxrP7avPQiHjACDzqyiTkHBHRPyQ8BjSW6Kj1Zmsy0EEBdxxbivikVHvvcTM3oMhMd
 0Pi8YyyCwvcanDqU7yBsH5aYkF87/7RY0DbE7kSum8Zm6YyTB7JuMOa75hAIKxQSJmqIZGi9I8pGL
 eO571y5A==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiWT-0000Sg-CP
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 16:38:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575995825;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6db9343SFTPQev9ZuOYUBJv5oalrvJlNCQGZKQHORtI=;
 b=UnLytYo+BV7hDKyVGJQk3o3eQTLLD/TLveCylg0zPUp2r+laDt9nNi//3MAbzwLVAZfncD
 u9azp06+c8ywJY2IQS8smoraHgygMn8vYgdpGCaC1f/+mDj70IolaXklG5Exfm0SnL+d+3
 pu8ZGBni4BAh4sL7oRP9ideW+UO3blU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-3I51-E7bM8KjPNGQslJ8hQ-1; Tue, 10 Dec 2019 11:37:02 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41569107ACC4;
 Tue, 10 Dec 2019 16:37:00 +0000 (UTC)
Received: from krava (unknown [10.43.17.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CA314600F0;
 Tue, 10 Dec 2019 16:36:57 +0000 (UTC)
Date: Tue, 10 Dec 2019 17:36:55 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: perf top for arm64?
Message-ID: <20191210163655.GG14123@krava>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
MIME-Version: 1.0
In-Reply-To: <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: 3I51-E7bM8KjPNGQslJ8hQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_163805_511909_7A743663 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
> Hi all,
> 
> I find to my surprise that "perf top" does not work for arm64:
> 
> root@ubuntu:/home/john/linux# tools/perf/perf top
> Couldn't read the cpuid for this machine: No such file or directory

there was recent change that check on cpuid and quits:
  608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine

Arnaldo,
maybe this should be just a warning/info, because it seems to be related
to annotations only..?

get_cpuid is defined only for s390/x86/powerpc, so I guess it won't work
on the rest as well

jirka

> 
> That's v5.5-rc1 release.
> 
> It seems that we are just missing an arm64 version of get_cpuid() - with the
> patch below, I now get as hoped:
> 
>    PerfTop:   32857 irqs/sec  kernel:85.0%  exact:  0.0% lost: 0/0 drop: 0/0
> [4000Hz cycles],  (all, 64 CPUs)
> -------------------------------------------------------------------------------
> 
>      8.99%  [kernel]          [k] arm_smmu_cmdq_issue_cmdlist
>      5.80%  [kernel]          [k] __softirqentry_text_start
>      4.49%  [kernel]          [k] _raw_spin_unlock_irqrestore
>      3.48%  [kernel]          [k] el0_svc_common.constprop.2
>      3.37%  [kernel]          [k] _raw_write_lock_irqsave
>      3.28%  [kernel]          [k] __local_bh_enable_ip
>      3.05%  [kernel]          [k] __blk_complete_request
>      2.07%  [kernel]          [k] queued_spin_lock_slowpath
>      1.93%  [vdso]            [.] 0x0000000000000484
> 
> 
> Was this just missed? Or is there a good reason to omit?
> 
> Thanks,
> John
> 
> --->8---
> 
> Subject: [PATCH] perf: Add perf top support for arm64
> 
> Copied from get_cpuid_str() essentially...
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> 
> diff --git a/tools/perf/arch/arm64/util/header.c
> b/tools/perf/arch/arm64/util/header.c
> index a32e4b72a98f..ecd1f86e29cc 100644
> --- a/tools/perf/arch/arm64/util/header.c
> +++ b/tools/perf/arch/arm64/util/header.c
> @@ -1,10 +1,12 @@
>  #include <stdio.h>
>  #include <stdlib.h>
>  #include <perf/cpumap.h>
> +#include <util/cpumap.h>
>  #include <internal/cpumap.h>
>  #include <api/fs/fs.h>
>  #include "debug.h"
>  #include "header.h"
> +#include <errno.h>
> 
>  #define MIDR "/regs/identification/midr_el1"
>  #define MIDR_SIZE 19
> @@ -12,6 +14,59 @@
>  #define MIDR_VARIANT_SHIFT      20
>  #define MIDR_VARIANT_MASK       (0xf << MIDR_VARIANT_SHIFT)
> 
> +int
> +get_cpuid(char *buffer, size_t sz)
> +{
> +	char *buf = NULL;
> +	char path[PATH_MAX];
> +	const char *sysfs = sysfs__mountpoint();
> +	int cpu;
> +	u64 midr = 0;
> +	FILE *file;
> +
> +	if (!sysfs)
> +		return EINVAL;
> +
> +	buf = malloc(MIDR_SIZE);
> +	if (!buf)
> +		return EINVAL;
> +
> +	/* read midr from list of cpus mapped to this pmu */
> +	for (cpu = 0; cpu < cpu__max_present_cpu(); cpu++) {
> +		scnprintf(path, sz, "%s/devices/system/cpu/cpu%d"MIDR,
> +				sysfs, cpu);
> +
> +		file = fopen(path, "r");
> +		if (!file) {
> +			pr_debug("fopen failed for file %s\n", path);
> +			continue;
> +		}
> +
> +		if (!fgets(buf, MIDR_SIZE, file)) {
> +			fclose(file);
> +			continue;
> +		}
> +		fclose(file);
> +
> +		/* Ignore/clear Variant[23:20] and
> +		 * Revision[3:0] of MIDR
> +		 */
> +		midr = strtoul(buf, NULL, 16);
> +		midr &= (~(MIDR_VARIANT_MASK | MIDR_REVISION_MASK));
> +		scnprintf(buffer, MIDR_SIZE, "0x%016lx", midr);
> +		/* got midr break loop */
> +		break;
> +	}
> +
> +	if (!midr) {
> +		pr_err("failed to get cpuid string\n");
> +		free(buf);
> +		return EINVAL;
> +	}
> +	return 0;
> +}
> +
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
