Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B161B6FD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 10:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Re/uF3mKMCNj3BKbVeC2NRoGUSv9H4DYLu/DyEqVF0=; b=DvMYKtPxOJdDqC
	HmP08v2LrDIYOt6yl9pfwu45gsYjhdOu8psqmDtL6tgHNVAnFq0orBuD2h3InCIsj3AODMAGiuIFG
	WZ0dfKv3HTyuUmQj9pMpPotD+DsJqkF7N7rP5PwNTGZhBT0SPXEAq6PRoH85Rc0LATS6LmUAZMVr3
	rGdbakmnZBjVMWNxG3F+JO9YvA73evtArkMuWEeRe3bRPdJRzsDFdlMXPnzjZEn6N9vr07rNLYMP6
	mxCg40DNAsTPEF95iLOXy/Y/jMVPAS16v7RJ+GUS2Im9Lz8DEbidAqNiEPOKjVviA+xYclrJKxkAZ
	hGuD1mQpajFYVtJZIUXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRtls-0005ac-Qx; Fri, 24 Apr 2020 08:33:16 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRtlj-0005Zq-5v
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 08:33:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id x23so7019630lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 01:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vtIuMHtDQNbUkYiyGCewCL5qq4bdMRkvjQNJoxEX90Y=;
 b=E5TR5U/ti8UbcZkhHjHp05W4nW0Fdwmum61DYClA3pnOQk28f3S4Sm7dJms3ttbTa4
 u5Hk8HLtQ3JTejDM+6l0RYq6mBdhrlQQvtoonaS2QVQvJ+UCJj4xM48AChxCSBRnGucl
 /OK/rjE3XwHyVm0vbMaMuW52akQSLqQ1VbNtnEh0ma/fMRVDT0SVdfEzNCOQsWl+eHiX
 CCiQYNTkoYQ44KgBXNFN9FjtI4LFkP8hOeAL8KrYpM4hvBSH8hy1B6msiMYQ4z40mK6n
 e832Na1hjua3X5gLLZ+uzaO0gaMAvXyD+CVbWgtS1C/YpqrRwgyw4Hac3526NtkQ33g4
 +Nmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vtIuMHtDQNbUkYiyGCewCL5qq4bdMRkvjQNJoxEX90Y=;
 b=hgNo3CZfB7DcWeMpZX79B7w5YXUc0aMAY7m6Qa5sOD8Gqv5pCsQud+4wiLBpMEutwW
 n3H/jUgRylYpKJNOreK5TBEIqINOAdOZCL0uK7eiJ+V0F0DxCFBYKpBeEPSkVpGluLDV
 5CB1bFBP157NNLUEJR4tBGnP+JfMgAGRoT27CUrA4Gzex0K3E2TFv7LqTkCRuV2u1Yom
 6gY3yQmPVfGuPesC/uHCp5+TNsW6AE+/NtDSsJuh5RrbLPdF3kpzIkUpdqQiJ67Q1cMB
 666Y1lHhkPEMDFNTMT3qyS7YTWr+SXNN289yL4xIE09GVLQH+u2RHut+K1dmO9Fs6OA2
 /EpA==
X-Gm-Message-State: AGi0PuZCx05rj4/TDO755qZB8c2dLSQZUd5PqAl4JyRG8UZvsUAnByEQ
 bCsKZO9nNDH3zt+Ew/vPchZlvBYMTxIvtdC0Cu2ICg==
X-Google-Smtp-Source: APiQypIkXSYq75oud+geYKztGp1zVvLyeV4eAXIhZHV9gbwzB249EXNzN7DCYI5YSTmzyhHFC4UvTl5L8v3vPzL+ux4=
X-Received: by 2002:ac2:5544:: with SMTP id l4mr5256550lfk.122.1587717183077; 
 Fri, 24 Apr 2020 01:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200421211447.193860-1-dianders@chromium.org>
