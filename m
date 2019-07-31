Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18DF7D082
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSgf1OFtXmW72T92DKcrq2GV5Q4QNZPvzxKxjlOapnk=; b=bC/kJvu8RierTu
	FzQC7eBqaBEp16cTQgyK4dlbY/RyQ+gw7fy6GCcB6exqX//uFTsR08SJ5HBHneFAFnEdS3X9skIXB
	U5GVcMzk4ExSGJjJbz0JO50V1CGE66J5Wkd6ZrN0G4y39yj+m+7F/gsOTxCdd10Xf2HBv5CF1e833
	SYbK65aR0KJCi/gQVOkkqXUGBR9kTj7rx0mrTXsFSocvy1pnx1xhkgnYX8D4TwvZFF3EOCxFdkN+I
	K2H1mfV950Ii5Mvf/Pj00/cOqGfp+ebYuGm8OCZdo2R+RXqp8cTOrOs09TxDAaqQUMf6JoBViBSzS
	vd2m+rkyxzz+NxwbYt5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsws8-00010m-QA; Wed, 31 Jul 2019 22:15:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsws0-00010F-Ig
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:14:54 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hswrx-0002zQ-CD; Thu, 01 Aug 2019 00:14:49 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hswrw-0002MM-FG; Thu, 01 Aug 2019 00:14:48 +0200
Date: Thu, 1 Aug 2019 00:14:48 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: at91sam9x5/dt: enable internal pull-up for i2c-gpio
 lines
Message-ID: <20190731221448.tnxrrwny2jpe7iop@pengutronix.de>
References: <20190729160022.22781-1-uwe@kleine-koenig.org>
 <20190731111828.oc7ysaq3pznnshds@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731111828.oc7ysaq3pznnshds@M43218.corp.atmel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_151452_617874_9EE9141F 
X-CRM114-Status: GOOD (  18.08  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hello Ludovic,

On Wed, Jul 31, 2019 at 01:18:28PM +0200, Ludovic Desroches wrote:
> On Mon, Jul 29, 2019 at 06:00:22PM +0200, Uwe Kleine-K=F6nig wrote:
> > External E-Mail
> > =

> > =

> > This is what I need on my Arietta G25 to be able to just connect an i2c
> > device to the pin headers.
> > Also remove the comment that doesn't tell more than the pin declaration.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> > ---
> > Hello,
> > =

> > not sure this is change suitable for the SoC dtsi. I'll leave it to the
> > at91 maintainers to decide.
> =

> Usually we have pull-ups for those signals on our board. In this case,
> it's useless to activate the internal pull-up. Even if I am not sure we
> were consistent in our policy about what goes in the SoC dtsi and what
> goes in the dts board, I would prefer to have this at the board level.

OK.

The define I added in include/dt-bindings/pinctrl/at91.h would be nice
to have though to simplify overriding the SoC's default pinctrl. Would
it be OK to add this? (I kept the diff below.) Obviously there isn't a
mainline user (yet) because it's a custom modification of my Arietta
board that it has an i2c device (and it depends on the modification that
I need the internal pull up).

Best regards
Uwe

> > diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/p=
inctrl/at91.h
> > index 3831f91fb3ba..c72d40f50acd 100644
> > --- a/include/dt-bindings/pinctrl/at91.h
> > +++ b/include/dt-bindings/pinctrl/at91.h
> > @@ -20,6 +20,8 @@
> >  #define AT91_PINCTRL_DEBOUNCE		(1 << 16)
> >  #define AT91_PINCTRL_DEBOUNCE_VAL(x)	(x << 17)
> >  =

> > +#define AT91_PINCTRL_MULTI_DRIVE_PU	(AT91_PINCTRL_MULTI_DRIVE | AT91_P=
INCTRL_PULL_UP)
> > +
> >  #define AT91_PINCTRL_PULL_UP_DEGLITCH	(AT91_PINCTRL_PULL_UP | AT91_PIN=
CTRL_DEGLITCH)
> >  =

> >  #define AT91_PINCTRL_DRIVE_STRENGTH_DEFAULT		(0x0 << 5)

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
