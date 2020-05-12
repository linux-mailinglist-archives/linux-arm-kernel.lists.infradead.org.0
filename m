Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF31B1CF950
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 17:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32mlC0YFVAdx5/M5yus3IVzwOpd4GY5QvnnttsZMLsc=; b=lhEt66H/wPwBye
	9qI5y9/mtJV5oSD4CFqa6hUOwQTTZdZV5DLm4yE8+ANEmvrepu+P8gJSZBpzSHug4uoIwn5rPAIg+
	qF6HhZU+QLaAkzrEf5WPCJ3qM2ESAK+I0UHsQ942eWhfLXFuSh4JEUuQEoXpKCq3VCD1xsCMCxmng
	rqtuEAX1Tj6McA+aT5VKN87kDAZ5sBBb/PxCabVyK0m7kCgqwWauAOSpoVZvit7nRpJ92Q+AGjYfC
	12glm70nGKB3FpLygfU0fxKQ6YmllFYzVkLK95D2A1W0MuBhT92YnIElW4RwI1m12ok4XqYJbPFO+
	Agxdh2vFCaH9HJI3tIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWwv-0006Ig-F0; Tue, 12 May 2020 15:36:05 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWwo-0006Hh-8N
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 15:35:59 +0000
Received: by mail-qk1-x743.google.com with SMTP id b6so12904988qkh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 08:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VTYHiGRZeak1+WyqS6xW7NgB9EbujjGNo0rvwUWxcQ4=;
 b=QAXD0bZtkOdjlOb1PJu/i7RYbt9WYWPctvCLBdkulPtQH3wJBaPYW/7w0oEfl47K/w
 yRfY3GOGYldyK3wwLE1FZ3aFek0UZvt57iOdzsmyjkJwSIt6cGxaaN89gSQkiobMJlFa
 JIDWp52Q3/5fGYYA36Jjsm09dcApVGzzQ8PQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VTYHiGRZeak1+WyqS6xW7NgB9EbujjGNo0rvwUWxcQ4=;
 b=qH+ShHrzem6P/P2xkS3zsrJ765Xl1ri0/VHjE9hP4Mn5puvVHj/hrVaO8JxqCJW0Gx
 P/XyHych3y2cLN7p5M9HNN0tkqcDKwz1sdRhJY2K/FGi7JsjMuK4uqzfSRz0JeTiXP2R
 //WWbgsYEB2KcfxAc1q12lUo4TQAe2TRbUdgQFykYZmsJza6BWc1ckp7znsrvcM3MS4Z
 yB1l0JtDRx4zDG4NvSOPZbH47quf+p0stcNYNpagAPxExxf8aR9NBbfvZMHzLmVJWb9x
 77O8v2tjPXi+rzgc1a5sQFGVouVU+l7znH4Pv9lWY3pgY4XhCFVFcpJuQe9+ZmRlghnN
 72Yw==
X-Gm-Message-State: AGi0PuaW0LZc0VpSzWmZaa2lbOgSTe3DLTOj+kWU/q/ZAIIXhaf5uGGL
 Qy4ifXsJXxArnBpcwOdYKVdXpvh0sd4=
X-Google-Smtp-Source: APiQypILedNNMT0BckHA3zA5sFjJ5SXXnQRaICBNEoVLJqT5NxUbmXxm4AGwbqfs3C478jtsLOnnJA==
X-Received: by 2002:a37:4b02:: with SMTP id y2mr20341418qka.178.1589297754639; 
 Tue, 12 May 2020 08:35:54 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com.
 [209.85.219.171])
 by smtp.gmail.com with ESMTPSA id x19sm11086237qkh.42.2020.05.12.08.35.54
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 May 2020 08:35:54 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id d197so7181656ybh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 08:35:54 -0700 (PDT)
X-Received: by 2002:ab0:45c7:: with SMTP id u65mr16628982uau.8.1589297282220; 
 Tue, 12 May 2020 08:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200428211351.85055-1-dianders@chromium.org>
 <20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
 <20200511145908.GA22040@willie-the-truck>
 <CAD=FV=W1F-B7SUwxebhhH2HS+fN4sYv4RHvvKud5a+00J0T=SA@mail.gmail.com>
 <20200512073552.GA1538@willie-the-truck>
