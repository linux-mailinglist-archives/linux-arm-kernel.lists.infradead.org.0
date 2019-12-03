Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A373E10F3C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 01:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ki6plc6/ptl4IbyQcy3aR6vX1WeaXdyE2XrAyv8faOE=; b=O+4vRGBsv0h63dqLt78/zicLJ
	66mKV3YeLZGgFxjPaEGrfcNW24T0YeeNRxlsUkGNK7Kv06Xv7HZ8yqClm6KzLUct5zTmmxpTt+/V9
	3vnYKjp6x5xANxWfavvmE20DfzXt2l9bbjrrBX8DL+cxwIkvnH+dliU8D01ozvZAImr+SlKsFRd9k
	2ScJnf9xhXsy2ifjyAP774Lpx9xVRi3XdINsxVG6Z7hr16zoPGTCrulfwhk0+jW4yDv2+pg1AMZMm
	d4B7a7LTowO76L69fqq4au/WZzFqmcWkZFo05SGMQEZVf0MpE4jJFk9hBLOmCU/SrVmb8w0P6GjYX
	RwLH3A3iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvfo-0006eU-Gn; Tue, 03 Dec 2019 00:04:12 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvfh-0006e0-K3
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 00:04:07 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47RhzP0l0Wz9sNx;
 Tue,  3 Dec 2019 11:04:01 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1575331441;
 bh=ofrQW0TxwGuulPyyDJrLFkNoyUmA1WX9cbDzUsNjSzU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jERqg3KyVq1w3LRkRhHkGgwkLi71aZdEPPxg6vbuLchjnlFySZl1CcWLpDlCf2NWH
 3SC76kLFVNZ73Qhs2MgHh71IqEW6qvqtqu1y7LbS83noP7VacMzNeYxD6dAnkGZBXb
 z3EzGI+gxyG40cXifuz+n4jN2PKUKyUt80dWkZxGbKcggabcKHvGklqpbZj1iiHuzJ
 0DuT+sYznwt8WRs7ZI+0YPA+vMSqV5ZR6zOSS6oJk9SLVpzrC9gqUXjqUuWd/Eg6p7
 38fX07XfuOCs9P0sEpdnUga7Mpm/iffLE/pDYdE3SIQZaPx2nLJbsWXSRKnoEke0aC
 rDwtSzt3tA0uw==
Date: Tue, 3 Dec 2019 11:04:00 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Rob Herring <robherring2@gmail.com>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: manual merge of the devicetree tree with the
 arm-soc tree
Message-ID: <20191203110400.1b6b279b@canb.auug.org.au>
In-Reply-To: <20191114132131.56089c64@canb.auug.org.au>
References: <20191114132131.56089c64@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_160405_819104_412D672C 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Marian Mihailescu <mihailescu2m@gmail.com>,
 Linus <torvalds@linux-foundation.org>
Content-Type: multipart/mixed; boundary="===============8904615149156672150=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8904615149156672150==
Content-Type: multipart/signed; boundary="Sig_/qXPlHYDi8KsouRe1yiGKkSv";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/qXPlHYDi8KsouRe1yiGKkSv
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

This is now a conflict between the arm-soc tree and Linus' tree.

On Thu, 14 Nov 2019 13:21:31 +1100 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>=20
> Today's linux-next merge of the devicetree tree got a conflict in:
>=20
>   Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
>=20
> between commit:
>=20
>   577dd5de0990 ("arm64: dts: juno: add GPU subsystem")
>=20
> from the arm-soc tree and commit:
>=20
>   3afd6389f320 ("dt-bindings: gpu: mali-midgard: add samsung exynos 5420 =
compatible")
>=20
> from the devicetree tree.
>=20
> I fixed it up (see below) and can carry the fix as necessary. This
> is now fixed as far as linux-next is concerned, but any non trivial
> conflicts should be mentioned to your upstream maintainer when your tree
> is submitted for merging.  You may also want to consider cooperating
> with the maintainer of the conflicting tree to minimise any particularly
> complex conflicts.
>=20
> --=20
> Cheers,
> Stephen Rothwell
>=20
> diff --cc Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> index 018f3ae4b43c,c9bdf1074305..000000000000
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
> @@@ -21,11 -29,8 +29,12 @@@ properties
>         - items:
>             - enum:
>                - amlogic,meson-gxm-mali
> +              - realtek,rtd1295-mali
>             - const: arm,mali-t820
>  +      - items:
>  +          - enum:
>  +             - arm,juno-mali
>  +          - const: arm,mali-t624
>         - items:
>             - enum:
>                - rockchip,rk3288-mali
> @@@ -34,16 -40,8 +44,7 @@@
>             - enum:
>                - rockchip,rk3399-mali
>             - const: arm,mali-t860
> -       - items:
> -           - enum:
> -              - samsung,exynos5250-mali
> -           - const: arm,mali-t604
> -       - items:
> -           - enum:
> -              - samsung,exynos5433-mali
> -           - const: arm,mali-t760
>  =20
> -           # "arm,mali-t628"
>  -          # "arm,mali-t624"
>             # "arm,mali-t830"
>             # "arm,mali-t880"
>  =20

--=20
Cheers,
Stephen Rothwell

--Sig_/qXPlHYDi8KsouRe1yiGKkSv
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl3lpnAACgkQAVBC80lX
0Gy4ewf+NX1otwr8rrbU2acRi56O4a9hBWjL0oXOLgyVdoUdYL3/iF5l/Q6wA/La
oGnuvlceXlBMxKL9nTXwlClE2dl3OElCShhS27phspwp9EfDHL6CjaO6IF/dW+0j
7D8QkN+lnyqCm5mYqzwQUkq/6RV44MbnZFySAna7TOvwqaAR5WetJGlQgnJjsgGX
ERrIe3dCHLzWuL+Km87tifOBU36BwxEqkRJEJqrqIfNk6Ty7YomUa4AcWpLAnD++
7YwuX48ab3X3vdgZCl8SdwHMrr1s1T5fiPqJOgCVBK5TezZGgrjWdqrW23hFpSJR
H/uDVxTcFJVJgWRIpkQxPO62Z9L+xQ==
=wce3
-----END PGP SIGNATURE-----

--Sig_/qXPlHYDi8KsouRe1yiGKkSv--


--===============8904615149156672150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8904615149156672150==--

