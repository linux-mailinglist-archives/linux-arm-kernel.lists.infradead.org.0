Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F12D17573E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V21/e2D8wkiv9KRy1mpKI1Wy8CULGnxjD0LFkKc5FXk=; b=JO3u1nC5bPiOzn
	ZhvLQzdpelhd+SXKZuonUaRDHL9jRXRTu7uyLof6yIzUjqZYLivvc54eMlqUfW5FNzvSAC8nJkK2j
	NPh28lTXsHiEAPFs/qdD6ZLwz58xHDPbukEitnnSoEgH4C2PfQP9uWRTYDBrBKaxDwvWoZy4+Ubt5
	rvRR5nWNQyxNXlvONs7AsyWdHpOsoBe5TR36ivyGYIohnSGeqZxhcCvQS+UVxzAlozTnNtNtjsIg9
	KxPyXgVDpl1u7eImAWZRGpa0zAXx5AYxdEeSc6gNTB+HwBG6byk9ulR6D3+1YdHxioRGJO4e67Rht
	GmoY2ZWYQCwto46Cc2Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hVA-0002EQ-Mk; Mon, 02 Mar 2020 09:36:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hV2-0002Cw-2c
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S0xcPrav3FWDfI1W6libXn8yqJiY+ak0PGYN9EWtPTo=; b=Ai91bRCpQv3C227eg1gtYs7UX
 O0/OIHSxKCNy7zRBiq1looQ/IF7mksX7kWLsIIhXbzPXQ99bkR6eVLzrzWUfn/tK84xCLBooGiaZv
 Biu4wKauGaUOaJ+2hP3X3AfDl23GrZsjoTUfK5n+sg/I3LTCkEFRD6Yo/ZRYN6foYcisfKL6HInvQ
 97DkYtOf2Xp4GyN8DHl/6HWjKMEi8gteEctFSGo3rmx3BhO57G9WT23WHKS6fR98KzOB+jyCSMeZH
 NeyLlHQbGrCSAmVpMarS+8sytJaycsLR2+Z4LoXj/RX2TPNgWlnKPBkUiWa7isjde1qEKsAhgL+f/
 UUzcRnUmQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:55190)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j8hUg-0000dm-4u; Mon, 02 Mar 2020 09:36:10 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j8hUd-0004oV-EJ; Mon, 02 Mar 2020 09:36:07 +0000
Date: Mon, 2 Mar 2020 09:36:07 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
Message-ID: <20200302093607.GG25745@shell.armlinux.org.uk>
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
 <20200302083959.wju5vz3acuka2edq@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302083959.wju5vz3acuka2edq@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013632_262428_CE22E784 
X-CRM114-Status: GOOD (  27.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux GPIO List <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Romain Izard <romain.izard.pro@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 09:39:59AM +0100, Uwe Kleine-K=F6nig wrote:
> On Fri, Feb 28, 2020 at 11:58:21AM +0100, Romain Izard wrote:
> > Hello,
> > =

> > While experimenting with a new chip, I connected it on the SDIO
> > interface on my board based on a SAMA5D2 SoC. For a first step, I need
> > to drive the pins on the SDIO bus at a given level to program this new
> > chip. To do so, I tried to control the GPIO lines manually by unbinding
> > the SDHCI controller, and using /sys/class/gpio/export to control the
> > pins, with the following code:
> > =

> > echo a0000000.sdio-host > /sys/bus/platform/drivers/sdhci-at91/unbind
> > echo 4 > /sys/class/gpio/export
> > echo low > /sys/class/gpio/PA4/direction
> > =

> > Unfortunately, the state of the pin does not change and it remains
> > driven to 1. I checked the configuration register with devmem2, and it
> > appeared that the selected function remains the SDIO function even after
> > calling export.
> > =

> > The issue does not appear when I use a GPIO in a driver with an explicit
> > pinctrl configuration in the device tree, which explains why I did not
> > see it until now.
> > =

> > The kernel version used is Linux 5.4.22
> > =

> > Is this a user error from my part, or is there something missing in the
> > AT91 PIO4 pinctrl driver ?
> =

> IMHO this is all as expected. There are gpio controllers that
> automatically mux the matching pin, but you must not expect that.
> =

> My personal opinion on this is, that the downside of this automatic is
> worse than its benefits:
> =

>  - It's not universal, as there are SoCs that don't have a single pin
>    for a given GPIO, so you cannot reliably implement it for all
>    controllers.
> =

>  - Sometimes it is useful to make use of a GPIO and a dedicated function
>    on the same pin in a driver (e.g. an i2c driver might need to switch
>    to gpio to do a bus recovery). The automatic pinmuxing then has
>    strange side effect because you have to remux the pins after
>    requesting the GPIOs even if you didn't drive the pins as GPIO and
>    there is a short time where the pin function isn't the dedicated
>    one.

It's worse than that for the i2c driver.  The pins are muxed to the i2c
function when the driver binds.  When the i2c driver claims the GPIOs
corresponding with those pins, they get switched to GPIO mode behind
the back of pinctrl.  You then have to _explicitly_ switch pinctrl to
GPIO mode and back to I2C mode to get them back to I2C mode.

Merely requesting I2C mode after claiming the GPIOs doesn't do anything
- the pinctrl layer thinks they're still in I2C mode, and ignores the
call.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
