Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70305F2DEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:09:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tJ9WJYmzqbX5je62IANQ7Cj6hcg0J6yAqYZbn9xBKnk=; b=IiB8gzJYX1iqphe4CG8TX3LzY
	iV8KPyt2FCif4j5b0+Cw059JCCndpK4eEAkKJ6cgJsYRrKIkFGMXjPsWBgYvmRTdUMOjHyMVhs6Yv
	o1+x/UdJ25Mxm9cU81yMvwtYG3ysAncz0Rr42Kg1zzCJTxke/k4Kp7Baic7HBtHg/4psUW14dn7lF
	JzQx/f0PVSeQeesYd+otRpuuvYTFkGF6Q3J1x3PrBHNfbcmYB6IoLt6ce6Wk52XUNy9x0xcd26YlM
	JEdQ8VqmNN1CGf+0NAEhZ+f+6Jq0uDH6+WnCGJTn0x1OOda1x5jhvp8/yqPVxCnSFG5ENl1oUr0Jl
	zEIgo48ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgbH-0006bm-HR; Thu, 07 Nov 2019 12:09:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgb7-0006ay-BY
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:09:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 763D728F853
Received: by earth.universe (Postfix, from userid 1000)
 id F27DB3C0C78; Thu,  7 Nov 2019 13:08:59 +0100 (CET)
Date: Thu, 7 Nov 2019 13:08:59 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>,
 Ian Ray <ian.ray@ge.com>, Nandor Han <nandor.han@vaisala.com>
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
Message-ID: <20191107120859.zoml7cmxbtaetjsk@earth.universe>
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <20191106120846.5bunrqj3uz4khih5@earth.universe>
 <ddcd02cc6c709837a28cae2cbfa672c506927659.camel@fi.rohmeurope.com>
 <20191106142441.GC32742@smile.fi.intel.com>
 <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
 <2ca76ecb58b9e6377925d6790ff4f7722604f57b.camel@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <2ca76ecb58b9e6377925d6790ff4f7722604f57b.camel@fi.rohmeurope.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_040909_528860_A25911D1 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1527450148547582233=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1527450148547582233==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="folqfx6rberhaf33"
Content-Disposition: inline


--folqfx6rberhaf33
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 07, 2019 at 08:52:11AM +0000, Vaittinen, Matti wrote:
> That reminded me.. I got 'unknown recipient' replies
> <nandor.han@ge.com>: 550 5.1.1 No such user - pp
> <semi.malinen@ge.com>: 550 5.1.1 No such user - pp
>=20
> from both Semi and Nandor - who seem to be the only maintainers listed
> for XRA1403 GPIO EXPANDER in MAINTAINERS.
>=20
> XRA1403 GPIO EXPANDER
> M:      Nandor Han <nandor.han@ge.com>
> M:      Semi Malinen <semi.malinen@ge.com>
> L:      linux-gpio@vger.kernel.org
> S:      Maintained
> F:      drivers/gpio/gpio-xra1403.c
> F:      Documentation/devicetree/bindings/gpio/gpio-xra1403.txt
>=20
> Anyone knows new mail addresses or perhaps the separate entry
> for XRA1403 should be removed?

+cc new mail address from Nandor Han
+cc Ian Ray with valid GE mail address

-- Sebastian

--folqfx6rberhaf33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl3ECVgACgkQ2O7X88g7
+pqKSw/+ONn6O1gk/4+S4c2JkCLB7H8lCrV50kxU2YmcYNaDSI8VjaSEp1LTOuDp
+4Ja/OJ1zrVQOfT31pVmq6j4OsFIkmELfjYuWJbTIaVKDFCjgSG42bIPPpY/n7my
a/Tk0KXXSJ/bZ2X/KS4Ji2vMdVw/ILs/cJYZLvexWVZu5XxXuSodbGWnObWkha88
wWMn0ec7ECXaVyxKWlK/XwuEEr09c8TphiyE2KgC5l0LZoWKnEEVM2/VXPJXLmsh
aZCWP1WOHb8ozvF6KXzlfVu47N7tWvUMyBYaOSfqb7M5ftJ+y9U3U5I5oSv97ROY
N2oqWgCuYzOxrgsWFOXZXuJ3sQ6d70opOF5mUccQ4xjpIrty56H5bnLkXrfy0XeS
sYjhmDpsbvreOmGIIV0HLiLdAknXBsVviiMYcMN4qxlzAYn97/jdrMoLEbTF/zMX
AWOpIF5+RxZfNsLTfum3ePkCkHT5vhskznEIyc/WCN3e7kg47oP8Wjy92NB/Q86U
i0DkrGjg2hXJrNohjFX4RWz75AErn1QmpKxydkKPysA74l5TOp08Jpgqf+taLiKQ
EuxlhgyNgKH6i1z3hhBR23ZzTluCHjYW3omivrJPXFI9pnuBD50YmoCMQf0wPBMo
QgPVkIT1ty/hVDGOva1DL94EDaA3xaeMaGiviES1YriaYKNHTwc=
=CiYZ
-----END PGP SIGNATURE-----

--folqfx6rberhaf33--


--===============1527450148547582233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1527450148547582233==--

