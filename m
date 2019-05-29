Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EE12DB76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 13:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+USYR6/1D1YBVZlr7bw7nnwM02qTU5ebByksg9RxIXo=; b=oxGEv4czRU6+CN+iAeIexNb8g
	lx95EFU9Eh99U65mGrAO2MqHI+EEKnA9cSAqxS/b4jXh81ZWZj3qqeiRCDUOGwWf/5ETZd1xlmb19
	HTa7SRvD3TCkAwKnPeX1XsKm7M44DNh3uffiHT7Pfe2DAJXZO3Ja/h45V5h1LTOFjGuDaGS+tBiUJ
	sxUFCRzXdGczv5o3xl3avRGyyH5t7D7z3dL8jUjxovPcc4F93Z6WsR8Tt3rfjm41LvyvbMtdrc92J
	86hvBwXSq95uoR/umkv+k5liPhtGIe+EbTFBcgZvNCFLYCFPZqI5q4I6TGaRRKYoBLbR1P5JKSS4f
	1XQmXxmYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwVx-0003ei-TA; Wed, 29 May 2019 11:13:01 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwVp-0003cs-Vv
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 11:12:55 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 26487C000B;
 Wed, 29 May 2019 11:12:37 +0000 (UTC)
Date: Wed, 29 May 2019 13:12:36 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: megous@megous.com
Subject: Re: [PATCH v2 3/3] ARM: dts: sun8i: a83t: Add device node for CSI
 (Camera Sensor Interface)
Message-ID: <20190529111236.gnk4bics5xrfxyql@flea>
References: <20190520150637.23557-1-megous@megous.com>
 <20190520150637.23557-4-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20190520150637.23557-4-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_041254_178329_B0EA27F9 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2289689092296441685=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2289689092296441685==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zlv4nldcdeunkux4"
Content-Disposition: inline


--zlv4nldcdeunkux4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 20, 2019 at 05:06:37PM +0200, megous@megous.com wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The A83T SoC has a camera sensor interface (known as CSI in Allwinner
> lingo), which is similar to the one found on the A64 and H3. The only
> difference seems to be that support of MIPI CSI through a connected
> MIPI CSI-2 bridge.
>
> Add a device node for it, and pinctrl nodes for the commonly used MCLK
> and 8-bit parallel interface. The property /omit-if-no-ref/ is added to
> the pinctrl nodes to keep the device tree blob size down if they are
> unused.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Applied, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zlv4nldcdeunkux4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO5pJAAKCRDj7w1vZxhR
xfugAP9uM3nhnPYa61YOa1J7hJC/ogaqkG64ngXh7+5a0atLJgEAiFczeAYSxJpM
w49Kak6GmlRewxlL2aBTHVZryI9C5gA=
=G/QN
-----END PGP SIGNATURE-----

--zlv4nldcdeunkux4--


--===============2289689092296441685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2289689092296441685==--

