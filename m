Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915B03150D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 21:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3N21gKfDSp8TsqcZnhyaxlnzr4fZXjUq//y4PNuLWI=; b=lTAnnw1RYyHPdu
	6aGtB6eCrMfmza1GtRChh/wGJE7IHV41Efg2GGlkv4FF+QJGqFdI4d1Hrr6drqA6T6gFJhKzNQ4tY
	nu9uUWQQdc1xCuSIRINMxk3vdecAv6gexgOSj6epgVMb0ysHL92HRiot6/jgfsYmvqZRHCBvTEalA
	3y5i0AiuxTVaVMBqxzI+127f3aI9bJaEsIlBxBXlrDx+uTP6sOH88qod7egnvZ0dcT8moLZZoooxr
	yRwzKAI89nNkELdJiE5KDY994KzYeOiRXutZ/Sa3cDg56A/dyburstYzST+jmP0ltO0KcTlo9/8ff
	+TB143CcXskoYpOPz0cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWmpG-0005yF-1a; Fri, 31 May 2019 19:04:26 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWmp8-0005xl-IY
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 19:04:20 +0000
Received: by mail-it1-x142.google.com with SMTP id t184so17523308itf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 12:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jii0B1SHiBfsyisYt0tjpTfpkyGH53lgOLJFv4P8AwE=;
 b=iuCYLYmDOhQ9p8JLVl/C0+c+Ld3GC+bFYACfyafdHxSbhnh+0QqJKPbE763fesZle2
 zI84+KPISI7qwEliFT9USl6LsFCNKr2yU2Fd0EambT/PztdMkUmbto28suxyDlm/5j3W
 dO/DR9hsyXaIdamyLwgTQuhHhFdZdmoXswkluBpKYYfYaXC/81D3YlmeXlSEefLZQQwZ
 75PpNdtP+lDS2l63AMLuQ/gfe2hrPhwETogRiKrpkvUqz2SQggbiHIwy420WZHk8EZB+
 J+PtKB0wY1DiZY5yWROXVbNhF/8aSWU6OsDFO6hWzQz0X6TtAChf8GboM4UgVDE8UGMS
 135w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jii0B1SHiBfsyisYt0tjpTfpkyGH53lgOLJFv4P8AwE=;
 b=Ud/XP9Wj4sMRaUyyX1D6ItoGSEztjRPyc+pfiNnH3JsXiZOUCMHwpIvq2/wMJzRRWG
 5anOR1K1Vqn+H3nUANaVAb0xmO79a5K2klDlH3ja29Xoc+v2YUYrc9ZX9t9aNdEOACcg
 wQB2cuyxBuHWz2re+jRz2TxkAlpX8bbhA6Kk3XGgDPAm8fD19mV9sjiptseSO0t+6N1s
 m6vkcpmJh7Nks7WMRU3lpQR6zQajlVIs9zBh4Z8tKp8Q1NL04e5ns0GCmdCpQFpULH5T
 Ie9bGAfwgX4GsTyxNJdHbMKdkGZgvPtPedW8PwYu49Rrpr9iAoVc9zjnwK6GCpniPhsa
 mHIA==
X-Gm-Message-State: APjAAAVsLk+GRf/+k7bAs1MGHyc+JzSgonlxRVc0LX6uLA+KX4JYL81y
 RO5cuJBvNw5VClIrgQoT3BJ9AMs1Acy8NtOkLO4=
X-Google-Smtp-Source: APXvYqwapy1+PtDtUVrQRkp40Z48kFBN7dxwhXYy+KhKWw8zc87Kq8HPXqmR6nBSk2z2xbUgQdaKwXi9T9lS1g6+EIw=
X-Received: by 2002:a24:97d2:: with SMTP id k201mr8019261ite.151.1559329457355; 
 Fri, 31 May 2019 12:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190530094706.865-1-Anson.Huang@nxp.com>
 <20190530094706.865-2-Anson.Huang@nxp.com>
In-Reply-To: <20190530094706.865-2-Anson.Huang@nxp.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 31 May 2019 12:04:06 -0700
Message-ID: <CAHQ1cqE2UPL6mM0GdS3aLinM46puE1r+80qGUEX2yA9CDMz=EQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: freescale: Add i.MX8MN dtsi support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_120418_640918_8F98F514 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 ping.bai@nxp.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, bruno.thomsen@gmail.com,
 linux-kernel <linux-kernel@vger.kernel.org>, leoyang.li@nxp.com,
 vabhav.sharma@nxp.com, Rob Herring <robh+dt@kernel.org>,
 bhaskar.upadhaya@nxp.com, dl-linux-imx <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, manivannan.sadhasivam@linaro.org,
 pramod.kumar_1@nxp.com, Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, pankaj.bansal@nxp.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 2:45 AM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> The i.MX8M Nano Media Applications Processor is a new SoC of the i.MX8M
