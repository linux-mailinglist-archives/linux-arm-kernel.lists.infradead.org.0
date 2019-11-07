Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FB0F2BA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rnYZDZhYZTnFvhsnANoDUrW2iAcDtohacFcyJxlOtY0=; b=irLyW42FuCqaFTRkrkfIU5VOV
	7UD0fxOK+H38R6N16aAtnorgHcQ50ordg3ElbjtXKhUbmLW1sTxj1o2Jh1m/MxUBl3iDKyzZ3w0aP
	eL/hYn6ZNyMr4rxusQ86tXCfLHYTm9xSeh+xfHSjpO7GlXkL8rOyKPJtCyq25HSMn/vXi5HczzB4Y
	D171zU1yoONt7713EIm9g19JYSk6xsq4QvoEkxt7llyK18LpQOjkmOntNbGmI6TfWWR6y/EVC0MK/
	WY5YEKgIrMCIwnIpVZzaS46++EgrUd9gOdOqzJd8gHlLfb3qdYqibOrvZyO9XhTB3VnearMCliNnN
	c0tLYN5PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeYg-0005hi-AQ; Thu, 07 Nov 2019 09:58:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeYV-0005h4-Pm; Thu, 07 Nov 2019 09:58:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 68354AFA7;
 Thu,  7 Nov 2019 09:58:18 +0000 (UTC)
Message-ID: <6391b0574abbe9f669fd5b8c539d306fb64aaba7.camel@suse.de>
Subject: Re: [PATCH 0/4] Raspberry Pi 4 PCIe support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Andrew Murray
 <andrew.murray@arm.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org,  bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,  linux-arm-kernel@lists.infradead.org
Date: Thu, 07 Nov 2019 10:58:16 +0100
In-Reply-To: <5e3df7af-d7be-2408-7b53-13a0e38e9478@gmail.com>
References: <20191106214527.18736-1-nsaenzjulienne@suse.de>
 <5e3df7af-d7be-2408-7b53-13a0e38e9478@gmail.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_015819_979715_A1E97C2B 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: mbrugger@suse.com, phil@raspberrypi.org, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5809554791455875552=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5809554791455875552==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-9+CcCd+frESmTBhEBdh8"


--=-9+CcCd+frESmTBhEBdh8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-06 at 13:51 -0800, Florian Fainelli wrote:
> On 11/6/19 1:45 PM, Nicolas Saenz Julienne wrote:
> > This series aims at providing support for Raspberry Pi 4's PCIe
> > controller, which is also shared with the Broadcom STB family of
> > devices.
> >=20
> > There was a previous attempt to upstream this some years ago[1] but was
> > blocked as most STB PCIe integrations have a sparse DMA mapping[2] whic=
h
> > is something currently not supported by the kernel.  Luckily this is no=
t
> > the case for the Raspberry Pi 4.
> >=20
> > Note that the driver code is to be based on top of Rob Herring's series
> > simplifying inbound and outbound range parsing.
> >=20
> > [1] https://patchwork.kernel.org/cover/10605933/
> > [2] https://patchwork.kernel.org/patch/10605957/
>=20
> Thanks for picking up on this Nicolas. Can you amend the MAINTAINERS
> file with something along those lines such that PCIe binding and driver
> changes are picked up by both the BCM2835 and BCM7XXX entries?
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cba1095547fd..4276a30f3294 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3196,6 +3196,8 @@ S:        Maintained
>  N:     bcm2711
>  N:     bcm2835
>  F:     drivers/staging/vc04_services
> +F:     Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> +F:     drivers/pci/controller/pcie-brcmstb.c
>=20
>  BROADCOM BCM47XX MIPS ARCHITECTURE
>  M:     Hauke Mehrtens <hauke@hauke-m.de>
> @@ -3251,6 +3253,7 @@ F:        drivers/bus/brcmstb_gisb.c
>  F:     arch/arm/mm/cache-b15-rac.c
>  F:     arch/arm/include/asm/hardware/cache-b15-rac.h
>  N:     brcmstb
> +F:     Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
>=20
>  BROADCOM BMIPS CPUFREQ DRIVER
>  M:     Markus Mayer <mmayer@broadcom.com>
>=20

Ok, noted, I'll add that patch to v2.


--=-9+CcCd+frESmTBhEBdh8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3D6rgACgkQlfZmHno8
x/7uuwf/dOmDBfR85tFZWNiXZ87/YYUeVY/OGHACLI0ieSBKa2qdCJSFl4TzWe6I
Ur9nlLsi4MEtNTtUlE919ZlLuC7Y8R4J0bIK5vCY/AnRcnWvPyQXqyjMnv+BkhDu
sLc8I3YEGAtVL05o7P+63+Jb8RqDoQVOBOXPP6LAHSn2amevOGp6UUETlsW7KNVo
FHMO7fHmlpdW+Wdk9nzzVJ65NEk8SeyqM8AgCCm5QVrvMVwkiMHemcYoN7UH/SuJ
oHZVup66FLWCxOqOWdQHcb4cUMPh9da0ZmJwSJJ40yBH4Q7UP6HYzhMlHjkVED5Y
QzNn1tWx78yWq5mKFaSMxBNhWBUSDQ==
=XJ+I
-----END PGP SIGNATURE-----

--=-9+CcCd+frESmTBhEBdh8--



--===============5809554791455875552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5809554791455875552==--


