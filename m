Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB901F57F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=61My6bjrVuwcQJobG6p8FBJLlExFS0LMscPoVfTFGDg=; b=p2OfHXpwCOGF/uaaQAjWcN6Zd
	I1uNcPND4jiRJDHzAwgM9jpDk7fdNTayyU2Vm1gTKzWB0Oe+d998up8HJ65NeWcUMo5S2oEWKpwJH
	t0D+wMCRFNbkTqB6PwJGYwnS/zOwbGH2wSeNPPZhCmQMH9pd2+n6BqbzuTVZLSvzzxT3gLvQxcX/O
	x1sgFgS97e1oPE6rF8uQpmu+/KqJLZxU/9SoBh/dAaQpgTpaw7fNxgp7FHDehy57djweZRw1x0U9o
	Z/4gYPlHg2bqTbEceuDiHRgJyym87uGM416zqkz1kHSxcEDLogF/JE0Yzz86hYXZnjxdgDT02MLCY
	XnaGsQKZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj2nB-0000SQ-MG; Wed, 10 Jun 2020 15:37:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj2n5-0000RT-7x; Wed, 10 Jun 2020 15:37:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 345F3AD75;
 Wed, 10 Jun 2020 15:37:23 +0000 (UTC)
Message-ID: <252b688105ddff381798ec3150066288762178b0.camel@suse.de>
Subject: Re: [PATCH v2 1/9] dt-bindings: reset: Add a binding for the RPi
 Firmware reset controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, gregkh@linuxfoundation.org, 
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, Ray
 Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
Date: Wed, 10 Jun 2020 17:37:15 +0200
In-Reply-To: <c3dc9b7e-4440-7e8a-3da8-b147c48c4c40@gmail.com>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-2-nsaenzjulienne@suse.de>
 <c3dc9b7e-4440-7e8a-3da8-b147c48c4c40@gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_083723_429722_8717B58E 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3668555040922480139=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3668555040922480139==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-n+aTWdme6r8Au4n90Rrf"


--=-n+aTWdme6r8Au4n90Rrf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian, thanks for the review :)

On Tue, 2020-06-09 at 11:07 -0700, Florian Fainelli wrote:
>=20
> On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> > The firmware running on the RPi VideoCore can be used to reset and
> > initialize HW controlled by the firmware.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >=20
> > ---
> >=20
> > Changes since v1:
> >  - Correct cells binding as per Florian's comment
> >  - Change compatible string to be more generic
> >=20
> >  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 21 +++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2=
835-
> > firmware.yaml
> > b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > index b48ed875eb8e..23a885af3a28 100644
> > --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > @@ -39,6 +39,22 @@ properties:
> >        - compatible
> >        - "#clock-cells"
> > =20
> > +  reset:
> > +    type: object
> > +
> > +    properties:
> > +      compatible:
> > +        const: raspberrypi,firmware-reset
> > +
> > +      "#reset-cells":
> > +        const: 1
> > +        description: >
>=20
> Is this a stray '>' character? If so, with that fixed:

No, it marks the formatting of the text below. | will keep the formatting a=
s
is, > will leave the formatting to whatever is going to use it.

Regards,
Nicolas


--=-n+aTWdme6r8Au4n90Rrf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7g/isACgkQlfZmHno8
x/5KnggAkIaMw+no0jjwGGwmLpYNI37OtXTlkJh7+vxBbP3/KDoYuOKodikYKYi7
06IGVl60YiOtYKZmeBUpt5vxCnGpFdccflCssnih0CSXLSUYSA+0+XQ7/8WI+wDF
iyBAZWn+BTleK3nJRM1EzWuiJvsH6hqE0X9SWqrH549wvJUKoh/EPMllsrrl2rr4
k3MTRQ1qUaDh+m+ZxKA14Ah1Gwhm1nOnx0LLti9+W02o270Y7dQnWwzfXwlGJHPi
kCkA5gj9PzDFq9+csd+n8ek73GJEoyQEsgphDBQbQCVb3uMpioF4jqdDxQaKFC21
NG2lzd8rO+0Rlc3UUvOFg+sB04SUcg==
=8jr+
-----END PGP SIGNATURE-----

--=-n+aTWdme6r8Au4n90Rrf--



--===============3668555040922480139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3668555040922480139==--


