Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB94412E579
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 12:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7EQXRJ1po6FEMfdrBGWnoUYKs4QfJBXbfweRX6iGhis=; b=Ef9zuWiJCzaZoxCLXtMxyCBWd
	gXYA85PkUaCUFu6wHyqNM9FHW0emdNzAnMEXtQLE435Qr7eIlpDhVRrOUwTIzfYVYzcBx5ZuyGxUU
	JM2u2ApSivHmEAtL93O2mZCGaXeBPOrF0ek2keY6sXS0RCIxr5bgy+imhWex9LQotFcyKQTAtG8ov
	QPm0+GNqaYsQH7VolcyKAYGvzpEM4egkPhFvPSJmDHF5rX45bKjJgHlMOC5dvNyxZtPcf0hc7TUuw
	HnZU9zl/CqTsJQo057DEd4rBblnJb2nE+QG1bgvA0YkazEZyrAZOyMLi910H8pxBo6hXrwi3Mc6gd
	WfKVrE6bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imyGn-0004M6-BH; Thu, 02 Jan 2020 11:04:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imyGc-0004LO-Rt
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 11:03:53 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 140F2215A4;
 Thu,  2 Jan 2020 11:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577963030;
 bh=lyuQwYk6duK7MRRoZwouWCgWYszfADDHUK+QRJ9MmW0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B9F7Onm8xocF2Q+5nqgcr+BNQIIsFDSMp1mLSNtnpHRUwDXcAn0vdgfxYhKm9z2aY
 LENy+LulhaOZmhM+KRmCYsGpCyY12E6fxwnNKZ78vnSe7EktsiTP5xBhmAKaBztR42
 hAgg9HmVyHQRWAAxwZJ7gJsuBzYGpjHKPq0m3JlI=
Date: Thu, 2 Jan 2020 12:03:47 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 6/9] dt-bindings: sun6i-dsi: Add R40 DPHY compatible
 (w/ A31 fallback)
Message-ID: <20200102110347.v7lsnmmsbp66r3ia@gilmour.lan>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-7-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191231130528.20669-7-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_030350_923116_50D41A13 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3454597305049239946=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3454597305049239946==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5qm5gfldbu2p5gzt"
Content-Disposition: inline


--5qm5gfldbu2p5gzt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 31, 2019 at 06:35:25PM +0530, Jagan Teki wrote:
> The MIPI DSI PHY controller on Allwinner R40 is similar
> on the one on A31.
>
> Add R40 compatible and append A31 compatible as fallback.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - update the binding in new yaml format
>
>  .../devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml   | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> index 8841938050b2..0c283fe79402 100644
> --- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
> @@ -18,6 +18,7 @@ properties:
>      oneOf:
>        - const: allwinner,sun6i-a31-mipi-dphy
>        - items:
> +          - const: allwinner,sun8i-r40-mipi-dphy
>            - const: allwinner,sun50i-a64-mipi-dphy
>            - const: allwinner,sun6i-a31-mipi-dphy

This isn't doing what you say it does.

Here you're stating that there's two valid values, one that is a
single element allwinner,sun6i-a31-mipi-dphy, and another which is a
list of three elements allwinner,sun8i-r40-mipi-dphy,
allwinner,sun50i-a64-mipi-dphy and allwinner,sun6i-a31-mipi-dphy, in
that order.

Did you run make dtbs_check and dt_bindings_check?

Maxime

--5qm5gfldbu2p5gzt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg3OEwAKCRDj7w1vZxhR
xYg8AQD+cQIazIyZ31zNcUjJMQLtkQ/R7hrnYDW+zDPmikoO1gEAjLRGNbqfmTOI
GKoV946i+sXeig/aykX9B6o8FpF0cg0=
=rFQC
-----END PGP SIGNATURE-----

--5qm5gfldbu2p5gzt--


--===============3454597305049239946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3454597305049239946==--

