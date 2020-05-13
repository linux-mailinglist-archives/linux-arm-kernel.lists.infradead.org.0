Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2421D22BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 01:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YW7Kw/8mz8ondKffqoSMluqYapT3fVPQIhW1PMYcIvA=; b=hu42LW/slZOb5R
	9E19sJZlVBKO2RyWAQhl8Dpry6QDFc6dJFdLkBDXGqGDokckrA+VlrZn3Q1azXaFhW4WpWSGxvbFx
	yv95ksLOHXtJqPydCRbe9eBXv0P4tkLF5v9JtwOoAFU5wO7SQSDSq+YgLJ9D8BOfgRChsOQ6KFL3Q
	o2Z91umey+va+YS0xnrCZnlZTvLgpZW6CBWSI6LF1+vfPaIXS94jdzKVlDEciTLppeBXRkOiAlDLQ
	VKdkB72EYLZZh23wUu8Z/ce4ikL3UgBenzwZCEPMTO881dHpeGDc2WkdkqdTaqVPZnOiLpRh8zqbi
	TKc/GIHYHDcm+J/j3/JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0UR-0007S0-CE; Wed, 13 May 2020 23:08:39 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0UH-0007Rb-Ne
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 23:08:31 +0000
Received: by mail-vs1-xe44.google.com with SMTP id l25so860886vso.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 16:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qrc+zALKhm7UR0okg2VxygijLhPHdyDYt6UnXc1+qEk=;
 b=Qh7lvFu7Q7FSluMhlA+8KOS62pXg1rxQC1Ogk+ACNtMIaCyE9ShN6VB9f9gGDvteW4
 gypT5Ev3vDl69jha5hOD76TZn8yRrjhUMxAWk1zqNUDl4SXtliMPJmL50nvFC0c/bC3V
 lRIsq85AmTyx2GxwUTqokmeiKV/xXeYZWSBXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qrc+zALKhm7UR0okg2VxygijLhPHdyDYt6UnXc1+qEk=;
 b=FJkzK+PqCCDDrHMdwRl8JdSJRV3dPMsLGi0GDZHE6Auk8uQzlaUNA+wu16bxTeTsj3
 ulYezg3y/jyQHgulZF9DxT31yTv1nm3GVsPVoT9UF9OVZ7k0L7jYrj7ZPsC06QzqMGd7
 v38a7hGJJjGC3SbDdFRpuueHmFCx5cT/EjAIsup16Kd5Yb+zUoismjYGYEC/ji8XQDyR
 nHqNdEstsa+zTNSaxEl7luqlSG/sn7v2bTgWIn/q8bV25d/Ok6BghfKmaXcPCid8Fxr8
 hsgnSm91qZ9VxtCPcHuv8ETXLz5WLFtO523rVPEvu8gQ+V61vgubUiyaqTigNC53VA0n
 Yr9g==
X-Gm-Message-State: AOAM531o2LcBXQkefmmqzGSQVTOeaZTQbueq4R0vysGjlHLIHAS5iXHx
 /JncLQrArTYRI6Nn3ft+riXcdH9nM1Q=
X-Google-Smtp-Source: ABdhPJxyhM+OvlP51DAw4/7/vr08uuPMRo1ZZtLes+l0VFpXO/lHJ290oyId4yCxSvFduX25RM/1MA==
X-Received: by 2002:a67:941:: with SMTP id 62mr1508292vsj.146.1589411308573;
 Wed, 13 May 2020 16:08:28 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com.
 [209.85.217.46])
 by smtp.gmail.com with ESMTPSA id u13sm295374vsg.12.2020.05.13.16.08.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 16:08:28 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id 1so849623vsl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 16:08:26 -0700 (PDT)
X-Received: by 2002:a1f:9605:: with SMTP id y5mr1422470vkd.75.1589411305040;
 Wed, 13 May 2020 16:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200428211351.85055-1-dianders@chromium.org>
 <20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
 <20200511145908.GA22040@willie-the-truck>
 <CAD=FV=W1F-B7SUwxebhhH2HS+fN4sYv4RHvvKud5a+00J0T=SA@mail.gmail.com>
 <20200512073552.GA1538@willie-the-truck>
 <CAD=FV=WuKS7c4WNiLKm+bjRF8Rd7wM1y7THWzJhVhUyExNiiVg@mail.gmail.com>
 <20200513061745.GB17433@willie-the-truck>
