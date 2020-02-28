Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C5217377E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:47:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBDmza7Fq0SbHZofQh1yxGY56Ge4yfe6HuzNiFk6pjM=; b=C4K9RjUgta0Zrp
	XoD5mA67Ot3piXD9ecPkNXzKt6YVtOMKghEvX/40y51TgDzZZwSgAnqK5Gtm/syAnS21jmJKVNg8T
	iVqoNlTNqu7qB2HJrYALYMRL1AApFfw2+FClmIpXAFPYvCGmyNHBQ/qdFk4KawX+Os+djLCNWlI+W
	I/b2YCRwTxmirbz2fvjfX0b12P3tMuCjZZDIU3/bKvLHB8vdWrl55pbu4D+Gwvdh1bq/rXpzYgPkm
	3IvIWJ7B6rPdUQCtx8tssZaYcf980RqJFut8VWOsLFrkW9xkFPofjn5mZpgQB/QB+wyp41z0wlpcw
	85UWHlQmt9jucJvXQvOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7f2g-0000v5-4i; Fri, 28 Feb 2020 12:46:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7f2V-0000uP-HH
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:46:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JVrtMDeWVXXWxL67rdqwPaefYVGg/iICAKCv5Rj9fDw=; b=Ga7ZMpkkL1zYiD9JaCcIhXo48
 oMnqwhtyFZx7q8Inua3KNFmUjczkigJCXfLOYJEGqsmR71b0zOYOC4f5QX5XtMEeEgKDZpB1CUHPU
 kX8FkwWWZLaIhUpyxIPC1P4/DsNe+1zIcr4l0KNTM8X+1HhipPktgD0v/ZNicb6CLkYm7yc63fM78
 LTJUsSC43IE6ICizfFnsSczt3v6i40cHBna7+ntxgv02JZWIIZzpmrfzhFMLfZnlFc6nKV9NOeHAl
 9vb3aVjyaFDef0+oXYp6vPS2FtKxIQbZZW6uUE03YRHZN9fxVozgZYDRPJtrSKJE0vvGXHCFT5/mf
 hJ7lw6Nsw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:46410)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7f2H-0003qi-9w; Fri, 28 Feb 2020 12:46:33 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7f2F-0001zo-3L; Fri, 28 Feb 2020 12:46:31 +0000
Date: Fri, 28 Feb 2020 12:46:31 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
Message-ID: <20200228124630.GU25745@shell.armlinux.org.uk>
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
 <20200228123910.hbf2bnk3w2dbishr@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228123910.hbf2bnk3w2dbishr@M43218.corp.atmel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_044647_577775_C22D397D 
X-CRM114-Status: GOOD (  28.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org,
 Linux GPIO List <linux-gpio@vger.kernel.org>,
 Romain Izard <romain.izard.pro@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 01:39:10PM +0100, Ludovic Desroches wrote:
> Hello Romain,
> 
> On Fri, Feb 28, 2020 at 11:58:21AM +0100, Romain Izard wrote:
> > 
> > Hello,
> > 
> > While experimenting with a new chip, I connected it on the SDIO
> > interface on my board based on a SAMA5D2 SoC. For a first step, I need
> > to drive the pins on the SDIO bus at a given level to program this new
> > chip. To do so, I tried to control the GPIO lines manually by unbinding
> > the SDHCI controller, and using /sys/class/gpio/export to control the
> > pins, with the following code:
> > 
> > echo a0000000.sdio-host > /sys/bus/platform/drivers/sdhci-at91/unbind
> > echo 4 > /sys/class/gpio/export
> > echo low > /sys/class/gpio/PA4/direction
> > 
> > Unfortunately, the state of the pin does not change and it remains
> > driven to 1. I checked the configuration register with devmem2, and it
> > appeared that the selected function remains the SDIO function even after
> > calling export.
> > 
> > The issue does not appear when I use a GPIO in a driver with an explicit
> > pinctrl configuration in the device tree, which explains why I did not
> > see it until now.
> > 
> > The kernel version used is Linux 5.4.22
> > 
> > Is this a user error from my part, or is there something missing in the
> > AT91 PIO4 pinctrl driver ?
> 
> This is a known issue.
> 
> The AT91 PIO4 pinctrl driver doesn't implement gpio_request_enable()
> contrary to the AT91 PIO pinctrl driver. If we implement it, then you
> would be able to change the pin muxing and configuration from the sysfs.
> The issue is nothing prevent you do this and so to possibly break a
> device.
> 
> There is the strict pinmux_ops property which prevents from this
> situation. The side effect is that we must not declare a pinmux/conf for
> a GPIO so all the DT files have to been updated. That's not a big deal,
> the problem is, at that time, the GPIO subsystem didn't allow to set the
> bias for instance. It may have changed but not sure it covers all the
> possible configurations we have from the pinmuxing subsystem.

There is also the problem of I2C bus recovery, where an I2C driver
may wish to claim the GPIOs for the I2C bus, but keep the I2C bus
connected to the I2C controller except when performing recovery.

I tripped over problems with that on a Marvell SoC, someone else has
recently reported exactly the same problem as a regression compared
to previous kernels for another SoC in the last day.

The assumption that if a GPIO is claimed, we want the pin to be in
GPIO mode is not universally true, a point that has been missed and
is now coming back to bite.  From what Linus said when we discussed
it, it's very difficult to fix in the GPIO/pinctrl layers.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
