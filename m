Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E40CE23D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYuLwdtdFJDdYaInlnUZr9qWw2RADVihYkgCUVG147w=; b=cFFJH2v5ZE4OFC
	YUM1zJkN++0HwbkaMi1seePFzZ0vWNhuihZJsQCBw3yypJrWu8TQ+rjd/+yfRGL8BiiNVBsxD+li4
	/T5VE/MaB4YfjocJgCtdioWcEaknONOf6FiNPcsH0yC0wRntXPJICPNRkdmeOObObwsl/tLZIlhlh
	X0eHZdkizbhlUjr2XXu5B8dMYSsa/sA2owoeWvehtYs2VosMC3nAZHEUIxOPAbwdZupRnU02O996w
	Y5l0uNwbxK7xKfaf+8MjJZ8Z6FQfmJyGKQxUoWr+1bH5aG1nwvKqPxyTKOyHqqak21bITtJES5i1V
	pnJnhgttwz85tc+fMCIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSVz-00083r-G6; Mon, 07 Oct 2019 12:53:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSVs-00083C-AG; Mon, 07 Oct 2019 12:53:21 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98CFC205F4;
 Mon,  7 Oct 2019 12:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570452798;
 bh=OcHeLP/qq1aPvsGSRiYbAIE/VJP24hQJgPul4zHU15w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JX33LU9cJQALFkkcYviaIM3iBwEAe/CidRD1RIZiJ4l4hgydMuVM+hRcJj4FSWTpN
 E7of9qQYmDsRsBy6+LfexyztiOnt27J7Zc+8NR1W02G1KOry0lpzH6Q0AVfJEyNEhe
 A8DpVEamD2GeSKLceSJlijpdcJ96X0FpBVMSbeJk=
Received: by mail-qk1-f172.google.com with SMTP id h126so12378390qke.10;
 Mon, 07 Oct 2019 05:53:18 -0700 (PDT)
X-Gm-Message-State: APjAAAVlKcFNrEbeWdl2MWxi6X2DGaTyGE9IHJdxInV4VQgXUh1WOtYu
 HSpAnLOwLkbaoD2oUZYb0g5bjDAI3g9VYKcMgA==
X-Google-Smtp-Source: APXvYqwlKfXgpwy3ehPZWxTgG9eiCTZ6s5SoFYAM/1PDHBgNGMa6ZXPufLcYTCelh6Tj9O1lBlYZxD004Ih/FW/sVjg=
X-Received: by 2002:a37:be87:: with SMTP id
 o129mr23745015qkf.254.1570452797681; 
 Mon, 07 Oct 2019 05:53:17 -0700 (PDT)
MIME-Version: 1.0
References: <9037b7edbbb41cbbf699ebe3a511daf22d886e7d.1570444695.git.robin.murphy@arm.com>
In-Reply-To: <9037b7edbbb41cbbf699ebe3a511daf22d886e7d.1570444695.git.robin.murphy@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 7 Oct 2019 07:53:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKBy+i+=gGyYhBgcMUYsWd_CL_GnEoQqALBb+Gy7Ogb6A@mail.gmail.com>
Message-ID: <CAL_JsqKBy+i+=gGyYhBgcMUYsWd_CL_GnEoQqALBb+Gy7Ogb6A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Beelink A1
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_055320_394067_0BE485AD 
X-CRM114-Status: GOOD (  22.46  )
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
Cc: devicetree@vger.kernel.org, "heiko@sntech.de" <heiko@sntech.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 6:33 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Beelink A1 is a TV box implementing the higher-end options of the
> RK3328 reference design - the DTB from the stock Android firmware is
> clearly the "rk3328-box-plus" variant from the Rockchip 3.10 BSP with
> minor modifications to accommodate the USB WiFi module and additional
> VFD-style LED driver. It features:
>
> - 4GB of 32-bit LPDDR3
> - 16GB of HS200 eMMC (newer models with 32GB also exist)
> - Realtek RTL8211F phy for gigabit ethernet
> - Fn-Link 6221E-UUC module (RealTek RTL8821CU) for 11ac WiFi and Bluetooth 4.2
> - HDMI and analog A/V
> - 1x USB 3.0 type A host, 1x USB 2.0 type A OTG, 1x micro SD
> - IR receiver and a neat little LED clock display.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>
> One question I'm wondering about is whether it's worth pushing the HDMI
> and analog codec audio cards down into rk3328.dtsi (as with HDMI audio
> on RK3399), since those audio pipelines are internal to the SoC and the
> board only really governs whether the outputs are wired up or not.

Seems reasonable. One other candidate below.

>
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +

In the future, please split bindings to a separate patch.

>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  arch/arm64/boot/dts/rockchip/rk3328-a1.dts    | 399 ++++++++++++++++++
>  3 files changed, 405 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index c82c5e57d44c..f27f7805f57e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -40,6 +40,11 @@ properties:
>            - const: asus,rk3288-tinker-s
>            - const: rockchip,rk3288
>
> +      - description: Beelink A1
> +        items:
> +          - const: azw,beelink-a1
> +          - const: rockchip,rk3328
> +
>        - description: bq Curie 2 tablet
>          items:
>            - const: mundoreader,bq-curie2
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 1f18a9392d15..a6f250e7cde2 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> new file mode 100644
> index 000000000000..03ad663ff821
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -0,0 +1,399 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
> +// Copyright (c) 2017-2019 Arm Ltd.
> +
> +/dts-v1/;
> +#include "rk3328.dtsi"
> +
> +/ {
> +       model = "Beelink A1";
> +       compatible = "azw,beelink-a1", "rockchip,rk3328";
> +
> +       /*
> +        * UART pins, as viewed with bottom of case removed:
> +        *
> +        *           Front
> +        *        /-------
> +        *  L    / o <- Gnd
> +        *  e   / o <-- Rx
> +        *  f  / o <--- Tx
> +        *  t / o <---- +3.3v
> +        *    |
> +        */
> +       chosen {
> +               stdout-path = "serial2:1500000n8";
> +       };
> +
> +       gmac_clkin: external-gmac-clock {
> +               compatible = "fixed-clock";
> +               clock-frequency = <125000000>;
> +               clock-output-names = "gmac_clkin";
> +               #clock-cells = <0>;
> +       };
> +
> +       vcc_host_5v: usb3-current-switch {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&usb30_host_drv>;
> +               regulator-name = "vcc_host_5v";
> +               vin-supply = <&vcc_sys>;
> +       };
> +
> +       vcc_sys: vcc-sys {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc_sys";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +       };
> +
> +       cpus {
> +               idle-states {
> +                       entry-method = "arm,psci";
> +
> +                       cpu_sleep: cpu-sleep {
> +                               compatible = "arm,idle-state";
> +                               arm,psci-suspend-param = <0x0010000>;
> +                               local-timer-stop;
> +                               entry-latency-us = <120>;
> +                               exit-latency-us = <250>;
> +                               min-residency-us = <900>;

This doesn't seem like something that's board specific, but I guess
the regulator could have some influence on these times. If so, the
board file could always override a default.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
