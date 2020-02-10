Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63E9157431
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4ntvwBiX66kX9kfCbtrS/X2BlHNCoYZNRCUz066Cau4=; b=obcqRmYOv0FF6wQgKrcWtOMS4
	p89fupjaMMgIZsZis2+IKYtIZ5xSgBmgHSklAw0cZnfHzKK7bOCZCXKA04pHpJ5GBkgF93IrRatRN
	tJAaivFbg6ct3qqX7lZe/33gPTm21WfjBaSXNhk2tDEs3xAvpSZL7ehc2G7h/iO/W+SOL/r8udeZf
	jCcqLBd2mmp6RnVFB3YOjwk8C3SkOBXqDtIuDvY6TDvCqx1cLsSisWRhYcF5I0vFaX0gAdMaAopEp
	Z3KIGxfMnaETAvtqV+b2uhotyUYsJ8Uvnz335yPQZ3ir+TiQpUc0eqcdJ6onC0qAKU1tBNhX4MOgg
	CsbuSvGnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17tL-0001se-22; Mon, 10 Feb 2020 12:10:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17t8-0000aC-Vd; Mon, 10 Feb 2020 12:10:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 04D39AB87;
 Mon, 10 Feb 2020 12:09:56 +0000 (UTC)
Message-ID: <2bd9936d106948210b7a34c8060600572318600c.camel@suse.de>
Subject: Re: [PATCH] dt-bindings: rng: Convert BCM2835 to DT schema
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: =?ISO-8859-1?Q?N=EDcolas?= "F. R. A. Prado" <nfraprado@protonmail.com>, 
 devicetree@vger.kernel.org
Date: Mon, 10 Feb 2020 13:09:54 +0100
In-Reply-To: <20200207231347.2908737-1-nfraprado@protonmail.com>
References: <20200207231347.2908737-1-nfraprado@protonmail.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_041007_337543_1D15853A 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2358498498726487309=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2358498498726487309==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-zCBFPwRk+DMEN1eeas6c"


--=-zCBFPwRk+DMEN1eeas6c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-02-07 at 23:14 +0000, N=C3=ADcolas F. R. A. Prado wrote:
> Convert BCM2835/6368 Random number generator bindings to DT schema.
>=20
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@protonmail.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!

> Hi,
> wasn't really clear to me who to add as maintainer for this dt-binding.
> The three names added here as maintainers were based on the get_maintaine=
r
> script and on previous commits on this file.
> Please tell me whether these are the right maintainers for this file or n=
ot.

Looks OK to me. When in doubt I just trust get_maintainer, never failed me =
so
far.

> This patch was tested with:
> make ARCH=3Darm
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/rng/brcm,bcm2835.yaml
> dt_binding_check
> make ARCH=3Darm
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/rng/brcm,bcm2835.yaml
> dtbs_check
>=20
> Thanks,
> N=C3=ADcolas
>=20
>  .../devicetree/bindings/rng/brcm,bcm2835.txt  | 40 ------------
>  .../devicetree/bindings/rng/brcm,bcm2835.yaml | 61 +++++++++++++++++++
>  2 files changed, 61 insertions(+), 40 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rng/brcm,bcm2835.tx=
t
>  create mode 100644 Documentation/devicetree/bindings/rng/brcm,bcm2835.ya=
ml
>=20
> diff --git a/Documentation/devicetree/bindings/rng/brcm,bcm2835.txt
> b/Documentation/devicetree/bindings/rng/brcm,bcm2835.txt
> deleted file mode 100644
> index aaac7975f61c..000000000000
> --- a/Documentation/devicetree/bindings/rng/brcm,bcm2835.txt
> +++ /dev/null
> @@ -1,40 +0,0 @@
> -BCM2835/6368 Random number generator
> -
> -Required properties:
> -
> -- compatible : should be one of
> -	"brcm,bcm2835-rng"
> -	"brcm,bcm-nsp-rng"
> -	"brcm,bcm5301x-rng" or
> -	"brcm,bcm6368-rng"
> -- reg : Specifies base physical address and size of the registers.
> -
> -Optional properties:
> -
> -- clocks : phandle to clock-controller plus clock-specifier pair
> -- clock-names : "ipsec" as a clock name
> -
> -Optional properties:
> -
> -- interrupts: specify the interrupt for the RNG block
> -
> -Example:
> -
> -rng {
> -	compatible =3D "brcm,bcm2835-rng";
> -	reg =3D <0x7e104000 0x10>;
> -	interrupts =3D <2 29>;
> -};
> -
> -rng@18033000 {
> -	compatible =3D "brcm,bcm-nsp-rng";
> -	reg =3D <0x18033000 0x14>;
> -};
> -
> -random: rng@10004180 {
> -	compatible =3D "brcm,bcm6368-rng";
> -	reg =3D <0x10004180 0x14>;
> -
> -	clocks =3D <&periph_clk 18>;
> -	clock-names =3D "ipsec";
> -};
> diff --git a/Documentation/devicetree/bindings/rng/brcm,bcm2835.yaml
> b/Documentation/devicetree/bindings/rng/brcm,bcm2835.yaml
> new file mode 100644
> index 000000000000..b1621031721e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/brcm,bcm2835.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rng/brcm,bcm2835.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BCM2835/6368 Random number generator
> +
> +maintainers:
> +  - Stefan Wahren <stefan.wahren@i2se.com>
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +  - Herbert Xu <herbert@gondor.apana.org.au>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,bcm2835-rng
> +      - brcm,bcm-nsp-rng
> +      - brcm,bcm5301x-rng
> +      - brcm,bcm6368-rng
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    description: phandle to clock-controller plus clock-specifier pair
> +    maxItems: 1
> +
> +  clock-names:
> +    const: ipsec
> +
> +  interrupts:
> +    description: specify the interrupt for the RNG block
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    rng {
> +        compatible =3D "brcm,bcm2835-rng";
> +        reg =3D <0x7e104000 0x10>;
> +        interrupts =3D <2 29>;
> +    };
> +
> +  - |
> +    rng@18033000 {
> +        compatible =3D "brcm,bcm-nsp-rng";
> +        reg =3D <0x18033000 0x14>;
> +    };
> +
> +  - |
> +    random: rng@10004180 {
> +        compatible =3D "brcm,bcm6368-rng";
> +        reg =3D <0x10004180 0x14>;
> +
> +        clocks =3D <&periph_clk 18>;
> +        clock-names =3D "ipsec";
> +    };


--=-zCBFPwRk+DMEN1eeas6c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5BSBIACgkQlfZmHno8
x/538Af9E4Fj5GNcVUndgLxJI32oW02ih5MIyieex2uP1j3je0U/0mUmRyfYHTzE
VoXDjFd07nq4I+qcNBMCCm/EoZVmhTcYzOwgwkYGpnffvb1y+2xNx0FN0yYJFMAF
aZKfwp/s5DFeNxJyowh/ejeHQyRZh5lbUrlg4Dhu5f2wJ9pnUzbkQn4qMGmJ5tcJ
l+HYDtp5LRNdLwgjaI8kPeTHU403RO20ASLGW8XBL12/Rc2MvOj18OcURS+SlB0J
/eyvAoeVkeB9RBAzpg0LpsC8kF506li/telVa1zKbyFKycY0JoQZP0VvfNUVSjVX
0bfhLaOaOSn8PWfr8Jwfkko+ZmhI4Q==
=+aAd
-----END PGP SIGNATURE-----

--=-zCBFPwRk+DMEN1eeas6c--



--===============2358498498726487309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2358498498726487309==--


