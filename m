Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7743DA4B98
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BNiysPKlc7srwVuwGHWcuNqioMEjrBDVQxpeUX20Ad0=; b=LaRie1HYFXIjLh28mtFjzeGXr
	U5JmFqPtp4tJSnsQklX934uZFmux2MNGr4EvniIzafvBZetduG/kA9sTnZV3YwHOBbFhCOWUJDFa2
	wJeyRnQ+jI3FmPvPxj0HFtwkIoEzJl2DeBFuIZJtlsSFlfD2Ime8DcCeyw58HhRvP6B7706N9Hkno
	aLseHbHJ2j8c/p6PElCs/7STPIiNomCuod2OL8YkbTo5fvAFWlLAmz+mosg3vJLBx8FYFFPd6MCLV
	GQi6CsIR3amwXH3StqAiAyFyPha6HLUHvezBjtpKsM7ZXvIxJsEDfqZEmkxkAOzGqRcPlCtXHHydi
	3AEAm/Cyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4WDD-0001lS-Oi; Sun, 01 Sep 2019 20:12:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WCw-0001if-Rb; Sun, 01 Sep 2019 20:12:20 +0000
Received: from earth.universe (unknown [185.62.205.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5489D22CF7;
 Sun,  1 Sep 2019 20:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567368738;
 bh=2GpZPYwYi/qtMDsOkIAcU2oHeD8BeyPuCXPc2OucQIE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VHBILDj8I2fTr0r12zBwrVa3QAubFoTj0YswnLRWiBK0RAxapTY6016WKRmqMFAMJ
 +exeq4jVE+89GwZK8rVcVo0jAc5xUKjO5jYkS/cUThHZIlqDhDiQJBe3SgMV4stVi/
 flOyohqIoknEBlxhAkV4tswZ9Q95fe05jgOYz8l4=
Received: by earth.universe (Postfix, from userid 1000)
 id 0FBCA3C0B7F; Sun,  1 Sep 2019 22:12:16 +0200 (CEST)
Date: Sun, 1 Sep 2019 22:12:15 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 12/13] MAINTAINERS: add Mediatek shutdown drivers
Message-ID: <20190901201215.lkjb54amhjjpjqrp@earth.universe>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-13-frank-w@public-files.de>
MIME-Version: 1.0
In-Reply-To: <20190818135611.7776-13-frank-w@public-files.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_131218_994206_AD5377E3 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Josef Friedl <josef.friedl@speed.at>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Tianping Fang <tianping.fang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5761656623362243744=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5761656623362243744==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="enskgkpgm3vynalk"
Content-Disposition: inline


--enskgkpgm3vynalk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Aug 18, 2019 at 03:56:10PM +0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
>=20
> add Section in MAINTAINERS file for poweroff driver
>=20
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes since v5: none
> changes since v4: none
> changes since v3: moved SOB
> changes since v2: none (=3Dv2 part 6)
> ---

Acked-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6426db5198f0..4172a3177633 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10128,6 +10128,13 @@ S:	Maintained
>  F:	drivers/net/dsa/mt7530.*
>  F:	net/dsa/tag_mtk.c
> =20
> +MEDIATEK BOARD LEVEL SHUTDOWN DRIVERS
> +M:	Sean Wang <sean.wang@mediatek.com>
> +L:	linux-pm@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
> +F:	drivers/power/reset/mt6323-poweroff.c
> +
>  MEDIATEK JPEG DRIVER
>  M:	Rick Chang <rick.chang@mediatek.com>
>  M:	Bin Liu <bin.liu@mediatek.com>
> --=20
> 2.17.1
>=20
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--enskgkpgm3vynalk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl1sJh8ACgkQ2O7X88g7
+prLXw/+IHmCR/FU/6lA6ifbZk9WSF+RGRWcKNrqqUkaVg3yMF0QizjvQ1zQQxRp
hb8o6lo0muECVRhfppPXezPrd51ugSSrdo+h7knBwYHKcJ3ESAB3yuKDqPLSugkS
AX0fFXGTLN3ey8Oq/ORuLhrK2VGMcLR6bAf8JzopXW8WIJMZyanXhuMp02BB75j7
7bUwD94IiLrd3wntAinZB/ytEVKK3hRDf2IcCyrkL/qTDVsv0ngWn/CY0Sh0aWCo
UgVxapwaDFttTGEaFKtp1pjlNw37zt9RVNFDwOJHPsbMMweB3CR0SHfQJcaXrHO2
2Br+GFSOZu/EknnOsZhnAQECa5cRIsQF6K7U6gmDEhuZwwAQs3Hr+auawIOaqJpt
BKW6ryw5mOKmaMJKMvyLgrO5JafA2/ul7LhXzzZBXZvW43YyGMs3h55rSECdHQNV
iFrDYW3ujiNLmvn272Agi1tlwM7zzfMjT6r1jXtugPc40tDBoQcmg3URbI/TAM+c
IQ5ha2j9FYFUaUOgrCHeu5fJVhWPHeRqxuxNwHmodGwgsaSWvYPoShJGQdr3lVp6
ntKtlKrIpibl2TRJ4aHKutxKuOs+4R2CwIEVBH0e2bqBtmGGZQivvvOfmD0BqKqi
1TIxjVbby9tddeROJxh1l7BPaXVKnkTKoxK2xoEv5Uzzb5I7RFM=
=hSBs
-----END PGP SIGNATURE-----

--enskgkpgm3vynalk--


--===============5761656623362243744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5761656623362243744==--