In-Reply-To: <20200512073552.GA1538@willie-the-truck>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 12 May 2020 08:27:50 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WuKS7c4WNiLKm+bjRF8Rd7wM1y7THWzJhVhUyExNiiVg@mail.gmail.com>
Message-ID: <CAD=FV=WuKS7c4WNiLKm+bjRF8Rd7wM1y7THWzJhVhUyExNiiVg@mail.gmail.com>
Subject: Re: [PATCH v3 05/11] arm64: Add call_break_hook() to early_brk64()
 for early kgdb
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_083558_320788_BBA1DB44 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
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

Hi,

On Tue, May 12, 2020 at 12:36 AM Will Deacon <will@kernel.org> wrote:
>
> On Mon, May 11, 2020 at 03:45:02PM -0700, Doug Anderson wrote:
> > On Mon, May 11, 2020 at 7:59 AM Will Deacon <will@kernel.org> wrote:
> > > On Tue, Apr 28, 2020 at 02:13:45PM -0700, Douglas Anderson wrote:
> > > > diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> > > > index 48222a4760c2..59c353dfc8e9 100644
> > > > --- a/arch/arm64/kernel/debug-monitors.c
> > > > +++ b/arch/arm64/kernel/debug-monitors.c
> > > > @@ -297,7 +297,7 @@ void unregister_kernel_break_hook(struct break_hook *hook)
> > > >       unregister_debug_hook(&hook->node);
> > > >  }
> > > >
> > > > -static int call_break_hook(struct pt_regs *regs, unsigned int esr)
> > > > +int call_break_hook(struct pt_regs *regs, unsigned int esr)
> > > >  {
> > > >       struct break_hook *hook;
> > > >       struct list_head *list;
> > > > diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> > > > index cf402be5c573..a8173f0c1774 100644
> > > > --- a/arch/arm64/kernel/traps.c
> > > > +++ b/arch/arm64/kernel/traps.c
> > > > @@ -1044,6 +1044,9 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
> > > >       if ((comment & ~KASAN_BRK_MASK) == KASAN_BRK_IMM)
> > > >               return kasan_handler(regs, esr) != DBG_HOOK_HANDLED;
> > > >  #endif
> > > > +     if (call_break_hook(regs, esr) == DBG_HOOK_HANDLED)
> > > > +             return 0;
> > >
> > > I think this just means we're not running debug_traps_init() early enough,
> > > and actually the KASAN early handler is unnecessary too.
> > >
> > > If we call debug_traps_init() directly from setup_arch() and drop the
> > > arch_initcall(), can we then drop early_brk64 entirely?
> >
> > It seems to work in my testing.  ...but the worry I have is the
> > comment right before trap_init().  It says:
> >
> > /* This registration must happen early, before debug_traps_init(). */
>
> I /think/ the reason for this is because debug_traps_init() replaces the
> BRK vector, so if that runs before the break hooks have been registered
> for e.g. BUG() then BUG() won't work during that window. Hmm, so dropping
> early_brk64 is problematic after all. Damn.
>
> Is trap_init() early enough for you? If so, we could call debug_traps_init()
> from traps_init() after registering the break hooks.

"Early enough" is a subjective term, of course.  The earlier we can
init, the earlier we can drop into the debugger.  ...but, of course,
everyone thinks their feature is the most important and should be
first, so let's see...

Certainly if we waited until trap_init() it wouldn't be early enough
to set "ARCH_HAS_EARLY_DEBUG".  Setting that means that debugging is
ready when early params are parsed and those happen at the start of
setup_arch().  The call to trap_init() happens a bit later.

If we decide that we just don't care about getting
"ARCH_HAS_EARLY_DEBUG" to work then the earliest we'll be able to
break into the debugger (via kgdbwait) is dbg_late_init().  That
_does_ happen after trap_init() so your solution would work.

As a person who spends most of his time in driver land, it wouldn't be
the end of the world to wait for dbg_late_init().  That's still much
earlier than most code I'd ever debug.  ...and, bonus points is that
if we hit a crash any time after earlyparams we _will_ still drop into
the debugger.  It's only breakpoints that won't be available until
dbg_late_init().


tl;dr:

* If we care about "kgdbwait" and breakpoints working as early as
possible then we need my patch.

* If we are OK w/ a slightly later "kgdbwait" then I think we can move
debug_traps_init() to trap_init() and get rid of the early version.


Please let me know which way you'd like to proceed.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
