Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB081B811A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYGKBoE0ehHtRi6jy2Y4on59VoRPAyMfxyfWhxyBCCE=; b=NAr/s0iturbyfp
	8oMyU3n/rgW6vYc9ipThdOsliao9nuol5/P5sL8gmmXUsh1mfkfxIiQW5pjHud+uz0QKH8W57mPMR
	fc2rtOohLHB7JVPFnEhbaFZ2gOtbU5OA10RHdGgmG66Y7HoNffZLsdSQ+ocGJbBanWBmjwzmGhVDt
	GO7l6KTqyLpTHAl2QfDsATbdqkFIqw52o31gVwu/mCWDiDv9zeIPnsdygneaTf2NwLCDrS95yGT62
	q2v2dXAOw5O3S525psBpynSNwOQHHKxHSHCGSI+V1N8rgA76vJnpIiteRM9V+hVBUFZbVjXm/DiVl
	SlyI6xZebn1dvldIJKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5H8-0001A6-IY; Fri, 24 Apr 2020 20:50:18 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Gt-0008TQ-Bo
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:50:04 +0000
Received: by mail-ua1-x941.google.com with SMTP id t8so10900291uap.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oJeS5rPd5QBiW9yuQQoiyZe9LracJA5NUhevSqY2SM4=;
 b=bsc5d75VyY0RYx5b5HGauIU4/ycK/2kiMjAD0CfoKTcN53ZTdIJVwDYW3H4JgdAJdr
 z/35tht2bxPjxQCt1nVihs4TKy55nGR0COH1TpoOsnywIkxeRouKXN+OuGbl845D/ja2
 KdzPQW05FIvprL4bQUqxchFYnmRXLSndHvAzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oJeS5rPd5QBiW9yuQQoiyZe9LracJA5NUhevSqY2SM4=;
 b=jGV6832mxh4BJDk6KvFncNUESSwo9ZWuKhuE+/javMmd86W0vIzbicLbbr/9xzKuwT
 ljq81agQFJCVz750lHbCj2EsX0UDYNVJVAltuuryidRfIv24lHtA0ERkZMzZwMVsMkTd
 EQf+LYzggmiJLXY1Fom/AP9DnudnMTochbefpV5Mr123CvTp1sIVjw+rwf0DxVNUaFt2
 daKmO6dP81nX/zmqxsbTuTxXN7JXQIaCdcI6Q1X3uExjzjv3eQyPpYUg7N4Lg9h6+dPI
 LcEcpJUV7S5DfDTQ1a+8lGArnYZR54BN598oNYy4aRVVz29IcZDPfhxtEG9sLORkMXCD
 QnRA==
X-Gm-Message-State: AGi0PuZqKEl5dGJf85ZPEJHR5szTutSdaugEfI3WLgIVQrptX16LIa2G
 wsgalMyv0XWjw5657+SfdHNTlh3z2vw=
X-Google-Smtp-Source: APiQypJXl41EUoANKTdolTFGcKCwGYlRNAiwjTXY4TDflt4NO1wAPO0na382t5intjkTSU1IspyU2w==
X-Received: by 2002:a9f:2846:: with SMTP id c64mr9016269uac.44.1587761401066; 
 Fri, 24 Apr 2020 13:50:01 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com.
 [209.85.222.49])
 by smtp.gmail.com with ESMTPSA id b204sm1887303vkb.17.2020.04.24.13.49.59
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 13:50:00 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id i5so10930425uaq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:49:59 -0700 (PDT)
X-Received: by 2002:a05:6102:4d:: with SMTP id
 k13mr9739534vsp.198.1587761399251; 
 Fri, 24 Apr 2020 13:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
In-Reply-To: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 24 Apr 2020 13:49:47 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W5FujyJMoH-TdQXxAYBvBO=rhjNo1EAv7xJ=R8eeaXZQ@mail.gmail.com>
Message-ID: <CAD=FV=W5FujyJMoH-TdQXxAYBvBO=rhjNo1EAv7xJ=R8eeaXZQ@mail.gmail.com>
Subject: Re: [RFC Patch v1 0/4] arm64: Introduce new IPI as IPI_CALL_NMI_FUNC
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135003_434585_ECC2DE9C 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wessel <jason.wessel@windriver.com>, LKML <linux-kernel@vger.kernel.org>,
 julien.thierry.kdev@gmail.com, Marc Zyngier <maz@kernel.org>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Apr 24, 2020 at 4:11 AM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> With pseudo NMIs support available its possible to configure SGIs to be
