Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43E12FBC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 14:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuWQbOwPhJKvYD2g4peuAum0aUgZ31wiTXIX0Klgeek=; b=B4Y90jRuwRwhTu
	GMXy8Y5aOu5ajbgrQiesq3A159GJ2Lcn8aVyEW6AkBmOHSfY3RyzADAi+UkkhyAfXYp4aZ4zrDbpQ
	GsOsoxuP7FaovYuPzQdeA0JxnQYXZ8EHHkEf++ujrdub/280yI1sXvEgn5N3Q0NeoR/6pXnN3hF0L
	DXhbNkTEBGkoeiT+ipV5/FZzcdYimi0OkjHKX1Ned6XmM9IeUlTs4ZnQfskmiOD6bFjuNtt7bzO9y
	i2hdiLvAkDCRPlKF9C5AiQLFkFW2w9acGbL7a2hhfsXOMyDjGwzUEFVudlgt4RoOFN1wyDmsK6WXr
	NPxBxLkAvjHptTXqN9qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWKaa-0001vV-Gw; Thu, 30 May 2019 12:55:24 +0000
Received: from gofer.mess.org ([88.97.38.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWKaT-0001uF-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 12:55:19 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id B91936031C; Thu, 30 May 2019 13:55:06 +0100 (BST)
Date: Thu, 30 May 2019 13:55:06 +0100
From: Sean Young <sean@mess.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 00/12] Allwinner A64/H6 IR support
Message-ID: <20190530125506.xnnk7tvruxnhqh6a@gofer.mess.org>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_055517_660896_FF107CFF 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 06:14:28PM +0200, Cl=E9ment P=E9ron wrote:
> Hi,
> =

> A64 IR support series[1] pointed out that an A31 bindings should be
> introduced.
> =

> This series introduce the A31 compatible bindings, then switch it on
> the already existing board.
> =

> Finally introduce A64 and H6 support.
> =

> I didn't enable the IR on other H6 boards as Ondrej reported an issue
> on his board[2].

For the whole series:

Acked-by: Sean Young <sean@mess.org>

> =

> Regards,
> Cl=E9ment
> =

> [1] https://lore.kernel.org/patchwork/patch/1031390/#1221464
> [2] https://lkml.org/lkml/2019/5/27/321
> =

> Changes since v2:
>  - Disable IR for other H6 boards
>  - Split DTS patch for H3/H5
>  - Introduce IR quirks
> =

> Changes since v1:
>  - Document reset lines as required since A31
>  - Explain the memory mapping difference in commit log
>  - Fix misspelling "Allwiner" to "Allwinner"
> =

> Cl=E9ment P=E9ron (10):
>   dt-bindings: media: sunxi-ir: add A31 compatible
>   media: rc: Introduce sunxi_ir_quirks
>   media: rc: sunxi: Add A31 compatible
>   ARM: dts: sunxi: Prefer A31 bindings for IR
>   ARM: dts: sunxi: Prefer A31 bindings for IR
>   dt-bindings: media: sunxi-ir: Add A64 compatible
>   dt-bindings: media: sunxi-ir: Add H6 compatible
>   arm64: dts: allwinner: h6: Add IR receiver node
>   arm64: dts: allwinner: h6: Enable IR on Beelink GS1
>   arm64: defconfig: enable IR SUNXI option
> =

> Igors Makejevs (1):
>   arm64: dts: allwinner: a64: Add IR node
> =

> Jernej Skrabec (1):
>   arm64: dts: allwinner: a64: Enable IR on Orange Pi Win
> =

>  .../devicetree/bindings/media/sunxi-ir.txt    | 11 ++-
>  arch/arm/boot/dts/sun6i-a31.dtsi              |  2 +-
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |  2 +-
>  arch/arm/boot/dts/sun9i-a80.dtsi              |  2 +-
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |  2 +-
>  .../dts/allwinner/sun50i-a64-orangepi-win.dts |  4 ++
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 18 +++++
>  .../dts/allwinner/sun50i-h6-beelink-gs1.dts   |  4 ++
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 19 +++++
>  arch/arm64/configs/defconfig                  |  1 +
>  drivers/media/rc/sunxi-cir.c                  | 70 +++++++++++++++----
>  11 files changed, 115 insertions(+), 20 deletions(-)
> =

> -- =

> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
