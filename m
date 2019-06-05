Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EBA35C0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GR6hggQp99Zchzi+Mr3N5xY5Bvm8AxuyCK6HffBBj6Q=; b=T5xjHtTx1Lmc0cHDwmZFXk9Av
	qAFhcv2BF7imTjlfY2QYLJOF9aV0P9tkZL3FwnacEKxCfykM3OfsG6kQk/uzP2tlVZ5/xNJAdPhkW
	6JFqV7WssyuI0EVd4m0bVWWadiHtziRmGyNGwMWtBAmoWZW426PgfIW8WFzw/O3X5LNTn1QXNq8gy
	flDtX7MeC7zc5YbqtpkB5MEQbJP+atm/Lcja59L3sGjAfgzjnx+Ftvjh3iduB+m29GRItNrMh/qC3
	aO5ycLpGahR63xYJuXBuc/TI2UI1lLStrUh0ij8r9ztTSDyRRS+RFbA+P06Eh1YBU+/6ZBXwYql3r
	gEtajbmrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUQm-00040R-1E; Wed, 05 Jun 2019 11:50:12 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUQe-0002tI-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:50:06 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 80F091BF203;
 Wed,  5 Jun 2019 11:49:48 +0000 (UTC)
Date: Wed, 5 Jun 2019 13:49:48 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: megous@megous.com
Subject: Re: [PATCH v2] clk: sunxi-ng: sun50i-h6-r: Fix incorrect W1 clock
 gate register
Message-ID: <20190605114948.a4m7g5zwdr23qgth@flea>
References: <20190604154036.23211-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20190604154036.23211-1-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_045004_554035_7764B297 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6421625118076162880=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6421625118076162880==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4kypn3dccdwbnuyz"
Content-Disposition: inline


--4kypn3dccdwbnuyz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 04, 2019 at 05:40:36PM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> The current code defines W1 clock gate to be at 0x1cc, overlaying it
> with the IR gate.
>
> Clock gate for r-apb1-w1 is at 0x1ec. This fixes issues with IR receiver
> causing interrupt floods on H6 (because interrupt flags can't be cleared,
> due to IR module's bus being disabled).
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Fixes: b7c7b05065aa77ae ("clk: sunxi-ng: add support for H6 PRCM CCU")

Applied, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--4kypn3dccdwbnuyz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPesXAAKCRDj7w1vZxhR
xS0aAQDbqtubHM34CsRCm1ZafQXbbm/Co2Y9BfB0fqhizBC8EgD/ZVKxdfqHoRKr
cdCJa+8u/cSpVJrFqhwWKTQ01004pwA=
=OHOD
-----END PGP SIGNATURE-----

--4kypn3dccdwbnuyz--


--===============6421625118076162880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6421625118076162880==--

