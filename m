Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FEC1D7DA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QH+QoDq+jchTAnGwFWXIjnx6sR3gfrlnaES5kOGGSw=; b=G8z4r28VZWaV13
	NLckI+CMuS64/YePmYPOSDuwZIXRVjEqzA/fweiGhQUckiFxxeGH5Dj2mrh6BHSzG/nceeqDupHv9
	+lctT1RUhCMSIVE3jrZ7PsC5SmOhN/Csqd3/djfmMOmobjFAA+d7HDcV1T0TsM7iVupqhzLM5sGc6
	e26RSzECloelih86pbF9gvOWjbM3TTVGU1FMlMJ3ll7sWASPtsswD3ex/D5mvQWPUPzVuj2p/+Z/3
	YOE97QUhBcU8v7SfIQs0gXHhtHgLluOayBC2hAknOp0/3+iY+4+IhWYElHG2WK1XuYcgDtYj7wlHt
	vhURxx26WKaEry1G8ACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaiBC-000207-QL; Mon, 18 May 2020 15:59:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiAy-0001zW-CW
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:59:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90156106F;
 Mon, 18 May 2020 08:59:30 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A26303F52E;
 Mon, 18 May 2020 08:59:29 -0700 (PDT)
Date: Mon, 18 May 2020 16:59:27 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: dankis01 <dankis01@arm.com>
Subject: Re: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Message-ID: <20200518155926.GA21779@arm.com>
References: <20200515162020.78169-1-daniel.kiss@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515162020.78169-1-daniel.kiss@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_085936_470109_C17346AF 
X-CRM114-Status: GOOD (  22.26  )
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
Cc: mark.rutland@arm.com, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Vincenzo.Frascino@arm.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:20:20PM +0200, dankis01 wrote:
> When the signal handler is called the registers set up as the return address
> points to the __kernel_rt_sigreturn. The NOP here is the placeholder of the
> branch and link instruction that "calls" the signal handler. In case of a
> return address the unwinder identifies the location of the caller because
> in some cases the return address might not exist. Since the .cfi_startproc
> is after the NOP, it won't be associated with any location and the
> unwinder will stop walking.
> 
> This change corrects the generated EHFrames only.

This is a can of worms.

Which unwinder are you look at, and what do other unwinders do?  Are you
sure the unwinder is doing something valid?  Is this a newly observed
problem, or has it happened forever?

Why should there be any instruction that "calls" the signal handler?
In the case is a SIGSEGV the affected instruction is after the pc and
not before it; for an asynchronous signal and notion of a "calling"
instruction is nonsense.


Certainly I've seen correct unwinding through signal handlers with glibc
and gdb, but I hadn't tried everything...

> 
> Signed-off-by: Daniel Kiss <daniel.kiss@arm.com>
> Signed-off-by: Tamas Zsoldos <tamas.zsoldos@arm.com>
> ---
>  arch/arm64/kernel/vdso/sigreturn.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
> index 12324863d5c2..5d50ee92faa4 100644
> --- a/arch/arm64/kernel/vdso/sigreturn.S
> +++ b/arch/arm64/kernel/vdso/sigreturn.S
> @@ -13,13 +13,13 @@
>  
>  	.text
>  
> -	nop
> -SYM_FUNC_START(__kernel_rt_sigreturn)
>  	.cfi_startproc
>  	.cfi_signal_frame
>  	.cfi_def_cfa	x29, 0
>  	.cfi_offset	x29, 0 * 8
>  	.cfi_offset	x30, 1 * 8

Hmm, recovering x29,x30 like this will be wrong if the signal handler
munges sigcontext in the meantime (say, doing some kind of userspace
context switch).

They should be pulled out of sigcontext instead really.  AFAIK, that's
what ".cfi_signal_frame" is supposed to tell the unwinder.  I'm not sure
why we have these additional, conflicting annotations here.

Any ideas, Will?

This probably isn't related to the bug here, but it would be good to
understand.

> +	nop  /* placeholder for bl signalhandler */

Will can correct me on this, but I seem to remember something about nop
being there for padding, so that there is a guaranteed gap between
unwind entries.

I can't remember the precise reasoning, but there are some nasty edge
cases connected with the fact that the linker can place another random
unwind block from another .o immediately before this one.

Cheers
---Dave

> +SYM_FUNC_START(__kernel_rt_sigreturn)
>  	mov	x8, #__NR_rt_sigreturn
>  	svc	#0
>  	.cfi_endproc
> -- 
> 2.17.1

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
