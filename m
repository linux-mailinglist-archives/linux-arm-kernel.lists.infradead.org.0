Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3535132C97
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j1aYzDRLgxU5Pn4/0l4/5ZaOtoP8T9G0497YBIkoBao=; b=PMK8QOTYmkapWc63AgLG84U6X
	6LWNevyySqnjb3MuuMwRvb7Zsf2fXS5ubFF4xpdQenRXeIyC83ILen1XNItastXHxdiZ8FxPRH9/g
	h8BMFfsthjXGq40HekqNwJhVyhwnzvghcisk95pVBPvpqBoxSnIGrgeJH095xxLr5mdMmmVHMUYfX
	DDGyj/B31Lrf1O3DI76H0tZqJeupwNvy87JiYh7dvg5bpZkK7iJ08crwOi3aNgQWQfZ7VlEj++gqO
	/gpIMOkjj9C59DSjbhYAbV3yGUfQ5z3eerBaQbMavBRbDXICc/u1K/EgePwDlq8kZT+W4HNoMSISF
	bIGsmQfgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosMA-0007ak-1V; Tue, 07 Jan 2020 17:09:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosM1-0007aC-Ov
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:09:19 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 024522087F;
 Tue,  7 Jan 2020 17:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578416957;
 bh=rdMbnFROR3ZGRGF6MMtW3HCXNlbQ1I4/MOT+6Eqn3j4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SlbBB53O6zNjf1ennYLpa4fDSiui/LvfBlf+oZJpsSuR+FsvfYsLxdbV2tnuJwnmR
 Vv80E7cItGr1oQ4vnUd6SUDRsUogjVIvkORu4fjXuHmb/6vhZD48LeARbtJuy/2Yyv
 VSUGNEr51g5h1TFrxtL2e7OzcHvWqsqt9Kv5nw1Q=
Date: Tue, 7 Jan 2020 18:09:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: a64: enable DVFS
Message-ID: <20200107170914.4lloj62szdmvsa2j@gilmour>
References: <20200104063505.219030-1-anarsoul@gmail.com>
 <20200104063505.219030-4-anarsoul@gmail.com>
 <20200104083734.hmeapykk7gninukf@gilmour.lan>
 <CA+E=qVdZGktgAwEUeUkqYaU=pWe-Ogjnf90=z7YcyrXn74h+9w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVdZGktgAwEUeUkqYaU=pWe-Ogjnf90=z7YcyrXn74h+9w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_090917_851732_BBD55079 
X-CRM114-Status: GOOD (  25.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1848598896108994339=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1848598896108994339==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hianm4mhkxhl3mtz"
Content-Disposition: inline


--hianm4mhkxhl3mtz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Jan 04, 2020 at 08:24:01AM -0800, Vasily Khoruzhick wrote:
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > > @@ -104,6 +104,10 @@ &de {
> > >       status = "okay";
> > >  };
> > >
> > > +&cpu0 {
> > > +     cpu-supply = <&reg_dcdc2>;
> > > +};
> > > +
> > >  &ehci1 {
> > >       status = "okay";
> > >  };
> >
> > Did you test it on all those boards (and if so, how were the OPP
> > tested), or was it done simply by looking at the schematics?
>
> I tested it only on Pine64-LTS and Pinebook. But all these boards use
> AXP803 which always uses DCDC2 as CPU regulator.

Ok. How were those OPPs picked and tested?

> > > +             opp-912000000 {
> > > +                     opp-hz = /bits/ 64 <912000000>;
> > > +                     opp-microvolt = <1120000>;
> > > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > > +             };
> > > +             opp-960000000 {
> > > +                     opp-hz = /bits/ 64 <960000000>;
> > > +                     opp-microvolt = <1160000>;
> > > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > > +             };
> > > +             opp-1008000000 {
> > > +                     opp-hz = /bits/ 64 <1008000000>;
> > > +                     opp-microvolt = <1200000>;
> > > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > > +             };
> > > +             opp-1056000000 {
> > > +                     opp-hz = /bits/ 64 <1056000000>;
> > > +                     opp-microvolt = <1240000>;
> > > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > > +             };
> > > +             opp-1104000000 {
> > > +                     opp-hz = /bits/ 64 <1104000000>;
> > > +                     opp-microvolt = <1260000>;
> > > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > > +             };
> > > +             opp-1152000000 {
> > > +                     opp-hz = /bits/ 64 <1152000000>;
> > > +                     opp-microvolt = <1300000>;
> > > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > > +             };
> > > +     };
> > > +
> >
> > What frequency is setup by U-Boot?
>
> It's 816 MHz
>
> > If it's 1008 MHz as usual, then having the OPP above that frequency by
> > default means that a board that doesn't set cpu-supply (or doesn't set
> > it up properly) will be unstable, since it will increase the
> > frequency, but not the voltage, and the voltage isn't enough for that
> > new frequency.
> >
> > The way we've done it so far on the SoCs in a similar situation (A33,
> > A83t) is only to list the OPP below the frequency set up by U-Boot in
> > the DTSI, and list the frequencies above that in the boards that add
> > cpu-supply.
> >
> > Given that it seems that we need to have them listed on number of
> > boards, I guess we could add a separate DTSI that would be included
> > only by the boards setting cpu-supply?
>
> Currently all the A64 boards that we support use AXP803, so I'm not
> sure whether we actually need that. We can just define CPU regulator
> for them and use default OPP and that's exactly what I did.

