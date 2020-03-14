Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571CF1855E3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 16:09:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4kqDa8hxUMhPuX0+Wq2DjZbqXz5lJf0BYB6jLd3SyQ=; b=Z+hGIzNwx4GkJR
	7E8lA2eq0q/QI9wjxdpK86Lzuj8mjuaR7LwkjkMZDjU8uRfvckj8N4VjoMJnJBsxGmg8yo1TNA9Rf
	qOsNz1o2QKZCRsSlA+LymR3tbcdM5Hrzpo1UbN8Y2fSLSApSsBazNXzXZtnmbJ6ocFxyxYH3MU8tu
	Tycw6SYTkncLWn95OfuagZ85uv15JJP1yB6Zq8STwlHkDgWhBykfIZosdWthMX5mbs9oOMa8DXskv
	CTIZ9xDM/ZkAfmloux17eARDYkp4ailtMsSrjwrlNpeHhAjUoRJZWMIW6qjBmwP2YVG6sG7oy8jnr
	MuXR3iR3fW1zqzKhmj3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD8Q1-000587-PZ; Sat, 14 Mar 2020 15:09:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD8Ps-00057E-5U; Sat, 14 Mar 2020 15:09:34 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jD8Pn-0001Qn-3r; Sat, 14 Mar 2020 16:09:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] ARM: dts: rockchip: use DMA channels for UARTs of
 TinkerBoard
Date: Sat, 14 Mar 2020 16:09:26 +0100
Message-ID: <2930126.sCcUyySgUU@diego>
In-Reply-To: <20200314142327.25568-1-katsuhiro@katsuster.net>
References: <20200314142327.25568-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_080932_578478_4B97236A 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Samstag, 14. M=E4rz 2020, 15:23:27 CET schrieb Katsuhiro Suzuki:
> This patch enables to use DMAC for all UARTs that are connected to
> dmac_peri core for TinkerBoard.
> =

> Only uart2 is connected different DMAC (dmac_bus_s) so keep current
> settings on this patch.

This belongs in rk3288.dtsi, as this is definitly not board-specific, as
the dma-uart connection is done inside the soc.

At least on arm64 (rk3328, px30, probably more) we already have the
uart dmas in the core dtsi without any problems.

Is there any reason why you only did add it to the tinker board only?


Heiko


> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>  arch/arm/boot/dts/rk3288-tinker.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3=
288-tinker.dtsi
> index 312582c1bd37..6efabeaf3c6d 100644
> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> @@ -491,10 +491,14 @@ &tsadc {
>  };
>  =

>  &uart0 {
> +	dmas =3D <&dmac_peri 1>, <&dmac_peri 2>;
> +	dma-names =3D "tx", "rx";
>  	status =3D "okay";
>  };
>  =

>  &uart1 {
> +	dmas =3D <&dmac_peri 3>, <&dmac_peri 4>;
> +	dma-names =3D "tx", "rx";
>  	status =3D "okay";
>  };
>  =

> @@ -503,10 +507,14 @@ &uart2 {
>  };
>  =

>  &uart3 {
> +	dmas =3D <&dmac_peri 7>, <&dmac_peri 8>;
> +	dma-names =3D "tx", "rx";
>  	status =3D "okay";
>  };
>  =

>  &uart4 {
> +	dmas =3D <&dmac_peri 9>, <&dmac_peri 10>;
> +	dma-names =3D "tx", "rx";
>  	status =3D "okay";
>  };
>  =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
