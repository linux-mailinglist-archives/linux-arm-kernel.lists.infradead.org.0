Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E701A1717DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LXbIP2CaTmrfYn0TjjY57wmT34jejH0jG1Weumvq2g4=; b=L94z95aiYXcMKz4XEKxjZbz1N
	MJx9iBj85yGCmCURhJccC6H0JbHnitcHob7jjgwMwVmX3iNEO8oLulHy935LmCwOGCpo+6Tt0mlYB
	i56qIQbP+FWizXUWUr8EPrT0B5zclgQ1ZWizS7eqsGBInEI7ocq4SCfaeGPR77I5X9+90xWbbNVDV
	eefKTqHQU0KcJGXoDsWP0T2a6SQgBPE1uI1/Xo+ZPDf7tlEo03YqKeeDi31NzrVWrsLFCXF45tzbn
	0nMTBGxad9SH4NAn4ZALpRDYHGRSycHxIG5BbuhYOHOvQ0dhfeqklO0m7i0eUgz+uZ9GKqfv4QSrz
	cV3UTJJ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IfR-0003I8-8J; Thu, 27 Feb 2020 12:53:29 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IfL-0003Ho-BS
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:53:25 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id C87BA7B64;
 Thu, 27 Feb 2020 07:53:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 27 Feb 2020 07:53:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=dg1VFIcvLaP5nEziGd8HsDrRTUd
 L8mTlPmPl1XUFXJE=; b=uG/klM/BtKxPTmdRNYbM/h0HAUCJyd6uIETqfqLgc0h
 TjAvIbSzalBF5heUpNpFRY7LAOV9HNkBg3OF1nQtSBJ7Vely0EfRvxhrdMtR4bH8
 5LU6GPiyVr5hEywDLSYcy9Vfj4Fn30239rXRhcI0ICFiN3/le+GNe1sQVgSz4V1q
 RI6uFABUdqDV2K+ZzFK7T90M2JOrZFBhDY90qckU6HsgAYTVZTLdsk011FgJRE4z
 YTQu3O/cnjcZC9pxTAWhrqvTCKZq1za6LATLV2GMngczFkXKmsi2BgxarR/KY0uV
 dB77vZ/e3ieYcfOUTc3EgjqG1llXe51VQaEVpQ71LfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=dg1VFI
 cvLaP5nEziGd8HsDrRTUdL8mTlPmPl1XUFXJE=; b=rgxzXkga6Vz/q8ibvePdKE
 Q1LaW0dAHbPN75tiF5KgNerBw+BQ7k2Nfituc90tSyPhT41a0MT7dqCgST/I2xFG
 yRJk3dgI4UngaI+fz6lmrQ9AtmM6N6pKydzrQ9gwmwKJAtI5iNB++FoYlh3k6AOC
 SoJ70Wm28m57V8nnonWCsBMP5YNL2tJIWgKYqQ2Qzx6cz7xNNQIwyCnOXGOh0gHR
 qTEB++5skRk8GVWg+qFArs49ztDOPr7C1kNEo+Ky/dGyxiUcOfiPDaeXYbi56eSE
 Lr/6ULMfdoZP2lbLl8AgwvVhbMLRNOZaUfqMfby2S4DwU3VbY2JnjqOLMnZ5bsOQ
 ==
X-ME-Sender: <xms:u7tXXhPmXN-3uOFEGLxT6i8bviXJjba7XPp3Mqomr2-86hzBb-AUtg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeigdegiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:u7tXXtR3tAhbApasVu6ORLm8rRDds7FKoh144uLnSOYnDxc5SOvyng>
 <xmx:u7tXXnhMZY6frqiLbiRBaCfP18PdiQcpyTen05GZux-_yHq6iPBEeA>
 <xmx:u7tXXu99pcF2nr3Ck4I57eEN8zxtgjvOYl-JVYm9mq7QJhHU59iPGQ>
 <xmx:wLtXXutVnkivB2V07VUGn2mpjvFovmqwJdRDEr8gpuWWZVSbI_UXMg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 880793280059;
 Thu, 27 Feb 2020 07:53:15 -0500 (EST)
Date: Thu, 27 Feb 2020 13:53:13 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 6/6] arm64: allwinner: a64: enable LCD-related
 hardware for Pinebook
Message-ID: <20200227125313.lvgflcik4ra26m2r@gilmour.lan>
References: <20200226081011.1347245-1-anarsoul@gmail.com>
 <20200226081011.1347245-7-anarsoul@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200226081011.1347245-7-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_045323_783071_1DED1883 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
 Jonas Karlman <jonas@kwiboo.se>, Torsten Duwe <duwe@suse.de>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============8821299886152210426=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8821299886152210426==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3bq54ytukgsvs3eu"
Content-Disposition: inline


--3bq54ytukgsvs3eu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 26, 2020 at 12:10:11AM -0800, Vasily Khoruzhick wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
>
> Pinebook has an ANX6345 bridge connected to the RGB666 LCD output and
> eDP panel input. The bridge is controlled via I2C that's connected to
> R_I2C bus.
>
> Enable all this hardware in device tree.
>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>

Applied the 6 patches, thanks!
Maxime

--3bq54ytukgsvs3eu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXle7uQAKCRDj7w1vZxhR
xaczAPoC3ALs6FJiOTdBAkkgLMLeU5xSuyL54sh1Q4tkALRViwEA+VH+kLki+xAR
3WxVIhBlXQvrAtrSbtL5C0Md5xmCsQo=
=WsJg
-----END PGP SIGNATURE-----

--3bq54ytukgsvs3eu--


--===============8821299886152210426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8821299886152210426==--

