Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7289617BE29
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQoXgIwwMnlAnQc4LVp1H0fb7kSTJ2oThevM36uZ8aM=; b=ivc9PVj367xly+
	N0Bf0NzRo3Ynz9aLQg7+RKjc9sMyraq7hfmDxTP+i4LWD5/+AYVdPRJkTE4SCiQOzGGqTNB7sJYaH
	s2aCvqpXCPX/5wulCxbWjVSRukwDroSSrg8IaKCrRzdP5q2pOtVM23aOMV2hCjbpqEjFPAUeGP8qo
	X2PikWJnqDXInwBLFTIcyPashJFQ5MJy9zS2FPSizebZV8EPIFKzFdv9BZ7VYTNHgAdfB9UEZFsIW
	PrPMmAP9iHgVRdF55/kGdupDasujxCgbhMkl8+mFnlnmmRBhEunL9uqoPxAcERDUxxcvn3GbngAzL
	fePl34YHqcY4x28HRv8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACvR-00087x-7I; Fri, 06 Mar 2020 13:22:01 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACvI-000870-LT
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:21:54 +0000
Received: by mail-oi1-f195.google.com with SMTP id v19so2458800oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 05:21:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4egTRk5WwAGOwPzaFlwylsTR4rm7/1ScQ/ZrAguvL58=;
 b=s43SVV963FwG6ypRJk7LumyC2uWE4cLsHAUI837LSfwTjxmxzRQGT38VSqoaEVF+18
 CHstmvVPQWztBn1Z9/DWcfqEKQCY5VFzG7VnhAD+yKyHiuWHskEdklYjI4WKoIH00Iy3
 A8msgr0V5WGC93S8XvvVteTRqi6vRE0fXgwCixXaJYMVjO58KMXHzCHLuaeqkyJAJ8s6
 yOrpRaxsjUJTJzPfa+0lm2TT9XiIWfjX1WMQauHnunDLGAjpcLTLhZHGzX5idDiBwj6X
 s2OO7v4X1aiRdtjP9ZPBXvWxAhkOueTbGBryeEJ1uNb1OnmTsGILGAlRlYlyIZOE43ZL
 AFkQ==
X-Gm-Message-State: ANhLgQ1MTx8HBdFflbMykKR9ALl3R93+qhytyWMa4jAZnhPKI+0QvA/c
 VsAC2HXc/H5GciS0CvVhjg1RchEYKzIqc42d8rk=
X-Google-Smtp-Source: ADFU+vuZGLbnXTkhnQ8s6R8V7TRANbM+nGIn9F+2NHhqp1uQsKc1JP5svk0aPchpJM5g7mjfwjbhOSkCrkhgeWl/B5g=
X-Received: by 2002:aca:b4c3:: with SMTP id d186mr2446348oif.131.1583500911215; 
 Fri, 06 Mar 2020 05:21:51 -0800 (PST)
MIME-Version: 1.0
References: <20200306102301.16870-1-geert+renesas@glider.be>
 <20200306103652.GA3634389@kroah.com>
 <CAMuHMdUy8RjkY+0gBv-=mpcuamNQgB=k4rvNsiaj2s4uUDc5UA@mail.gmail.com>
 <20200306130314.GA3778623@kroah.com>
