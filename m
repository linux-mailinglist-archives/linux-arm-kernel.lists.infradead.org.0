Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F0CF1521
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 12:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d64xshEDisVG2kX6kHphvo/y77ARfRP4aW2jioh+Fnw=; b=OB4aVq0S9UGB8n
	LBjiBoyBLDB9nrrseekYIxNLjPvALT54hE2D1ccAhhc89BCNqAvBXWHwzj1dio5om6SX/rwJ83Qzb
	EEJ5zhjKZ7bOAnSYjqhbVJ5hrsbWkxFNWrMJrrmLL/RcS0TamOxVRRmh53HTwgh4ic9klBtQZccKx
	zXznXnX0omNMFBxEDxYvbBiv6SJRNaJZloz2RHNNUTLcMK3xVTXElM3TRs8Jn13F9CmNQ4ku3As4l
	Z0ZUYjMxFlePizC7taz/8LgcB8azIh9euKe45mRhKVmepFurAillxRyom94ecCIhYOi9oxVJtOHei
	ZPrMmOkGa6obLuafWhhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJUa-00048e-Iq; Wed, 06 Nov 2019 11:28:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJUO-00047c-EX
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 11:28:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED8BC7A7;
 Wed,  6 Nov 2019 03:28:38 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B3DC83F6C4;
 Wed,  6 Nov 2019 03:28:37 -0800 (PST)
Date: Wed, 6 Nov 2019 11:28:29 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Subject: Re: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
Message-ID: <20191106112810.GA50610@lakrids.cambridge.arm.com>
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_032840_529484_83BD2172 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 01:01:40AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> When PMUs are registered, perf core enables event multiplexing
> support by default. There is no provision for PMUs to disable
> event multiplexing, if PMUs want to disable due to unavoidable
> circumstances like hardware errata etc.
> 
> Adding PMU capability flag PERF_PMU_CAP_NO_MUX_EVENTS and support
> to allow PMUs to explicitly disable event multiplexing.

Even without multiplexing, this PMU activity can happen when switching
tasks, or when creating/destroying events, so as-is I don't think this
makes much sense.

If there's an erratum whereby heavy access to the PMU can lockup the
core, and it's possible to workaround that by minimzing accesses, that
should be done in the back-end PMU driver.

Either way, this minimzes the utility of the PMU.

Thanks,
Mark.

> 
> Signed-off-by: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
> ---
>  include/linux/perf_event.h | 1 +
>  kernel/events/core.c       | 8 ++++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
> index 61448c19a132..9e18d841daf7 100644
> --- a/include/linux/perf_event.h
> +++ b/include/linux/perf_event.h
> @@ -247,6 +247,7 @@ struct perf_event;
>  #define PERF_PMU_CAP_HETEROGENEOUS_CPUS		0x40
>  #define PERF_PMU_CAP_NO_EXCLUDE			0x80
>  #define PERF_PMU_CAP_AUX_OUTPUT			0x100
> +#define PERF_PMU_CAP_NO_MUX_EVENTS		0x200
>  
>  /**
>   * struct pmu - generic performance monitoring unit
> diff --git a/kernel/events/core.c b/kernel/events/core.c
> index 4655adbbae10..65452784f81c 100644
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -1092,6 +1092,10 @@ static void __perf_mux_hrtimer_init(struct perf_cpu_context *cpuctx, int cpu)
>  	if (pmu->task_ctx_nr == perf_sw_context)
>  		return;
>  
> +	/* No PMU support */
> +	if (pmu->capabilities & PERF_PMU_CAP_NO_MUX_EVENTS)
> +		return 0;
> +
>  	/*
>  	 * check default is sane, if not set then force to
>  	 * default interval (1/tick)
> @@ -1117,6 +1121,10 @@ static int perf_mux_hrtimer_restart(struct perf_cpu_context *cpuctx)
>  	if (pmu->task_ctx_nr == perf_sw_context)
>  		return 0;
>  
> +	/* No PMU support */
> +	if (pmu->capabilities & PERF_PMU_CAP_NO_MUX_EVENTS)
> +		return 0;
> +
>  	raw_spin_lock_irqsave(&cpuctx->hrtimer_lock, flags);
>  	if (!cpuctx->hrtimer_active) {
>  		cpuctx->hrtimer_active = 1;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
