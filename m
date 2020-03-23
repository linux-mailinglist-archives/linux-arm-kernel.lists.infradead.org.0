Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7364218F7CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 15:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OHauRLvO3Q8D/WtifXV+lcd4B8QxUd4ENQhMrVkm5c=; b=nlfmk3Rrp/SBjV
	tX+/DpoFK/3546JFnJOpYOcpOWk1HaC8rxcN7i51pyFVgZW5z4KruH3F7MeTKI1bUJoEZXFD5fHhQ
	YQMjtkcbTcfFKpYlO8Qz9jN1N1Ja4VF/dbgE8dO1+BjIfUxYRWZvTIo5w5vX1pMjB4pyG/S0VezGS
	tKumGiw+UhST8gOb+pGuPV6zzTpY9lk6QVfhcNH6H2PXU8kwLibS2S7peqXQZdazukdpEfWUYWb2a
	oS7pegYnYMKphhgsZnJtuHvS9O6wl4KhYnkjRn8Qao1z1HALIpdBTUoWs0JnoD4dA3zfy8L0LE72H
	YoMKTJiIewWvQ38rEbTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOUo-0006Pq-Ff; Mon, 23 Mar 2020 14:56:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOUe-0006P7-17
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 14:55:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F4851FB;
 Mon, 23 Mar 2020 07:55:54 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 51F243F7C3;
 Mon, 23 Mar 2020 07:55:49 -0700 (PDT)
Date: Mon, 23 Mar 2020 14:55:46 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200323145546.GB3959@C02TD0UTHF1T.local>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200320173945.GC27072@arm.com> <20200323122143.GB4892@mbp>
 <20200323132412.GD4948@sirena.org.uk>
 <20200323135722.GA3959@C02TD0UTHF1T.local>
 <20200323143954.GC4892@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323143954.GC4892@mbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_075556_415143_34A8714B 
X-CRM114-Status: GOOD (  23.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Paul Elliott <paul.elliott@arm.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 02:39:55PM +0000, Catalin Marinas wrote:
> On Mon, Mar 23, 2020 at 01:57:22PM +0000, Mark Rutland wrote:
> > On Mon, Mar 23, 2020 at 01:24:12PM +0000, Mark Brown wrote:
> > > On Mon, Mar 23, 2020 at 12:21:44PM +0000, Catalin Marinas wrote:
> > > > On Fri, Mar 20, 2020 at 05:39:46PM +0000, Szabolcs Nagy wrote:
> > > 
> > > > +int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
> > > > +                        bool has_interp, bool is_interp)
> > > > +{
> > > > +       if (is_interp != has_interp)
> > > > +               return prot;
> > > > +
> > > > +       if (!(state->flags & ARM64_ELF_BTI))
> > > > +               return prot;
> > > > +
> > > > +       if (prot & PROT_EXEC)
> > > > +               prot |= PROT_BTI;
> > > > +
> > > > +       return prot;
> > > > +}
> > > 
> > > > At a quick look, for dynamic binaries we have has_interp == true and
> > > > is_interp == false. I don't know why but, either way, the above code
> > > > needs a comment with some justification.
> > > 
> > > I don't really know for certain either, I inherited this code as is with
> > > the understanding that this was all agreed with the toolchain and libc
> > > people - the actual discussion that lead to the decisions being made
> > > happened before I was involved.  My understanding is that the idea was
> > > that the dynamic linker would be responsible for mapping everything in
> > > dynamic applications other than itself but other than consistency I
> > > don't know why.  I guess it defers more decision making to userspace but
> > > I'm having a hard time thinking of sensible cases where one might wish
> > > to make a decision other than enabling PROT_BTI.
> > 
> > My understanding was this had been agreed with the toolchain folk a
> > while back -- anything static loaded by the kernel (i.e. a static
> > executable or the dynamic linker) would get GP set. In other cases the
> > linker will mess with the permissions on the pages anyhow, and needs to
> > be aware of BTI in order to do the right thing, so it was better to
> > leave it to userspace consistently (e.g. as that had the least risk of
> > subtle changes in behaviour leading to ABI difficulties).
> 
> So this means that the interpreter will have to mprotect(PROT_BTI) the
> text section of the primary executable.

Yes, but after fixing up any relocations in that section it's going to
have to call mprotect() on it anyhow (e.g. in order to make it
read-only), and in doing so would throw away BTI unless it was BTI
aware.

> > I think it would be best to document the current behaviour, as it's a
> > simple ABI that we can guarantee, and the dynamic linker will have to be
> > aware of BTI in order to do the right thing anyhow.
> 
> That's a valid point. If we have an old dynamic linker and the kernel
> enabled BTI automatically for the main executable, could things go wrong
> (e.g. does the PLT need to be BTI-aware)?

I believe that a PLT in an unguarded page needs no special treatment. A
PLT within a guarded page needs to be built specially for BTI.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
