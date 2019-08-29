Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FDAA1981
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 14:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8tj2iM2E0tbYTjU9P2OF7O3sG3jH8P+qwOotnOl0RNk=; b=h2bg2xa5+BOjoT4eg5IfsZIAB
	BMIFwhxHu46FCnIx+jh9MSUCvUnZQGAQasqVThc2uNfBtjy7v9m1JCII5h6J1hAm0aK9aIEhdLgiT
	2J/K0ozs6khed+q+HUz5jY8yst6AcxMyeGA5WiV/jF9NX8Vh9D753f3FQbJYrmZkQcE0RVpkxiKzM
	QNwi1y+YV6fM9dTTdTkXJvGsnZMsk9AeKD24ZRt/XHpKJ9JzPUL1FsfGYz/jmSToORN59cefie/Bw
	EsdJ2I0VVECEtgNpCr3buxk7gXBvc/k5dsJ4Xh6pTbxNg4YjZ8qEmPn5+SAEgBFLRiBHKWmfBpDms
	VGndi+Z9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3J9U-0004Nk-JB; Thu, 29 Aug 2019 12:03:44 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3J9K-0004Mu-9W
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 12:03:35 +0000
Received: by mail-ed1-x544.google.com with SMTP id h8so3787509edv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 05:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HC/6ZRZxQ7B5ep/47mrpg+acl95CprVZcHVqWh2iGp4=;
 b=CZ5isuAnl2qiOdBcJGTg+2OxOzs4UgciMTbbX9B3oye1Xl6cDATQyhYTTK5MILsNAt
 gjXHRCmObHw5rBRRgiZOI+/5SyCu5qVS+1G2EMnYMajc5/jRv3WTGkVqVEcfeo0JK91W
 C+UpQlAtMWF51DpDFo5QELlcFuR/cw6Ml4g7a3hjuigOmnPvWgLP4vh91OiWBsUBMK/B
 eqHywPSVeYt+rNPVF6K6QbZMrdwPObfoS7BwZA/5YpBiINlCdxJLzFURQ2h7NCHdYmch
 Ulsc5Azg5406hVlTzAdAQJ0lQ2aSORDJ8x/tbrwcNdVJAC2h12p9Wi8uVrpegydkwvV5
 iqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HC/6ZRZxQ7B5ep/47mrpg+acl95CprVZcHVqWh2iGp4=;
 b=Ts0I+TtUbmhLaBCJpG1pFlUIC0vQz8yfDBHt2hoCT/iiVWRjgS1ixtzLFOxcDkUKqv
 DIr8R1arI7RIr8EXXNQhj1oqhA3AkWosLolg3AolCUPbxMPfrP7pK3wNOreOF89QaFKD
 ePZHbyKaWlwVJ0dxxenPjiRsohyG4KdxwW3xbEwXlzKDIzUma0ajxT8zSxgnC7899DCd
 /v5KLShGYmDj5pG+9Y4XQvEMf5QRL1Hnnre9uImupGp6OvBLPtg/aEbrWf48QPVuxQul
 ynX0NATQdR+IAj7B6ppmV1HLKSLUj0ks5PeN43E8GSjdduAV/QlpZFV3rcC0kPkOzmkr
 MRvA==
X-Gm-Message-State: APjAAAVeEXxfaNaDj+Mefd6iQOOu5Jf+YTxE1StXtebg8TMeCiDGpeAV
 KaKgiYF3loxQMCWp5zRqeF8=
X-Google-Smtp-Source: APXvYqySs/VqsSqJJBCJaCpwyKBYzvRJ3QSOgddlozsP6MDDfKle9c8EoWsfW0CM/wT3Nf3CMel9+g==
X-Received: by 2002:a50:fc12:: with SMTP id i18mr9544917edr.23.1567080212005; 
 Thu, 29 Aug 2019 05:03:32 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id j2sm355111ejj.34.2019.08.29.05.03.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 05:03:30 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:03:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 2/6] dt-bindings: PCI: tegra: Add PCIe slot supplies
 regulator entries
Message-ID: <20190829120329.GC13187@ulmo>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-3-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190828172850.19871-3-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_050334_362347_5F43C4A4 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============4103421238000919064=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4103421238000919064==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4ZLFUWh1odzi/v6L"
Content-Disposition: inline


