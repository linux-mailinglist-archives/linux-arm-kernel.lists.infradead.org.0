Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C73D1DB059
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUgcxKwGc3ZA/e8CYorVBCiSB1HLhCzjFUlI7PtDpRw=; b=JrADrp1ap+YRZd
	t56tA+IKF3kbHSFG8QnYF5w9jtoqwBvHofmEtmLyOQFDJy4BuLzv+nwwelhUcr9zzoWsoOdF6FB6a
	Z3FOS5mn+zCxMa01XEht90C4k0gIoXw01LSNwaDje0fFvUmE9gXd6f1i53Asq4Jrfyq5RUjx2N3kq
	AantVLt9xWVXA2PPT8MSBjqFXKOJKDdZd360/+1JJ09+6/625J0a9KaRpUOTO/EBfphjqm8pTYv2b
	rQDhu2TL9l/3vOVYxhIgXuiqA3Gwl2+rrKIQW8szAaklUYsQZ3VRqXBccS477N1MDv7PgERBPEUhQ
	vxzom34f4JL7KpkRBOHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbM6E-00015z-9q; Wed, 20 May 2020 10:37:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbM5d-000137-Kq
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:36:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13D95207C4;
 Wed, 20 May 2020 10:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589971005;
 bh=ZuYOcvxDsTtKEJBso9cC8rTC6FvzLQzvFBD4wCTB1SE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yXGeiyTf1weXMsbXJi4/hoLtq4zGzxHr/Y0gl6T9HBIc7SQhxjP4guVt7Bv3La33I
 Zvtxm7ehv7hGgdF8M9g3I2FvRzqOPQ8N3cU98qVeCGPDdB0vKIQqgs33vMNv9kfHUq
 f0tcyZRwBPWeYSpu8PV5CmoUPRvyUDBsF8vO0N54=
Date: Wed, 20 May 2020 11:36:40 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 2/2] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200520103640.GA25539@willie-the-truck>
References: <20200519162821.16857-1-will@kernel.org>
 <20200519162821.16857-3-will@kernel.org>
 <20200520094212.GK5031@arm.com>
 <20200520095027.GE24293@willie-the-truck>
 <20200520102747.GM5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520102747.GM5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_033645_724215_C96F58BF 
X-CRM114-Status: GOOD (  25.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 11:27:47AM +0100, Dave Martin wrote:
> On Wed, May 20, 2020 at 10:50:28AM +0100, Will Deacon wrote:
> > On Wed, May 20, 2020 at 10:42:13AM +0100, Dave Martin wrote:
> > > On Tue, May 19, 2020 at 05:28:21PM +0100, Will Deacon wrote:
> > > > @@ -14,7 +18,34 @@
> > > >  
> > > >  	.text
> > > >  
> > > > -	nop
> > > > +/* Ensure that the mysterious NOP can be associated with a function. */
> > > > +	.cfi_startproc
> > > > +
> > > > +/*
> > > > + * .cfi_signal_frame causes the corresponding Frame Description Entry in the
> > > > + * .eh_frame section to be annotated as a signal frame. This allows DWARF
> > > > + * unwinders (e.g. libstdc++) to implement _Unwind_GetIPInfo(), which permits
> > > > + * unwinding out of the signal trampoline without the need for the mysterious
> > > > + * NOP.
> > > > + */
> > > > +	.cfi_signal_frame
> > > > +
> > > > +/*
> > > > + * Tell the unwinder where to locate the frame record linking back to the
> > > > + * interrupted context.
> > > > + */
> > > > +	.cfi_def_cfa    x29, 0
> > > > +	.cfi_offset     x29, 0 * 8
> > > > +	.cfi_offset     x29, 1 * 8
> > > 
> > > We should also give rationale for why we don't describe how to recover
> > > other regs here.  At a signal, every reg is potentially live with data
> > > essential to the backtrace, so custom unwind entries further up the
> > > stack may unwind badly after trying to unwind out of the signal handler.
> > 
> > Hmm, I'm not sure I get what you're asking for. We can't recover the other
> > registers even if we tried, can we? I think the only way to get a reliable
> > backtrace here is not to clobber the framepointer.
> 
> A caller somewhere up the stack could have stashed stuff in nonstandard
> places, with a custom unwind entry that doesn't use x29 in the usual way.
> 
> If x29 and x30 were stashed in x8 and x9, say, then the unwinder needs
> to restore x8 and x9 correctly before that frame is reached.  Dwarf
> unwind tables are expressive enough to describe how to unwind such a
> frames: the directives work on all the registers, not just x29, lr.

Understood, I just can't figure out how we could support that even if we
wanted to. The only evidence we have of those registers is in the
sigcontext, but that may have been modified by the time we end up in the
return trampoline. Would we need to push the registers twice (i.e. expand
the frame record to include the GPRs)? Not saying we should do this, just
wondering what it would take.

> For this kind of unwinding scenario to wokr, the userspace environment
> would need to provide correct unwind info for _everything_ rather than
> relying on the frame chain on the stack alone, so this scenario isn't
> applicable to C.
> 
> I'm not saying we should try to support this, but a comment to indicate
> what we are and are not trying to do might be a good idea.
> 
> How about something along these lines:
> 
> /*
>  * Don't try to provide unwind into for the other regs of the
>  * interrupted context here.  C/C++ based runtimes don't rely on
>  * this for unwinding in practice.  Debuggers need more, but they
>  * already have baked-in knowledge about how to unwind out of
>  * signals.
>  */

I'll fold that in, thanks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
