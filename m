Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4296EBBE02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 23:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aejKgbFkk4a8+AJko2BVJj+OsoUmM9pq7ZvNhWb4WU=; b=EsMEmBr0osX00R
	orDK0DI/OjVeRzWm0yB1Ig+GcjFwiGLpnpFdJ4tug1tp2dyLjF9gXNClt58C9l7ZRKtCfqwMOrPsV
	XNRS+x51jx+FNJYsV65GbN/gzd78kVhT2kQn3byK79hhBsVEzqkXyA/s1kdSv1usZtkn30GDbCXGN
	wyJMOjNyhOuFszGkgUbl5aHcaP5ZpWtUuDBAW+FHiwQzP/v4fFjY7JaT3j2zlLTKgkl8v1UbpFdSH
	ukViG84B3PAR0Wg08JjEdrvcfZXVd58t5Irq48cqp2zRkkOSqe6CDczOznPAG0OcJ9yQ7rBymmbF6
	ETHS6D84RgFksgsx+I8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVyy-0003xE-FI; Mon, 23 Sep 2019 21:34:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVyq-0003x2-Pk
 for linux-arm-kernel@bombadil.infradead.org; Mon, 23 Sep 2019 21:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cr9JSzUoiyYEIWMlX6VcGpOGGoNvanpEX7zcEPkr7GQ=; b=3dok+ZM9dm1s+3FDWm0dt4lDog
 gFXHaS9FbQqUR7iQPJ8FoO22O2mlS2Wa2DZEGb7YsTwsdt6HeOPeaWivb3/K9L0ywHqY3GhN4ZW8/
 BW0z97CQ7mhAo0HwmsLxjgU19UQzDBGtxXSoftE4xTGGpBwjITHlhbZ1KAxF3D4ASViJlUAIphhoE
 SwJ1e7bC2XiOpxiT8kbMf+QI+vCVuN/cb6WMiyILCy2j5DVZGUFExmv70XuXA0tVdEE/jR9iCTmOI
 hfG+MKJXbHHDqyXd9ZXRCikG+1U6+vG50n/QfpKUPd6jserw9KAl3Q1EwrVTwqqYU5F1y85meUbXD
 RkdMij1w==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVym-0007Lc-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 21:34:46 +0000
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 6F140200005;
 Mon, 23 Sep 2019 21:34:04 +0000 (UTC)
Date: Mon, 23 Sep 2019 23:34:03 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: at91: avoid sleeping early
Message-ID: <20190923213403.GF4141@piout.net>
References: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
 <20190923165848.3108A20882@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923165848.3108A20882@mail.kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/09/2019 09:58:47-0700, Stephen Boyd wrote:
> Quoting Alexandre Belloni (2019-09-20 08:39:06)
> > It is not allowed to sleep to early in the boot process and this may le=
ad
> > to kernel issues if the bootloader didn't prepare the slow clock and ma=
in
> > clock.
> > =

> > This results in the following error and dump stack on the AriettaG25:
> >    bad: scheduling from the idle thread!
> > =

> > Ensure it is possible to sleep, else simply have a delay.
> > =

> > Reported-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > ---
> > =

> > Note that this was already discussed a while ago and Arnd said this app=
roach was
> > reasonable:
> >   https://lore.kernel.org/lkml/6120818.MyeJZ74hYa@wuerfel/
> =

> Does this need a Fixes: tag?
> =


I'm not sure how far this can get backported

Fixes: 80eded6ce8bb ("clk: at91: add slow clks driver")


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
