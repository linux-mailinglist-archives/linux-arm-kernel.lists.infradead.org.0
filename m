Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494C27DC25
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTW/ssGf/qK/orawOOH4I2xh7Xv9vyTsisRY+5wF3GI=; b=TqCkqKyZ7/Mo7i
	JsC2xwnvXEZBzQNTls0n8eCU+vLorF0ZzLE5+LXlm5MWHqV6SfWAR7+vfg+FqJzyl3brZCXoWfD6X
	s63Y682DBz8mGmO2ppSWbakcKmvf4hW4paBIWXsZ52cG/fD9Z1alwOlzOVWGXblSB3nzWGDer7EJ9
	Cs88MoaH5NIH/cB8Jagr47d3TASDZb4e869wDeQ08+DuC2AuB21mNMaABmoCtfk9dAd+05SIG+KTa
	8QEJHMQQwVxy+ocAu1VwLjK7AXfvC66HhnTn3MQxRpaMdN33FJpbWGuxNs8do/DfGR22mItsFb3t1
	G9WL2kqqtq1yTtADQssQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAmn-0006SU-NT; Thu, 01 Aug 2019 13:06:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAmf-0006S9-BV
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:06:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA5CF20838;
 Thu,  1 Aug 2019 13:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564664776;
 bh=/wmQAkHpGftYRIL/DgFGvaSTH4GFrVy/ROApPnsBvns=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h+pttSxXr2fM9kp7qF5kSXPqlKadMq4gO4w4y3QWZuDhAyhtlMCcnuxU+bVwhY3QY
 i92Dfiezpj1C6nQBjI3ITTU5zTUILCksjOJUiQoQU1XpxrhvMGuSh5u2bd1/RTHmd7
 33MD2m7/1+hwmjxmRWUjrMloYzLSsAPx9mV9wSaY=
Date: Thu, 1 Aug 2019 14:06:12 +0100
From: Will Deacon <will@kernel.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 6/9] arm64: perf: Do not call irq_work_run in NMI
 context
Message-ID: <20190801130611.n2xij2242ihxa5pr@willie-the-truck>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-7-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563351432-55652-7-git-send-email-julien.thierry@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_060617_419245_9662781B 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, peterz@infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, will.deacon@arm.com,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, liwei391@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 09:17:09AM +0100, Julien Thierry wrote:
> Function irq_work_run is not NMI safe and should not be called from NMI
> context.
> 
> When PMU interrupt is an NMI do not call irq_work_run. Instead rely on the
> IRQ work IPI to run the irq_work queue once NMI/IRQ contexts have been
> exited.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/kernel/perf_event.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 0e2cf5d..9c959ad 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -776,20 +776,16 @@ static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
>  		if (!armpmu_event_set_period(event))
>  			continue;
>  
> +		/*
> +		 * Perf event overflow will queue the processing of the event as
> +		 * an irq_work which will be taken care of in the handling of
> +		 * IPI_IRQ_WORK.
> +		 */
>  		if (perf_event_overflow(event, &data, regs))
>  			cpu_pmu->disable(event);
>  	}
>  	armv8pmu_start(cpu_pmu);
>  
> -	/*
> -	 * Handle the pending perf events.
> -	 *
> -	 * Note: this call *must* be run with interrupts disabled. For
> -	 * platforms that can have the PMU interrupts raised as an NMI, this
> -	 * will not work.
> -	 */
> -	irq_work_run();

What about the case where NMIs are not being used (e.g. GICv2)?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
