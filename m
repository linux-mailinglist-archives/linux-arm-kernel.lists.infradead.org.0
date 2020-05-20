Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945BA1DAEAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BSggMqlCppDjB3o/uOyWbxAzSFefgnmIGIiaOiV3gM=; b=BpYuiJPqDRAivj
	IaX4VkYItrhG8S0bBfT0b347bbTOuvcNJDQPQ6DgG8Ooy8RtFiJKGqN/xBsuzSoBidnpqoVblZRmf
	dbNgIjHeOZoFZPvZMghSjXs6YDScCP9395B06ua1uZvFqeRBEoGWAh9HZWkyR3zyA2LpmC+AcOf0c
	/aZ3NJtegCNbpSg+Wpo5S4OAhd1mwPLYvGJMasGSWS7YqhEiYNw2fuRgDswan2L0x38jZYiu4NMz1
	xr94W3my4dSYykDo4IqR0g2DbvXkvHnEXRBZeJ/QMZSE4sm05rJrDLCXwgX7ll3aq075T6CS8urD4
	vKClaCqqDWXCd10LfcTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKzN-0004Hc-Ps; Wed, 20 May 2020 09:26:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKzE-0004H8-QQ
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:26:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89FD030E;
 Wed, 20 May 2020 02:26:03 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 390563F68F;
 Wed, 20 May 2020 02:26:02 -0700 (PDT)
Date: Wed, 20 May 2020 10:26:00 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
Message-ID: <20200520092558.GI5031@arm.com>
References: <20200508020106.136652-1-pcc@google.com>
 <20200513180914.50892-1-pcc@google.com>
 <20200513202808.GY21779@arm.com>
 <CAMn1gO4V05nD-Tq4dES0QyO73bAT-Nwo1ABnz0nuous8Rq+dGA@mail.gmail.com>
 <20200518095313.GZ21779@arm.com>
 <CAMn1gO4c3-hG_i6ZWsk-+oUGQQBdzFJRMrpehT3OFERF2Z7nrg@mail.gmail.com>
 <20200520085502.GC24293@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520085502.GC24293@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_022604_941709_EFDA0EFA 
X-CRM114-Status: GOOD (  30.03  )
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Evgenii Stepanov <eugenis@google.com>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 09:55:03AM +0100, Will Deacon wrote:
> On Tue, May 19, 2020 at 03:00:12PM -0700, Peter Collingbourne wrote:
> > On Mon, May 18, 2020 at 2:53 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > > On Thu, May 14, 2020 at 05:58:21PM -0700, Peter Collingbourne wrote:
> > > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > > > index baa88dc02e5c..5867f2fdbe64 100644
> > > > --- a/arch/arm64/kernel/signal.c
> > > > +++ b/arch/arm64/kernel/signal.c
> > > > @@ -648,6 +648,7 @@ static int setup_sigframe(struct
> > > > rt_sigframe_user_layout *user,
> > > >                 __put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
> > > >                 __put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
> > > >                 __put_user_error(current->thread.fault_code,
> > > > &esr_ctx->esr, err);
> > > > +               current->thread.fault_code = 0;
> > >
> > > Perhaps, but we'd need to be careful.  For example, can we run out of
> > > user stack before this and deliver a SIGSEGV, but with the old
> > > fault_code still set?  Then we'd emit the old fault code with the
> > > new "can't deliver signal" signal, which doesn't make sense.
> > >
> > > Stuff may also go wrong with signal prioritisation.
> > >
> > > If a higher-priority signal (say SIGINT) comes in after a data abort
> > > enters the kernel but before the resulting SIGSEGV is dequeued for
> > > delivery, wouldn't we deliver SIGINT first, with the bogus fault code?
> > > With your change we'd then have cleared the fault code by the time we
> > > deliver the SIGSEGV it actually relates to, if I've understood right.
> > >
> > > Today, I think we just attach that fault code to every signal that's
> > > delivered until something overwrites or resets it, which means that
> > > a signal that needs fault_code gets it, at the expense of attaching
> > > it to a bunch of other random signals too.
> > >
> > >
> > > Checking the signal number and si_code might help us to know what we
> > > should be doing with fault_code.  We need to have sure userspace can't
> > > trick us with a non kernel generated signal here.  It would also be
> > > necessary to check how PTRACE_SETSIGINFO interacts with this.
> > 
> > With these possible interactions in mind I think we should store the
> > fault code and fault address in kernel_siginfo instead of
> > thread_struct (and clear these fields when we receive a siginfo from
> > userspace, i.e. in copy_siginfo_from_user which is used by
> > ptrace(PTRACE_SETSIGINFO) among other places). That way, the
> > information is clearly associated with the signal itself and not the
> > thread, so we don't need to worry about our signal being delivered out
> > of order.
> 
> Hmm, I can't see a way to do that that isn't horribly invasive in the core
> signal code. Can you?
> 
> But generally, I agree: the per-thread handling of fault_address and
> fault_code appears to be quite broken in the face of signal prioritisation
> and signals that don't correspond directly to hardware trap. It would be
> nice to have some tests for this...
> 
> If we want to pile on more bodges, perhaps we could stash the signal number
> to which the fault_{address,code} relate, and then check that at delivery
> and clear on a match. I hate it.

I agree with Daniel's suggestion in principle, but I was also concerned
about whether it would be too invasive elsewhere.

Question though: does the core code take special care to make sure that
a force_sig cannot be outprioritised by a regular signal?  If so,
perhaps we get away with it.  I ask this, because the same same issue
may be hitting other arches otherwise.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
