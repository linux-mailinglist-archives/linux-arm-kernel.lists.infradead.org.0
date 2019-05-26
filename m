Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BD72ABBD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GoGG3XEK+vF5Z/s9IuXXZzWe8cKHsGZ2XaPX07YnNvA=; b=rFmWKZw2I5TLYUaZ0MYpOUh7o
	6z/5fszCDZguQ25RghaYJRndoD79aLDTkiQh2RVcaD1NzB6IpSTYmujeEAm4eVBorKr6r7iMsBT7D
	uIoujdXVZw6WUvu5V1Uyoc6AzKJiEpreg9OrQqnhiNK/qoxtJDlSyTrFhwetVTp+fT/fKnnmTrsLr
	lkWH3+SuM6AlIX85PEkwgVRG2f72KVRJgW1/jgrSm/nPP8ETXXMlFvP9YgIlhUHxHu/ysG5+LBT8m
	TSxUB4zRvRWrz3IaWoNHXReH2HDhzqcUUwWoqYrwNHzviPRrQKwjzni8CFvR1OEImgZkKTAbsatLx
	OMvcJvm6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUyPq-00016p-4O; Sun, 26 May 2019 19:02:42 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUyPh-00015g-Th
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:02:35 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 00D03E0004;
 Sun, 26 May 2019 19:02:17 +0000 (UTC)
Date: Sun, 26 May 2019 21:02:17 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: media: A31 compatible
Message-ID: <20190526190217.257pxcc5s7ykhfor@flea>
References: <20190525180923.6105-1-peron.clem@gmail.com>
 <20190525180923.6105-2-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525180923.6105-2-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_120234_113015_9CC820C7 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7548855197744700678=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7548855197744700678==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fixx4walej3237eu"
Content-Disposition: inline


--fixx4walej3237eu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2019 at 08:09:14PM +0200, Cl=E9ment P=E9ron wrote:
> Since Allwiner A31 all the SoC have a differente memory mapping.
>
> Introduce this bindings to make a difference since this generation.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Mentionning what those differences are would be great

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fixx4walej3237eu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOriuQAKCRDj7w1vZxhR
xTASAQD6Wi2ICXvIPJ05HniVnXyZB8cnILj79M1CnvRyCopIcgEA8GaT4uirtpjm
hqkVRx+GM4IfajVP24uTAnHe4TJuxgs=
=yeHd
-----END PGP SIGNATURE-----

--fixx4walej3237eu--


--===============7548855197744700678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7548855197744700678==--

