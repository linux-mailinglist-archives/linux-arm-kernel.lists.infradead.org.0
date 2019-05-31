Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EFD30F65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 15:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJIbjq8hmNxCuCtPkPr95F//0TB5TsVG+UvlJxRzAf4=; b=MoLFVGrqqggx6F
	ng5QrQKuc4hCRxzTxINnF7g3ZCn562lh81E37WHm/1ZwVWhLHoWdKKwFPtm1543xKHLL5+ir9z0j6
	EHx0ptw4Xld04V8e9R1sVf2weUXqwhEkQKwxA5TJkyuzM9ych1KiDEPlR/kGoKBFXL9ZRTOLViSwZ
	EIdcycTrdYEUzm8l471s5F7Dxq5RvJ9E4Oa49TvOGGq+Tccd2fRV6ozonelE9QB4M7GnUmsSZ2dkj
	4X8PFSuVwfeZPQvSEJ9DFDDT4bHdkv7ygdsPkDZaeEI/YpoOxO/GBObVFWx9IRtN76Frr2JDnV3GT
	nT945F9GnyeMnKQNCo5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWi1x-0001Ze-OF; Fri, 31 May 2019 13:57:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWi1q-0001Yy-AR
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 13:57:07 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWi1j-00089c-6Y; Fri, 31 May 2019 15:56:59 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWi1i-0000pa-6S; Fri, 31 May 2019 15:56:58 +0200
Date: Fri, 31 May 2019 15:56:58 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/6] serial: sa1100: add support for mctrl gpios
Message-ID: <20190531135658.jo4kas3ozj7gpmmc@pengutronix.de>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
 <E1hWfTn-0003fP-Rl@rmk-PC.armlinux.org.uk>
 <20190531125013.3gkexhmbqjpdvrtf@pengutronix.de>
 <20190531132340.bco6xpyl3aatbryl@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531132340.bco6xpyl3aatbryl@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_065706_518475_39E5B6C8 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 02:23:40PM +0100, Russell King - ARM Linux admin wr=
ote:
> On Fri, May 31, 2019 at 02:50:13PM +0200, Uwe Kleine-K=F6nig wrote:
> > On Fri, May 31, 2019 at 12:13:47PM +0100, Russell King wrote:
> > > +static int sa1100_serial_add_one_port(struct sa1100_port *sport, str=
uct platform_device *dev)
> > > +{
> > > +	sport->port.dev =3D &dev->dev;
> > > +	sport->gpios =3D mctrl_gpio_init_noauto(sport->port.dev, 0);
> > =

> > the _noauto function was only introduced to ease a transition. I think
> > the driver would benefit to use mctrl_gpio_init() instead.
> =

> In what way would the driver benefit?  mctrl_gpio_init() requires that
> there are IRQs for each input GPIO.  This is not the case with most
> SA11x0 platforms, where the GPIO controls are implemented using simple
> latches, hence that interface is entirely unsuitable.

Ah, but then you can only use the outputs reliably here as an edge on
(say) CTS stays unnoticed with both mctrl_gpio_init() and
mctrl_gpio_init_noauto().

Unless I miss something (which is quite possible given that it's quite
some time ago I looked into mctrl_gpio) with mctrl_gpio_init_noauto()
having a CTS-gpio is just ignored unless the modem ctrl lines are
explicitely requestet while with mctrl_gpio_init() it results in an
error. Isn't the error the better alternative?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
