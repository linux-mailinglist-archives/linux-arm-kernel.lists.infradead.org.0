Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15071AC51D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G9DJCYd1Ty/wSnu7f5+02HA9V/QfII5E/xim5iPGkHM=; b=j2d7kcIU/QsBvWdKMvlpW3gl5
	+Rx1sXBlAvsbFb8QO+UF+hMuV56PAUIDHa681IVRgngOi5f/HOpn6iNT/+MsoZGmrQBb/VdygxhGO
	VBX6jrA92AUDxHMkrNEG7VpjOp2B0dZBLWtIMyLCruElY8BoU/VSHfdu9vyUtosXUcn5r9J54n1pr
	+Hx0gYNhJv9H9sIfNb9g4WU4DZAswm6SliIZoOvSKDavyQyOXngBzWJDin4aYCw2Tmx+NiWJ2sqEn
	nR3bz7wyNTpc64xEcH8ZzC0xCFxbrNCjRYO6HuCc82xVKNnGjqPEKS6AbxyXnkvMDJdBsfzbx04T0
	FF3Q3WSyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5Fe-0000We-Bb; Thu, 16 Apr 2020 14:12:22 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5FS-0000VD-UJ; Thu, 16 Apr 2020 14:12:13 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 7DB971C001E;
 Thu, 16 Apr 2020 14:12:05 +0000 (UTC)
Date: Thu, 16 Apr 2020 16:12:05 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Message-ID: <20200416141205.GK125838@aptenodytes>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
 <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
 <20200416132442.GI125838@aptenodytes>
 <f4ad8ea4-7904-1458-e564-2d20c87ed417@gmail.com>
 <20200416135519.GJ125838@aptenodytes>
 <f97d7661-834d-3fbf-2cd9-0b37c487e8f7@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f97d7661-834d-3fbf-2cd9-0b37c487e8f7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_071211_248033_F7FF9109 