> triggered as pseudo NMIs running in NMI context. And kernel features
> such as kgdb relies on NMI support to round up CPUs which are stuck in
> hard lockup state with interrupts disabled.
>
> This patch-set adds support for IPI_CALL_NMI_FUNC which can be triggered
> as a pseudo NMI which in turn is leveraged via kgdb to round up CPUs.
>
> After this patch-set we should be able to get a backtrace for a CPU
> stuck in HARDLOCKUP. Have a look at an example below from a testcase run
> on Developerbox:
>
> $ echo HARDLOCKUP > /sys/kernel/debug/provoke-crash/DIRECT
>
> # Enter kdb via Magic SysRq
>
> [11]kdb> btc
> btc: cpu status: Currently on cpu 11
> Available cpus: 0-10(I), 11, 12(I), 13, 14-23(I)
> <snip>
> Stack traceback for pid 623
> 0xffff00086a644600      623      622  1   13   R  0xffff00086a644fc0  bash
> CPU: 13 PID: 623 Comm: bash Not tainted 5.7.0-rc2 #27
> Hardware name: Socionext SynQuacer E-series DeveloperBox, BIOS build #73 Apr  6 2020
> Call trace:
>  dump_backtrace+0x0/0x198
>  show_stack+0x18/0x28
>  dump_stack+0xb8/0x100
>  kgdb_cpu_enter+0x5c0/0x5f8
>  kgdb_nmicallback+0xa0/0xa8
>  handle_IPI+0x190/0x200
>  gic_handle_irq+0x2b8/0x2d8
>  el1_irq+0xcc/0x180
>  lkdtm_HARDLOCKUP+0x8/0x18
>  direct_entry+0x124/0x1c0
>  full_proxy_write+0x60/0xb0
>  __vfs_write+0x1c/0x48
>  vfs_write+0xe4/0x1d0
>  ksys_write+0x6c/0xf8
>  __arm64_sys_write+0x1c/0x28
>  el0_svc_common.constprop.0+0x74/0x1f0
>  do_el0_svc+0x24/0x90
>  el0_sync_handler+0x178/0x2b8
>  el0_sync+0x158/0x180
> <snip>
>
> Looking forward to your comments/feedback.
>
> Sumit Garg (4):
>   arm64: smp: Introduce a new IPI as IPI_CALL_NMI_FUNC
>   irqchip/gic-v3: Add support to handle SGI as pseudo NMI
>   irqchip/gic-v3: Enable arch specific IPI as pseudo NMI
>   arm64: kgdb: Round up cpus using IPI_CALL_NMI_FUNC
>
>  arch/arm64/include/asm/hardirq.h |  2 +-
>  arch/arm64/include/asm/smp.h     |  1 +
>  arch/arm64/kernel/kgdb.c         | 15 +++++++++++++++
>  arch/arm64/kernel/smp.c          | 36 +++++++++++++++++++++++++++++++++++-
>  drivers/irqchip/irq-gic-v3.c     | 36 +++++++++++++++++++++++++++++++-----
>  5 files changed, 83 insertions(+), 7 deletions(-)

This is amazing!

* picked your patches back to my current 5.4 tree
* turned on "CONFIG_ARM64_PSEUDO_NMI"
* set the "irqchip.gicv3_pseudo_nmi=1" command line

...and bam I can trace on the locked up CPU instead of being left in the dark.

I'm not sure I'm going to be too much use in actually doing the review
of the code since I'm not really an expert at how SGIs work (it took
me a while to realize that it must stand for software generated
interrupts) nor the bowels of the GIC.  I tried to do what little
review I could.

In any case, I'll keep this in my local patch stack for now and keep
testing it to make sure I don't notice any weird problems.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