> family, it is a 14nm FinFET product of the growing mScale family targeting
> the consumer market. It is built in Samsung 14LPP to achieve both high
> performance and low power consumption and relies on a powerful fully
> coherent core complex based on a quad core ARM Cortex-A53 cluster,
> Cortex-M7 low-power coprocessor and graphics accelerator.
>
> This patch adds the basic dtsi support for i.MX8MN.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> This patch should be based on below patches for clock and pinctrl head files:
> https://patchwork.kernel.org/patch/10968059/
> https://patchwork.kernel.org/patch/10968267/
> ---
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 701 ++++++++++++++++++++++++++++++
>  1 file changed, 701 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mn.dtsi
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> new file mode 100644
> index 0000000..c318ee6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -0,0 +1,701 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <dt-bindings/clock/imx8mn-clock.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +#include "imx8mn-pinfunc.h"
> +
> +/ {
> +       compatible = "fsl,imx8mn";
> +       interrupt-parent = <&gic>;
> +       #address-cells = <2>;
> +       #size-cells = <2>;
> +
> +       aliases {
> +               ethernet0 = &fec1;
> +               gpio0 = &gpio1;
> +               gpio1 = &gpio2;
> +               gpio2 = &gpio3;
> +               gpio3 = &gpio4;
> +               gpio4 = &gpio5;
> +               i2c0 = &i2c1;
> +               i2c1 = &i2c2;
> +               i2c2 = &i2c3;
> +               i2c3 = &i2c4;
> +               mmc0 = &usdhc1;
> +               mmc1 = &usdhc2;
> +               mmc2 = &usdhc3;
> +               serial0 = &uart1;
> +               serial1 = &uart2;
> +               serial2 = &uart3;
> +               serial3 = &uart4;
> +               spi0 = &ecspi1;
> +               spi1 = &ecspi2;
> +               spi2 = &ecspi3;
> +       };
> +
> +       cpus {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               A53_0: cpu@0 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a53";
> +                       reg = <0x0>;
> +                       clock-latency = <61036>;
> +                       clocks = <&clk IMX8MN_CLK_ARM>;
> +                       enable-method = "psci";
> +                       next-level-cache = <&A53_L2>;
> +               };
> +
> +               A53_1: cpu@1 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a53";
> +                       reg = <0x1>;
> +                       clock-latency = <61036>;
> +                       clocks = <&clk IMX8MN_CLK_ARM>;
> +                       enable-method = "psci";
> +                       next-level-cache = <&A53_L2>;
> +               };
> +
> +               A53_2: cpu@2 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a53";
> +                       reg = <0x2>;
> +                       clock-latency = <61036>;
> +                       clocks = <&clk IMX8MN_CLK_ARM>;
> +                       enable-method = "psci";
> +                       next-level-cache = <&A53_L2>;
> +               };
> +
> +               A53_3: cpu@3 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a53";
> +                       reg = <0x3>;
> +                       clock-latency = <61036>;
> +                       clocks = <&clk IMX8MN_CLK_ARM>;
> +                       enable-method = "psci";
> +                       next-level-cache = <&A53_L2>;
> +               };
> +
> +               A53_L2: l2-cache0 {
> +                       compatible = "cache";
> +               };
> +       };
> +
> +       memory@40000000 {
> +               device_type = "memory";
> +               reg = <0x0 0x40000000 0 0x80000000>;
> +       };
> +
> +       osc_32k: clock-osc-32k {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <32768>;
> +               clock-output-names = "osc_32k";
> +       };
> +
> +       osc_24m: clock-osc-24m {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <24000000>;
> +               clock-output-names = "osc_24m";
> +       };
> +
> +       clk_ext1: clock-ext1 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <133000000>;
> +               clock-output-names = "clk_ext1";
> +       };
> +
> +       clk_ext2: clock-ext2 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <133000000>;
> +               clock-output-names = "clk_ext2";
> +       };
> +
> +       clk_ext3: clock-ext3 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <133000000>;
> +               clock-output-names = "clk_ext3";
> +       };
> +
> +       clk_ext4: clock-ext4 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency= <133000000>;
> +               clock-output-names = "clk_ext4";
> +       };
> +
> +       gic: interrupt-controller@38800000 {
> +               compatible = "arm,gic-v3";
> +               reg = <0x0 0x38800000 0 0x10000>,
> +                     <0x0 0x38880000 0 0xC0000>;
> +               #interrupt-cells = <3>;
> +               interrupt-controller;
> +               interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +       };

GIC should probably go into soc {} node. At least that's how we have
it in i.MX8MQ AFAICT.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
