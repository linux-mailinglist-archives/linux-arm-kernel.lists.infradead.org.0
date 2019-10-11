Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F352D453F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 18:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aooNrDkNpvWrsBWcwF4RTC5by9ZQfquiIOV+iHHzNsI=; b=Al5yTKfvrggA+3qlkHC8Xvige
	U8BQqIozHj/EEkyupmwXvxdP5uNT7cuMEENxfIDtltkpgc3tXw70cCP98gatnk3hbVzXCd0lkfZRj
	cCvnYLYGzp/Cei77+mFjLBrhlIV+560k5PVvCpx8i+fCW/TER4Phz/IQKRjL74Tu5Bwsp0PI9DQul
	kC+Ovu6T//UEDuvOLm5/5gyCFfcQM+ACZpFp9rGBR05cZwsCVKOnlXE0J+ioGREKcu5DW8zuePaBR
	mkjmfle+Hs6HUGsbZCJUlGS68Km0VNnoVlfecI+V7hn6/BCK7Qg0x5ypAp7sxVlpmYsyh570ZACWT
	cERa0orIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIxeK-000449-Mn; Fri, 11 Oct 2019 16:20:16 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIxe4-0003jV-SG
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 16:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0yjaPFk9im2nG9nyjw/NXqylRPkJs/ZYPxLfdG7PgrM=; b=UdLgGU4HTKZsYRF0lCf2KWQJB
 +EHYWH+lW6RgMlTzIHt6CgsxV2vP/Xa8SKlGr8wsU9sjWQ8x60HJYFW0BUqfQ/2ugQ68Ptuv94Hrb
 MQCDPMaFQobMG6lTIlKIFjuFAvNZKrFkrWoJ+8zDzJeNChl+TSZDNUtiGJ+egSfmG3f70=;
Received: from p5dcb30f2.dip0.t-ipconnect.de ([93.203.48.242] helo=localhost)
 by mail.andi.de1.cc with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1iIxdq-0006qF-Ct; Fri, 11 Oct 2019 18:19:47 +0200
