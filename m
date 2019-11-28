Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C452210CE06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 18:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGfKfQnuTff0zhqCA7r1cUq1LLoaFb+yUI9FUowQaKw=; b=mMFxXSrqB5+EUq
	iIn1E63lVopDy9xtE7pqBHWonMgQ9HHaaV7Ls7sEU3q05ZotRpVLPoRko9yN3OkJEo0cA1SB+flvc
	4yGYqe2DeiUl2NPuN0cK58RKpC09PtY/C2yWK6DK3eiKaAtz2ISd/GRf69ipNTWg+ftTR5/Ez9PB6
	wqkTJZDcrnWr7NxLk7/zWqON60tTTgdudyY9X9Mcv9ZMJV8bexfzNPFDb7E8gqjRX+H8I4D/B31jo
	qipIbZUm3GuZjfOtNi34whWTKu8vabfRLKV+02I2/gOtPsjUkudUF+qPX+zqt4iAXE9+77kYKDMV8
	Khpd2M5jBcbg3+OFwThw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNo3-0002yh-7a; Thu, 28 Nov 2019 17:42:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNns-0002y5-7H
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 17:42:09 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA4E1215F1;
 Thu, 28 Nov 2019 17:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574962927;
 bh=9XOdisxYU3SrPU4GTgh1Xcg39OSoWI0brVkbHYt0uCo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rotXDPKjiszwD1t/stqextUsMNyUQ83V1CEk4KFIbCIv9yGz52CBNmEPznFrB6iTx
 R7nBRy0p81KEFn2yEdit0Epi7qofVxZ7Uu3FmsKMQviNneFnRF6NT1oRz63HB8Qz2a
 u+p80433ZXTW47e8sBsLcTqlkyMcRqXxMkkqnWDA=
Date: Thu, 28 Nov 2019 18:42:04 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Convert to new-style SPDX license
 identifiers
Message-ID: <20191128174204.tbr5ldilkadw42gc@gilmour.lan>
References: <20191123132435.22093-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123132435.22093-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_094208_302977_81153FF0 
X-CRM114-Status: GOOD (  28.73  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Clement,

Sorry for the pretty slow answer

On Sat, Nov 23, 2019 at 02:24:35PM +0100, Cl=E9ment P=E9ron wrote:
> Move the SPDX-License-Identifier lines to the top and drop the
> license splat.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>
> Hi,
>
> This the same logic that what has be done on Amlogic.
>
> Commit: ARM64: dts: amlogic: Convert to new-style SPDX license identifiers
> https://lore.kernel.org/patchwork/patch/890455/

So there's a bunch of different things that should be addressed in
separate patches here I believe.

>  arch/arm64/boot/dts/allwinner/axp803.dtsi     | 39 +----------------
>  .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 39 +----------------
>  .../dts/allwinner/sun50i-a64-nanopi-a64.dts   | 39 +----------------
>  .../dts/allwinner/sun50i-a64-olinuxino.dts    | 39 +----------------
>  .../dts/allwinner/sun50i-a64-orangepi-win.dts | 39 +----------------
>  .../dts/allwinner/sun50i-a64-pine64-lts.dts   |  3 +-
>  .../dts/allwinner/sun50i-a64-pine64-plus.dts  | 39 +----------------
>  .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 39 +----------------
>  .../dts/allwinner/sun50i-a64-pinebook.dts     |  1 -
>  .../allwinner/sun50i-a64-sopine-baseboard.dts | 42 +------------------
>  .../boot/dts/allwinner/sun50i-a64-sopine.dtsi | 42 +------------------
>  .../boot/dts/allwinner/sun50i-a64-teres-i.dts |  3 +-
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 39 +----------------
>  .../sun50i-h5-bananapi-m2-plus-v1.2.dts       |  4 +-
>  .../allwinner/sun50i-h5-bananapi-m2-plus.dts  |  4 +-
>  .../allwinner/sun50i-h5-nanopi-neo-plus2.dts  | 39 +----------------
>  .../dts/allwinner/sun50i-h5-nanopi-neo2.dts   | 39 +----------------
>  .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 39 +----------------
>  .../allwinner/sun50i-h5-orangepi-prime.dts    | 42 +------------------
>  .../sun50i-h5-orangepi-zero-plus.dts          |  3 +-
>  .../sun50i-h5-orangepi-zero-plus2.dts         | 39 +----------------
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  | 39 +----------------
>  .../dts/allwinner/sun50i-h6-beelink-gs1.dts   |  2 +-
>  .../dts/allwinner/sun50i-h6-orangepi-3.dts    |  2 +-
>  .../allwinner/sun50i-h6-orangepi-lite2.dts    |  2 +-
>  .../allwinner/sun50i-h6-orangepi-one-plus.dts |  2 +-
>  .../dts/allwinner/sun50i-h6-orangepi.dtsi     |  2 +-
>  .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  2 +-
>  .../dts/allwinner/sun50i-h6-tanix-tx6.dts     |  2 +-
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  2 +-
>  30 files changed, 33 insertions(+), 634 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/axp803.dtsi b/arch/arm64/boot/=
dts/allwinner/axp803.dtsi
> index f0349ef4bfdd..f4f2c70fde5c 100644
> --- a/arch/arm64/boot/dts/allwinner/axp803.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/axp803.dtsi
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  /*
>   * Copyright 2017 Icenowy Zheng <icenowy@aosc.xyz>
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
>   */

So this is the first, obvious, one that you talk about in your commit
log. While the license says that it's X11, SPDX reports that it's now
MIT, can you clarify this?

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/ar=
ch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> index 72d6961dc312..2ca36580436c 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> @@ -1,6 +1,5 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  /*
> - * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> - *
>   * Copyright (c) 2018 ARM Ltd.
>   */

This is another kind of changes though. The SPDX identifier is there,
but under the wrong format and you're fixing it.

That being said, I'm not a super fan of mixing the two comment styles
for two lines.

What about using only // style comments for the header?

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-bananapi-m2-plus-v1.=
2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-bananapi-m2-plus-v1.2.dts
> index 2e2b14c0ae75..a61d58c4db24 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-bananapi-m2-plus-v1.2.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-bananapi-m2-plus-v1.2.dts
> @@ -1,5 +1,7 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> -// Copyright (C) 2018 Chen-Yu Tsai <wens@csie.org>
> +/*
> + * Copyright (C) 2018 Chen-Yu Tsai <wens@csie.org>
> + */

Here you change the comment style. And based on the comment above that
wouldn't be necessary.

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts b/ar=
ch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> index f335f7482a73..84b7e9936300 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  /*
>   * Copyright (C) 2019 Cl=E9ment P=E9ron <peron.clem@gmail.com>
>   */

And I'm not sure what this one (and the next) is?

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
