Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6329F55127
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zxcuLGXyRoZSFV1JPzwbyIZI5PMgeyjrw5TTbXXsa0U=; b=IxNutGlAia4JeLTgi3qO6TM1+
	Q8Ut2F/DCzK1lmD3EHfO4BIS+Ccgahu39Ol/Yw1+e3UtlZeYBUOuR3n3ZwAcgPeW7tWw9w/vFecON
	FnOgQ7xQFQuh856IbignYxKII1/pIYMo1efetKpoUu8iWl4ejU/zhK6O6Dn+/PiK0LBfzN/eigMKi
	a/MI4yTe+V/nFy3DmQkUn44Z2/G8x0AzuRaNclc0U1Tvhp9z1O1YduQ/W9rGOoUj/CBg7ziK2kags
	2kGTs9ADwoRhk1415ZX7OXOMLnR7ZY7DDvMWXupf1+AwmdjeLlsIxqYm5Bk2H4HU4ppYVcWjDofU1
	dPVQ6++Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfm9g-0002KW-8z; Tue, 25 Jun 2019 14:10:40 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfm9W-0002Ji-SH
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:10:32 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 6653940003;
 Tue, 25 Jun 2019 14:10:26 +0000 (UTC)
Date: Tue, 25 Jun 2019 16:10:25 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 1/9] pinctrl: sunxi: v3s: introduce support for V3
Message-ID: <20190625141025.uvewl7arnsz5grr3@flea>
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-2-icenowy@aosc.io>
 <20190624124019.o6acnnkjikekshl5@flea>
 <CACRpkdaQSg4qWWF1XurWA8wnW+ezGtTympVT9DvkF87VKEQVzw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdaQSg4qWWF1XurWA8wnW+ezGtTympVT9DvkF87VKEQVzw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_071031_077471_0CC46441 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============4536930674937577109=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4536930674937577109==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uh3numobk6gzuc5u"
Content-Disposition: inline


--uh3numobk6gzuc5u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 25, 2019 at 03:57:15PM +0200, Linus Walleij wrote:
> On Mon, Jun 24, 2019 at 2:40 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > On Sun, Jun 23, 2019 at 12:37:53PM +0800, Icenowy Zheng wrote:
> > > Introduce the GPIO pins that is only available on V3 (not on V3s) to the
> > > V3s pinctrl driver.
> > >
> > > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > > ---
> > > Changes in v3:
> > > - Fixed code alignment.
> > > - Fixed LVDS function number.
>
> > > -               SUNXI_FUNCTION(0x2, "uart2"),         /* TX */
> > > -               SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),  /* PB_EINT0 */
> > > +               SUNXI_FUNCTION(0x2, "uart2"),                 /* TX */
> > > +               SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),          /* PB_EINT0 */
> >
> > I'm not sure why all that churn is needed.
> >
> > Looks good otherwise.
>
> Should I apply the patch or wait for a new version without the
> whitespace fixes?

I'd rather not have the indentation changes in that patch.

And we've sent the changes for 5.3 already, so it's going to be 5.4
material anyway.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--uh3numobk6gzuc5u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRIrUQAKCRDj7w1vZxhR
xUx/APwJxRclTo/OlevMmcYPGQ1p1ck7FN1SUXrdShcLFeCyjwD/Y20Bm5HFxJ74
8AikfrRhA+M905RT/a5BkSxvJYhOeg0=
=yyVJ
-----END PGP SIGNATURE-----

--uh3numobk6gzuc5u--


--===============4536930674937577109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4536930674937577109==--