--4ZLFUWh1odzi/v6L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 10:58:46PM +0530, Vidya Sagar wrote:
> Add optional bindings "vpcie3v3-supply" and "vpcie12v-supply" to describe
> regulators of a PCIe slot's supplies 3.3V and 12V provided the platform
> is designed to have regulator controlled slot supplies.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * None
>=20
> V2:
> * None
>=20
>  .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.t=
xt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> index 0ac1b867ac24..b739f92da58e 100644
> --- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> @@ -104,6 +104,12 @@ Optional properties:
>     specified in microseconds
>  - nvidia,aspm-l0s-entrance-latency-us: ASPM L0s entrance latency to be
>     specified in microseconds
> +- vpcie3v3-supply: A phandle to the regulator node that supplies 3.3V to=
 the slot
> +  if the platform has one such slot. (Ex:- x16 slot owned by C5 controll=
er
> +  in p2972-0000 platform).
> +- vpcie12v-supply: A phandle to the regulator node that supplies 12V to =
the slot
> +  if the platform has one such slot. (Ex:- x16 slot owned by C5 controll=
er
> +  in p2972-0000 platform).

There's an ongoing discussion regarding the use of optional power
supplies and I'm wondering if we're not abusing this here. Why exactly
are these regulators optional?

The distinction is somewhat subtle, but the other way to look at
modelling this in DT is that the supplies are in fact required, but may
be connected to an always-on regulator with a fixed voltage. Or in some
cases they may also be shorted to ground. In both cases the PCI
controller, or rather the slot that the controller connects to, actually
"requires" the supplies, it's just that we can get away without
describing them because they can't be controlled anyway.

Looking at the PCI connector pinout for PCI Express, I do see a bunch of
+3.3 V and +12 V pins. To me that indicates that the 3.3 V and 12 V
supplies are indeed required for PCI slots. I'm not sure about devices
that are directly connected to the PCI controller, though. I'll need to
go look at some schematics to get a better understanding of these.

Bottom line: I'm wondering if we shouldn't really make these supplies
mandatory and in case where we don't care either just leave them away
(the regulator framework will supply a dummy regulator in that case) or
hook them up to a fixed regulator if that matches the hardware design.

Any thoughts?

Thierry

> =20
>  Examples:
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D
> @@ -156,6 +162,8 @@ Tegra194:
>  			  0xc2000000 0x18 0x00000000 0x18 0x00000000 0x4 0x00000000>;  /* pre=
fetchable memory (16GB) */
> =20
>  		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> +		vpcie3v3-supply =3D <&vdd_3v3_pcie>;
> +		vpcie12v-supply =3D <&vdd_12v_pcie>;
> =20
>  		phys =3D <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
>  		       <&p2u_hsio_5>;
> --=20
> 2.17.1
>=20

--4ZLFUWh1odzi/v6L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1nvw4ACgkQ3SOs138+
s6GI6w/+IG7mTCrwYZe0LN6qzkC7/2R7QVuV631kPcoyzIRoQZLYGkdNvI5EAfzF
8NgV3IpZAIxJDeZl7slSZdXcrCF92OFxy77koBFKQncXlSc/YHKymyXx2trZLzmf
b7+aO8xnOxaSfHCfdKPVQTndq2piK9APoyTtuVnE9mmgqEGQoEv7N4QiSMx8NabA
q0MVvrA9l5ibiQ13lfw6QX8iT4txZ17yWQ4wcMSXOOSSnmGkxZq8kOr3OVzahIYY
ibogwwQPEcV1Auz2TRyVdG4ZftKx21iflj+m/2sbiduh9l3p+aEuB8WIV6T2MbBk
vXfiC+bWlOUsWpZlb+zb3zOHjte3/53YbVkrgXvdlE+66VYKK/Ok2uAnq9t9RDvT
swdhH98bWTviSxfdvT3TXKcxX9DT1sI+4rQPqvEO5E2taflYw0VlVGklSMmZqy57
BApIVrZoh1r0OKgVrTSr/VBkT0yVki8SyKBvH9UzKG42NDf9FNhLeg9ey5UOACZO
A/ujEXHDjpqyTZmVlo0orYOvKB6qsaM3LS5PQD1FrIjSwFVqVWMPkGeVqZ0OE9za
tT/v4MGRz9v7GSDTEqAYmTsVhjEzd8h2fuTsdykqxKmMlbTHohS1QVUj4MBkSwcB
O6cGc3uLm1i5x+0980a+k7CXqmm5ooEcsRspCdi4egaGQdN1jRs=
=CA6J
-----END PGP SIGNATURE-----

--4ZLFUWh1odzi/v6L--


--===============4103421238000919064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4103421238000919064==--

