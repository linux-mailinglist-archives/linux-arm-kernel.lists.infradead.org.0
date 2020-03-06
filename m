Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED2D17BD7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uI2O5eTGSbX3e0FmlMazDoBZ1QCylRLVG7IeGl3p9jo=; b=UI/rnz3orCK+zR
	JagYlnrHe33QbYQ/8BnAfCPnMGqqAgTp4VzuUZMSx3tF+NPLwG/vYK4+81mN13UK+sW85sk1QqNlQ
	q+ANvuaZxukRpxnC4NXZm8WY/fOZptWcfI2+v5skeqLD5X71DQagFonV8FBpUFuWLqN8rchpuFbZE
	/MBKaXqEpMP3SCnJI9InjGldZmpQrJKNUqN2hkENAWScAr5N2FtLY5kr4hiYtHC07jADDk899vNGF
	yQRLikRy7zYUf6out4YbqNzeUIY9P9H/rw/67C0d1326oaEOi3l0Qs6/yGpCQaI/zoPhClmcwc8fA
	qXk9IcAH3p5sp8IU/LIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACdT-0007pI-R0; Fri, 06 Mar 2020 13:03:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACdJ-0007oc-J1
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:03:19 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23F672084E;
 Fri,  6 Mar 2020 13:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583499796;
 bh=VVRxE1ypOJ8srcC7LLX0LtBXm0AbUPHOxVu5LaCMObg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ssvTYItgqsL/fFkrbDCYB6S6LfrpBM9vGaduHvfn1cPU8coIxOa44zazQtmjF1i8l
 Lkb76hnGVgoD20fqMVBRJNb6aDLsXkBG4S4vtQL5JPm9CbLbtpfbqw+2OEHsdSq0nn
 1c/zGsYmsjxMeuE747KynPODoMF6Ky/kEpPbhILs=
Date: Fri, 6 Mar 2020 14:03:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] Revert "tty: serial: samsung_tty: build it for any
 platform"
Message-ID: <20200306130314.GA3778623@kroah.com>
References: <20200306102301.16870-1-geert+renesas@glider.be>
 <20200306103652.GA3634389@kroah.com>
 <CAMuHMdUy8RjkY+0gBv-=mpcuamNQgB=k4rvNsiaj2s4uUDc5UA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUy8RjkY+0gBv-=mpcuamNQgB=k4rvNsiaj2s4uUDc5UA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_050317_673031_1258BE2F 
X-CRM114-Status: GOOD (  32.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Mar 06, 2020 at 01:53:01PM +0100, Geert Uytterhoeven wrote:
> Hi Greg,
> 
> On Fri, Mar 6, 2020 at 1:29 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Fri, Mar 06, 2020 at 11:23:01AM +0100, Geert Uytterhoeven wrote:
> > > This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.
> > >
> > > When the user configures a kernel without support for Samsung SoCs, it
> > > makes no sense to ask the user about enabling "Samsung SoC serial
> > > support", as Samsung serial ports can only be found on Samsung SoCs.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > ---
> > >  drivers/tty/serial/Kconfig | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> > > index 880b962015302dca..932ad51099deae7d 100644
> > > --- a/drivers/tty/serial/Kconfig
> > > +++ b/drivers/tty/serial/Kconfig
> > > @@ -237,6 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
> > >
> > >  config SERIAL_SAMSUNG
> > >       tristate "Samsung SoC serial support"
> > > +     depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
> > >       select SERIAL_CORE
> > >       help
> > >         Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
> >
> > {sigh}
> 
> Exactly my feeling.
> 
> > No, I don't want this.  My "goal" is to be able to get rid of all of the
> > crazy "PLAT_*" symbols as they make it impossible to build a single
> > kernel that supports multiple ARM64 systems.
> 
> This dependency does not make it impossible to build a single
> kernel that supports multiple ARM64 systems.
> 
> Those "PLAT_*" symbols are not crazy.  They are needed to configure a
> kernel for your specific hardware, leaving out support you don't need.
> Not everyone has the hardware resources to run an allyesconfig kernel.
> 
> > As an example of just such a system, see the 5.4 tree here:
> >         https://android.googlesource.com/kernel/common/+/refs/heads/android-5.4
> > it is now building and booting on multiple SoCs.
> 
> arm/multi_v7_defconfig and arm64/defconfig kernels are already booting
> on multiple SoCs in upstream, and have done so for years.
> 
> > But yes, it still does have to enable some PLAT_* config options, but
> > the goal is to not have to do that eventually.
> 
> Whether the dependency is present or not does not change this.
> 
> > There is no reason that we need vendor-specific config options just to
> > lump random drivers into, like serial drivers.  If the hardware is not
> > present, the driver will just not bind to the hardware, and all is fine.
> 
> Not having the dependency means you will ask the user useless questions
> when configuring his kernel.
> My goal is to make kernel configuration easier, not more difficult.
> 
> > Just like x86, we don't have this issue there, and ARM64 should also not
> > have this.
> 
> No, because x86 is considered the golden standard ;-)
> 
> Dropping those dependencies is similar to always having a simple PCI
> core without any host PCI bridges, dropping "depends on PCI" from all
> PCI drivers, and building an all*config kernel for your old i386 that
> predates PCI (you can replace PCI by ACPI to modernize the example).
> 
> What am I missing?!?

"depends on PCI" describes the hardware bus that a driver depends on.

PLAT_FOO is just trying to somehow classify that this type of driver
only shows up on this vendor's devices.  It is not defining the hardware
at all.  We try to always describe functionality of hardware, not try to
declare specific vendor's hardware choices, right?

PLAT_FOO is interesting, but given that a specific driver is really not
tied to that platform logically, only by virtue that no one else might
not happen to have that hardware, it seems odd to have that.

Yes, asking lots of questions is tough, but we passed that problem so
long ago.  Are we now trying to add PLAT_FOO entries to all hardware
drivers in order to make this type of selection easier?  I thought we
were just doing that by providing defconfig files to make the initial
selection saner.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
