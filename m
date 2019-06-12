Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C5B422DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EP/OO3tId7nAWdDfviEMLnmq7eps6MZ0LLhR786VPsc=; b=Z5W9uSHHHINA0mMZelnaxZldY
	1eEbZc2mfev7UoNqNnQMbkyighgO6muEY/J0QVjZd4VrHuhMqC81Ew8Zgn/CNkJRlQd2UE31ta1Kb
	tmwBlsA7bqEsAgwVpoxadvuvoK6mIDFUsU6jZfIFhGkSxeduOrP3puH32b6+Vv7G6y1pZqUxQs7Ji
	SEAOzeFLVPCpD6alvKn35FPPOZSzeYdmB6/dKasqgvZW94x7/VrDOXwmwrlSpSj73le5WiSk/694a
	KreXblSOr5qbyH7zxcvok9Fa2RIiuYpYAqAJLT3eSUHcIEorWHGud/yjQYNWFy2qb2AQScFHzh/2l
	7vuit8+FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0km-0006ES-6i; Wed, 12 Jun 2019 10:45:16 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0kW-00065n-Ds
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:45:01 +0000
Received: from localhost (p5486CACA.dip0.t-ipconnect.de [84.134.202.202])
 by pokefinder.org (Postfix) with ESMTPSA id 974242C54BC;
 Wed, 12 Jun 2019 12:44:59 +0200 (CEST)
Date: Wed, 12 Jun 2019 12:44:59 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Message-ID: <20190612104459.gvji3qxym5s4odfq@ninjato>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190612103453.ccet2pneairnlpcc@ninjato>
 <20190612104011.GA4660@dell>
MIME-Version: 1.0
In-Reply-To: <20190612104011.GA4660@dell>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_034500_626452_3D5E381D 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2529957908139931841=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2529957908139931841==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ozob5i4arnc7fie4"
Content-Disposition: inline


--ozob5i4arnc7fie4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> There are no cross-subsystem build dependencies on any of these
> patches.  The only reason they are bundled together in the same
> patch-set is for cross-subsystem visibility and understanding.
>=20
> There is wide interest in these devices.

I see. That would have been a great cover-letter, Lee ;) Thanks for the
heads up!

>=20
> > Also, the current maintainer entry for this driver looks like:
> >=20
> > drivers/i2c/busses/i2c-qcom-geni.c:
> >         Andy Gross <agross@kernel.org> (maintainer:ARM/QUALCOMM SUPPORT)
> >         David Brown <david.brown@linaro.org> (maintainer:ARM/QUALCOMM S=
UPPORT)
> >         Alok Chauhan <alokc@codeaurora.org> (supporter:QUALCOMM GENERIC=
 INTERFACE I2C DRIVER)
> >=20
> > I didn't hear from those people yet, would be great to have their acks.
>=20
> I will see if I can rouse them from their slumber.

Please do. If they are not to reach, we probably need to update the
entry...


--ozob5i4arnc7fie4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0A16sACgkQFA3kzBSg
KbYxGA/9HiQnj0VnFh9GoFzMImS2pCdkGgsTJeZ+9OUV4xzVVVJ5IqvMsTVveAa2
G8UW1TqfWoeNwaAW5z1DITb/F2FOhx162e7Qce8C5xYNJfybOJYixAvlkyjVBi0H
fT4/ei14NJgNsy2cGs2UUSwKqwMmR7iom3DQQc3w6fMBiXciQGKNXJ7Gr1iatsg7
jbOMUZ+SzeSLsfQutWvNR8kiN0K0AEnj9f5Q2nxPtwoK0cSx6HxH7x3KA6QK4NlO
tOY4FrVg4yXCu2arTUcp+1PBo2E9svLocqZwyxa1bJyeIZYNMI9XJXoliMNdMsJF
spDGdaHB3OPG1ipES/W6559y9MCdebjqlnE2JiSGmhNlrU+TIgj4q862zHTL9wyN
Ugpc5IMvaVafCfUJTqLHF/lGKfs4J5d568psLyJamY9XqVWG1LY+s/RQtD1OMATU
dfDs2ONGEbVK8Okvpck8cgPn25bOn0R67Kn5K31PX6qUhlggxeGl5laOhhdzg1h5
80Or9O8URxb6SHStnsgy8uA9OF3gpfKnmE6PVXxfIShQiCz3UxC9l/j46zlObUPV
Z1XeHI2cT0cjSTfgclEyM0Q33DyECfH3uTPuc0erjqNj+qWVxV506GsAOmU09GEP
lXw8C3DCPAdqrxO/bcIi8xlY//b0s9uEHokcV5lutndaQFyj+oE=
=E6Gx
-----END PGP SIGNATURE-----

--ozob5i4arnc7fie4--


--===============2529957908139931841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2529957908139931841==--

