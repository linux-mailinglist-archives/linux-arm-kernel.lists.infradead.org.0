Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E8911A4E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4K5tL3xnfD0UkBoAPMgi4r5m/cdABIhNGPiAEgWupE=; b=Ejn3f/js6CCqDm
	uwM8r/khm433Sa6UXj1HvLBOeCle+Mg/G92GHssBQm/EUqxi70YKVgqF9MjhAfFHeFqdm3PBOw0bu
	gAJ4EpM1S0NfdPls6VvuDJsTjGGcWTi41i7jnf9lvhVq7XzImOzSFKnl2ilHFYmFv9HZMt2CYT0um
	UpXqzTIxHCJWSwLrc/X7Kj+WsIxE22v/U0Ah5BrZlLHP58o+ywDc/dgMWPTJOMGNiA3F34CK8pu1p
	aQWTLKzSb92HJVeWC6SBCxAcEyyL3bRkTFfaL6eaIlTATfG4Uv55XoCzUxQjujf9pfw57/+lEZPBU
	Caezxoaapuo0gYV+/96w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iew9a-0003QN-Ew; Wed, 11 Dec 2019 07:11:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iew9Q-0003PY-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:11:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iew9M-0005Px-B5; Wed, 11 Dec 2019 08:11:08 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iew9L-0007vc-6u; Wed, 11 Dec 2019 08:11:07 +0100
Date: Wed, 11 Dec 2019 08:11:07 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] bus: ts-nbus: remove bus driver without user
Message-ID: <20191211071107.ogyuxnwphlw5txe3@pengutronix.de>
References: <20190107194523.2772-1-u.kleine-koenig@pengutronix.de>
 <CACRpkdbYizVLtQxh8_ZXWC-d6+E-k0T6Zq67qRJ7ascFGWTXig@mail.gmail.com>
 <20190111150441.rsmize5dudrmgu52@pengutronix.de>
 <CACRpkdbY=ZS0hb2wQfLQMr_=vNAGuMUGnAmwgwZi-hZ-fNdD=Q@mail.gmail.com>
 <20191210171524.dg4vkqp3dhupsgbm@pengutronix.de>
 <CACRpkdb3dZ0WKtReMcmt2boRy3ooh+yj-QKTG3vRR8=4G7w9nw@mail.gmail.com>
 <20191210212758.jppjwepnxpwez5r2@pengutronix.de>
 <CACRpkdb5L9S1McY41FUivZD7DUPOtbvTPVgVOvcVWr114GuzPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdb5L9S1McY41FUivZD7DUPOtbvTPVgVOvcVWr114GuzPw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_231113_354345_5085E15A 
X-CRM114-Status: GOOD (  14.07  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Thierry Reding <thierry.reding@gmail.com>,
 kernel <kernel@savoirfairelinux.com>, Sascha Hauer <kernel@pengutronix.de>,
 Jerome Oufella <jerome.oufella@savoirfairelinux.com>,
 Sebastien Bourdelin <sebastien.bourdelin@savoirfairelinux.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Linus,

On Wed, Dec 11, 2019 at 12:08:14AM +0100, Linus Walleij wrote:
> On Tue, Dec 10, 2019 at 10:28 PM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Tue, Dec 10, 2019 at 10:19:55PM +0100, Linus Walleij wrote:
> =

> > > So I would rather ask: who is hurt by it being around?
> >
> > It's one of the legacy PWM API users, and when I worked at improving
> > it Thierry wondered if it's worth keeping the driver given it has no
> > users[1].
> >
> > I don't care much either way, but if we keep the driver "looks dead"
> > shouldn't be an excuse to not take cleanup patches.
> =

> Hm are cleanup patches not getting applied?
> Isn't the real problem (my halfguess) that drivers/bus/* is a bit
> orphaned?
> =

> Whenever I want to change something there I just send the patches
> to the [ARM] SoC maintainers and ask them to apply it.
> arm@kernel.org soc@kernel.org
> =

> If it means that you'd have to do tons of cleanups for nonexisting
> or ungrateful users I'd say send a patch to delete it.

OK, I will readd that driver to my (already long) todo list and send
patches to them when I come around to work in that area again.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
