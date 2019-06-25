Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FB65267E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A4W6nxlVLYuFlF+11d8bY2Yq2Xday0GmjhYBS6zXmfc=; b=AbmLgjH8kX9EWsaudct0tJlL5
	BuTloDkVyIym62OcGa7qIry1BUPC4K+i35rgaC+dNkqHhzuV5u4s4EzVELeJG85/+mrvUkcmPTUPl
	EvIpCP8e/FWh8Q47dmVwOv55cd6dE3kss+yYgltTSwzpESDDaORioMzrEfBe6VDu5jIJIlloSxQGC
	ttnRtJrQJMwT+MalaiE9Xli6YwupgMJ5DNmNdPMx4Eyu7K/Jyz6Fn8h5dJptCy5g1uNrkhBIhMOOh
	U67VMD2jM5Vc/y23ZMUZUKMP6svK9CorSswjSgjeJV3MaFHZEAfQgNLbBe0kLKFuEC47fkF8YXcyT
	yLuEzbzVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfglp-0002k8-MT; Tue, 25 Jun 2019 08:25:41 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfglY-0002jX-QX
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:25:26 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 84BD740008;
 Tue, 25 Jun 2019 08:25:07 +0000 (UTC)
Date: Tue, 25 Jun 2019 10:25:07 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>, mark.rutland@arm.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 edubezval@gmail.com, wens@csie.org, robh+dt@kernel.org,
 mchehab+samsung@kernel.org, rui.zhang@intel.com,
 paulmck@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 08/11] thermal: sun8i: support ahb clocks
Message-ID: <20190625082507.mgycs6rzlxpvgqgu@flea>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
 <20190623164206.7467-9-tiny.windzz@gmail.com>
 <20190624182333.di7avywtdvzwukms@flea>
 <20190625003416.pxve36mrxmotg2bq@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190625003416.pxve36mrxmotg2bq@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_012525_021884_EF5FEE2B 
X-CRM114-Status: GOOD (  18.68  )
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
Content-Type: multipart/mixed; boundary="===============4254822168293535953=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4254822168293535953==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ry5qotdx34xj2snb"
Content-Disposition: inline


--ry5qotdx34xj2snb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 25, 2019 at 02:34:16AM +0200, Ond=C5=99ej Jirman wrote:
> On Mon, Jun 24, 2019 at 08:23:33PM +0200, Maxime Ripard wrote:
> > On Sun, Jun 23, 2019 at 12:42:03PM -0400, Yangtao Li wrote:
> > > H3 has extra clock, so introduce something in ths_thermal_chip/ths_de=
vice
> > > and adds the process of the clock.
> > >
> > > This is pre-work for supprt it.
> > >
> > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > ---
> > >  drivers/thermal/sun8i_thermal.c | 17 ++++++++++++++++-
> > >  1 file changed, 16 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_=
thermal.c
> > > index ed1c19bb27cf..04f53ffb6a14 100644
> > > --- a/drivers/thermal/sun8i_thermal.c
> > > +++ b/drivers/thermal/sun8i_thermal.c
> > > @@ -54,6 +54,7 @@ struct tsensor {
> > >  };
> > >
> > >  struct ths_thermal_chip {
> > > +	bool            has_ahb_clk;
> > >  	int		sensor_num;
> > >  	int		offset;
> > >  	int		scale;
> > > @@ -69,6 +70,7 @@ struct ths_device {
> > >  	struct regmap				*regmap;
> > >  	struct reset_control			*reset;
> > >  	struct clk				*bus_clk;
> > > +	struct clk                              *ahb_clk;
> >
> > Hmm, thinking a bit about this, the name of those two clocks doesn't
> > make sense. AHB is the bus being used to access that device, so the
> > bus clock is the AHB clock.
> >
> > What is that clock being used for?
>
> To control the A/D and sample averaging logic, I suppose. It's controlled=
 by the
> THS_CLK_REG (THS Clock Register) in H3 user manual.
>
> bus_clk controls THS_GATING in BUS_CLK_GATING_REG2 (THS module is connect=
ed to
> APB bus).
>
> I'd call it ths_clk and bus_clk.

Thanks. We've tried to make clock names a bit more generic and
consistent, so let's use mod instead.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ry5qotdx34xj2snb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRHaYwAKCRDj7w1vZxhR
xQrlAP9wwKwsQ2PbVvHGyuOJSFjRJZ9ASA22w83xIaKJDErjhgEAsmUAcw4APZyi
BhQMziRi3MAIeW70nBIvZFtQhI4YBwI=
=YZIB
-----END PGP SIGNATURE-----

--ry5qotdx34xj2snb--


--===============4254822168293535953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4254822168293535953==--

