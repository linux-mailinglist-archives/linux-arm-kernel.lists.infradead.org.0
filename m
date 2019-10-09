Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450C0D11A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VoFiS5yBTKrsVol6mSt6pWNO1EI3Mr1o81+Uu0kfhl8=; b=W5cPyc3kqWxY18iKVL+FLPiNb
	a3Zv4EElRIvpqqVFyf4eYlw9J5pFqBSWbRxt7SxltcMpyJAFgbkGifzhmGYoNkAt57VBJOdF9rSwF
	5nzwx9O/1TbFg9s+MrgCVT2FowW7g5McyKoBjs/yiWmqQZUyXWomWHRwzDRKrzfalOZI1/eqj1Ioq
	oRN+NnFHnV6j21tR338l2n3s8X9PZqy7+ovMgawfhL7NcOuO+Fs3843g824ngkh99XHvJ3jaPZKGD
	CzzntyhJEgTmZjVoWaTqslZziRTk2E/7OTYFqLzBDP6qO6MtJkqrE5d4aF2fJDeloUntK+4XvqQWk
	oVS/g4xgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDDH-0001DP-Tl; Wed, 09 Oct 2019 14:45:15 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDCu-00019w-W8
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:44:54 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46pH766N2kz1rlwx;
 Wed,  9 Oct 2019 16:44:50 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46pH7658gNz1qqkL;
 Wed,  9 Oct 2019 16:44:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id njJVUYx2-9tB; Wed,  9 Oct 2019 16:44:49 +0200 (CEST)
X-Auth-Info: z1TweS5tguld1s5i/vfefCuk4NRnGzI/S+uxnMWYpT0=
Received: from jawa (85-222-111-42.dynamic.chello.pl [85.222.111.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  9 Oct 2019 16:44:49 +0200 (CEST)
Date: Wed, 9 Oct 2019 16:44:42 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] dts: Disable DMA support on the BK4 vf610 device's
 fsl_lpuart driver
Message-ID: <20191009164442.51f27b9d@jawa>
In-Reply-To: <b39b6860-9e9b-5cee-a07e-7b430c2e5119@arm.com>
References: <20191009143032.9261-1-lukma@denx.de>
 <b39b6860-9e9b-5cee-a07e-7b430c2e5119@arm.com>
Organization: denx.de
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_074453_337870_CB8F947D 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2059987538492493169=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2059987538492493169==
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/Di/jFXAOICs3QlZsnoXzE2z"; protocol="application/pgp-signature"

--Sig_/Di/jFXAOICs3QlZsnoXzE2z
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Robin,

> On 09/10/2019 15:30, Lukasz Majewski wrote:
> > This change disables the DMA support (RX/TX) on the NXP's fsl_lpuart
> > driver - the PIO mode is used instead. This change is necessary for
> > better robustness of BK4's device use cases with many potentially
> > interrupted short serial transfers.
> >=20
> > Without it the driver hangs when some distortion happens on UART
> > lines.
> >=20
> > Signed-off-by: Lukasz Majewski <lukma@denx.de>
> > ---
> >   arch/arm/boot/dts/vf610-bk4.dts | 4 ++++
> >   1 file changed, 4 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/vf610-bk4.dts
> > b/arch/arm/boot/dts/vf610-bk4.dts index 0f3870d3b099..ad20f3442d40
> > 100644 --- a/arch/arm/boot/dts/vf610-bk4.dts
> > +++ b/arch/arm/boot/dts/vf610-bk4.dts
> > @@ -259,24 +259,28 @@
> >   &uart0 {
> >   	pinctrl-names =3D "default";
> >   	pinctrl-0 =3D <&pinctrl_uart0>;
> > +	dma-names =3D "",""; =20
>=20
> This looks like a horrible hack - is there any reason not to just
> strip things at compile-time, i.e. "/delete-property/ dmas;"?

I don't want to strip the dma-names property globally. I just want to
adjust this particular driver mode from DMA to PIO.

For my use cases - as written in the commit message - the PIO mode is
more suitable (and reliable).=20

>=20
> Robin.
>=20
> >   	status =3D "okay";
> >   };
> >  =20
> >   &uart1 {
> >   	pinctrl-names =3D "default";
> >   	pinctrl-0 =3D <&pinctrl_uart1>;
> > +	dma-names =3D "","";
> >   	status =3D "okay";
> >   };
> >  =20
> >   &uart2 {
> >   	pinctrl-names =3D "default";
> >   	pinctrl-0 =3D <&pinctrl_uart2>;
> > +	dma-names =3D "","";
> >   	status =3D "okay";
> >   };
> >  =20
> >   &uart3 {
> >   	pinctrl-names =3D "default";
> >   	pinctrl-0 =3D <&pinctrl_uart3>;
> > +	dma-names =3D "","";
> >   	status =3D "okay";
> >   };
> >  =20
> >  =20




Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/Di/jFXAOICs3QlZsnoXzE2z
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAl2d8loACgkQAR8vZIA0
zr2WHggAttPRl8kp+yb/oZQOEp8vg1iZdn55DoxHq2LWuWy8RIoAUnOUy9TapDZ5
ZBQKgfDBYcD0Yawqlk9uOev6Uhe9roJRyVSdWjdPMcGdK0viwBagw8sYWxWD2TrY
MljhCRJfoStaA/ZKClfGb2w5KddgXTgz2jqRs8CNps7aFBbjhKFtwJoKkdCjI/kl
ADmw46QWkNmN6axoy3NKIDeP31lOfWpMcfcYw0MrLCn0+s/tfRpKqH9eRGC5vjJt
SblR8SeFNB4oUOO1rFN9rKANzgxfqF4n06rCPORZBOK8mV5YIAA5vx7L6VOUxioj
U57i4+VhXSCzlyh3HBGKN3//lb0xIA==
=PTiE
-----END PGP SIGNATURE-----

--Sig_/Di/jFXAOICs3QlZsnoXzE2z--


--===============2059987538492493169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2059987538492493169==--