Received: from localhost ([::1]) by localhost with esmtp (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1iIxdp-00015g-AV; Fri, 11 Oct 2019 18:19:45 +0200
Date: Fri, 11 Oct 2019 18:19:38 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191011181938.185f2a00@kemnade.info>
In-Reply-To: <20191011152214.v6lq6itwf5lp6j7q@pengutronix.de>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
 <20191011094148.1376430e@aktux> <20191011142927.GA11490@bogus>
 <20191011170147.1b3c4b25@kemnade.info>
 <20191011152214.v6lq6itwf5lp6j7q@pengutronix.de>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; i686-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_092001_065305_A1882368 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, marex@denx.de,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, festevam@gmail.com,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 j.neuschaefer@gmx.net, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2800677468421215073=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2800677468421215073==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/xJOdSTuzcipgvT99VuhdzxO"; protocol="application/pgp-signature"

--Sig_/xJOdSTuzcipgvT99VuhdzxO
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 11 Oct 2019 17:22:14 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

> On 19-10-11 17:05, Andreas Kemnade wrote:
> > On Fri, 11 Oct 2019 09:29:27 -0500
> > Rob Herring <robh@kernel.org> wrote:
> >  =20
> > > On Fri, Oct 11, 2019 at 09:41:48AM +0200, Andreas Kemnade wrote: =20
> > > > On Fri, 11 Oct 2019 08:56:09 +0200
> > > > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > >    =20
> > > > > Hi Andreas,
> > > > >=20
> > > > > On 19-10-10 21:23, Andreas Kemnade wrote:   =20
> > > > > > The Netronix board E60K02 can be found some several Ebook-Reade=
rs,
> > > > > > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > > > > > is equipped with different SoCs requiring different pinmuxes.
> > > > > >=20
> > > > > > For now the following peripherals are included:
> > > > > > - LED
> > > > > > - Power Key
> > > > > > - Cover (gpio via hall sensor)
> > > > > > - RC5T619 PMIC (the kernel misses support for rtc and charger
> > > > > >   subdevices).
> > > > > > - Backlight via lm3630a
> > > > > > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > > > > >=20
> > > > > > It is based on vendor kernel but heavily reworked due to many
> > > > > > changed bindings.
> > > > > >=20
> > > > > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > > > > ---
> > > > > > Changes in v3:
> > > > > > - better led name
> > > > > > - correct memory size
> > > > > > - comments about missing devices
> > > > > >=20
> > > > > > Changes in v2:
> > > > > > - reordered, was 1/3
> > > > > > - moved pinmuxes to their actual users, not the parents
> > > > > >   of them
> > > > > > - removed some already-disabled stuff
> > > > > > - minor cleanups     =20
> > > > >=20
> > > > > You won't change the muxing, so a this dtsi can be self contained?
> > > > >    =20
> > > > So you want me to put a big=20
> > > > #if defined(MX6SLL)    =20
> > >=20
> > > Not sure what the comment meant, but no, don't do this. C defines in =
dts=20
> > > files are for symbolic names for numbers and assembling bitfields and=
=20
> > > that's it. =20
> >=20
> > yes, that is also my opinion. For now, there is only one user
> > of this .dtsi, but I have another one in preparation. That is the
> > reason for splitting things between .dts and .dtsi to avoid such ugly
> > ifdefs =20
>=20
> Then IMHO the pnictrl-* entries shouldn't appear in the dsti.
>=20
hmm, maybe now I understand your idea:
You do not want only to have

  pinctrl_lm3630a_bl_gpio: lm3630a_bl_gpio_grp {
                        fsl,pins =3D <
                                MX6SLL_PAD_EPDC_PWR_CTRL3__GPIO2_IO10   0x1=
0059 /* HWEN */
                        >;
                };
in dts, but also  do not have these in .dtsi:

                pinctrl-names =3D "default";
                pinctrl-0 =3D <&pinctrl_lm3630a_bl_gpio>;

and instead have in dts:
&lm3630a {
 	pinctrl-names =3D "default";
        pinctrl-0 =3D <&pinctrl_lm3630a_bl_gpio>;
=09
};


just to make sure I get it right before doing the restructuring work. That =
way of structuring things did not come to my mind, but then the .dtsi is se=
lf-contained.

Regards,
Andreas

--Sig_/xJOdSTuzcipgvT99VuhdzxO
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEPIWxmAFyOaBcwCpFl4jFM1s/ye8FAl2gq5oACgkQl4jFM1s/
ye/5WQ//SImeJwq5R6t0iZb9z5B55KLp97kuzkBviRqa/bWog9G1ceHcKolOMpSj
/KnN+y5Ila/ha3ncHAlp0dTUitcVSIVlho5boYhLlSzFRkxRnB0+xPsPOSdil1GG
TwhIWKuhokxRH+LrMXfPVfEY+eM+jT3RqXxUml7JDqaia5PUdWPP5nRf2jLK+dee
SXOv46TGfWVziN4bbZY05zAbcjUeE5IT4tGJpOqcm2Tfmeci6oRlvHzh+j6/y9LB
lAto7x+/EuzrLaaY9nmQgzaKGjKLMwjRANPIIFumx6c9U6yvl4ptglSdBZRGtCTE
rT+eGouNQOlG5uuDewl8tYCwDwdrg0wBj879xUr9DPogHeXFW7CMvEcMlTk33/56
FSQ8kzz1hxK84qphq6iJyQjReCqb0H2hDgOxB2yV2q8bWxL0S0MRn1iFJ9RODOqW
XCU9EILEsLjQbfjB6EHlvR7Gw6ETL1WJIP25drqpyy09pvCtixtLVfpaYWO18adP
nOv27Ah/5rT9NW5OH9kzm1Mt2HR1KxDSuyki3vR4rFFuWRrZlwt99nppAXDbzKqj
j6oBOqZkksVhsuw4S6J79ML2qRCbOZghcLyQnA50V9Pk7AQuIA+F85h/HF4p3xt/
WfiBoU3pHAnnyk+Yj1YiRzl/YaOWnm+xb2EQCtPxeyI9qyiDuwk=
=7ucO
-----END PGP SIGNATURE-----

--Sig_/xJOdSTuzcipgvT99VuhdzxO--


--===============2800677468421215073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2800677468421215073==--

