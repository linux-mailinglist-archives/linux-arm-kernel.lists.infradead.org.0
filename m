Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7086D5AEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Au9U5Rm9SA8lAvg/JYl5AWGwxQPV7Nnq/FPZlpOHs+M=; b=AgVve2hoRcO96/Vc+4VD94+uM
	DlRtohlPxZnbvqdlHKDpIBGIamuEft16z+GiwlwZHRNEeRsynIqLL9M9n0LVUyEsDIWhfjoce2dci
	rbeICE+J1cDS8VyLa3tYstzoBOt0NtwubJ1SZEfQ45tAvBwkdm/pFt9RIZuLUI/7SVqfOJMN9RigH
	DSRAfDzQLzn7pPxcB5z8j/245R0rV3JzHiUQepR2OqChG9hV+kpC8lmU4ECKxsveG6RtVD+eeL8Lh
	8dcobsD/IJkq+laM8dLxIywn67xcGce19XqrSPlta9vc3yl4HENYCLfYqeEAV18b4THWiJsjzrqVy
	zL1LHyh+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtPL-0000Aw-S3; Mon, 14 Oct 2019 06:00:40 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtPB-0000A7-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:00:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZJpXfsdzZRwG1qeodiK+1Q6zBO7em5LRGWg3z+JO8hw=; b=IAme3oDRZ70HpbxSF0dfULA/3
 ZfZFO6x1BN9p4EQWSkoQRBy2sUmQ/SvfedMDmLabO1RF431lo7cpEwl8XcjIHsSeOQteK/glLD0hW
 ByynikA75rcysXMNK/0R+Kj3xD4weaICTjZ458eiRVNyJ6Xb25GPVZp6I7h6UEKVd0ohU=;