In-Reply-To: <20200513061745.GB17433@willie-the-truck>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 May 2020 16:08:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U+JiK1_Lka1PB9DWTsKOowhL+Q+i1yK7=T-4E+zue36g@mail.gmail.com>
Message-ID: <CAD=FV=U+JiK1_Lka1PB9DWTsKOowhL+Q+i1yK7=T-4E+zue36g@mail.gmail.com>
Subject: Re: [PATCH v3 05/11] arm64: Add call_break_hook() to early_brk64()
 for early kgdb
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_160829_773319_18628742 
X-CRM114-Status: GOOD (  30.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, May 12, 2020 at 11:17 PM Will Deacon <will@kernel.org> wrote:
>
> Hey Doug,
>
> On Tue, May 12, 2020 at 08:27:50AM -0700, Doug Anderson wrote:
> > On Tue, May 12, 2020 at 12:36 AM Will Deacon <will@kernel.org> wrote:
> > > On Mon, May 11, 2020 at 03:45:02PM -0700, Doug Anderson wrote:
> > > > On Mon, May 11, 2020 at 7:59 AM Will Deacon <will@kernel.org> wrote:
> > > > > On Tue, Apr 28, 2020 at 02:13:45PM -0700, Douglas Anderson wrote:
> > > > > > diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> > > > > > index cf402be5c573..a8173f0c1774 100644
> > > > > > --- a/arch/arm64/kernel/traps.c
> > > > > > +++ b/arch/arm64/kernel/traps.c
> > > > > > @@ -1044,6 +1044,9 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
> > > > > >       if ((comment & ~KASAN_BRK_MASK) == KASAN_BRK_IMM)
> > > > > >               return kasan_handler(regs, esr) != DBG_HOOK_HANDLED;
> > > > > >  #endif
> > > > > > +     if (call_break_hook(regs, esr) == DBG_HOOK_HANDLED)
> > > > > > +             return 0;
> > > > >
> > > > > I think this just means we're not running debug_traps_init() early enough,
> > > > > and actually the KASAN early handler is unnecessary too.
> > > > >
> > > > > If we call debug_traps_init() directly from setup_arch() and drop the
> > > > > arch_initcall(), can we then drop early_brk64 entirely?
> > > >
> > > > It seems to work in my testing.  ...but the worry I have is the
> > > > comment right before trap_init().  It says:
> > > >
> > > > /* This registration must happen early, before debug_traps_init(). */
> > >
> > > I /think/ the reason for this is because debug_traps_init() replaces the
> > > BRK vector, so if that runs before the break hooks have been registered
> > > for e.g. BUG() then BUG() won't work during that window. Hmm, so dropping
> > > early_brk64 is problematic after all. Damn.
> > >
> > > Is trap_init() early enough for you? If so, we could call debug_traps_init()
> > > from traps_init() after registering the break hooks.
> >
> > "Early enough" is a subjective term, of course.  The earlier we can
> > init, the earlier we can drop into the debugger.  ...but, of course,
> > everyone thinks their feature is the most important and should be
> > first, so let's see...
> >
> > Certainly if we waited until trap_init() it wouldn't be early enough
> > to set "ARCH_HAS_EARLY_DEBUG".  Setting that means that debugging is
> > ready when early params are parsed and those happen at the start of
> > setup_arch().  The call to trap_init() happens a bit later.
> >
> > If we decide that we just don't care about getting
> > "ARCH_HAS_EARLY_DEBUG" to work then the earliest we'll be able to
> > break into the debugger (via kgdbwait) is dbg_late_init().  That
> > _does_ happen after trap_init() so your solution would work.
> >
> > As a person who spends most of his time in driver land, it wouldn't be
> > the end of the world to wait for dbg_late_init().  That's still much
> > earlier than most code I'd ever debug.  ...and, bonus points is that
> > if we hit a crash any time after earlyparams we _will_ still drop into
> > the debugger.  It's only breakpoints that won't be available until
> > dbg_late_init().
> >
> >
> > tl;dr:
> >
> > * If we care about "kgdbwait" and breakpoints working as early as
> > possible then we need my patch.
> >
> > * If we are OK w/ a slightly later "kgdbwait" then I think we can move
> > debug_traps_init() to trap_init() and get rid of the early version.
> >
> >
> > Please let me know which way you'd like to proceed.
>
> Let's go with the trap_init() approach for now, and we can revisit it later
> if somebody has a compelling reason to initialise things earlier. However,
> I don't think you can remove early_brk64(), as it's needed for BUG() to
> work correctly.

Posted at:

https://lore.kernel.org/r/20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid

I'll also reply to the v4 version of this patch to point at it.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
