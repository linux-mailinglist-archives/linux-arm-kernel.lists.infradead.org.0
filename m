Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD53B184682
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1iIVHCbYz/2U0jEKtOdtNnN2p5IxDjtKPH4jSqNOF0=; b=ubrzmAozZ2OoLT
	FapqGxpx8gKq7YwRAnv/OEmLD0iS78wzxlttNPeQDOTF35k90mNkOXlhHssUqNGkLoIXtIyWeP2bK
	SUyXhpeTHCrlfyz8QD6tKxNMUy/31L568e6qlrbjBg5YI8PK+iAuK9A5zLuh5B+WXPLDx2KE7So/P
	fwhu75txKY3IAqfpHJFD2XVl4zKOEsejB6aSUnDfCrYq0mrnuWKpZlUSCTnfR7sLi8Nk+6oXkqnFs
	9HWt+jP+1u/blh1SsyNeRnlRLGiYgRMklBGUvbPqD+a8/gk4L3rJd/8lilmQo4tZPY/sk2S5wh6wY
	UztDpC905lKCnWdBdCoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCj6g-0003yP-8C; Fri, 13 Mar 2020 12:08:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCj6X-0003xy-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:07:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55EFB30E;
 Fri, 13 Mar 2020 05:07:53 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C5AB3F534;
 Fri, 13 Mar 2020 05:07:52 -0700 (PDT)
Date: Fri, 13 Mar 2020 12:07:50 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v2 2/2] arm64: smp: fix crash_smp_send_stop() behaviour
Message-ID: <20200313120750.GH42546@lakrids.cambridge.arm.com>
References: <20200311171245.45443-1-cristian.marussi@arm.com>
 <20200311171245.45443-3-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311171245.45443-3-cristian.marussi@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_050753_904884_5DCD54BC 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 05:12:45PM +0000, Cristian Marussi wrote:
> On a system configured to trigger a crash_kexec() reboot, when only one CPU
> is online and another CPU panics while starting-up, crash_smp_send_stop()
> will fail to send any STOP message to the other already online core,
> resulting in fail to freeze and registers not properly saved.

[...]

> Make crash_smp_send_stop() account also for the online status of the
> calling CPU while evaluating how many CPUs are effectively online: this way
> the right number of STOPs is sent and all other stopped-cores's registers
> are properly saved.
> 
> Fixes: 78fd584cdec05 ("arm64: kdump: implement machine_crash_shutdown()")
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/smp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index e4dc241c5a8e..5407bf5d98ac 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -1012,7 +1012,11 @@ void crash_smp_send_stop(void)
>  
>  	cpus_stopped = 1;
>  
> -	if (num_online_cpus() == 1) {
> +	/*
> +	 * If this cpu is the only one alive at this point in time, online or
> +	 * not, there are no stop messages to be sent around, so just back out.
> +	 */
> +	if (num_other_online_cpus() == 0) {
>  		sdei_mask_local_cpu();
>  		return;
>  	}
> @@ -1020,7 +1024,7 @@ void crash_smp_send_stop(void)
>  	cpumask_copy(&mask, cpu_online_mask);
>  	cpumask_clear_cpu(smp_processor_id(), &mask);
>  
> -	atomic_set(&waiting_for_crash_ipi, num_online_cpus() - 1);
> +	atomic_set(&waiting_for_crash_ipi, num_other_online_cpus());
>  
>  	pr_crit("SMP: stopping secondary CPUs\n");
>  	smp_cross_call(&mask, IPI_CPU_CRASH_STOP);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