In-Reply-To: <20200421211447.193860-1-dianders@chromium.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 24 Apr 2020 14:02:51 +0530
Message-ID: <CAFA6WYMsN1Ep0WE2ngR4jzLuOHz7aDYP7ZL1Pmome2W9A9qKig@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] kgdb: Support late serial drivers; enable early
 debug w/ boot consoles
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_013307_223568_B242F322 
X-CRM114-Status: GOOD (  40.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, Nadav Amit <namit@vmware.com>, hpa@zytor.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, frowand.list@gmail.com,
 Matt Mullins <mmullins@fb.com>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, will@kernel.org, x86@kernel.org,
 jinho lim <jordan.lim@samsung.com>, agross@kernel.org,
 Pawan Gupta <pawan.kumar.gupta@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Borislav Petkov <bp@suse.de>,
 Dave Martin <Dave.Martin@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org, jslaby@suse.com,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de, tglx@linutronix.de,
 mingo@redhat.com, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Juergen Gross <jgross@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 jason.wessel@windriver.com, Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Doug,

On Wed, 22 Apr 2020 at 02:45, Douglas Anderson <dianders@chromium.org> wrote:
>
> This whole pile of patches was motivated by me trying to get kgdb to
> work properly on a platform where my serial driver ended up being hit
> by the -EPROBE_DEFER virus (it wasn't practicing social distancing
> from other drivers).  Specifically my serial driver's parent device
> depended on a resource that wasn't available when its probe was first
> called.  It returned -EPROBE_DEFER which meant that when "kgdboc"
> tried to run its setup the serial driver wasn't there.  Unfortunately
> "kgdboc" never tried again, so that meant that kgdb was disabled until
> I manually enalbed it via sysfs.
>
> While I could try to figure out how to get around the -EPROBE_DEFER
> somehow, the above problems could happen to anyone and -EPROBE_DEFER
> is generally considered something you just have to live with.  In any
> case the current "kgdboc" setup is a bit of a race waiting to happen.
> I _think_ I saw during early testing that even adding a msleep() in
> the typical serial driver's probe() is enough to trigger similar
> issues.
>
> I decided that for the above race the best attitude to get kgdb to
> register at boot was probably "if you can't beat 'em, join 'em".
> Thus, "kgdboc" now jumps on the -EPROBE_DEFER bandwagon (now that my
> driver uses it it's no longer a virus).  It does so a little awkwardly
> because "kgdboc" hasn't normally had a "struct device" associated with
> it, but it's really not _that_ ugly to make a platform device and
> seems less ugly than alternatives.
>
> Unfortunately now on my system the debugger is one of the last things
> to register at boot.  That's OK for debugging problems that show up
> significantly after boot, but isn't so hot for all the boot problems
> that I end up debugging.  This motivated me to try to get something
> working a little earlier.
>
> My first attempt was to try to get the existing "ekgdboc" to work
> earlier.  I tried that for a bit until I realized that it needed to
> work at the tty layer and I couldn't find any serial drivers that
> managed to register themselves to the tty layer super early at boot.
> The only documented use of "ekgdboc" is "ekgdboc=kbd" and that's a bit
> of a special snowflake.  Trying to get my serial driver and all its
> dependencies to probe normally and register the tty driver super early
> at boot seemed like a bad way to go.  In fact, all the complexity
> needed to do something like this is why the system already has a
> special concept of a "boot console" that lives only long enough to
> transition to the normal console.
>
> Leveraging the boot console seemed like a good way to go and that's
> what this series does.  I found that consoles could have a read()
> function, though I couldn't find anyone who implemented it.  I
> implemented it for two serial drivers for the devices I had easy
> access to, making the assumption that for boot consoles that we could
> assume read() and write() were polling-compatible (seems sane I
> think).
>
> Now anyone who makes a small change to their serial driver can easily
> enable early kgdb debugging!
>
> The devices I had for testing were:
> - arm32: rk3288-veyron-jerry
> - arm64: rk3399-gru-kevin
> - arm64: qcom-sc7180-trogdor (not mainline yet)
>
> These are the devices I tested this series on.  I tried to test
> various combinations of enabling/disabling various options and I
> hopefully caught the corner cases, but I'd appreciate any extra
> testing people can do.

earlycon_kgdboc sounds like a really cool feature. So I gave it a try
on my arm64 machine (Developerbox) and it works like a charm. So for
patch 6/9 you can add:

Tested-by: Sumit Garg <sumit.garg@linaro.org>

Plus, in order to enable earlycon_kgdboc on Developerbox I had to
implement the read() function in the early console driver for
amba-pl011 (see patch [1]). It would be great if you could pick that
patch [1] too as part of this series.

[1] https://lkml.org/lkml/2020/4/24/173

-Sumit

>  Notably I didn't test on x86, but (I think) I
> didn't touch much there so I shouldn't have broken anything.
>
> When testing I found a few problems with actually dropping into the
> debugger super early on arm and arm64 devices.  Patches in this series
> should help with this.  For arm I just avoid dropping into the
> debugger until a little later and for arm64 I actually enable
> debugging super early.
>
> I realize that bits of this series might feel a little hacky, though
> I've tried to do things in the cleanest way I could without overly
> interferring with the rest of the kernel.  If you hate the way I
> solved a problem I would love it if you could provide guidance on how
> you think I could solve the problem better.
>
> This series (and my comments / documentation / commit messages) are
> now long enough that my eyes glaze over when I try to read it all over
> to double-check.  I've nontheless tried to double-check it, but I'm
> pretty sure I did something stupid.  Thank you ahead of time for
> pointing it out to me so I can fix it in v3.  If somehow I managed to
> not do anything stupid (really?) then thank you for double-checking me
> anyway.
>
> Changes in v2:
> - ("kgdb: Disable WARN_CONSOLE_UNLOCKED for all kgdb") new for v2.
> - ("Revert "kgdboc: disable the console lock when in kgdb"") new for v2.
> - Assumes we have ("kgdb: Disable WARN_CONSOLE_UNLOCKED for all kgdb")
> - Fix kgdbts, tty/mips_ejtag_fdc, and usb/early/ehci-dbgp
>
> Douglas Anderson (9):
>   kgdb: Disable WARN_CONSOLE_UNLOCKED for all kgdb
>   Revert "kgdboc: disable the console lock when in kgdb"
>   kgdboc: Use a platform device to handle tty drivers showing up late
>   kgdb: Delay "kgdbwait" to dbg_late_init() by default
>   arm64: Add call_break_hook() to early_brk64() for early kgdb
>   kgdboc: Add earlycon_kgdboc to support early kgdb using boot consoles
>   Documentation: kgdboc: Document new earlycon_kgdboc parameter
>   serial: qcom_geni_serial: Support earlycon_kgdboc
>   serial: 8250_early: Support earlycon_kgdboc
>
>  .../admin-guide/kernel-parameters.txt         |  20 ++
>  Documentation/dev-tools/kgdb.rst              |  14 +
>  arch/arm64/include/asm/debug-monitors.h       |   2 +
>  arch/arm64/kernel/debug-monitors.c            |   2 +-
>  arch/arm64/kernel/kgdb.c                      |   5 +
>  arch/arm64/kernel/traps.c                     |   3 +
>  arch/x86/kernel/kgdb.c                        |   5 +
>  drivers/misc/kgdbts.c                         |   2 +-
>  drivers/tty/mips_ejtag_fdc.c                  |   2 +-
>  drivers/tty/serial/8250/8250_early.c          |  23 ++
>  drivers/tty/serial/kgdboc.c                   | 262 ++++++++++++++++--
>  drivers/tty/serial/qcom_geni_serial.c         |  32 +++
>  drivers/usb/early/ehci-dbgp.c                 |   2 +-
>  include/linux/kgdb.h                          |  25 +-
>  kernel/debug/debug_core.c                     |  48 +++-
>  15 files changed, 400 insertions(+), 47 deletions(-)
>
> --
> 2.26.1.301.g55bc3eb7cb9-goog
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
