Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8346A129415
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 11:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDOg3C0csKGnJ8ODn5dGGKeyVHLx6261t132jLmBJf4=; b=pylgWXt1zy3c60
	2rAYRUIe4R4zOSdIklYfH82ccVehn2Zih+xxEXKtQLQVujniUPnsyB5I1K/qtcfyNVklNVLrYMBcW
	fDa/v+vneR6rSMCzRXpHnvrSXLmOn2n5GfqbCdaXVefIj4Fqf/tKoGmR9FosyBvpvLzEmiv7QOTFX
	/B9Pa6ChtBFxFAQB7tg+GWTyJBcOULpkL95dfoaoTjEuMPK25yEpfEtZub2n5dUIyLWFjIDdFfWmn
	cNwWE2EwAcL86eptPDbeB35BIDCSbxbnKj2n4RJhrcRcVpsHsE2B2d8sO8NBjLv16l/LVNa6hrcMW
	QGyo0q4R9ukhvNw1MAMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijKlX-0001XH-HZ; Mon, 23 Dec 2019 10:16:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijKlO-0001Wr-9X
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 10:16:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ijKlK-0008G6-BW; Mon, 23 Dec 2019 11:16:30 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ijKlH-0004RC-Ap; Mon, 23 Dec 2019 11:16:27 +0100
Date: Mon, 23 Dec 2019 11:16:27 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Duan <fugang.duan@nxp.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
Message-ID: <20191223101627.p4a72y6ai5ns7pit@pengutronix.de>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
 <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_021634_333749_E12A25A3 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andre Renaud <arenaud@designa-electronics.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, Dec 23, 2019 at 01:53:44AM +0000, Andy Duan wrote:
> From: Fabio Estevam <festevam@gmail.com> Sent: Saturday, December 21, 201=
9 8:03 PM
> > On Sat, Dec 21, 2019 at 4:31 AM Andy Duan <fugang.duan@nxp.com> wrote:
> > =

> > > We should ensure the RX FIFO data are not missed since they are valid=
 data.
> > > To compatible DMA and cpu PIO mode, to receive all RX FIFO data when
> > > start to send, it will involve complex code logic.
> > > So I suggest to enable the flag "SER_RS485_RX_DURING_TX", and force to
> > > enable the flag for imx uart RS485 driver.
> > =

> > Inside imx_uart_rs485_config() we have:
> > =

> > if (rs485conf->flags & SER_RS485_ENABLED) {
> >        /* Enable receiver if low-active RTS signal is requested */
> >        if (sport->have_rtscts &&  !sport->have_rtsgpio &&
> >            !(rs485conf->flags & SER_RS485_RTS_ON_SEND))
> >                     rs485conf->flags |=3D SER_RS485_RX_DURING_TX;
> > =

> > Maybe the if() logic needs to be changed so that the
> > SER_RS485_RX_DURING_TX flag could be set in Andre's case?
> =

> I think let the config always is enabled unconditionally: =

> 	rs485conf->flags |=3D SER_RS485_RX_DURING_TX;

I think it should be possible to fix without forcing
SER_RS485_RX_DURING_TX (which might have surprising effects for
userspace). Actually I was convinced this problem was fixed in a
different way in the imx driver already since 76821e222c18 ("serial:
imx: ensure that RX irqs are off if RX is off").

The key idea is to disable the RX irq and dma request and only then
disable RX. This way it is not given that the RX FIFO is empty on
disable, but the characters are not read and so the exception doesn't
happen.

I'll take a deeper look after my vacations in the new year, probably
some rx485 path was missed in the fix.

Merry Christmas (for those who care),
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