Received: from hsvpn29.hotsplots.net ([185.46.137.7] helo=localhost)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iJtOq-0002Id-V2; Mon, 14 Oct 2019 08:00:09 +0200
Received: from [::1] (helo=localhost) by localhost with esmtp (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1iJgGr-0005NO-SD; Sun, 13 Oct 2019 17:59:04 +0200
Date: Sun, 13 Oct 2019 17:56:44 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Marco Felsch <m.felsch@pengutronix.de>, festevam@gmail.com
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191013175644.4fc264d0@kemnade.info>
In-Reply-To: <20191011165633.5ty3yux4ljrcycux@pengutronix.de>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
 <20191011094148.1376430e@aktux> <20191011142927.GA11490@bogus>
 <20191011170147.1b3c4b25@kemnade.info>
 <20191011152214.v6lq6itwf5lp6j7q@pengutronix.de>
 <20191011181938.185f2a00@kemnade.info>
 <20191011165633.5ty3yux4ljrcycux@pengutronix.de>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; i686-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_230029_791829_983CF7D8 
X-CRM114-Status: GOOD (  26.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 linux-imx@nxp.com, kernel@pengutronix.de, manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6118226384369930848=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6118226384369930848==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/K6CGQhzU3FFoLuhqnsD_8gF"; protocol="application/pgp-signature"

--Sig_/K6CGQhzU3FFoLuhqnsD_8gF
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 11 Oct 2019 18:56:33 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

> On 19-10-11 18:19, Andreas Kemnade wrote:
> > On Fri, 11 Oct 2019 17:22:14 +0200
> > Marco Felsch <m.felsch@pengutronix.de> wrote:
> >  =20
> > > On 19-10-11 17:05, Andreas Kemnade wrote: =20
> > > > On Fri, 11 Oct 2019 09:29:27 -0500
> > > > Rob Herring <robh@kernel.org> wrote:
> > > >    =20
> > > > > On Fri, Oct 11, 2019 at 09:41:48AM +0200, Andreas Kemnade wrote: =
  =20
> > > > > > On Fri, 11 Oct 2019 08:56:09 +0200
> > > > > > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > > > >      =20
> > > > > > > Hi Andreas,
> > > > > > >=20
> > > > > > > On 19-10-10 21:23, Andreas Kemnade wrote:     =20
> > > > > > > > The Netronix board E60K02 can be found some several Ebook-R=
eaders,
> > > > > > > > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > > > > > > > is equipped with different SoCs requiring different pinmuxe=
s.
> > > > > > > >=20
> > > > > > > > For now the following peripherals are included:
> > > > > > > > - LED
> > > > > > > > - Power Key
> > > > > > > > - Cover (gpio via hall sensor)
> > > > > > > > - RC5T619 PMIC (the kernel misses support for rtc and charg=
er
> > > > > > > >   subdevices).
> > > > > > > > - Backlight via lm3630a
> > > > > > > > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > > > > > > >=20
> > > > > > > > It is based on vendor kernel but heavily reworked due to ma=
ny
> > > > > > > > changed bindings.
> > > > > > > >=20
> > > > > > > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > > > > > > ---
> > > > > > > > Changes in v3:
> > > > > > > > - better led name
> > > > > > > > - correct memory size
> > > > > > > > - comments about missing devices
> > > > > > > >=20
> > > > > > > > Changes in v2:
> > > > > > > > - reordered, was 1/3
> > > > > > > > - moved pinmuxes to their actual users, not the parents
> > > > > > > >   of them
> > > > > > > > - removed some already-disabled stuff
> > > > > > > > - minor cleanups       =20
> > > > > > >=20
> > > > > > > You won't change the muxing, so a this dtsi can be self conta=
ined?
> > > > > > >      =20
> > > > > > So you want me to put a big=20
> > > > > > #if defined(MX6SLL)      =20
> > > > >=20
> > > > > Not sure what the comment meant, but no, don't do this. C defines=
 in dts=20
> > > > > files are for symbolic names for numbers and assembling bitfields=
 and=20
> > > > > that's it.   =20
> > > >=20
> > > > yes, that is also my opinion. For now, there is only one user
> > > > of this .dtsi, but I have another one in preparation. That is the
> > > > reason for splitting things between .dts and .dtsi to avoid such ug=
ly
> > > > ifdefs   =20
> > >=20
> > > Then IMHO the pnictrl-* entries shouldn't appear in the dsti.
> > >  =20
> > hmm, maybe now I understand your idea:
> > You do not want only to have
> >=20
> >   pinctrl_lm3630a_bl_gpio: lm3630a_bl_gpio_grp {
> >                         fsl,pins =3D <
> >                                 MX6SLL_PAD_EPDC_PWR_CTRL3__GPIO2_IO10  =
 0x10059 /* HWEN */ =20
> >                         >; =20
> >                 };
> > in dts, but also  do not have these in .dtsi:
> >=20
> >                 pinctrl-names =3D "default";
> >                 pinctrl-0 =3D <&pinctrl_lm3630a_bl_gpio>;
> >=20
> > and instead have in dts:
> > &lm3630a {
> >  	pinctrl-names =3D "default";
> >         pinctrl-0 =3D <&pinctrl_lm3630a_bl_gpio>;
> > =09
> > };
> >=20
> >=20
> > just to make sure I get it right before doing the restructuring work. T=
hat way of structuring things did not come to my mind, but then the .dtsi i=
s self-contained. =20
>=20
> That is what I mean but wait for Shawn's comments. It's just my opinion
> that .dtsi and .dts files should be self-contained.

for files like the imx6sll.dtsi, I would clearly agree, here it might
hide errors like missing pinmuxes in the dts, so it is not so clear.
But if there is is consensus about .dtsi being self-contained I will not
refuse to restructurize my work.

Regards,
Andreas

--Sig_/K6CGQhzU3FFoLuhqnsD_8gF
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEPIWxmAFyOaBcwCpFl4jFM1s/ye8FAl2jSUAACgkQl4jFM1s/
ye92lxAAsdTP3+mhOGTNy8BO0DcQGyukpQ4pJxYxIqrzLRnVO8ylnBEmW6tua5fh
OICjnZ3NaxwbfkQPKSCJEtggUJI2w+6BkLpF3+eUvuU1RjQpTcHjiBR+znmxulhJ
n7hyvtCx6O32GzyamSOAx8nW2qBJ1hGbUKyREJkpY4NZ615dL7jnWR5gSDJqQ/A6
aZ7Cx6Xna2Mu8lXa3a8doDQKQMcPdluCZgNr76IsRTPmoMg7KEk2nrWOy2gls9N3
Z+SVji02h3HtyjKFj4L0MPIZhiaAPsI9SFjfJyXQ570FBK5wnjtHv5VuxGBsVZlo
TWdE1i6HGXnw5pSROb1jXLgmCG8G07UDF876UaNtjUpg8uGNLPhrlh3+SP5+zvbP
n0m+vpm3GFkHFcKw5RxkdSz/E8+/rF2D/eFt6E4w8Gi2SzBq1nwTndvIN7ZYx4e4
F95Sa4vQbYxtN1e6JYEJGcP0xKQC0LMRGLLIAAYGn11GBG8/o/8ociGdcmJnFBtk
QsYoE8wCExvkYc2L/L/4YsFiLDfXCs+pYePVlAZsqffIInh1k0TGdmSINk8f+u5U
etBUvs2x9zKs6K/OqNVcaRTP2pbozKfOGPmbcgUQ03k5Q/7eo7+IiJrPu+LgnkI6
rQ42+/WhAfXgo5aBHI+Gzgtqsd/5fYTrRQab7IejHhNbYAPh6P8=
=xmgK
-----END PGP SIGNATURE-----

--Sig_/K6CGQhzU3FFoLuhqnsD_8gF--


--===============6118226384369930848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6118226384369930848==--

