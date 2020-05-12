Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1244B1CEE4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLQYfZ0+sVrFAfiCBTK663qt2UlqZRu2DwkWBJ621Ws=; b=gXYEqw7eGDKkuE
	f1EVyajRFaeVB/GYC8e4KFzu6Q/7YZXTP1rOFhNtSIa4EqsSLiOItkD1RHsEMvVRr5jML9FFI+giY
	w7Rtz7j8Ge0blrZCo9HDPIyy9dMAlRR/q6+mHgnbw9Cthj52Sak0ERBD3kopYLuaHlv/SWnC1+Zmn
	cROFubOQqOTRdLEqHjP7UQ5hBTna5IyJ1gV/rmvwlkIeACAvxtKMH7DC59PnaytBxz3AN/H6cvjLw
	sBEm/3iKnG/B+nvqU4Mq+brgtSnyBIO4yz4QcSzEVe9+sDrSozU3UWp3pxkkxc3rPxSWFnCDy7yh3
	JBs+9iANU+fOSUFJf2Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPTN-0001oR-B5; Tue, 12 May 2020 07:37:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPSM-00015I-VD
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:36:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5F32206B7;
 Tue, 12 May 2020 07:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589268960;
 bh=mwdUCDRsQcd4tBUSrGY2SY7Tr80S7IIqcEq7gM+QFyo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t5R7cSJlDsOP/Rq15vISPrYY6nRgt0EcIH9XTuDyRC2GPJ6DWnRnmhKdfTiy4a30Y
 VJDL7O2w+OjJd6KbOlyAT9++Kn8lwIjNjkC+57eIGAzvYLg5+3SymfzalRlvTKRmLj
 Akz/XtkhIvyCU63jhozKZ3BdSOgowTXCmGBDg64I=
Date: Tue, 12 May 2020 08:35:53 +0100
From: Will Deacon <will@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 05/11] arm64: Add call_break_hook() to early_brk64()
 for early kgdb
Message-ID: <20200512073552.GA1538@willie-the-truck>
References: <20200428211351.85055-1-dianders@chromium.org>
 <20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
 <20200511145908.GA22040@willie-the-truck>
 <CAD=FV=W1F-B7SUwxebhhH2HS+fN4sYv4RHvvKud5a+00J0T=SA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=W1F-B7SUwxebhhH2HS+fN4sYv4RHvvKud5a+00J0T=SA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003603_096496_15D447FE 
X-CRM114-Status: GOOD (  19.03  )
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

On Mon, May 11, 2020 at 03:45:02PM -0700, Doug Anderson wrote:
> On Mon, May 11, 2020 at 7:59 AM Will Deacon <will@kernel.org> wrote:
> > On Tue, Apr 28, 2020 at 02:13:45PM -0700, Douglas Anderson wrote:
> > > diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> > > index 48222a4760c2..59c353dfc8e9 100644
> > > --- a/arch/arm64/kernel/debug-monitors.c
> > > +++ b/arch/arm64/kernel/debug-monitors.c
> > > @@ -297,7 +297,7 @@ void unregister_kernel_break_hook(struct break_hook *hook)
> > >       unregister_debug_hook(&hook->node);
> > >  }
> > >
> > > -static int call_break_hook(struct pt_regs *regs, unsigned int esr)
> > > +int call_break_hook(struct pt_regs *regs, unsigned int esr)
> > >  {
> > >       struct break_hook *hook;
> > >       struct list_head *list;
> > > diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> > > index cf402be5c573..a8173f0c1774 100644
> > > --- a/arch/arm64/kernel/traps.c
> > > +++ b/arch/arm64/kernel/traps.c
> > > @@ -1044,6 +1044,9 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
> > >       if ((comment & ~KASAN_BRK_MASK) == KASAN_BRK_IMM)
> > >               return kasan_handler(regs, esr) != DBG_HOOK_HANDLED;
> > >  #endif
> > > +     if (call_break_hook(regs, esr) == DBG_HOOK_HANDLED)
> > > +             return 0;
> >
> > I think this just means we're not running debug_traps_init() early enough,
> > and actually the KASAN early handler is unnecessary too.
> >
> > If we call debug_traps_init() directly from setup_arch() and drop the
> > arch_initcall(), can we then drop early_brk64 entirely?
> 
> It seems to work in my testing.  ...but the worry I have is the
> comment right before trap_init().  It says:
> 
> /* This registration must happen early, before debug_traps_init(). */

I /think/ the reason for this is because debug_traps_init() replaces the
BRK vector, so if that runs before the break hooks have been registered
for e.g. BUG() then BUG() won't work during that window. Hmm, so dropping
early_brk64 is problematic after all. Damn.

Is trap_init() early enough for you? If so, we could call debug_traps_init()
from traps_init() after registering the break hooks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
