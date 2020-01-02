Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C377F12E9AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 19:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5abQjFyxd4dbd9Z/HyEWwMOunciQz4vBFLkreSUphQM=; b=lopTwPRzN56My7
	Np2vQssI3+VGCczD89RSc4BENpNKPZDCDa6/jZTZp+YxDtmX9JarvXeVQxl13wCl4d1G7KduXvC9O
	ENV+urlHgFKuvTedmJwfmULNPJamnSYGkZ0k4HsD8e7enrssyx64oOKkuCRajR/i1p72SNxv9GKPx
	Yn61FZMvxGBDGUjiNYhJxjpUViLjQzMou1EOzI54EAe25b9EgYWorrpTrBXGOpm7z1eXqkkv7O09z
	z+WgEDM+cfLjw1IHJYYJShvuenyTKrYW+wRL37DUcWf9ejoC8UwHezvKfUQLCG80uFaF6M/2/NMFl
	buzblV5NesSBA71YTJQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4oG-0008Fr-4H; Thu, 02 Jan 2020 18:03:00 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4oA-0008F1-1q
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 18:02:55 +0000
Received: from [172.58.107.60] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1in4o4-0007SY-A3; Thu, 02 Jan 2020 18:02:49 +0000
Date: Thu, 2 Jan 2020 19:02:43 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Amanieu d'Antras <amanieu@gmail.com>, will.deacon@arm.com
Subject: Re: [PATCH 3/7] arm: Implement copy_thread_tls
Message-ID: <20200102180241.ialbcdhaikqltkfm@wittgenstein>
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-4-amanieu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102172413.654385-4-amanieu@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_100254_225467_9B2C7DC5 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 06:24:09PM +0100, Amanieu d'Antras wrote:
> This is required for clone3 which passes the TLS value through a
> struct rather than a register.
> 
> Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: <stable@vger.kernel.org> # 5.3.x

Again, looks good to me but I'd like an ack from someone closer to the
architecture itself.
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

> ---
>  arch/arm/Kconfig          | 1 +
>  arch/arm/kernel/process.c | 6 +++---
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index ba75e3661a41..96dab76da3b3 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -72,6 +72,7 @@ config ARM
>  	select HAVE_ARM_SMCCC if CPU_V7
>  	select HAVE_EBPF_JIT if !CPU_ENDIAN_BE32
>  	select HAVE_CONTEXT_TRACKING
> +	select HAVE_COPY_THREAD_TLS
>  	select HAVE_C_RECORDMCOUNT
>  	select HAVE_DEBUG_KMEMLEAK
>  	select HAVE_DMA_CONTIGUOUS if MMU
> diff --git a/arch/arm/kernel/process.c b/arch/arm/kernel/process.c
> index cea1c27c29cb..46e478fb5ea2 100644
> --- a/arch/arm/kernel/process.c
> +++ b/arch/arm/kernel/process.c
> @@ -226,8 +226,8 @@ void release_thread(struct task_struct *dead_task)
>  asmlinkage void ret_from_fork(void) __asm__("ret_from_fork");
>  
>  int
> -copy_thread(unsigned long clone_flags, unsigned long stack_start,
> -	    unsigned long stk_sz, struct task_struct *p)
> +copy_thread_tls(unsigned long clone_flags, unsigned long stack_start,
> +	    unsigned long stk_sz, struct task_struct *p, unsigned long tls)
>  {
>  	struct thread_info *thread = task_thread_info(p);
>  	struct pt_regs *childregs = task_pt_regs(p);
> @@ -261,7 +261,7 @@ copy_thread(unsigned long clone_flags, unsigned long stack_start,
>  	clear_ptrace_hw_breakpoint(p);
>  
>  	if (clone_flags & CLONE_SETTLS)
> -		thread->tp_value[0] = childregs->ARM_r3;
> +		thread->tp_value[0] = tls;
>  	thread->tp_value[1] = get_tpuser();
>  
>  	thread_notify(THREAD_NOTIFY_COPY, thread);
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
