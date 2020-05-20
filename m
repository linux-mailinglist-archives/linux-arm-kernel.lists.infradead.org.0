Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1361DAE0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bj20WTYUybGXxRsFvdwvedqg0MtD5CwpLA/vpBy8OTU=; b=bBePJf6W2BSMn8
	PtXiwQMuvyt5pKFPDZp+1DAzakzEgxCNKexdiKVgZ0Dowo/KkbDRfdC880Xn28nLWdkXes+YTupMX
	vQjFp1IWVEpP1lPSTH01I8mPEg9/Aklq+WErLsZo2r344Wm7wfCA9HVrWpyyN72NkyeB8KT+MC9zm
	8+xmYB43hA/gspcttU2ZKE+9RFEsSAmgLhnLvkUWGiuJkpaGD1Kc/aHxH4DeCx3sPE7A7J5S3gskA
	tjGrJmwUo03VoANhZjMPS15TnlKcgNIhSTIRFD4pyuOxlJx7fCLt0tpEOY2eiAXvbh8dhZ6EPIk6r
	rrcJp2I1c/3JtQBI0arA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKVY-00077G-AH; Wed, 20 May 2020 08:55:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKVI-0006Qd-S8
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:55:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DC822075F;
 Wed, 20 May 2020 08:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589964908;
 bh=xpW2asR4rJzEr3W3Nnqh1TcTtougGLNCQZkQW4rErZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YO4NTX3ETKm8RQJZSZPFLBT3OgN5mdIgvMQRyqY8v8EGsEH3JwgqG466gBxEZmLfV
 U8YTklPXxGuY48xI0CxjPV2DWosAdiLekWGus6487lz3VGvTVtdHkFzw1h+eZxTXw8
 SCk6MApkc+Cx2PeZyuakB3V7iGcpQiuUcce7rQ0E=
Date: Wed, 20 May 2020 09:55:03 +0100
From: Will Deacon <will@kernel.org>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
Message-ID: <20200520085502.GC24293@willie-the-truck>
References: <20200508020106.136652-1-pcc@google.com>
 <20200513180914.50892-1-pcc@google.com>
 <20200513202808.GY21779@arm.com>
 <CAMn1gO4V05nD-Tq4dES0QyO73bAT-Nwo1ABnz0nuous8Rq+dGA@mail.gmail.com>
 <20200518095313.GZ21779@arm.com>
 <CAMn1gO4c3-hG_i6ZWsk-+oUGQQBdzFJRMrpehT3OFERF2Z7nrg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMn1gO4c3-hG_i6ZWsk-+oUGQQBdzFJRMrpehT3OFERF2Z7nrg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_015508_972912_7E82EBB7 
X-CRM114-Status: GOOD (  23.80  )
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 03:00:12PM -0700, Peter Collingbourne wrote:
> On Mon, May 18, 2020 at 2:53 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > On Thu, May 14, 2020 at 05:58:21PM -0700, Peter Collingbourne wrote:
> > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > > index baa88dc02e5c..5867f2fdbe64 100644
> > > --- a/arch/arm64/kernel/signal.c
> > > +++ b/arch/arm64/kernel/signal.c
> > > @@ -648,6 +648,7 @@ static int setup_sigframe(struct
> > > rt_sigframe_user_layout *user,
> > >                 __put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
> > >                 __put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
> > >                 __put_user_error(current->thread.fault_code,
> > > &esr_ctx->esr, err);
> > > +               current->thread.fault_code = 0;
> >
> > Perhaps, but we'd need to be careful.  For example, can we run out of
> > user stack before this and deliver a SIGSEGV, but with the old
> > fault_code still set?  Then we'd emit the old fault code with the
> > new "can't deliver signal" signal, which doesn't make sense.
> >
> > Stuff may also go wrong with signal prioritisation.
> >
> > If a higher-priority signal (say SIGINT) comes in after a data abort
> > enters the kernel but before the resulting SIGSEGV is dequeued for
> > delivery, wouldn't we deliver SIGINT first, with the bogus fault code?
> > With your change we'd then have cleared the fault code by the time we
> > deliver the SIGSEGV it actually relates to, if I've understood right.
> >
> > Today, I think we just attach that fault code to every signal that's
> > delivered until something overwrites or resets it, which means that
> > a signal that needs fault_code gets it, at the expense of attaching
> > it to a bunch of other random signals too.
> >
> >
> > Checking the signal number and si_code might help us to know what we
> > should be doing with fault_code.  We need to have sure userspace can't
> > trick us with a non kernel generated signal here.  It would also be
> > necessary to check how PTRACE_SETSIGINFO interacts with this.
> 
> With these possible interactions in mind I think we should store the
> fault code and fault address in kernel_siginfo instead of
> thread_struct (and clear these fields when we receive a siginfo from
> userspace, i.e. in copy_siginfo_from_user which is used by
> ptrace(PTRACE_SETSIGINFO) among other places). That way, the
> information is clearly associated with the signal itself and not the
> thread, so we don't need to worry about our signal being delivered out
> of order.

Hmm, I can't see a way to do that that isn't horribly invasive in the core
signal code. Can you?

But generally, I agree: the per-thread handling of fault_address and
fault_code appears to be quite broken in the face of signal prioritisation
and signals that don't correspond directly to hardware trap. It would be
nice to have some tests for this...

If we want to pile on more bodges, perhaps we could stash the signal number
to which the fault_{address,code} relate, and then check that at delivery
and clear on a match. I hate it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
