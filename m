Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920DC19F160
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yTCsxeiv59RatfGDqsG7vaIbEscK4RjsCoGALF9laWQ=; b=UMbW3Ogd33SvC5JEG2HJ6NgSa
	DkkIqq5fNJy1YwcJgOqMTCbik634Sek00zgHfwgfdJ9oYip8mEvrxvmHcc4CCJmIcVynRWVMHXTYo
	/TZm+1e+PcHmkxKhVpyvWI7JihlOB/OHKcOt8AnMR3bXJb1/AHtI6hF5HJU/SwvmG6d1Gi1BFiKsp
	9gzBod8Si/BVameKIYWNb99fFtK5bINTOmr6vb0TD2pmrApK2IJ1UhhtgFuIkot16jOck/6fMUTFE
	edF2HZhrkP3pZA8xky2P0xTKnlNYTrXp3ukowhPIylx3B9/9sW7gsU1ER6e89RA+4qC/AeEnUwc+B
	Qx8Ctgeww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMth-0001fS-JW; Mon, 06 Apr 2020 08:14:21 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMtb-0001f8-6C
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:14:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 69D315C018B;
 Mon,  6 Apr 2020 04:14:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 06 Apr 2020 04:14:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=1VudF3Kq/8asq6hygF6IQCj2Q3h
 SRIw3YwqtF/cFmB0=; b=KAtyG4FLUdBxEWmGPYVjyJRIyxZSpKfNimbo5fH8O2d
 7KT3v+RDbRyRUrmk3PgHwdE1XK3nyBJUGW7AvyDQB8R80SwVDGaknZ8TKBBgg+de
 s0TLX9iEmTRzUgAN9p6xhGLxeGxQyKuixkL+sEoJrpGGDpCm+swKA9xjQ+LVopRJ
 mMAJyJENHvkWXMgRZ/D8HLtqnxRNOFND5p9umNx1QWsLwolGLCDH4vXv8UW47F6v
 EjaUuZ5X8/y8xe7H6ryJsZnSCIL9DO3HBkHskaTaG0n/hFLQD3iMtoV2/s17/Y8B
 apPDLSNQBRSV/VT9KEsB/pPSUKjmA9e6r2A0PMMfYsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=1VudF3
 Kq/8asq6hygF6IQCj2Q3hSRIw3YwqtF/cFmB0=; b=Ajfasie06dlVejF7JyHJ/J
 StWh/U8QQnJRX4iXhwOFGNRmwNUmxpGerWh+iiZJ9aMHgGESCKdp3HhhWYZMZsEP
 Rf2bkHE9UX++NNQEcpr/9NEMfD4nRgmWcxAv327AyWD5KHOAXq7NTTmDORcX0onS
 d7k4E6PQKMBfNf1ulh9fEGCjL+9SpiWthN8aNE0jckNJYg+hxEWBiDwCSbORH5xN
 TdPsJIoaVQo+/p6LFwpFJWwStVrXBQ1JnW9uGGMcjIozQpTwv5CVKsiE95/iMdsT
 J++8Ll2jRog6kRqCuLbHSvinPhVyZGU4jW1kCokHNWNy5yO9O8NpzkrQTMt2RaPw
 ==
X-ME-Sender: <xms:1eSKXqizsLvSFm4mIrHcHSNCHbFO8n0yvS1Q11627rmtnBm9wHqFIA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:1eSKXty6zyI-LsETgxctreM3RAb6T8FzF-BrinAKkMwOmJwfvNyrxw>
 <xmx:1eSKXu_SgBLXeJ4oCvlyJtc_g0LO8XBLL1RQJ7K8UuGcF_vhDc2ZLw>
 <xmx:1eSKXqw6r1HH0xx_jQiU92NlMBzQjYH16Bm7Y-r0ZXqAo4_RMJY8Lw>
 <xmx:1uSKXu3pOBvi-yjoNs6EYkV6PMxWsNvSOZKGSIYEgkJynkn2q7KyJg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2456E306D39B;
 Mon,  6 Apr 2020 04:14:13 -0400 (EDT)
Date: Mon, 6 Apr 2020 10:14:12 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 3/7] arm64: dts: allwinner: h6: Add CPU Operating
 Performance Points table
Message-ID: <20200406081412.ubdogkjknlofynei@gilmour.lan>
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200405173601.24331-4-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200405173601.24331-4-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_011415_365048_4EFC4848 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0545471675867370071=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0545471675867370071==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mwo6baf4xcdujpro"
Content-Disposition: inline


