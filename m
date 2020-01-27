Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDEE14A5F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:24:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+wydgmLeQbe5rluc+9uF0eFTAN8NFqBKBFHUfx+8iqQ=; b=CkpinpALuJAA40YYDcPyFLATq
	H6++tBMt8IE3F5N4NPdGrcMX1JD4ZgQGc3i6xKBa9vyI+kWTGztTTiv7Q2VG9SmhFDYRgeoFaUrmW
	vQYNfpcvBYYAqMAsRhrlr7+4+h46xleMKEI5IhV3eDPIIh/jhmDmoZDhkbgjY6PNfYWaXcDlWnlIr
	RRx5XQtnWmh6Xr5Bgd2v80YmF0rt0DlErAOd/Ywb9tYIMA+MYyb/X6txsOO8XdkJKUDYjtqjyuved
	Omwlm5h55BD8VY5l5HVwVbjF29KIETjxFdp/R47ro7+Gi6GZTIc8+PpCYB8EojBww89zM6xd/goJG
	rWmlu21qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5Iu-0006wu-Nh; Mon, 27 Jan 2020 14:23:52 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5Ik-0006vc-C9
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:23:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 7F3D6220E4;
 Mon, 27 Jan 2020 09:23:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 27 Jan 2020 09:23:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=6nVE0kCyNJt9qWBWbOEKXHwSwow
 EKCywtD9brS7Cseg=; b=jSd+KVp02RKwQqPOorW+yQlhQtgIyI5GqkLKAEGj54b
 VPHJNyxapcInzFerkE3dJs2dhmszb/mrNDbHIS6y5614b+yH9VnDC8T0ksTehpjz
 Lkgjt8RVRotnnu8kQBagY3uugjb+JSY1/YRn18NbsdNI8n/b6/Un3G6feKx5pN9z
 XVuvLYxRk0/H+olW0rAHD87ANjdCgUrkDb/qDdXPPGRV8WHZVV6oUPSQURmba+8Y
 h1MOaAY7+0+ur0G4Y5TTGMrtyN3GXW8ey9bmjvDna6Gamdk93UeDMy3G5x+EVe+s
 t6J6rONmRjNahF57o1GyH4vod4rCP+HCmzFs/ZuP6VA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=6nVE0k
 CyNJt9qWBWbOEKXHwSwowEKCywtD9brS7Cseg=; b=D7EzLR7lxn0OcIw0cH2BLp
 7CXRBRI4NSjaUx6TlrGbgMaRbt9MnAtKKTg5hBclY8hI3j64++fNEieLivCCtzte
 3mSLvHOD6e/bBp3ZayhVRAZNgSZl9oTATcQhssdFw+b5xTgSbAWKV+/DEIgf2P89
 yTi1OA4hhsaaR+I79LeLQebUaMzLuF+IBuNiHrPOcmWtFYf+UQUL9qH3WjRrvHCS
 +/1AMx7SM7sdJYB8ODYCjFpM7tYlvW0QQnljqBRlHKwik/cT5C9wigVue3wzuiHt
 IHncMW1BS8aqxRlc3RVJmGX9NeDRvpapzSeL3wbSxA8L6TRpc7cCe8nGUbdIexBw
 ==
X-ME-Sender: <xms:bfIuXjumlbnjk2u_C1w6XJ4Se3pJzIY_US3xcycy-6jZxRRfIWrWvw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfedvgdeifecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:bfIuXm3v5sNBERXLPgckY-tKb8uutWlW7awBLTWTxLP3ddnzDrKpfg>
 <xmx:bfIuXgDhfhzfoCbgX8lQt1FhbIAwnqCW72eXZ-vamuB8CasVo17M0g>
 <xmx:bfIuXlV47Bf5kEkVqvIb-RYhddj7ukYQufeEBYKGImnVsWezO-GTBw>
 <xmx:bfIuXucAErhGZsMH9hHPsXAmB1UPZzfwU75CZN9C2DRmlWahFJHGew>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 313263069F0E;
 Mon, 27 Jan 2020 09:23:41 -0500 (EST)
Date: Mon, 27 Jan 2020 15:23:39 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: h6: Add IOMMU
Message-ID: <20200127142339.crxsuunzec5drfe2@gilmour.lan>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <54e22e25c2c13cb1b73cc7ecb645b5d62f325b63.1579696927.git-series.maxime@cerno.tech>
 <5320339.DvuYhMxLoT@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <5320339.DvuYhMxLoT@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_062342_551918_99DEB6BA 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6141327176888937612=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6141327176888937612==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="23dys2vkg5qz4fja"
Content-Disposition: inline


--23dys2vkg5qz4fja
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jernej,

On Fri, Jan 24, 2020 at 09:54:23PM +0100, Jernej =C5=A0krabec wrote:
> Dne sreda, 22. januar 2020 ob 13:44:09 CET je Maxime Ripard napisal(a):
> > Now that we have a driver for the IOMMU, let's start using it.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi index
> > 29824081b43b..8608bcf1c52c 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > @@ -53,6 +53,7 @@
> >  	de: display-engine {
> >  		compatible =3D "allwinner,sun50i-h6-display-engine";
> >  		allwinner,pipelines =3D <&mixer0>;
> > +		iommus =3D <&iommu 0>;
> >  		status =3D "disabled";
> >  	};
>
> Isn't iommu property of the mixer node? After all, mixer is the one which
> reads one or more framebuffers. Once second mixer is defined, would you p=
ut
> another iommu phandle here?

You're right. I added it during the early dev, and forgot to remove
it. Thanks!

Maxime

--23dys2vkg5qz4fja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXi7yawAKCRDj7w1vZxhR
xeztAP9pfvFOvLl0WNETETdOGyGO/pBPPZtOCEHsIaOgcIfqCwEA61DgtSFMFRSM
4UmZO6xgB73HVB6s09UFT59ZuHSWMgg=
=/MfB
-----END PGP SIGNATURE-----

--23dys2vkg5qz4fja--


--===============6141327176888937612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6141327176888937612==--

