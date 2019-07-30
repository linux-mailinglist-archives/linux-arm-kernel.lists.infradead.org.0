Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7187ACE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K1e2A+F0ZxWHeR2kiQkv5wT6+bngycuos1wJCN6PP88=; b=GYFO3N8BSXvaVMdSqGhDl3MEg
	f4jcZAnwzmLy6e/PxfNLgZU7+9JvntQBejcDXRNXvvYCCpOu2LE7yPffG2JllEUPqhxpi0M3EPHMf
	6Q5V9pGfUUmUdWxcOiEC2C/Sf0MGMz83Uge5nq0vaiPn3+YBe3URfVV77n9PFvGKvKyPApv+cXtnH
	Lwwl+3PgQfbQk16u63uEL9L6D+OaVWzOQkw++0ygerYbzFpIDusrfdmGkSfOAC9DmaUuocvp0Uctt
	yBkx+RfkVSOs8q+k/bHLg/yx+1ec6VAzyehZ+9t93sf/6Fi/ZnN1y7ytz9jJaCdGH+VwGafdW0LkI
	rVpcp5iLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsURp-0002lf-H5; Tue, 30 Jul 2019 15:53:57 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsURf-0002lH-1z
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:53:49 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 45yh1N0nPyz1rTYf;
 Tue, 30 Jul 2019 17:53:44 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 45yh1M6Zhqz1qqkK;
 Tue, 30 Jul 2019 17:53:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 2NMNNE217Hy2; Tue, 30 Jul 2019 17:53:42 +0200 (CEST)
X-Auth-Info: TJA1EiAuhI/vHNhcnsilPqlOm1nG0ETqlS47Wvo9Jc0=
Received: from jawa (85-222-111-42.dynamic.chello.pl [85.222.111.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 30 Jul 2019 17:53:42 +0200 (CEST)
Date: Tue, 30 Jul 2019 17:53:36 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: DTS: vybrid: Update qspi node description for
 VF610 BK4 board
Message-ID: <20190730175336.382d833c@jawa>
In-Reply-To: <CAOMZO5AxPHHobQQhq30fjLVeSroLdvdT0+GqCWi8it1ejhDONA@mail.gmail.com>
References: <20190730150552.24927-1-lukma@denx.de>
 <CAOMZO5AxPHHobQQhq30fjLVeSroLdvdT0+GqCWi8it1ejhDONA@mail.gmail.com>
Organization: denx.de
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_085347_397979_9BA8AE6A 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4750781305291387953=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4750781305291387953==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/Hls2KDiiZhS_2XwqOwjo/0W"; protocol="application/pgp-signature"

--Sig_/Hls2KDiiZhS_2XwqOwjo/0W
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Fabio,

> Hi Lukasz,
>=20
> Subject line could be improved:
>=20
> ARM: dts: vf610-bk4: Fix qspi node description
>=20
> On Tue, Jul 30, 2019 at 12:06 PM Lukasz Majewski <lukma@denx.de>
> wrote:
> >
> > Before this change the device tree description of qspi node for
> > second memory on BK4 board was wrong (applicable to old, in-house
> > tunned fsl-quadspi.c driver).
> >
> > As a result this memory was not recognized correctly when used
> > with the new spi-fsl-qspi.c driver.
> >
> > From the dt-bindings:
> >
> > "Required SPI slave node properties:
> >   - reg: There are two buses (A and B) with two chip selects each.
> > This encodes to which bus and CS the flash is connected:
> > <0>: Bus A, CS 0
> > <1>: Bus A, CS 1
> > <2>: Bus B, CS 0
> > <3>: Bus B, CS 1"
> >
> > According to above with new driver the second SPI-NOR memory shall
> > have reg=3D<2> as it is connected to Bus B, CS 0. =20
>=20
> I am glad you got it working!
>=20
> This looks very familiar with the suggestion I sent yesterday:
> http://lists.infradead.org/pipermail/linux-mtd/2019-July/090655.html
>=20

Yes, indeed. Deepest apologizes for not adding credits. I will fix it
in v2.

> It is a good practice to give some credit to someone who has helped in
> finding the solution of your problem.
>=20
> Adding a Suggested-by: Fabio Estevam <festevam@gmail.com> would be
> nice here.
>=20
> This also needs a Fixes tag.

Shall I refer to the original commit (which added this DTS)? Or the
original issue posted to linux-mtd [1] ?

Note:

[1] - https://www.spinics.net/lists/linux-mtd/msg08114.html

Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/Hls2KDiiZhS_2XwqOwjo/0W
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAl1AaAAACgkQAR8vZIA0
zr36MQgA4Oorheiqhn9obaiAQFJhr++QNaJEtm0Bs+T2h6ZblLVgYbPqys8+6biN
oLxpS3COrCwo3B8xFK4MxWze3qqyDYKPuse2NqFEW02qIIPPjPKfMNiEY8YIy+p7
5Yas3dvZar13iUmiyVuoTRk2kC7zFHRzv39YM0RHfYbIx+V+IcQTDnAbwkBj4iT/
oSDBq54OR5R7q+CvR1xncl7HzfXP1QwYw8MhEEWsOhhMWQ6sEJp56oz1gnNW5KF/
2Tah7fpuzhsUw+ysmqB3V7lXwvc3BQYIzQhtHWFFYLWjunrqN6kyUH+VXfv5cswV
M5vvDYesZAOADYr1KfN/DCX7JwdLmg==
=WzwS
-----END PGP SIGNATURE-----

--Sig_/Hls2KDiiZhS_2XwqOwjo/0W--


--===============4750781305291387953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4750781305291387953==--