In-Reply-To: <20200306130314.GA3778623@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 6 Mar 2020 14:21:40 +0100
Message-ID: <CAMuHMdUD1=qcG8NSYYnWZ0bLUBp0ys2ZQ=KqnxUKFb4gntBfJw@mail.gmail.com>
Subject: Re: [PATCH] Revert "tty: serial: samsung_tty: build it for any
 platform"
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_052152_705571_FFA8DD63 
X-CRM114-Status: GOOD (  36.38  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Fri, Mar 6, 2020 at 2:03 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Fri, Mar 06, 2020 at 01:53:01PM +0100, Geert Uytterhoeven wrote:
> > On Fri, Mar 6, 2020 at 1:29 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > > On Fri, Mar 06, 2020 at 11:23:01AM +0100, Geert Uytterhoeven wrote:
> > > > This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.
> > > >
> > > > When the user configures a kernel without support for Samsung SoCs, it
> > > > makes no sense to ask the user about enabling "Samsung SoC serial
> > > > support", as Samsung serial ports can only be found on Samsung SoCs.
> > > >
> > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > ---
> > > >  drivers/tty/serial/Kconfig | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> > > > index 880b962015302dca..932ad51099deae7d 100644
> > > > --- a/drivers/tty/serial/Kconfig
> > > > +++ b/drivers/tty/serial/Kconfig
> > > > @@ -237,6 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
> > > >
> > > >  config SERIAL_SAMSUNG
> > > >       tristate "Samsung SoC serial support"
> > > > +     depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
> > > >       select SERIAL_CORE
> > > >       help
> > > >         Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
> > >
> > > {sigh}
> >
> > Exactly my feeling.
> >
> > > No, I don't want this.  My "goal" is to be able to get rid of all of the
> > > crazy "PLAT_*" symbols as they make it impossible to build a single
> > > kernel that supports multiple ARM64 systems.
> >
> > This dependency does not make it impossible to build a single
> > kernel that supports multiple ARM64 systems.
> >
> > Those "PLAT_*" symbols are not crazy.  They are needed to configure a
> > kernel for your specific hardware, leaving out support you don't need.
> > Not everyone has the hardware resources to run an allyesconfig kernel.
> >
> > > As an example of just such a system, see the 5.4 tree here:
> > >         https://android.googlesource.com/kernel/common/+/refs/heads/android-5.4
> > > it is now building and booting on multiple SoCs.
> >
> > arm/multi_v7_defconfig and arm64/defconfig kernels are already booting
> > on multiple SoCs in upstream, and have done so for years.
> >
> > > But yes, it still does have to enable some PLAT_* config options, but
> > > the goal is to not have to do that eventually.
> >
> > Whether the dependency is present or not does not change this.
> >
> > > There is no reason that we need vendor-specific config options just to
> > > lump random drivers into, like serial drivers.  If the hardware is not
> > > present, the driver will just not bind to the hardware, and all is fine.
> >
> > Not having the dependency means you will ask the user useless questions
> > when configuring his kernel.
> > My goal is to make kernel configuration easier, not more difficult.
> >
> > > Just like x86, we don't have this issue there, and ARM64 should also not
> > > have this.
> >
> > No, because x86 is considered the golden standard ;-)
> >
> > Dropping those dependencies is similar to always having a simple PCI
> > core without any host PCI bridges, dropping "depends on PCI" from all
> > PCI drivers, and building an all*config kernel for your old i386 that
> > predates PCI (you can replace PCI by ACPI to modernize the example).
> >
> > What am I missing?!?
>
> "depends on PCI" describes the hardware bus that a driver depends on.

Yes.

> PLAT_FOO is just trying to somehow classify that this type of driver
> only shows up on this vendor's devices.  It is not defining the hardware
> at all.  We try to always describe functionality of hardware, not try to
> declare specific vendor's hardware choices, right?

DT-based drivers do not bind to a hardware-specific bus, and thus there
is no config symbol for a hardware-specific bus they can depend on.
Still, there are hardware classes, based on SoC vendors and SoC families.
Hence PLAT_FOO describes the latter.

> PLAT_FOO is interesting, but given that a specific driver is really not
> tied to that platform logically, only by virtue that no one else might
> not happen to have that hardware, it seems odd to have that.

There exist IP cores that are present on either PCI and non-PCI hardware.
With hardware-specific bus drivers, drivers for these need to implement
both a pci_driver and <some_other>_driver.  And they depend on PCI
|| <OTHER>.
With DT and ACPI, and device properties, a single platform_driver
needs to be written, just the matching is done differently. And there is
no "hard" (no "else the driver doesn't link") need for a hardware-specific
config-symbol dependency.  But it's still good to have one.

> Yes, asking lots of questions is tough, but we passed that problem so
> long ago.  Are we now trying to add PLAT_FOO entries to all hardware
> drivers in order to make this type of selection easier?  I thought we
> were just doing that by providing defconfig files to make the initial
> selection saner.

Defconfigs were the previous step, from an evolutionary point of view.
Arm64 has a single defconfig.  All dependencies must be expressed in
Kconfig.  I can take arm64/defconfig, remove support for other SoC families,
and I'll have a good kernel for my hardware, without bagage I don't need.
Without these dependencies, I have to remove lots and lots of drivers
I won't need.

If you want to compile drivers for hardware that cannot be present, use
COMPILE_TEST=y.

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