X-CRM114-Status: GOOD (  26.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============3430888771668554521=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3430888771668554521==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IA03tywDYuoVKXrw"
Content-Disposition: inline


--IA03tywDYuoVKXrw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 16 Apr 20, 16:02, Johan Jonker wrote:
> On 4/16/20 3:55 PM, Paul Kocialkowski wrote:
> > Hi,
> >=20
> > On Thu 16 Apr 20, 15:44, Johan Jonker wrote:
> >> On 4/16/20 3:24 PM, Paul Kocialkowski wrote:
> >>> Hi,
> >>>
> >>> On Thu 16 Apr 20, 15:02, Johan Jonker wrote:
> >>>> Hi Paul,
> >>>>
> >>>> The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself ju=
st
> >>>> has been approved by robh.
> >>>
> >>> Huh, I looked around for ongoing related work but missed it.
> >>> I'll definitely rebase on top of your series and use the yaml descrip=
tion
> >>> instead. Thanks!
> >>>
> >>>> Maybe place dts patches at the end of a patch serie.
> >>>> Could you include a &rga patch if your device is supported in mainli=
ne,
> >>>> so we can test with:
> >>>> make ARCH=3Darm64 dtbs_check
> >>>> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/media/rockchip-r=
ga.yaml
> >>>
> >>> I tested with the PX30 EVB so I can surely add a node there if that t=
urns
> >>> out necessary (see below).
> >>>
> >>>> Johan
> >>>>
> >>>> On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
> >>>>> The PX30 features a RGA block: add the necessary node to support it.
> >>>>>
> >>>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> >>>>> ---
> >>>>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
> >>>>>  1 file changed, 11 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/bo=
ot/dts/rockchip/px30.dtsi
> >>>>> index 75908c587511..4bfbee9d4123 100644
> >>>>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>>>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>>>> @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
> >>>>>  		status =3D "disabled";
> >>>>>  	};
> >>>>> =20
> >>>>> +	rga: rga@ff480000 {
> >>>>> +		compatible =3D "rockchip,px30-rga";
> >>>>> +		reg =3D <0x0 0xff480000 0x0 0x10000>;
> >>>>> +		interrupts =3D <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> >>>>> +		clocks =3D <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE=
>;
> >>>>> +		clock-names =3D "aclk", "hclk", "sclk";
> >>>>> +		resets =3D <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> >>>>> +		reset-names =3D "core", "axi", "ahb";
> >>>>> +		power-domains =3D <&power PX30_PD_VO>;
> >>>>
> >>>> 		status =3D "disabled";
> >>>
> >>> As of 5.6, the rk3399 has the node enabled by default. Did that chang=
e?
> >>
> >> 'status' disappeared during review for rk3399 between v2 and v3, but
> >> doesn't mention the reason. If someone can give more info here?
> >>
> >> https://lore.kernel.org/lkml/1500101920-24039-5-git-send-email-jacob-c=
hen@iotwrt.com/
> >>
> >> https://lore.kernel.org/lkml/1501470460-12014-5-git-send-email-jacob-c=
hen@iotwrt.com/
> >>
> >>>
> >>> Since it's a standalone block that has no I/O dependency, I don't rea=
lly see
> >>> the point of disabling it by default.
> >>
> >> Vop, hdmi and other video devices are also disabled.
> >> Follow the rest I think...
> >=20
> > Well, these blocks do have related I/O ports so it makes sense not to e=
nable
> > them by default because of pinmux, or because there might be no connect=
or
> > populated/routed.
> >=20
> > For a memory to memory internal block, I don't see any reason why.
> > It's definitely not board-specific and having to add these nodes for ev=
ery board
> > that has them is kind of a pain and might be overlooked. This will easi=
ly result
> > in the feature not being available for end users without having to chan=
ge the
> > dt.
> >=20
> > Also, the vpu node is always enabled on rockchip (and sunxi) platforms.
> > I think these are better examples to follow.
>=20
> From PX30 TRM-Part1:
>=20
> Power domain is shared by vop and dsi.
> It's up to the user what blocks he/she enables and what power it uses.
>=20
> PD_VO: VOP_M, VOP_S, RGA and DSI

Hum, there is no direct correlation between "node is enabled in dt" and "re=
lated
hardware block consumes power". And removing nodes from dt is certainly not=
 an
appropriate way to do power management! Device-tree is a way to represent t=
he
hardware, not a configuration interface (well, besides the /chosen node).

Besides, the RGA driver seems to have good runtime pm support, so be assured
that its clocks will be off when unused.

Cheers,

Paul

> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> >>>
> >>> What do you think?
> >>>
> >>> Cheers,
> >>>
> >>> Paul
> >>>
> >>>>> +	};
> >>>>> +
> >>>>>  	qos_gmac: qos@ff518000 {
> >>>>>  		compatible =3D "syscon";
> >>>>>  		reg =3D <0x0 0xff518000 0x0 0x20>;
> >>>>>
> >>>>
> >>>
> >>
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--IA03tywDYuoVKXrw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6YZ7UACgkQ3cLmz3+f
v9H7Bwf/dxe/z672mfjqt4PR187hrwSZUxb8QrJrY0H31hOL2NOEFEufOKHPlA8y
U+xPF95tT1SWwB+/6cjzhYGy9CF8EvmR0FDkBf2RVSXxbNvWSUMOFAVCA6bchQ5R
7iuxNcsjeQuEBGu6ljByelGcBFBTrk6MUQEmEKuAaH7F22lfnKTW53SlSXPvsnpD
CAexlBFsLxN9VKECnc2QZ5qUjpNqRozzOexjDewJWm3BlPg4buAAkSKOQKlwd7q0
h7hYNx79PY6aFfp2EpdVy7XnbJOGRyRvwWbWsMFnKQo4wSYNtKWD3vMO3y6rX8ag
JSRQ0iYXDgYz2uvtpi37rQb4y5Z0pg==
=u/wC
-----END PGP SIGNATURE-----

--IA03tywDYuoVKXrw--


--===============3430888771668554521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3430888771668554521==--

