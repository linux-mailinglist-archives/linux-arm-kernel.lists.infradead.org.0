Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF7E1BD99A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYm90FRqL129QC0mAA33ugJrvrJMkGqry8lB4gmLJq0=; b=bkml8siw0/qj5d
	uAW0iqjYT1zx1HcMlNqlFzq09pgT/OUqOto7lTicuHYKmqJrjweybS+XHyJ9yFzSG3EigWpPeAHcu
	2t3gBY+ZWStikI7Cc0fMsI9A5AGMOG1X6zrFltWZ785LUaGzbXU5nkAap5blVmRIsnVA9ZpX6dnGb
	rIzdBW/yT7wj4BHOkvBjU/HZEpJaKd3kLe3Ohl5gWbDuSxYkg1jHEA6lc0wHNL8XiPsD6GPxhsz/N
	dnpmp5lJQ32AVClCTxJGpeE5MzDLChr6R0BNW9P9q8JbOpx6xCGpLAKr7Ee91zxRCwvQ5cwVTqUqY
	2U/lz0JodSMEcFH/5dWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjw0-0004AN-8B; Wed, 29 Apr 2020 10:27:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjvE-0003uy-7j
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:26:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADEBDC14;
 Wed, 29 Apr 2020 03:26:31 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 445393F73D;
 Wed, 29 Apr 2020 03:26:30 -0700 (PDT)
Date: Wed, 29 Apr 2020 11:26:28 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 10/23] arm64: mte: Handle synchronous and asynchronous
 tag check faults
Message-ID: <20200429102628.GB30377@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-11-catalin.marinas@arm.com>
 <20200427165822.GE15808@arm.com> <20200428134301.GI3868@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428134301.GI3868@gaia>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_032632_376584_7EAE2D9C 
X-CRM114-Status: GOOD (  23.15  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 02:43:01PM +0100, Catalin Marinas wrote:
> On Mon, Apr 27, 2020 at 05:58:22PM +0100, Dave P Martin wrote:
> > On Tue, Apr 21, 2020 at 03:25:50PM +0100, Catalin Marinas wrote:
> > > From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > > 
> > > The Memory Tagging Extension has two modes of notifying a tag check
> > > fault at EL0, configurable through the SCTLR_EL1.TCF0 field:
> > > 
> > > 1. Synchronous raising of a Data Abort exception with DFSC 17.
> > > 2. Asynchronous setting of a cumulative bit in TFSRE0_EL1.
> > > 
> > > Add the exception handler for the synchronous exception and handling of
> > > the asynchronous TFSRE0_EL1.TF0 bit setting via a new TIF flag in
> > > do_notify_resume().
> > > 
> > > On a tag check failure in user-space, whether synchronous or
> > > asynchronous, a SIGSEGV will be raised on the faulting thread.
> > 
> > Has there been any discussion on whether this should be SIGSEGV or
> > SIGBUS?
> > 
> > Probably neither is much more appropriate than the other.
> 
> You could argue either way. I don't recall a firm conclusion on this, so
> I picked one that follows SPARC ADI.

Agreed, that precedent is good enough for me.  I hadn't refreshed my
memory of how sparc was using these signals.

> 
> > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > > index 339882db5a91..e377d77c065e 100644
> > > --- a/arch/arm64/kernel/signal.c
> > > +++ b/arch/arm64/kernel/signal.c
> > > @@ -732,6 +732,9 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
> > >  	regs->regs[29] = (unsigned long)&user->next_frame->fp;
> > >  	regs->pc = (unsigned long)ka->sa.sa_handler;
> > >  
> > > +	/* TCO (Tag Check Override) always cleared for signal handlers */
> > > +	regs->pstate &= ~PSR_TCO_BIT;
> > > +
> > >  	if (ka->sa.sa_flags & SA_RESTORER)
> > >  		sigtramp = ka->sa.sa_restorer;
> > >  	else
> > > @@ -923,6 +926,11 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
> > >  			if (thread_flags & _TIF_UPROBE)
> > >  				uprobe_notify_resume(regs);
> > >  
> > > +			if (thread_flags & _TIF_MTE_ASYNC_FAULT) {
> > > +				clear_thread_flag(TIF_MTE_ASYNC_FAULT);
> > > +				force_signal_inject(SIGSEGV, SEGV_MTEAERR, 0);
> > > +			}
> > > +
> > 
> > Should this definitely be a force_signal_inject()?
> > 
> > SEGV_MTEAERR is not intrinsically fatal: it must be possible to run past
> > the error, because that's the whole point -- chances are we already did.
> > 
> > Compare this with MTESERR where running past the signal would lead to a
> > spin.
> 
> Good point. This can be a send_sig_fault() (I need to check the right
> API).

Sounds fair.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
