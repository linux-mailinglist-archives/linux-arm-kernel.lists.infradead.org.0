Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7DED086D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2Y7/ocnKpBdZIa1RqNYkRaqrBD0xjPhIYjP77QSp9M=; b=qvdISbJltR0d7i
	2F7ypaPp16Qea5fPOFWk6nra4ejiUr45O3qL2YR3w6rnRlqp2Y7BflKPQ9+paHIv6duNfMhAc2Occ
	eihE4tdgv1xDSt+wui5mgWTt59KUKRsTjzQO8M+S8Rh19nNZYA3PK2aVmMnWKcoGG2wjKQrGveiEb
	FsbRrJq6IDz0mnM4vdYW2bXuOMI4/XanuDtrz8E2dvvyBlV7haypFxkEaqCkTdevvwp14YF2UTycc
	BIevX8eTVwUfrP2j3Yz2RTlA4S59gnhDYgondzMYYxtBw6S1tR9lnOM0/mwVP0Ig68joLSrhgTZwf
	XDq2bj98Y0lXndRbkxsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6XX-000668-N9; Wed, 09 Oct 2019 07:37:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6XF-0005xH-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:37:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iI6XB-0003fs-8a; Wed, 09 Oct 2019 09:37:21 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iI6X7-0004RL-ER; Wed, 09 Oct 2019 09:37:17 +0200
Date: Wed, 9 Oct 2019 09:37:17 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] tty: serial: imx: Only get second/third IRQ when there
 is more than one IRQ
Message-ID: <20191009073717.qlr2svma5fiaf4ad@pengutronix.de>
References: <1570601911-9162-1-git-send-email-Anson.Huang@nxp.com>
 <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
 <DB3PR0402MB39165F9CE876772F8F94F187F5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20191009071403.ugd2wuac6ue5zsd6@pengutronix.de>
 <DB3PR0402MB39161E02A9D042948B71FDCDF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39161E02A9D042948B71FDCDF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_003725_887946_3C2ABDD0 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 07:24:57AM +0000, Anson Huang wrote:
> > On Wed, Oct 09, 2019 at 06:58:24AM +0000, Anson Huang wrote:
> > > > The patch is fine given the changed behaviour of platform_get_irq. I
> > > > wonder if it is sensible to introduce a variant of platform_get_irq=
 (say
> > > > platform_get_irq_nowarn) that behaves like __platform_get_irq does t
> > > > Then the imx driver would just call platform_get_irq_nowarn without
> > > > having to check the number of available irqs first.
> > >
> > > Agreed, it would be nice if we can fix this from the API level, this
> > > is to save many patches from various drivers side, let me know if
> > > agreement is reached and I will do the patch.
> > =

> > I wouldn't expect that most callers actually want an error message and =
so
> > these need a different patch (i.e. dropping the error message by the ca=
ller).
> > This type of patch is fine and the normal load when something is
> > consolidated.
> > =

> > Which other drivers do you have on your radar that don't want an error
> > message if platform_get_irq() fails?
> =

> I did NOT mean drivers don't want an error when getting irq failed, but I=
 just
> agree that introducing another API with nowarn as you mentioned upper, th=
en
> i.MX driver can call it. For now, the FEC driver also have many such erro=
r message,
> we will fix later.
> =

> So if the API with nowarn is added, then I can change the API call in som=
e i.MX driver
> instead of getting irq_count first. Do you think I should add the nowarn =
API and redo
> this patch to call it? =


Having a patch (or a set of patches) is probably helpful to get forward
here, yes. You have my blessing to create a suggestion. (Not that you
actually need that :-)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
