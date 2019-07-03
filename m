Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E46D5E580
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W2isBvtpEcR1nej+S+oDSHAvVpjlbNDNqk785b4i86U=; b=fave3Yt7xzSDjIH7iTGDqNUnm
	Kf9442HBOmHVZIOJB5zgiPH0NosmC7dc7yrSfnVBrIe4AYM70kCg5Lgmm8urMRU6EPgX7lmNc6Ai9
	N5wzwKuWVBVEGHdY0UlnhZAn11mhYaSzHsF7+589zxl3M0/YXbFl2Ywt+jSUHGw6yUnj5f+x95AIp
	2ychZDPugnh9EdEfpmoIh28MVuDU/esahj6+hw+msqFice2UuMigl+SMRgIf8f7mAk7jT52kpd9Wx
	K0fDGWmYzKppgNrsegJKDR01qOXhutkBbq32D5LjTaIUh7WEQ0gsDdKNa+5zvrDZSNJ0vFmVPVtaq
	IRYoAPiLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hifJl-0003zD-LI; Wed, 03 Jul 2019 13:29:01 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hifJa-0003yW-Iz
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:28:52 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 5F228100015;
 Wed,  3 Jul 2019 13:28:39 +0000 (UTC)
Date: Wed, 3 Jul 2019 15:28:38 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 01/25] arm64: dts: allwinner: Switch A64 dts(i) to use
 SPDX identifier
Message-ID: <20190703132838.nhewz5wzsijl65s5@flea>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
 <20190703124609.21435-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20190703124609.21435-2-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_062850_937821_05723C96 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3334370794309568296=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3334370794309568296==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ai23iijsoaamk652"
Content-Disposition: inline


--ai23iijsoaamk652
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 03, 2019 at 06:15:45PM +0530, Jagan Teki wrote:
> Adopt the SPDX license identifier headers to ease license
> compliance management on Allwinner A64 dts(i) files.
>
> While the text specifies "of the GPL or the X11 license"
> but the actual license text matches the MIT license as
> specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 39 +------------------
>  .../dts/allwinner/sun50i-a64-nanopi-a64.dts   | 39 +------------------
>  .../dts/allwinner/sun50i-a64-olinuxino.dts    | 39 +------------------
>  .../dts/allwinner/sun50i-a64-orangepi-win.dts | 39 +------------------
>  .../dts/allwinner/sun50i-a64-pine64-plus.dts  | 39 +------------------
>  .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 39 +------------------
>  .../allwinner/sun50i-a64-sopine-baseboard.dts | 39 +------------------
>  .../boot/dts/allwinner/sun50i-a64-sopine.dtsi | 39 +------------------
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 39 +------------------
>  9 files changed, 9 insertions(+), 342 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> index 208373efee49..efdd84c362b0 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)

You say that this is a GPL2 only license

>  /*
>   * Copyright (c) 2016 ARM Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This library is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.

While this is GPL2 or later.

Also, I'm not sure why we need 25 patches to do that. Can't you just
send one (there's no even need to separate arm and arm64, since we
will do only a single PR from now as opposed to what we were doing
before).

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ai23iijsoaamk652
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRythgAKCRDj7w1vZxhR
xZUpAQCUowhwV64YaNa72m5XwoQd0CDApNJEPfLdaY1WQi3yBwEAlNG7pyZFSYLA
mm/nwHBZk3qbI6FkIAe7oqcMDaVNvQA=
=pMuf
-----END PGP SIGNATURE-----

--ai23iijsoaamk652--


--===============3334370794309568296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3334370794309568296==--

