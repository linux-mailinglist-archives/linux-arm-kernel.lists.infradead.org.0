Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBF66B996
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 11:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdHuZ5jVRO7sHpcxCQxQoG+xh9I9wrWwVJGZ1GKylQo=; b=IKLwKh+vAVxgrP
	wf43gF+WKqI0C4d4J8T1C/fn7yOyNusIUJccs4LFqrwzUjfFPA9QjSNlZTqySUBbahAMpNXrZRa12
	ipf/KFVjZGCuED3SrVnrYTSzdrFGZbL0Oc6bz6W4zCMdr/WH72gJM80icGkX00qQHM3fD7pxz1LyD
	Hj6x4LD8aR+cNb+fnojKMYWPFM43WZtv/q4X8VforKZRLh4fhvFuRS5iJ2CegIsPxf69Rztoy6/j8
	LZhK840LnK95RI4POnOWXc0INsLeB4k72QlwiPVprA70YXy/+5TXbpgXXLQE1rIQG29zEVFVIbDAL
	xUWk1BsHoXRhPyJ5nf8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngdr-0001Bx-9I; Wed, 17 Jul 2019 09:54:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hngdg-0001BT-6j
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 09:54:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A16CC28;
 Wed, 17 Jul 2019 02:54:15 -0700 (PDT)
Received: from [10.0.2.15] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9483A3F71A;
 Wed, 17 Jul 2019 02:54:14 -0700 (PDT)
Subject: Re: [PATCH] arm64: Avoid pointless schedule_preempt_irq() invocations
To: Thomas Gleixner <tglx@linutronix.de>,
 LAK <linux-arm-kernel@lists.infradead.org>
References: <alpine.DEB.2.21.1907171036490.1767@nanos.tec.linutronix.de>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <e47e8298-af21-64fa-eac3-6fdfbf11c502@arm.com>
Date: Wed, 17 Jul 2019 10:54:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1907171036490.1767@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_025420_288576_CF482AE3 
X-CRM114-Status: GOOD (  14.92  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/07/2019 09:43, Thomas Gleixner wrote:
> When preempt_count is zero on return from interrupt then
> schedule_preempt_irq() is invoked even if TIF_NEED_RESCHED is not set.
> 
> That does not make sense because schedule_preempt_irq() has to go through a
> full __schedule() for nothing in that case.
> 
> Check TIF_NEED_RESCHED and invoke schedule_preempt_irq() only if set.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Don't we have NEED_RESCHED squashed into preempt count?

  396244692232 ("arm64: preempt: Provide our own implementation of asm/preempt.h")

So the existing check should cover that, unless I'm missing something?

> ---
> Found while staring at some RT wrecakge in that area.
> ---
>  arch/arm64/kernel/entry.S |    4 ++++
>  1 file changed, 4 insertions(+)
> 
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -680,6 +680,10 @@ alternative_if ARM64_HAS_IRQ_PRIO_MASKIN
>  	orr	x24, x24, x0
>  alternative_else_nop_endif
>  	cbnz	x24, 1f				// preempt count != 0 || NMI return path
> +
> +	ldr	x0, [tsk, #TSK_TI_FLAGS]        // get flags
> +	tbz	x0, #TIF_NEED_RESCHED, 1f      	// needs rescheduling?
> +
>  	bl	preempt_schedule_irq		// irq en/disable is done inside
>  1:
>  #endif
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
