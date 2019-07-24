Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6095F72A10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vbc6WCBsw6eZgb18ItycddoZW/jZIUbW7JkOZgzfK0I=; b=YbJwGMQPbOdfzc8kdXYzmsj6b
	CV56iPL2L/rf7cbT3u9EevgQphWLqAGdJ69gaLgQ8ibWH5apTtYYqT0K6+utIAV9mYsweR9avcE6W
	JnWaghPUHcbtlxy1pArBvwvFbI6S+/qRgZwjYdpXnR7D/rKIC+5axoNXDJylgblg6OHfMrwvQFF5F
	kga1tbx6/eAVcgd+LJFBUq12+tEvvQRmUe39ZyiAmwj6upq9bAxDUKbf7eS7CCQ0mPwLGtjwv6mAt
	d7JWhhYQvAu2mhRgJJ1gefhIWGnXiPSn3KULKkduY0WLGwdKQkQSDNUJhVpliyFmRuAHOFO5sh9w4
	jYe3qFKNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCc2-0000r0-Ok; Wed, 24 Jul 2019 08:27:02 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCbo-0000q3-Tk
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:26:50 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 1F660FF818;
 Wed, 24 Jul 2019 08:26:41 +0000 (UTC)
Date: Wed, 24 Jul 2019 10:26:40 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: clk: allwinner,sun4i-a10-ccu: Correct path
 in $id
Message-ID: <20190724082640.kbatvyod7fomtjjb@flea>
References: <20190723230843.19922-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190723230843.19922-1-robh@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_012649_116943_E7D5397B 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1644222350467457932=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1644222350467457932==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k6js6jw2qocctjxy"
Content-Disposition: inline


--k6js6jw2qocctjxy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 23, 2019 at 05:08:43PM -0600, Rob Herring wrote:
> The path in the schema '$id' value is wrong. Fix it.
>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> I can take this via the DT tree.

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--k6js6jw2qocctjxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTgWQAAKCRDj7w1vZxhR
xU0HAPwM3SDx3ldBvoCozBAZ1NumH/ldcZOZQoJtTthE2ZQvmAEAqfa1zInByXpy
SnIuXS+wwroOPUQduzdYTLxHczD18gE=
=PFP8
-----END PGP SIGNATURE-----

--k6js6jw2qocctjxy--


--===============1644222350467457932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1644222350467457932==--