--mwo6baf4xcdujpro
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 05, 2020 at 07:35:57PM +0200, Cl=E9ment P=E9ron wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> Add an Operating Performance Points table for the CPU cores to
> enable Dynamic Voltage & Frequency Scaling on the H6.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi | 121 ++++++++++++++++++
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |   4 +
>  2 files changed, 125 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi b/arch/=
arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
> new file mode 100644
> index 000000000000..8c1e413c6af9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-cpu-opp.dtsi
> @@ -0,0 +1,121 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
> +// Copyright (C) 2020 Cl=E9ment P=E9ron <peron.clem@gmail.com>
> +
> +/ {
> +	cpu0_opp_table: opp_table0 {

Node names shouldn't have an underscore, this will trigger a DTC
warning.

> +		compatible =3D "allwinner,sun50i-h6-operating-points";
> +		nvmem-cells =3D <&speedbin_efuse>;
> +		opp-shared;
> +
> +		opp@480000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <480000000>;
> +
> +			opp-microvolt-speed0 =3D <880000>;
> +			opp-microvolt-speed1 =3D <820000>;
> +			opp-microvolt-speed2 =3D <820000>;
> +		};

And similarly, if you have a unit-address (the part after @), you
should have a matching reg property. You should use a dash instead.

> +		opp@720000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <720000000>;
> +
> +			opp-microvolt-speed0 =3D <880000>;
> +			opp-microvolt-speed1 =3D <820000>;
> +			opp-microvolt-speed2 =3D <820000>;
> +		};
> +
> +		opp@816000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <816000000>;
> +
> +			opp-microvolt-speed0 =3D <880000>;
> +			opp-microvolt-speed1 =3D <820000>;
> +			opp-microvolt-speed2 =3D <820000>;
> +		};
> +
> +		opp@888000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <888000000>;
> +
> +			opp-microvolt-speed0 =3D <880000>;
> +			opp-microvolt-speed1 =3D <820000>;
> +			opp-microvolt-speed2 =3D <820000>;
> +		};
> +
> +		opp@1080000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <1080000000>;
> +
> +			opp-microvolt-speed0 =3D <940000>;
> +			opp-microvolt-speed1 =3D <880000>;
> +			opp-microvolt-speed2 =3D <880000>;
> +		};
> +
> +		opp@1320000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <1320000000>;
> +
> +			opp-microvolt-speed0 =3D <1000000>;
> +			opp-microvolt-speed1 =3D <940000>;
> +			opp-microvolt-speed2 =3D <940000>;
> +		};
> +
> +		opp@1488000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <1488000000>;
> +
> +			opp-microvolt-speed0 =3D <1060000>;
> +			opp-microvolt-speed1 =3D <1000000>;
> +			opp-microvolt-speed2 =3D <1000000>;
> +		};
> +
> +		opp@1608000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <1608000000>;
> +
> +			opp-microvolt-speed0 =3D <1090000>;
> +			opp-microvolt-speed1 =3D <1030000>;
> +			opp-microvolt-speed2 =3D <1030000>;
> +		};
> +
> +		opp@1704000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <1704000000>;
> +
> +			opp-microvolt-speed0 =3D <1120000>;
> +			opp-microvolt-speed1 =3D <1060000>;
> +			opp-microvolt-speed2 =3D <1060000>;
> +		};
> +
> +		opp@1800000000 {
> +			clock-latency-ns =3D <244144>; /* 8 32k periods */
> +			opp-hz =3D /bits/ 64 <1800000000>;
> +
> +			opp-microvolt-speed0 =3D <1160000>;
> +			opp-microvolt-speed1 =3D <1100000>;
> +			opp-microvolt-speed2 =3D <1100000>;
> +		};
> +	};
> +};
> +
> +&cpu0 {
> +	operating-points-v2 =3D <&cpu0_opp_table>;
> +	#cooling-cells =3D <2>;
> +};
> +
> +&cpu1 {
> +	operating-points-v2 =3D <&cpu0_opp_table>;
> +	#cooling-cells =3D <2>;
> +};
> +
> +&cpu2 {
> +	operating-points-v2 =3D <&cpu0_opp_table>;
> +	#cooling-cells =3D <2>;
> +};
> +
> +&cpu3 {
> +	operating-points-v2 =3D <&cpu0_opp_table>;
> +	#cooling-cells =3D <2>;
> +};
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/bo=
ot/dts/allwinner/sun50i-h6.dtsi
> index e0dd0757be0b..6b7af858614a 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -253,6 +253,10 @@
>  			#address-cells =3D <1>;
>  			#size-cells =3D <1>;
>
> +			speedbin_efuse: speed@1c {
> +				reg =3D <0x1c 0x4>;
> +			};
> +

You should order this by address, so after the THS calibration. Also,
using a less generic node name than "speed" would be great. What about
soc-bin ?

Maxime

--mwo6baf4xcdujpro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXork1AAKCRDj7w1vZxhR
xf4/AQCEoG5vXYs8jtKK460unM8Rt1R6W0qctIijak1+JmD/SwD/daZLNDlmRB4T
WOmP5a9hbyf30uTxUuDKEDqDvk4DUgs=
=4TEt
-----END PGP SIGNATURE-----

--mwo6baf4xcdujpro--


--===============0545471675867370071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0545471675867370071==--

