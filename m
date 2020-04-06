Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CC419F164
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v/0h8I0lY/KBrfd1Gat65LXluT+w5z7szJoOcOqPajw=; b=cKKNzjbMbim90b0QMOkPDvtrQ
	iP35IXqgCqYdwqHy49oFQ0AnT4bB5DFn+cuf3AghyxaCbuQK97IkdPVrcz9yv0xiLI54gvbb3bvBn
	TD0YdbLodw+XXL1fiVh4TfpcT+/8CAanbfdIw782uq5ecxGEQlIEMFuj+IcQkeFd2mtIoZ1K+Mhtu
	XECpWeFHFkOfFfOSzsy/zQrFoP4fFWSDVp9ilQzZ2+yqYhTncYsgDZv4tJx9WbkKlHYhCCop25do5
	8zeaZePX3CWCpWULY3QXtslaj8qokncIGiAAaQZ1LVSvwnYyoVaFifYM/iqNvHJeO9pDtBFYzxQnE
	TvSJWEIUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMvW-0004W4-IJ; Mon, 06 Apr 2020 08:16:14 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMvO-0004V9-Kw
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:16:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 285C45C0167;
 Mon,  6 Apr 2020 04:16:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 06 Apr 2020 04:16:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=H9DDW6krcFm9emc8mAJUo5dn76q
 nGbVHR/BZkxNxIVU=; b=OilJkqn3TTBiflBLc8yR4+ImLkNbmliJxtUJACQmpnq
 GflGnTJW+E4Wb+BkviwW+CRLEW0TZt5uwaXs5TrLbEtWPBHHj4o6+lWzPA+h+3WH
 seQvWTxvwU+d4ivvmu8fxXSwrqufnnk01Id2Eaa7Qk1MLXDzoBWgFL3Vsqmy5WwH
 MqpoVXtTY/OyF8IOj0AaOwPI52tw1tKDIQ/8DyTzwJDJdS+wjWLZMKwkiiAj62TD
 hQCBqD0yP/wJwLBLt6MnPDUoyRrtdm8YL+G3qP9T6TvYNEbgaxia7wUQjkrPCZcA
 1fbc2R9arn7ua+sMqrQNWEUuze38QgTMZ4D2QHOAivg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=H9DDW6
 krcFm9emc8mAJUo5dn76qnGbVHR/BZkxNxIVU=; b=VTthoDykgEX+CqOKadHdkt
 zMgEn77wzD2l8+LKkCWgf3jmKhsJuQHfQ93U5Bjqn1E0CX4tFqWfzahARLg2bSOt
 UN7zMZt61moy/6ckMog9XBJ/FwZWTGmsK4dB1lJNULp0trA8q9GPJj9nZICf7Yvj
 ne0mLqPlnEgjiZCLR6z/Bw+lDgeouyXt4hAnvpKJ9n+0h0zKiQhVMK/qeaDXNuu/
 y7byojGSSOxw96lR0mkDr+pD6Zzi5421MmoYdBv7C8DfLT00B01ob7PLSYFhYKZi
 hVGINNdOk+okgsHSJOgJ6DhKmLcpqs8k7dn94HaR/VLS3QUhouIkIMFyXsrtqKMg
 ==
X-ME-Sender: <xms:QuWKXnucg85BrvgMhWQr-FeuTf8dX5N6gKzHZHElg209Wua9RHed-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefgddtfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QuWKXj-ty1pOoPwyECFFSX5TAQtOuw3kexkV6vy87kLZMvHxF7X1CA>
 <xmx:QuWKXv2slWHDoMC5ilNZwp_2jkQyxjOA7cjIb7pX1bLJLEkVD8i3KA>
 <xmx:QuWKXlLC82ZcFszHiO0q0MSKLXJRWLFugzWKutWJ9CA0wZfe0Jqf7w>
 <xmx:ROWKXiw1hpTi3NI2mVC5A1BDFvGY-0z-f7ptWwDT4zZyReTaLVmTNA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 930C43280063;
 Mon,  6 Apr 2020 04:16:02 -0400 (EDT)
Date: Mon, 6 Apr 2020 10:16:01 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 4/7] arm64: dts: allwinner: h6: Add GPU Operating
 Performance Points table
Message-ID: <20200406081601.3y6fwb7czr2xdkep@gilmour.lan>
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200405173601.24331-5-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200405173601.24331-5-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_011606_824024_B5B885A5 
X-CRM114-Status: GOOD (  15.38  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7896654034974805785=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7896654034974805785==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6dpks2tu5fnpj4uh"
Content-Disposition: inline


--6dpks2tu5fnpj4uh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 05, 2020 at 07:35:58PM +0200, Cl=E9ment P=E9ron wrote:
> Add an Operating Performance Points table for the GPU to
> enable Dynamic Voltage & Frequency Scaling on the H6.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../boot/dts/allwinner/sun50i-h6-gpu-opp.dtsi | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-gpu-opp.dtsi
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-gpu-opp.dtsi b/arch/=
arm64/boot/dts/allwinner/sun50i-h6-gpu-opp.dtsi
> new file mode 100644
> index 000000000000..4a1814844fe0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-gpu-opp.dtsi
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (C) 2020 Cl=E9ment P=E9ron <peron.clem@gmail.com>
> +
> +/ {
> +	gpu_opp_table: opp_table1 {

A node name is supposed to be a generic description, so what about
using gpu-opp-table (and cpu-opp-table) instead?

> +		compatible =3D "operating-points-v2";
> +
> +		opp@756000000 {
> +			opp-hz =3D /bits/ 64 <756000000>;
> +			opp-microvolt =3D <1040000>;
> +		};
> +		opp@624000000 {
> +			opp-hz =3D /bits/ 64 <624000000>;
> +			opp-microvolt =3D <950000>;
> +		};

Ordering by ascending frequency would be great here.

Also, why did you need to create a new DTSI for it? Is there some
downside to enabling it for all the users?

Maxime

--6dpks2tu5fnpj4uh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXorlQQAKCRDj7w1vZxhR
xZxCAP9Ed3XwPlEnD981kjvdZJewNMICIIiLMivOvQOW7QELnQEA48e7gDh+Gv5p
fy5gQba/rD59y7pA4kmRfG5qpwSZsw8=
=/vG6
-----END PGP SIGNATURE-----

--6dpks2tu5fnpj4uh--


--===============7896654034974805785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7896654034974805785==--

