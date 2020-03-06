Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E1D17BD4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JTN0itsFOqzYg0HzfkCi+f8coFquj1MY0pc6UeycNc=; b=LuVXy4ZWyac8rP
	xC7uvZiC1PJbtAr4UloLD4GJdAkG1vb1NeHXGawisr7qGjWQjQrMk4YyKk1kT33/pUNWTyzr/73u1
	0AeTZ86Kg3YsDw4r3WLSgwn+ZB+Fkip0S7sUdNHsL4oJ3k1MtPjFNOkIul47dy2lmi0t0NwXX+GrV
	I6WE3QPS4jhaH46so3NRnWzgUIgDFEaOW59suG9QdY28g70acr1tJNprARm+mQQhgjgKuAJ1fGixm
	e+QuAPSsMLGh0TNc3QlAUcGHUMIqVPb/zzdP6uIZ03GoTmWW9Ug4AOHu19reif0HcfMJ8WDnjHyOc
	pcvY6pTcJFXPFg9Z1Kmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACTl-0003Gk-7w; Fri, 06 Mar 2020 12:53:25 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACTa-0003Fp-LG
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:53:16 +0000
Received: by mail-ot1-f67.google.com with SMTP id f21so2246290otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 04:53:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G7RZH2grPPSlWaJy572edYfyzqPGtp/kF1gZJ/HJVnY=;
 b=K8cz4d6v1voISh094y1dAli4jmPNc3C+7gmBWEBH1yWYq3HZkaXqI/QmM9CR++FRGo
 bPmrZXEmOyFIq1ROgheKKvvyqjlTybEckZrTMYV+4FV1nmEeNf1s83Go4HLfIw/8uMEM
 lMDGEwOBJYJ2Fe5V6+6eASIdljI5XGC1cBZtcWmiN/ogf2SNfllbF63/Q9K9muB8/LPg
 u5+buXfqvNUWITu0WQ7K4ZxKzLUu4OmopBo494j+N/vMEunapujAQn9oxbuAXzQiTrk+
 iVLMAYal4cE5585U8wfujrzDP7bQdNOHsGhWeF3oGbc0gR40f3zJyNiTlKVCfA404EmA
 IWHw==
X-Gm-Message-State: ANhLgQ1Mf79KcMDyWs6lVH/5JdfW1YXWk0atCI2ZZc641LIQKdVMWwLj
 Fh+qjodyeqg5dPA/Q/9U7N57nRc643g5+VllFWWaiQ==
X-Google-Smtp-Source: ADFU+vtBe3n4eCaY3wCA3slX91+7Q6wMQ3w6HE+ed7K5oJu4l5pvpMtzDHSTNT6ag6PqX15dexQ8of2CrzSAuNyuxlU=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr2327664otk.145.1583499193335; 
 Fri, 06 Mar 2020 04:53:13 -0800 (PST)
MIME-Version: 1.0
References: <20200306102301.16870-1-geert+renesas@glider.be>
 <20200306103652.GA3634389@kroah.com>
In-Reply-To: <20200306103652.GA3634389@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 6 Mar 2020 13:53:01 +0100
Message-ID: <CAMuHMdUy8RjkY+0gBv-=mpcuamNQgB=k4rvNsiaj2s4uUDc5UA@mail.gmail.com>
Subject: Re: [PATCH] Revert "tty: serial: samsung_tty: build it for any
 platform"
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_045314_704997_FCAA4A3F 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kevin Hilman <khilman@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Fri, Mar 6, 2020 at 1:29 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Fri, Mar 06, 2020 at 11:23:01AM +0100, Geert Uytterhoeven wrote:
> > This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.
> >
> > When the user configures a kernel without support for Samsung SoCs, it
> > makes no sense to ask the user about enabling "Samsung SoC serial
> > support", as Samsung serial ports can only be found on Samsung SoCs.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  drivers/tty/serial/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> > index 880b962015302dca..932ad51099deae7d 100644
> > --- a/drivers/tty/serial/Kconfig
> > +++ b/drivers/tty/serial/Kconfig
> > @@ -237,6 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
> >
> >  config SERIAL_SAMSUNG
> >       tristate "Samsung SoC serial support"
> > +     depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
> >       select SERIAL_CORE
> >       help
> >         Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
>
> {sigh}

Exactly my feeling.

> No, I don't want this.  My "goal" is to be able to get rid of all of the
> crazy "PLAT_*" symbols as they make it impossible to build a single
> kernel that supports multiple ARM64 systems.

This dependency does not make it impossible to build a single
kernel that supports multiple ARM64 systems.

Those "PLAT_*" symbols are not crazy.  They are needed to configure a
kernel for your specific hardware, leaving out support you don't need.
Not everyone has the hardware resources to run an allyesconfig kernel.

> As an example of just such a system, see the 5.4 tree here:
>         https://android.googlesource.com/kernel/common/+/refs/heads/android-5.4
> it is now building and booting on multiple SoCs.

arm/multi_v7_defconfig and arm64/defconfig kernels are already booting
on multiple SoCs in upstream, and have done so for years.

> But yes, it still does have to enable some PLAT_* config options, but
> the goal is to not have to do that eventually.

Whether the dependency is present or not does not change this.

> There is no reason that we need vendor-specific config options just to
> lump random drivers into, like serial drivers.  If the hardware is not
> present, the driver will just not bind to the hardware, and all is fine.

Not having the dependency means you will ask the user useless questions
when configuring his kernel.
My goal is to make kernel configuration easier, not more difficult.

> Just like x86, we don't have this issue there, and ARM64 should also not
> have this.

No, because x86 is considered the golden standard ;-)

Dropping those dependencies is similar to always having a simple PCI
core without any host PCI bridges, dropping "depends on PCI" from all
PCI drivers, and building an all*config kernel for your old i386 that
predates PCI (you can replace PCI by ACPI to modernize the example).

What am I missing?!?

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
