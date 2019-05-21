Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929F425201
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xfRoQ5AAUlq+htBqEU+/WPNSICC1DqWiZobl38sc1E0=; b=fN7mxznADsEaZmIH/mZBIYpqw
	zGqXoeGOI85D3JcVQc1StihdHuDh3iVUj0QxVQU9NgIVWw69bZGDWluhBjOO2HII7lGxnYiUDksLK
	O6kbw+M9BmIH3ypnXrNZhf6xhSHKsg74kP1GUOe3F3mvMikZwW/iL4FYuiamMoM6rLbkxcR2Xj3uy
	1/ONJuMiAYuYhm5aAcgniH/USLiUeGxY9lLIN8E7EbY5TS0dYen0eTGyE7ClE+8puKSPmfsUrsily
	N1EcmSGxr0SBfUCTT6e/oHwseYuryPklMI72sI0EkmehD9DD1xPiB7+RaRc4vBAOroZxMrksZtljA
	8cmBsNqsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5mR-0000II-HO; Tue, 21 May 2019 14:30:15 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5mL-0000CG-Jl
 for linux-arm-kernel@bombadil.infradead.org; Tue, 21 May 2019 14:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C0kRhZ/Ylv4CF7Im4C381nFr8tSde4BJYjGdIOwTSfQ=; b=FNZi6xAdGvy99Q0HyI9nDpG0j
 wZgrfkOEA77onijY5RlsoHHPOx/6tzJWl7pLw7NvmxBUQ0JKxDULbg8PiiwMv2ox6j6IERu4QOUqM
 Vhr7Aiq5KJXGyJjrNA3BdytWUtdA8oiQzrS20BR+7wzyoz4Akfe+I/gnQazXBJVTFFc0Pznegwb2w
 UERb0QdAdKUuhpGKSoMmT1y7e5o7H407cPes/0IMx2s4KjMbnzoJDtQB4tzVquNlEdn5JYfhkFUqO
 vTlQe3zB9pO0G0dnsapXP7XmhVfP6G2Ja6fM2sUMvyn6QjWw7V6uR6VhpP1eJ7uFkzvN0HmxfM5Q7
 oVNhCdthA==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5mH-0004Tj-VG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:30:07 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4347A60003;
 Tue, 21 May 2019 14:29:26 +0000 (UTC)
Date: Tue, 21 May 2019 16:29:25 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 4/4] ARM: dts: sun6i: Add default address and size
 cells for SPI
Message-ID: <20190521142925.bryspvr7gtits5yl@flea>
References: <f53ee257855c6499fd783dc8665558f7670312f6.1558363790.git-series.maxime.ripard@bootlin.com>
 <622e3d2ece14e5b84a7975026bb1a981228ee3ab.1558363790.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <622e3d2ece14e5b84a7975026bb1a981228ee3ab.1558363790.git-series.maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_103006_114661_DEE7F09E 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1690917841433595883=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1690917841433595883==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hidp36y4x4lmbvra"
Content-Disposition: inline


--hidp36y4x4lmbvra
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 20, 2019 at 04:50:36PM +0200, Maxime Ripard wrote:
> The SPI controller bindings require an address cell size of 1, and a size
> cell size of 0. Let's put it at the DTSI level to make sure that's properly
> enforced.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied for 5.3

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--hidp36y4x4lmbvra
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOQLRQAKCRDj7w1vZxhR
xa4tAP90agmm4bwpSelFojJE/k2pi16ny4VH2dp4uVgB35fCdAD/WErlps7dg9uQ
517cMenZoCTA7hr+o7V2P9I/TKr9cQs=
=7tJA
-----END PGP SIGNATURE-----

--hidp36y4x4lmbvra--


--===============1690917841433595883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1690917841433595883==--

