Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD4F1AC42D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vIYhwAG3O8nREonBZwhwB9jUY7FGvXGFnnYHubAUh0g=; b=XIC0MBX6DX3FnjSIr/r30Os1T
	ladGM89Wd0Q5oPYu0gfi0gaFrD0SvvjHwyuTjuKAml3dh+dktpdkdU4ckHoPfCGTXKCiSynnsVRC1
	7tZuLuBX+CuNw0eR8FI4Ykjucp0PAaCOQnste3ZNNG/4sfmZXe0gLnFkpDJbw1J8ogUoQbk38Ba+N
	I+NxhJfmeOj2VOFpITzpEHXuP6wO+Lb8decJra5U/chnEkUwS1GhXFcQRA1eEKlscnxVPWTpJiUnG
	8VB4Qq/vfxcm2jO/W29sLLCTQ2YhYDUTx5FfnU0trkKfHsA33FOmuwOiALcztoPUZP5xNISjuwPx7
	jNgS678+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4zP-0003kC-3u; Thu, 16 Apr 2020 13:55:35 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4zH-0003jD-9P; Thu, 16 Apr 2020 13:55:29 +0000
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 491B2100006;
 Thu, 16 Apr 2020 13:55:20 +0000 (UTC)
Date: Thu, 16 Apr 2020 15:55:19 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Message-ID: <20200416135519.GJ125838@aptenodytes>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
 <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
 <20200416132442.GI125838@aptenodytes>
 <f4ad8ea4-7904-1458-e564-2d20c87ed417@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f4ad8ea4-7904-1458-e564-2d20c87ed417@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_065527_599245_0635951C 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6512289217628234985=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6512289217628234985==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5me2qT3T17SWzdxI"
Content-Disposition: inline


--5me2qT3T17SWzdxI
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 16 Apr 20, 15:44, Johan Jonker wrote:
> On 4/16/20 3:24 PM, Paul Kocialkowski wrote:
> > Hi,
> >=20
> > On Thu 16 Apr 20, 15:02, Johan Jonker wrote:
> >> Hi Paul,
> >>
> >> The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself just
> >> has been approved by robh.
> >=20
> > Huh, I looked around for ongoing related work but missed it.
> > I'll definitely rebase on top of your series and use the yaml descripti=
on
> > instead. Thanks!
> >=20
> >> Maybe place dts patches at the end of a patch serie.
> >> Could you include a &rga patch if your device is supported in mainline,
> >> so we can test with:
> >> make ARCH=3Darm64 dtbs_check
> >> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/media/rockchip-rga=
=2Eyaml
> >=20
> > I tested with the PX30 EVB so I can surely add a node there if that tur=
ns
> > out necessary (see below).
> >=20
> >> Johan
> >>
> >> On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
> >>> The PX30 features a RGA block: add the necessary node to support it.
> >>>
> >>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
> >>>  1 file changed, 11 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot=
/dts/rockchip/px30.dtsi
> >>> index 75908c587511..4bfbee9d4123 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>> @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
> >>>  		status =3D "disabled";
> >>>  	};
> >>> =20
> >>> +	rga: rga@ff480000 {
> >>> +		compatible =3D "rockchip,px30-rga";
> >>> +		reg =3D <0x0 0xff480000 0x0 0x10000>;
> >>> +		interrupts =3D <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> >>> +		clocks =3D <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> >>> +		clock-names =3D "aclk", "hclk", "sclk";
> >>> +		resets =3D <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> >>> +		reset-names =3D "core", "axi", "ahb";
> >>> +		power-domains =3D <&power PX30_PD_VO>;
> >>
> >> 		status =3D "disabled";
> >=20
> > As of 5.6, the rk3399 has the node enabled by default. Did that change?
>=20
> 'status' disappeared during review for rk3399 between v2 and v3, but
> doesn't mention the reason. If someone can give more info here?
>=20
> https://lore.kernel.org/lkml/1500101920-24039-5-git-send-email-jacob-chen=
@iotwrt.com/
>=20
> https://lore.kernel.org/lkml/1501470460-12014-5-git-send-email-jacob-chen=
@iotwrt.com/
>=20
> >=20
> > Since it's a standalone block that has no I/O dependency, I don't reall=
y see
> > the point of disabling it by default.
>=20
> Vop, hdmi and other video devices are also disabled.
> Follow the rest I think...

Well, these blocks do have related I/O ports so it makes sense not to enable
them by default because of pinmux, or because there might be no connector
populated/routed.

For a memory to memory internal block, I don't see any reason why.
It's definitely not board-specific and having to add these nodes for every =
board
that has them is kind of a pain and might be overlooked. This will easily r=
esult
in the feature not being available for end users without having to change t=
he
dt.

Also, the vpu node is always enabled on rockchip (and sunxi) platforms.
I think these are better examples to follow.

Cheers,

Paul

> >=20
> > What do you think?
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> >>> +	};
> >>> +
> >>>  	qos_gmac: qos@ff518000 {
> >>>  		compatible =3D "syscon";
> >>>  		reg =3D <0x0 0xff518000 0x0 0x20>;
> >>>
> >>
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--5me2qT3T17SWzdxI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6YY8cACgkQ3cLmz3+f
v9HFdQf/Ucl4BsyAk0vmxKBrLrYibjhWFadjBl0GYEQ9ZVUmMP+VemCFEYed3jWw
HrmVkh1G/pdP3WesXwKxEJxhmfxJqdbD6MqyA9RIhGNOO36Mojbe2Q+xSA2UGVRA
bvo3jg1Gb+DrWPDhYXrcTHWrGn6zdMXNYbzR9HHJvOFqbUHM2fBIWZBafuz2ph/T
yzgVoCwWEuxfxAYcGdFn/qkm6F+Afq/DOmXxTjwk3t80f4lCsgzmRecXTZibktpV
E5XjKumCb6FGHFOyKTROrY0y4sKbWygQNDdzZ7NIW3UIY3ViiudG3poAcxCjxL4Y
LCHF/9ORJJ71RasTzUB+aDbe4OaBUA==
=+2Ry
-----END PGP SIGNATURE-----

--5me2qT3T17SWzdxI--


--===============6512289217628234985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6512289217628234985==--

