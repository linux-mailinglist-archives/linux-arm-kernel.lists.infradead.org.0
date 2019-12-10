Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CD61183C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:39:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PngGLutHpCcnl52l0hJB5j2ojwMSqyU8pRJJjByuB88=; b=O2QiyEtSDnbUsV
	UqmbDdbSkqhJz2vZKxIe42mvZW4mQ9lPEhjhWjX52rY6trpNLjEJPTDY0HLJpl0ih3usZ9wC5eUei
	V4zZ7Y3Fb+DIQgCdNYa1sZxeKZBE+Z0So17guVI6yHSpePdi1tq3ciP6zhla8gba3N/GHjgHHK2xK
	EhkS22oLBsRHL9d9xhLaEdOeD8LCOMtGb3uKfsbrNjqm/BJfkPU7mYHUT/7N/bCee1a+aoekvkA+A
	OH/K+AdUrByFnnZGZueiV+W3+K1lVhSsx2HgA7VeawclwL3rD0VTfMkdsnzOmnJ0o99vjzFrpwr3z
	uzuCqVZ8ckG44PB3hdmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebyq-0007m1-TA; Tue, 10 Dec 2019 09:38:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebyh-0007lU-4a
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:38:48 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4C8420663;
 Tue, 10 Dec 2019 09:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575970726;
 bh=x8aJSKAR2dIcqW/3ygcQgBy7sFiK4/Pal+Rxa3TK9bs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G2wZbUfdFX5wnoE/mSAwvP5ItTCOw02h6V/j2Gvd9/c8HLEU97Tsgd2+g7rQjFO2G
 JalyFsWwXq63jgAWnCu23skt6W7K1HVeyXNiBWfQ7jkmrMfjq82r7XnlWn4mZiMCuA
 Cy5tHjk+7PtkNt/w35f+OckD5so4qhG66KVaBaBo=
Date: Tue, 10 Dec 2019 10:38:43 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: allwinner: Convert license to SPDX
 identifier
Message-ID: <20191210093843.qoypomttr4b7kbep@gilmour.lan>
References: <20191209182024.20509-1-peron.clem@gmail.com>
 <20191209182024.20509-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209182024.20509-2-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_013847_219747_F1E10A4D 
X-CRM114-Status: GOOD (  24.48  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cl=E9ment,

On Mon, Dec 09, 2019 at 07:20:23PM +0100, Cl=E9ment P=E9ron wrote:
> Use a shorter SPDX identifier instead of pasting the
> whole license.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/axp803.dtsi     | 39 +------------------
>  .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 39 +------------------
>  .../dts/allwinner/sun50i-a64-nanopi-a64.dts   | 39 +------------------
>  .../dts/allwinner/sun50i-a64-olinuxino.dts    | 39 +------------------
>  .../dts/allwinner/sun50i-a64-orangepi-win.dts | 39 +------------------
>  .../dts/allwinner/sun50i-a64-pine64-plus.dts  | 39 +------------------
>  .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 39 +------------------
>  .../allwinner/sun50i-a64-sopine-baseboard.dts | 39 +------------------
>  .../boot/dts/allwinner/sun50i-a64-sopine.dtsi | 39 +------------------
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 39 +------------------
>  .../allwinner/sun50i-h5-nanopi-neo-plus2.dts  | 39 +------------------
>  .../dts/allwinner/sun50i-h5-nanopi-neo2.dts   | 39 +------------------
>  .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 39 +------------------
>  .../allwinner/sun50i-h5-orangepi-prime.dts    | 39 +------------------
>  .../sun50i-h5-orangepi-zero-plus2.dts         | 39 +------------------
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  | 39 +------------------
>  16 files changed, 16 insertions(+), 608 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/axp803.dtsi b/arch/arm64/boot/=
dts/allwinner/axp803.dtsi
> index f0349ef4bfdd..0e13e75132ac 100644
> --- a/arch/arm64/boot/dts/allwinner/axp803.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/axp803.dtsi
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
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

Thanks for sending a new iteration of this. I had a look at the
licenses texts associated to the SPDX tag in the LICENSES folder, and
it turns out that the tag we should be using for that text is
MIT. While we mention X11 in the header, the text associated to the
X11 license isn't the one we have in our headers.

I guess we should make very clear in the commit log that even though
the tag now reports MIT, this maps to the same license text and is not
therefore a license change.

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
