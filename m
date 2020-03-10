Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1921117F241
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 09:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGtWRIgYyHOTxTr/RTST6/UXggcAC58aSRncWRkG+wk=; b=gH+Gk0aKujnQTz
	ov3LmNCY3aTvOm4/cvYEYbZPA7ZUngew6OV1ykEpqyM9MiOCsWfLpFTiwQGguwoYl/VOlCkBrrOc5
	OqGDKY0m2wHRZ0w37V9NVuKiT7nG9YpCt9BNGZQlDsAwcvs1a/FObBHVINsWgnfmZqs/5ew220MQs
	ZrIc9xd9tVtCjnD0gwNehIkcMcDdZQBLxd95tbaj3P4dfbCtfj5XNc17DCyHmz8ARiyrR50suun7D
	Qni9ft8nNaAwHx0KsIc3zD3Of21fA59qeVyj1LdmC4KTERPKoTGwwTkqB9IT/SZRQW6CcPexjDtcC
	TcreBdirgBnAEvfGj2Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBaY7-0003Eb-TI; Tue, 10 Mar 2020 08:47:39 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBaXz-0003Dh-Fn
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 08:47:33 +0000
Received: by mail-ot1-f68.google.com with SMTP id 111so8033103oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 01:47:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=boOApZIKCOv83J2w3ZeGrsmLMsYMcv80baJK+BIb6gY=;
 b=NpzoQ6NeuGBXYz6n9yiS3m0KDPuntRBhIiVaTNi0afjp3gWQaH3RfaP80F6PDeZ83m
 dCB3kMhIBvQ+3rux3cyXg900lw60knH6hW57RKEXyFZjCoZrQa+dfxErwou6h9/2eEWt
 WwLq0g1h1aD9tsGSe9GuGC7xwQH/2mSaHw7JRxWhIt1fAGVN1lotamkwdZyIQ8gMy5Ca
 qdSyQyQ1CNU1iiepKAVXU2CCmqxZrmiYIvOrlokvQkobsROaTjdM1szI0XVv7FsWbfAy
 npRmKAC1swKjtp5suRdhg7mOYsqxVg5hWpF6L+9MZCpuGzQZbmzYWA9guTGRNQ2Emzal
 kvAw==
X-Gm-Message-State: ANhLgQ0TinzycAmlw/zZRilC7e8cNLn6ZiZcjKkdM8AcaxWB31TS7fMZ
 00wp8XCpBcwUTgwxO6uBpaGFp6nRfLS6Z41MXpQ=
X-Google-Smtp-Source: ADFU+vty+TpRY4Ac1mTTlnhKuNFwJ1A6bGkpI8IVtjqbOXVyaswgRUMHHcn54Y1V4g21JKdrGDCvoZTaA2BR/9GgTms=
X-Received: by 2002:a9d:8d0:: with SMTP id 74mr3528400otf.39.1583830047801;
 Tue, 10 Mar 2020 01:47:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
 <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
 <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
 <20200310041903.GA260998@google.com> <20200310042739.GB260998@google.com>
In-Reply-To: <20200310042739.GB260998@google.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Mar 2020 09:47:16 +0100
Message-ID: <CAMuHMdXRPBwFo2zAb99gMLP_+KaTHZ261fLYa+cbG6DEH_EP_g@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
To: Sandeep Patil <sspatil@android.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_014731_528219_F0A443A4 
X-CRM114-Status: GOOD (  29.33  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Android Kernel Team <kernel-team@android.com>,
 Catalin Marinas <catalin.marinas@arm.com>, saravanak@google.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sandeep,

On Tue, Mar 10, 2020 at 5:27 AM Sandeep Patil <sspatil@android.com> wrote:
> On Mon, Mar 09, 2020 at 09:19:03PM -0700, Sandeep Patil wrote:
> > On Mon, Mar 09, 2020 at 11:32:06AM +0100, Geert Uytterhoeven wrote:
> > > On Mon, Mar 9, 2020 at 9:32 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > On Mon, 9 Mar 2020 at 16:03, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > > > >
> > > > > > The default value of Kconfig for almost all sprd drivers are the same with
> > > > > > ARCH_SPRD, making these drivers built as modules as default would be easier
> > > > > > if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.
> > > > > >
> > > > > > Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > > >
> > > > > Can you actually boot a kernel on a Spreadtrum platform when all platform
> > > > > and driver support is modular?
> > > >
> > > > Yes, even if all drivers are modular.
> > >
> > > Cool. No hard dependencies on e.g. regulators that are turned off when
> > > unused?
> > >
> > > > But I hope serial can be builtin, then I can have a console to see
> > > > kernel output before loading modules.
> > >
> > > No dependency on the clock driver?
> > > Oh, I see you have a hack in the serial driver, to assume default
> > > values when the serial port's parent clock is not found.  That may
> > > limit use of the other serial ports, depending on the actual serial
> > > hardware.
> > > And on Sharkl64, the serial port's clock is a fixed-clock anyway, so
> > > you don't even need the hack.
> > >
> > > But in general you cannot rely on that, especially if your SoC has clock
> > > and/or power domains.

So I gave it a try on my platform (R-Car), with just the serial driver
builtin.  I can see the kernel booting using earlycon.
However, the serial driver is never probed, as the pin control driver is
missing. And after that, it would need the clock domain (power domain
and clock drivers), and more serial clock inputs (clock driver, again).
Fortunately DMA is optional (dmac driver, and optional iommu driver).

I guess core platform-specific drivers can be loaded from the initramfs,
after which the serial driver would be probed, finally.  If the
initramfs includes a storage driver, anything else can be loaded from
e.g. eMMC.

> > > > Also, this's what Google GKI [1] asked :)

> > > > [1] https://arstechnica.com/gadgets/2019/11/google-outlines-plans-for-mainline-linux-kernel-support-in-android/
> > >
> > > Let's see how having everything modular works out on an SoC where all
> > > hardware is part of a clock and power domain.
> >
> > I'm curious, are there any problems that we should be aware of? We know about
> > the regulator sync state and consumer-supplier dependencies. [1]

Care must be taken, as probe deferral behaves differently after
late_initcall time (see driver_deferred_probe_check_state_continue),
which may cause issues with "optional" components like DMA controllers
and IOMMUs.  Unused clocks and power domains are not turned off,
unlike for the builtin case.

On some SoCs, even the interrupt controller (GIC) may be part of a clock
and/or power domain, while the GIC driver is not aware of that.
For the clock, that is handled by CLK_IS_CRITICAL in the clock driver.
For power domains, that is not handled explicitly on Renesas SoCs, as
the GIC is always in the same power domain as other devices that are
Runtime PM-aware.  But if those devices would have modular drivers, that
power domain could still be turned off.

So on a modern ARM system, I assume a generic kernel with no
vendor-specific drivers builtin can indeed work.
On older systems, without an ARM architectured timer, you will need at
least the platform-specific timer driver (and the clock driver) builtin.
Assumed the timer's power domain has been powered up by the firmware.

> (oops, forgot to paste the link to presentation)
> 1. https://linuxplumbersconf.org/event/4/contributions/402/attachments/320/544/Solving_issues_associated_with_modules_and_supplier-consumer_dependencies.pdf

Thanks, hadn't seen that presentation.
It matches my understanding.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
