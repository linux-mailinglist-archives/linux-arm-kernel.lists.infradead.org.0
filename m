Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85D17EF2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuqCGmsHjIJ6anMa6p5VQGdJ9Urcno+beDjenjgRbnc=; b=d9POnZbhB55Yi4
	zkPppALHPKnMB/FuowfSPOvx9mzRGhECaoQXa/REjT68uzd+K5Vyso2topBxu4brJtY1LnETdzuNX
	I2C3Km18nJ9zjwRepw1awPwpn8qLZ1HE/sv58HSUCXFwkqWdw45r2Hnw5kA8aa+pNo8V7geIVuvyf
	3cur2Nkjhh153zcsN11dtiifDFVfrLBvNrRmFAMnBnJ7oOQjjY++kzq6C0LpaR32ZeQrG4h95f5kV
	Se1yKg7X0UsELSG64YbudM8VFYp7foEXx5g0Ax4N91peg/SIKYVupuFR50QWy6vJnt7GEmYviIgku
	Hw7TNSy2G9dvklI/NCag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSs9-0000ye-Eh; Fri, 02 Aug 2019 08:25:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSrt-0000xo-Kr
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 08:24:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1htSrk-0001JP-AM; Fri, 02 Aug 2019 10:24:44 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1htSrh-0000NT-R6; Fri, 02 Aug 2019 10:24:41 +0200
Date: Fri, 2 Aug 2019 10:24:41 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2 1/3] serial: mctrl_gpio: Avoid probe failures in case
 of missing gpiolib
Message-ID: <20190802082441.udsrc5ev4nwj7abz@pengutronix.de>
References: <20190801184505.17239-1-frieder.schrempf@kontron.de>
 <20190801203316.7ntlv6hequmddfxu@pengutronix.de>
 <011ac0ac-571e-b898-2b2d-89b9a771b0c1@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <011ac0ac-571e-b898-2b2d-89b9a771b0c1@kontron.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_012453_679255_94E9B48B 
X-CRM114-Status: GOOD (  16.25  )
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Fri, Aug 02, 2019 at 07:56:54AM +0000, Schrempf Frieder wrote:
> On 01.08.19 22:33, Uwe Kleine-K=F6nig wrote:
> > On Thu, Aug 01, 2019 at 06:45:21PM +0000, Schrempf Frieder wrote:
> >> diff --git a/drivers/tty/serial/serial_mctrl_gpio.c b/drivers/tty/seri=
al/serial_mctrl_gpio.c
> >> index 2b400189be91..54c43e02e375 100644
> >> --- a/drivers/tty/serial/serial_mctrl_gpio.c
> >> +++ b/drivers/tty/serial/serial_mctrl_gpio.c
> >> @@ -61,6 +61,9 @@ EXPORT_SYMBOL_GPL(mctrl_gpio_set);
> >>   struct gpio_desc *mctrl_gpio_to_gpiod(struct mctrl_gpios *gpios,
> >>   				      enum mctrl_gpio_idx gidx)
> >>   {
> >> +	if (gpios =3D=3D NULL)
> >> +		return NULL;
> >> +
> > =

> > I wonder why you need this. If GPIOLIB is off this code isn't active and
> > with GPIOLIB calling mctrl_gpio_to_gpiod with a gpios =3D=3D NULL is a =
bug
> > that IMHO should not be silently ignored.
> > =

> > Am I missing something (again)?
> =

> No, you're right. My thoughts were, that if the mctrl_gpio functions are =

> allowed to be passed a NULL pointer in general, they all should have a =

> NULL check, even if in the current context (GPIOLIB disabled) this code =

> is not active. Apparently there are other cases when a NULL pointer is =

> passed, see [1]. So you can't really consider gpios =3D=3D NULL to be a b=
ug =

> as this seems to be allowed in general.

OK, then this is another separate commit, right? Preferably with a
comment pointing to drivers that use mctrl_gpio before being
initialized.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
