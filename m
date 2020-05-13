Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678181D0705
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 08:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubwp5FiurRF+ahzb2CZHbCnLs4jVdqavjpJpQwDGB9M=; b=nqRKta9mFAwNkt
	U967Z9YEWyIzxtBSARc+ENOvPmYbyaC94Or0ix4kadSdpiKDLgVjfHyFobZHp8fsa4pNso8o1f3x9
	CD2JtYWXPAv4297K0xc8aEY+uf4w6YiPkKQBLFIndPtttcjGB9KCmkAbWwLeom72/9SLmECe1+6Zz
	8UurXOdvlSvZSECyR1rnCtLKQ7eS5Vo6KE9Oy4jc/QoutU73uVR/5Fwnis3Z9VedFMxeAGb2psccD
	aMM4Gx1lbqMZy4pQIkFDzoq3z7bMIyi/MMKjE63xquEpuOOx0EydPmCMG8bVgyj0DScR78aUHTP4I
	k4HTLRR4brLPJ7lI6Zag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYkiQ-0006NH-FZ; Wed, 13 May 2020 06:18:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYkiH-0006Mq-UL
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 06:17:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 265FA206B7;
 Wed, 13 May 2020 06:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589350673;
 bh=MzICw58ueTIcZPjAHA1rhxAPW7fC1iatHDfRyo1z5vE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hr/mqpP2SnBe6bfko189D9OZLbaZn2kNpTtaq0L1QMOc59QWkBDFGPsMR47i7Z8lD
 Fg5kVOp0tCi4w7QBCfhfzhGwqWLKyCKK1/pU5h5Arvyoqr43jzuxE3OpAsNn1BQ9SB
 /nVwh0/GHj1ZLwjRcTmxDMkfwQDA+/0NMipcG8kA=
Date: Wed, 13 May 2020 07:17:46 +0100
From: Will Deacon <will@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 05/11] arm64: Add call_break_hook() to early_brk64()
 for early kgdb
Message-ID: <20200513061745.GB17433@willie-the-truck>
References: <20200428211351.85055-1-dianders@chromium.org>
 <20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
 <20200511145908.GA22040@willie-the-truck>
 <CAD=FV=W1F-B7SUwxebhhH2HS+fN4sYv4RHvvKud5a+00J0T=SA@mail.gmail.com>
 <20200512073552.GA1538@willie-the-truck>
 <CAD=FV=WuKS7c4WNiLKm+bjRF8Rd7wM1y7THWzJhVhUyExNiiVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=WuKS7c4WNiLKm+bjRF8Rd7wM1y7THWzJhVhUyExNiiVg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_231754_015253_49FCC1CD 
X-CRM114-Status: GOOD (  27.58  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 jinho lim <jordan.lim@samsung.com>, Andy Gross <agross@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Allison Randal <allison@lohutok.net>, Sumit Garg <sumit.garg@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Jason Wessel <jason.wessel@windriver.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Doug,

On Tue, May 12, 2020 at 08:27:50AM -0700, Doug Anderson wrote:
> On Tue, May 12, 2020 at 12:36 AM Will Deacon <will@kernel.org> wrote:
> > On Mon, May 11, 2020 at 03:45:02PM -0700, Doug Anderson wrote:
> > > On Mon, May 11, 2020 at 7:59 AM Will Deacon <will@kernel.org> wrote:
> > > > On Tue, Apr 28, 2020 at 02:13:45PM -0700, Douglas Anderson wrote:
> > > > > diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> > > > > index cf402be5c573..a8173f0c1774 100644
> > > > > --- a/arch/arm64/kernel/traps.c
> > > > > +++ b/arch/arm64/kernel/traps.c
> > > > > @@ -1044,6 +1044,9 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
> > > > >       if ((comment & ~KASAN_BRK_MASK) == KASAN_BRK_IMM)
> > > > >               return kasan_handler(regs, esr) != DBG_HOOK_HANDLED;
> > > > >  #endif
> > > > > +     if (call_break_hook(regs, esr) == DBG_HOOK_HANDLED)
> > > > > +             return 0;
> > > >
> > > > I think this just means we're not running debug_traps_init() early enough,
> > > > and actually the KASAN early handler is unnecessary too.
> > > >
> > > > If we call debug_traps_init() directly from setup_arch() and drop the
> > > > arch_initcall(), can we then drop early_brk64 entirely?
> > >
> > > It seems to work in my testing.  ...but the worry I have is the
> > > comment right before trap_init().  It says:
> > >
> > > /* This registration must happen early, before debug_traps_init(). */
> >
> > I /think/ the reason for this is because debug_traps_init() replaces the
> > BRK vector, so if that runs before the break hooks have been registered
> > for e.g. BUG() then BUG() won't work during that window. Hmm, so dropping
> > early_brk64 is problematic after all. Damn.
> >
> > Is trap_init() early enough for you? If so, we could call debug_traps_init()
> > from traps_init() after registering the break hooks.
> 
> "Early enough" is a subjective term, of course.  The earlier we can
> init, the earlier we can drop into the debugger.  ...but, of course,
> everyone thinks their feature is the most important and should be
> first, so let's see...
> 
> Certainly if we waited until trap_init() it wouldn't be early enough
> to set "ARCH_HAS_EARLY_DEBUG".  Setting that means that debugging is
> ready when early params are parsed and those happen at the start of
> setup_arch().  The call to trap_init() happens a bit later.
> 
> If we decide that we just don't care about getting
> "ARCH_HAS_EARLY_DEBUG" to work then the earliest we'll be able to
> break into the debugger (via kgdbwait) is dbg_late_init().  That
> _does_ happen after trap_init() so your solution would work.
> 
> As a person who spends most of his time in driver land, it wouldn't be
> the end of the world to wait for dbg_late_init().  That's still much
> earlier than most code I'd ever debug.  ...and, bonus points is that
> if we hit a crash any time after earlyparams we _will_ still drop into
> the debugger.  It's only breakpoints that won't be available until
> dbg_late_init().
> 
> 
> tl;dr:
> 
> * If we care about "kgdbwait" and breakpoints working as early as
> possible then we need my patch.
> 
> * If we are OK w/ a slightly later "kgdbwait" then I think we can move
> debug_traps_init() to trap_init() and get rid of the early version.
> 
> 
> Please let me know which way you'd like to proceed.

Let's go with the trap_init() approach for now, and we can revisit it later
if somebody has a compelling reason to initialise things earlier. However,
I don't think you can remove early_brk64(), as it's needed for BUG() to
work correctly.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
