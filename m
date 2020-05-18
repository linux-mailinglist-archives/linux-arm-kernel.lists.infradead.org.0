Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CFD1D783B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/+c/TDbQE67nFBn1BglIG0SzIA2mhrlOfgsrX61Bw0=; b=tLJPzh+C0ZW2vE
	Uj77mta9RDKY/gx3XesSXuU3IzScBXh7q5N7ejLsQxiKK6+jRfZ4BwjCG+qJvfb84Y5fofZbjyCpx
	frWta+65isLNYPJIT32NGEPzdhR4LAul3JlYz74++8CROb8DcnQ/70Aihg91Ab3aWECMN27Ak3sVQ
	kfLwvjmqVrLF2z13errY4LkdZsPtRG/1+6DThupfQP4ZMOjd5lIriqEkd+KiThCBDv6PVQo0i8q0h
	QvWz3B7h/QFhCHxmdkb2Ucv3W9tm/WDrvL5tBedHq1OrN1SNC7ZmTX3OrsBi51RyEmdXbuEQkb8b6
	i5tBlQ9sOyGgTTDG7d5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaefX-0003Md-FP; Mon, 18 May 2020 12:14:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaefP-0003Ls-Gy
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:14:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE3F6106F;
 Mon, 18 May 2020 05:14:46 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D4383F305;
 Mon, 18 May 2020 05:14:44 -0700 (PDT)
Date: Mon, 18 May 2020 13:14:41 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 6/6] scs: Move DEFINE_SCS macro into core code
Message-ID: <20200518121441.GE1957@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-7-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515172756.27185-7-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_051447_606061_4B13C286 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:27:56PM +0100, Will Deacon wrote:
> Defining static shadow call stacks is not architecture-specific, so move
> the DEFINE_SCS() macro into the core header file.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

I think that we'll have to pull this back into arch code if/when we deal
with VMAP'd stacks, so I'm not sure this is worthwhile given the
diffstat is balanced.

Mark.

> ---
>  arch/arm64/kernel/scs.c | 4 ----
>  include/linux/scs.h     | 4 ++++
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
> index 955875dff9e1..e8f7ff45dd8f 100644
> --- a/arch/arm64/kernel/scs.c
> +++ b/arch/arm64/kernel/scs.c
> @@ -8,10 +8,6 @@
>  #include <linux/percpu.h>
>  #include <linux/scs.h>
>  
> -/* Allocate a static per-CPU shadow stack */
> -#define DEFINE_SCS(name)						\
> -	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
> -
>  DEFINE_SCS(irq_shadow_call_stack);
>  
>  #ifdef CONFIG_ARM_SDE_INTERFACE
> diff --git a/include/linux/scs.h b/include/linux/scs.h
> index 2fd3df50e93e..6dec390cf154 100644
> --- a/include/linux/scs.h
> +++ b/include/linux/scs.h
> @@ -26,6 +26,10 @@
>  /* An illegal pointer value to mark the end of the shadow stack. */
>  #define SCS_END_MAGIC		(0x5f6UL + POISON_POINTER_DELTA)
>  
> +/* Allocate a static per-CPU shadow stack */
> +#define DEFINE_SCS(name)						\
> +	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
> +
>  #define task_scs(tsk)		(task_thread_info(tsk)->scs_base)
>  #define task_scs_sp(tsk)	(task_thread_info(tsk)->scs_sp)
>  
> -- 
> 2.26.2.761.g0e0b3e54be-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
