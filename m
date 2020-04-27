Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0CD1BAA9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dpps50z43IfQ5Aw+WqWHtyWmX9pDxnYtyHe3hDAUDRM=; b=fO1UcnadOSi+pN
	r+etMSyaaQVm5R19jfA2MpJuLrkmkwH3DyDb9WZbzRib7Ar4wvOPwj55YtfSyTgJ54RyLY5uUu5re
	HgeP308qP/XtrFZseMq+YYffObtPB3zU84anNsixodlOKGKrx/RNYnu2C/Oacf2TIK8txgoIFaChl
	dys4c1Cd2Iz4GKHPWx6UkdwJHPzBtTu3Qidz1OjKKER8D/IIUJIcXp6cKKXib5y3CkXDjoRBlqK1d
	YOtI8OS0cOm+a99gipRwfF7r4OtRyeKTRULcPeugknT6kRkJkOG9oW9vF6Hb0INQqT4JPlGDQwpKW
	5oOClP51zN0RSzNiqd3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT77V-0000HR-Qp; Mon, 27 Apr 2020 17:00:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT75P-0004mq-M1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:58:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A236031B;
 Mon, 27 Apr 2020 09:58:25 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38C633F68F;
 Mon, 27 Apr 2020 09:58:24 -0700 (PDT)
Date: Mon, 27 Apr 2020 17:58:22 +0100
From: Dave Martin <dave.martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 10/23] arm64: mte: Handle synchronous and asynchronous
 tag check faults
Message-ID: <20200427165822.GE15808@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-11-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421142603.3894-11-catalin.marinas@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_095827_822567_14691C1D 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 03:25:50PM +0100, Catalin Marinas wrote:
> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> The Memory Tagging Extension has two modes of notifying a tag check
> fault at EL0, configurable through the SCTLR_EL1.TCF0 field:
> 
> 1. Synchronous raising of a Data Abort exception with DFSC 17.
> 2. Asynchronous setting of a cumulative bit in TFSRE0_EL1.
> 
> Add the exception handler for the synchronous exception and handling of
> the asynchronous TFSRE0_EL1.TF0 bit setting via a new TIF flag in
> do_notify_resume().
> 
> On a tag check failure in user-space, whether synchronous or
> asynchronous, a SIGSEGV will be raised on the faulting thread.

Has there been any discussion on whether this should be SIGSEGV or
SIGBUS?

Probably neither is much more appropriate than the other.

> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>

[...]

> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index 339882db5a91..e377d77c065e 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -732,6 +732,9 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
>  	regs->regs[29] = (unsigned long)&user->next_frame->fp;
>  	regs->pc = (unsigned long)ka->sa.sa_handler;
>  
> +	/* TCO (Tag Check Override) always cleared for signal handlers */
> +	regs->pstate &= ~PSR_TCO_BIT;
> +
>  	if (ka->sa.sa_flags & SA_RESTORER)
>  		sigtramp = ka->sa.sa_restorer;
>  	else
> @@ -923,6 +926,11 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
>  			if (thread_flags & _TIF_UPROBE)
>  				uprobe_notify_resume(regs);
>  
> +			if (thread_flags & _TIF_MTE_ASYNC_FAULT) {
> +				clear_thread_flag(TIF_MTE_ASYNC_FAULT);
> +				force_signal_inject(SIGSEGV, SEGV_MTEAERR, 0);
> +			}
> +

Should this definitely be a force_signal_inject()?

SEGV_MTEAERR is not intrinsically fatal: it must be possible to run past
the error, because that's the whole point -- chances are we already did.

Compare this with MTESERR where running past the signal would lead to a
spin.


If MTEAERR is forced, a martian tag check failure might land in the
middle of a "normal" SIGSEGV, when SIGSEGV would usually be blocked for
good reasons, defeating the process' own handling mechanisms for no good
reason: delivering the MTEAERR when SIGSEGV is next unblocked seems
perfectly reasonable in such a case.

Only braindead software would block or ignore things like SIGSEGV across
exec, so software shouldn't end up ignoring these non-forced signals
unless it does so on purpose.

Alternatively, perhaps asynchronous errors should be delivered via a
different signal.  I don't have a good suggestion though.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