Yeah, but none of them have been supporting it since day one. Having
these OPPs now mean that the very first thing you'll need to do is to
bringup the PMIC as well, otherwise the system will crash.

And to the person doing the bringup, this will be far from obvious
that a) we have that requirement b) the crash that they are seeing is
due to cpufreq.

> > >       cpus {
> > >               #address-cells = <1>;
> > >               #size-cells = <0>;
> > > @@ -90,6 +136,10 @@ cpu0: cpu@0 {
> > >                       reg = <0>;
> > >                       enable-method = "psci";
> > >                       next-level-cache = <&L2>;
> > > +                     clocks = <&ccu CLK_CPUX>;
> > > +                     clock-names = "cpu";
> > > +                     operating-points-v2 = <&cpu0_opp_table>;
> > > +                     #cooling-cells = <2>;
> > >               };
> > >
> > >               cpu1: cpu@1 {
> > > @@ -98,6 +148,10 @@ cpu1: cpu@1 {
> > >                       reg = <1>;
> > >                       enable-method = "psci";
> > >                       next-level-cache = <&L2>;
> > > +                     clocks = <&ccu CLK_CPUX>;
> > > +                     clock-names = "cpu";
> > > +                     operating-points-v2 = <&cpu0_opp_table>;
> > > +                     #cooling-cells = <2>;
> > >               };
> > >
> > >               cpu2: cpu@2 {
> > > @@ -106,6 +160,10 @@ cpu2: cpu@2 {
> > >                       reg = <2>;
> > >                       enable-method = "psci";
> > >                       next-level-cache = <&L2>;
> > > +                     clocks = <&ccu CLK_CPUX>;
> > > +                     clock-names = "cpu";
> > > +                     operating-points-v2 = <&cpu0_opp_table>;
> > > +                     #cooling-cells = <2>;
> > >               };
> > >
> > >               cpu3: cpu@3 {
> > > @@ -114,6 +172,10 @@ cpu3: cpu@3 {
> > >                       reg = <3>;
> > >                       enable-method = "psci";
> > >                       next-level-cache = <&L2>;
> > > +                     clocks = <&ccu CLK_CPUX>;
> > > +                     clock-names = "cpu";
> > > +                     operating-points-v2 = <&cpu0_opp_table>;
> > > +                     #cooling-cells = <2>;
> > >               };
> > >
> > >               L2: l2-cache {
> > > @@ -218,6 +280,46 @@ cpu_thermal: cpu0-thermal {
> > >                       polling-delay-passive = <0>;
> > >                       polling-delay = <0>;
> > >                       thermal-sensors = <&ths 0>;
> > > +
> > > +                     cooling-maps {
> > > +                             map0 {
> > > +                                     trip = <&cpu_alert0>;
> > > +                                     cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                                      <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                                      <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                                      <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > > +                             };
> > > +                             map1 {
> > > +                                     trip = <&cpu_alert1>;
> > > +                                     cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                                      <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                                      <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > > +                                                      <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > > +                             };
> > > +                     };
> > > +
> > > +                     trips {
> > > +                             cpu_alert0: cpu_alert0 {
> > > +                                     /* milliCelsius */
> > > +                                     temperature = <75000>;
> > > +                                     hysteresis = <2000>;
> > > +                                     type = "passive";
> > > +                             };
> > > +
> > > +                             cpu_alert1: cpu_alert1 {
> > > +                                     /* milliCelsius */
> > > +                                     temperature = <90000>;
> > > +                                     hysteresis = <2000>;
> > > +                                     type = "hot";
> > > +                             };
> > > +
> > > +                             cpu_crit: cpu_crit {
> > > +                                     /* milliCelsius */
> > > +                                     temperature = <110000>;
> > > +                                     hysteresis = <2000>;
> > > +                                     type = "critical";
> > > +                             };
> > > +                     };
> > >               };
> >
> > Where are those tripping points coming from?
>
> These are taken from A33 dtsi. I couldn't find any recommended
> throttling and critical temp in A64 user manual [1].
>
> [1] http://linux-sunxi.org/images/b/b4/Allwinner_A64_User_Manual_V1.1.pdf

Ok. Can you mention that in the commit log?

Thanks!
Maxime

--hianm4mhkxhl3mtz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhS7OgAKCRDj7w1vZxhR
xQQjAQDDAGuF7KVFijZrX/x9f2hoKg8Se71yoKXELvAAn2sfSQD9FPigAAshBbsY
ciKKIlTkN+W0/ShZ/Xktti/OYPS0YgU=
=UXPG
-----END PGP SIGNATURE-----

--hianm4mhkxhl3mtz--


--===============1848598896108994339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1848598896108994339==--

