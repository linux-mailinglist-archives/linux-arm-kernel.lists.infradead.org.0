Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4483CDBA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 07:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W077qbaAa4cTMltMMhKjc9Tr4AfmzNHxViMtDsz5+ow=; b=bIRYbu3E+ndm6Bk943zauqeiZ
	zZRWKxOB/eZDu4mc6qrDX6Ctsta3NNMjoPhUKM12b0gW1bWHacqZuYfpKxiJ+OpVqqYpfeMVgZGlr
	i+uw6VZzktJxf91Lh8Lu5O0XkNEAI0Q3eWYgpDYE/hvKqeU4hitiqFLFR5YEcjPf43U6EMpl5HkP3
	+LFxPjJ2oNVTZRR2oQY7ir0BybfcyTPDDvkKlz56iQDOEuZwfm6VVaToNpvRyNTh+fuveVgtdhuI5
	yjoSgXF+3+81B0YfmeBAMFPamqwchVbXPYAIth6RLbJA/2PjnkYSR/6m5SMfPalugH4Ffs5b7//iq
	wYjdXnNqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHLsw-0007C4-5H; Mon, 07 Oct 2019 05:48:42 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHLsp-0007Au-LG
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 05:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bdmc7qlre0F9bijOKxKuJpK+kMSATS4KheYRbfPzDyc=; b=DmdfFs6LU4Zux5OdUIPjlANlw
 PdSaaPJa2dkoZ3b2e8hLK7opFIxhWMWGYOjvAz3UGZSzbDHFElFQBhjjmEDg03gOiJ366O6vRYmnc
 R1PeIa2DIz1lbvCILj43pBonyNX3ArRmkC11QBVR0UZIA3UDkiyQIClnN+kHTupI6dicE=;
Received: from [77.247.85.102] (helo=localhost)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iHLsc-0000Jc-T5; Mon, 07 Oct 2019 07:48:23 +0200
Received: from localhost ([::1]) by localhost with esmtp (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1iHLsa-0008CK-P4; Mon, 07 Oct 2019 07:48:20 +0200
Date: Mon, 7 Oct 2019 07:48:13 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Jonathan =?ISO-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH v2 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191007074813.235869db@kemnade.info>
In-Reply-To: <20191006223848.GE19803@latitude>
References: <20190930194332.12246-1-andreas@kemnade.info>
 <20190930194332.12246-3-andreas@kemnade.info>
 <20191006223848.GE19803@latitude>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; i686-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_224835_846288_1A9CDF4E 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, marex@denx.de, devicetree@vger.kernel.org,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org,
 Marco Felsch <m.felsch@pengutronix.de>, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0626404928196984731=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0626404928196984731==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/aB.pTc2IuOjACzyPfRof4hD"; protocol="application/pgp-signature"

--Sig_/aB.pTc2IuOjACzyPfRof4hD
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

On Mon, 7 Oct 2019 00:38:48 +0200
Jonathan Neusch=E4fer <j.neuschaefer@gmx.net> wrote:

> Thanks for CCing me on this patchset. Nice to see more e-book reader
> related work!
>=20
> A few comments and questions below.
>=20
> On Mon, Sep 30, 2019 at 09:43:31PM +0200, Andreas Kemnade wrote:
> > The Netronix board E60K02 can be found some several Ebook-Readers,
> > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > is equipped with different SoCs requiring different pinmuxes. =20
>=20
> Do I understand it correctly that i.MX6SL and i.MX6SLL are pin-
> compatible so we can use the same pin numbers and GPIO handles in the
> DT?
>=20
Yes, for that purpose yes, The i.MX6SL has more functions than the i.MX6SLL,
which you will of course not find on the SLL pins.

> > +	leds {
> > +		compatible =3D "gpio-leds";
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pinctrl_led>;
> > +
> > +		GLED { =20
>=20
> What does "GLED" mean? It's not obvious to me.
> What user-visible purpose does this LED have, or where is it on the
> board?
>=20
It is on the power key. So probably we could have "power" in its name.
GLED is just the name in vendors uboot and kernel.

I use that led also as an output in uboot to have multiboot between
vendor system, vendor kernel +debian system and patched mainline + debian s=
ystem.

> > +			gpios =3D <&gpio5 7 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger =3D "timer";
> > +		};
> > +	};
> > +
> > +	memory {
> > +		reg =3D <0x80000000 0x80000000>; =20
>=20
> 2 GiB of memory?
>=20
Well, 512MByte. Seems that uboot overwrites that. But we should use the cor=
rect
value here.

> > +			/* Core3_3V3 */ =20
>=20
> What are these labels (Core3_3V3, Core4_1V2, etc.)?
>
I have taken then from the tolino board file. Probably they are netnames
of the pcb but not the names of the regulators in the pmic.
=20
> > +			dcdc2_reg: DCDC2 {
> > +				regulator-name =3D "DCDC2";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-max-microvolt =3D <3300000>;
> > +					regulator-suspend-min-microvolt =3D <3300000>;
> > +				};
> > +			}; =20
>=20
Regards,
Andreas

--Sig_/aB.pTc2IuOjACzyPfRof4hD
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEPIWxmAFyOaBcwCpFl4jFM1s/ye8FAl2a0Z0ACgkQl4jFM1s/
ye9dKA//aQgaIGzJry4yT7el+FH8/B/V78b24pRmCx3wnBuRsc9CBxYsAEpYGJTo
iBXpJUHUpy3J28ZQxSjk6docvx918lE0R1l9VQlqzP3mw1uFGQmtIYG7W6kbZkom
dXSb9g/Tql+r7zTuEKodK99mz4xPupf3Ay36sLecNKddfGTgXQy96blU3x+Degrb
MMIKEKZFi+E5e3Q+FLkwNhRMVbAbpVVtqQrmZqN5ImbhD72pFKgbQt+CIPAQZYp7
b+0CdDnnvHOMvh6QT+Ij4Od3NGfGhqa/+qHqSmztx6X3XZFK57z5RKe83EIw2vBg
aBYwzfQL5kTE8FKAWXURk2a/NbJk4WWT3BBQZt8HzTmkdgfHsgCimjzQNKgBw7AN
2d1FrGgNk9EuwZjbrtJmLoSTQ9tieUk67jLhsgj1S8gRrrV4YPoYE8RrXKmYGEGe
FUJPpcrd7fPDUpPvchZI1jVlPzL+S2W0L3U/KSwhWGey119FgktRVX4ljjquX+iP
3zxaFIGO9K5vIG/pzxFCDZ9R6gCWBdryPU3q/+a0wZWNLclZROAQd939ekFBY4lD
ZEta6trdhOkVRkgHU27BdikvJRgzFrZBnm6YUomelezQM3XjT0yeK9OT60EOWNx5
upg8mHnodGcUdxzUtnzzV3tVvtunAYFGpw/zuwff5B0p16nJKqU=
=8lWk
-----END PGP SIGNATURE-----

--Sig_/aB.pTc2IuOjACzyPfRof4hD--


--===============0626404928196984731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0626404928196984731==--

