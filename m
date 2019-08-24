Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AFD9BD2E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 12:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2oLEz8nZaeY5XwT04A9xkXHmmm8V/m74D4MzOK1/ZE=; b=QMkQc7EsTAyVNJ
	/K02zORUnwdkPmEMIrsC5sULM7pm6su6Bi2WxtucTY/hydHoWB97Rx1klJAc48sz8LmVSLQmEedCz
	QUaMGodBavPphYi43l0fDQpBSg52ESIt+T/uoCAPNU8PgWcmLw1q+4lfQzvDvMlpOiw+vvusxl2od
	Fk94vvv2omTQvKUR5WHu9/Y2mcWXhiSFFI4xfxWXxUlcfhQoINT1JiXMLU85zPkT/PiLosLM4Z94Y
	8B/kD/147ur9umqCtfwygE2x9w0iCA6beTdX399oOuhR/kDkNNXr7t1LEcSirPYTF7CO0NunPlBfS
	cN3N+GhWHH0BHbf5JyLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Tic-0003pj-44; Sat, 24 Aug 2019 10:56:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1TiV-0003pQ-0X
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 10:56:20 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1TiR-0001bO-Bw; Sat, 24 Aug 2019 12:56:15 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1TiQ-0003T7-75; Sat, 24 Aug 2019 12:56:14 +0200
Date: Sat, 24 Aug 2019 12:56:14 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 0/3] pwm: bcm2835: Minor fixes
Message-ID: <20190824105614.wpkvqqxjey6umhrs@pengutronix.de>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
 <20190824092553.j4rjpzaz4m6yaa5t@pengutronix.de>
 <22f8e65b-2d65-84e7-de50-ba6538a84292@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22f8e65b-2d65-84e7-de50-ba6538a84292@gmx.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_035619_056688_FAD832E3 
X-CRM114-Status: GOOD (  20.05  )
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Stefan,

On Sat, Aug 24, 2019 at 12:05:00PM +0200, Stefan Wahren wrote:
> Am 24.08.19 um 11:25 schrieb Uwe Kleine-K=F6nig:
> > Hello Stefan,
> >
> > On Sat, Aug 24, 2019 at 09:07:22AM +0200, Stefan Wahren wrote:
> >> This small patch series contains minor fixes for clock handling and the
> >> period range check.
> >
> > I'd like to understand the various different usecases of PWMs. The
> > in-kernel consumers are kind of obvious, but sysfs users are not. It
> > seems you are one of the latter.
> >
> > Would you mind sharing what you control using the PWM?
> =

> not really a PWM user with BCM2835. It's more the motivation as a
> platform maintainer to keep the drivers in shape. At work we are using
> sysfs interface for user applications to control ventilation (via hwmon
> interface) and EV charging (IEC 61851) with a different SoC.

I don't understand how you use the sysfs interface and still interact
with the hwmon interface. Other than that, thanks for sharing.


> > Assuming you have some interest in this driver: It still uses the legacy
> > stuff implementing .config, .enable, .disable, .set_polarity. Are you
> > willing to test (or even implement) a switch to .apply instead?
> =

> Yes, definitely. This is one of my never ending TODO list [1]. But i
> would be suprised that you wont have access to a Raspberry Pi.

So be surprised :-)

> > Just from a quick lock into the driver I wonder a few things, maybe you
> > can shed some light here. If there is publicly available documenation
> > for this piece of hardware, feel free to point this out, then I might be
> > able to work out some of the answers myself.
> =

> Fortunately yes [2]

Care to add a link to this document in the driver for others to easily
find it?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
