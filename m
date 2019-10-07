Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5A8CE111
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 13:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0Gq6b9b9Zz1aPI3C916RTstWqjKGpt+EweVJOdBwVZ0=; b=ZoxdpVfLSRAab+42Qll0dHWY6
	zl6jhRuyjGhaPfFFBgB4uhKYvqs6z3nE37qMdnszn20xRam3/gex/HY9TOL2mN/454sfU6e4z5NGs
	VMOuTBDJXcnDhbWGU00/ZORdrtt3RN4wKXEQFnj4j15kk5GD2YOu7lFEhz1XiYyJQ4zOqKZx0IKES
	knoGKcAw6ckXz1uaZroY5t8FhJ+TidFOIgkg/fTIoxuVQQZc3ouaw66ylKPckrltn3xh4bACB3FI0
	4/nVXrRmrhngfHEsi5l7LAzBO3xSyrnAP9vZBLVRkdmBRjttU+mkPZzssGBAyab+p1heQWjjNWpQ6
	ieKNvh9iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRgA-000132-8f; Mon, 07 Oct 2019 11:59:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRg0-00012h-It
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 11:59:45 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B148D206C0;
 Mon,  7 Oct 2019 11:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570449584;
 bh=5jiwPkl3ecC5PC4thXvIU8gFWAfwR8hG/EemIoCj5g4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=00DN5m1u+OpR2j7HvOfVHqIseRTMp9+SH7IzGzNwUnxPEVT1j+E0xUjCc5l7eTm7x
 Gx7frdd95PSPb2j45D5gFNFQqa77rhHn7lLb+ZDGyQExfG7w0YS/+y41odBO4dEx2l
 GW59SWBe2FL9LX3l+322/QB8nvCEiuq5VgO6q9bM=
Date: Mon, 7 Oct 2019 13:59:41 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 2/3] drm/sun4i: dsi: fix the overhead of the
 horizontal front porch
Message-ID: <20191007115941.psgcn4dl5r5wz7eb@gilmour>
References: <20191006160303.24413-1-icenowy@aosc.io>
 <20191006160303.24413-3-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20191006160303.24413-3-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_045944_639497_CDCDE0CA 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4443430611719547731=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4443430611719547731==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5vfde45ofwoem3io"
Content-Disposition: inline


--5vfde45ofwoem3io
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 07, 2019 at 12:03:01AM +0800, Icenowy Zheng wrote:
> The formula in the BSP kernel indicates that a 16-byte overhead is used
> when sending the HFP. However, this value is currently set to 6 in the
> sun6i_mipi_dsi driver, which makes some panels flashing.
>
> Fix this overhead value.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>

Applied, thanks

Maxime

--5vfde45ofwoem3io
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZsorQAKCRDj7w1vZxhR
xcP8AP47n6BFMYH1VcgTqWrgGo5/vrIabj3UlEvNbcGcQXgpgQD9GkwZ/EbXI2Dp
TngzLKib/Ovm7hiqxQLsL6DKkKWGGw0=
=25Nh
-----END PGP SIGNATURE-----

--5vfde45ofwoem3io--


--===============4443430611719547731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4443430611719547731==--

