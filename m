Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2380C10CA84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPSAMolF+HuCysd01vETRXQshVR5gycFYULqhZhb8cA=; b=gSQygDYvmf2AWH
	KBFdo6uGa2oTlziDaWr3D9KmgU6E6FUDlEY05EYNCliHs2UIRHdQxibcYpS6JgYUEsprwUZiGh4uH
	oLWb+rHBJjqYq9zR+lj8uXSaflwlL01WAdnkukXc9IRrUC2A3RywJUVNVZ5DIwSt8wCyrGSZCdxRP
	2+QFSseb9hzBNDLSqOnjQ8jqjMktdGb5s2+8J78Eyi5TMyg/H+c5tuV3AEgrm2TL75zF69FhlLjRi
	0LUSc9K3D0p++SsdiLOdiEusauJR2JMz3OfH/Lyo6gcLvGpYeFa5zyYvEwu7VQeCYA2pwQpNfSm0b
	3JvKx8RrIk7ERcDS2sXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaL1C-00028L-Vv; Thu, 28 Nov 2019 14:43:42 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaL13-00027o-8E
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:43:35 +0000
Received: by mail-io1-xd42.google.com with SMTP id j13so29260996ioe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z4OMB9FrnRPZRUHwvOwqK6rgFmvyxzvzmzgSErk1FuA=;
 b=GVR7QBA5LCthVUe8s3WHX6R1zzLV1oBi3txKCgqCMuk/fePCuPFPSkNWB917B0Ee8f
 fDwIiyF834JV7NaHFEZtEhwKcotP2gKhli9D9WqhfjjD2d9pZ+VCGKYxXI9TldFa0DDf
 kdZ/Vn4ql/t/W0h9xPh8zBg1fSig/B7KlQ+SOLwshC4KLnqO8/9rENX+6AaxVWShl77s
 vsslrAsMvZ24MU8nGRZJj03MF0XDdDJt7QH798QU7t10PDqynLWFNPTVz/0abfgi15tJ
 Jo6RdDOJYgRrRS3TADPYrmVWHSxRZ3DWDyY7jL7F+67QnwpKknF2jp4ekX5C8L+OQeOo
 62KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z4OMB9FrnRPZRUHwvOwqK6rgFmvyxzvzmzgSErk1FuA=;
 b=KdeLfT/Qh8+Ln7QSVnHlPjCOLU7WLZowqRzLZYJV9/FblGPUAmTGOaaKMLI6+beQC8
 pADHm0EKbu3ip5oHTS26+2iKwMdyhntjx5skSh0R1kAmG1j07SRfoZ7tksxBTBkt9l9f
 yu8QaBgkRSAwRUIbxSGX+4jGA+q7ZQOjSNX7HOKHeAzXX0A2mqTnimse06oPyvpBFGO+
 wzUh8+BTNtoiV6BGuV+q0diM6RKmWCwQzJDXlO8S7zSCr9pYyjbv+i2WusNaThi6Rfct
 1j/nMr7ILnxpyGyho/vTyoJRHpAzoRk9JUm/lFlYKYbXQvsqVuSKA2GHrBR86KQ7Ib7c
 tyIw==
X-Gm-Message-State: APjAAAVy0wioWw54AfRS3n5XFhhHk47urjS/ZIEg9i5ut9Mz7JO9t4W8
 P+33leBvvs5AlINH5Q5TDKCFjuCpKrQSx+0hs4o=
X-Google-Smtp-Source: APXvYqxmYtcweNZvmQamB+3MqsYEvLc6Vlj1zSMxlf9AdoyRV0M1IpinPiPVlm6ML7fvBE97Hbo1OQQuaabfzT2qJ1I=
X-Received: by 2002:a02:a0cf:: with SMTP id i15mr10296595jah.95.1574952211778; 
 Thu, 28 Nov 2019 06:43:31 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <23e46c12c98947315229c20dea6784ad40d294c4.1574458460.git.leonard.crestez@nxp.com>
In-Reply-To: <23e46c12c98947315229c20dea6784ad40d294c4.1574458460.git.leonard.crestez@nxp.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 28 Nov 2019 08:43:20 -0600
Message-ID: <CAHCN7xK_w9m7sZOJtGFVtpeu1BHN_H6eyeYCOgZQS67t1SvmRQ@mail.gmail.com>
Subject: Re: [PATCH v7 5/5] arm64: dts: imx8m: Add ddr controller nodes
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_064333_295952_E6A822FD 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 3:46 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> This is used by the imx-ddrc devfreq driver to implement dynamic
> frequency scaling of DRAM.
>
> Support for proactive scaling via interconnect will come later. The
> high-performance bus masters which need that (display, vpu, gpu) are
> mostly not yet enabled in upstream anyway.
>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 18 ++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 10 ++++++++
>  .../boot/dts/freescale/imx8mn-ddr4-evk.dts    | 18 ++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 10 ++++++++
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts  | 24 +++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 10 ++++++++
>  6 files changed, 90 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index 28ab17a277bb..ecf0d385c164 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -75,10 +75,28 @@
>
>  &A53_0 {
>         cpu-supply = <&buck2_reg>;
>  };
>
> +&ddrc {
> +       operating-points-v2 = <&ddrc_opp_table>;
> +
> +       ddrc_opp_table: opp-table {
> +               compatible = "operating-points-v2";
> +
> +               opp-25M {
> +                       opp-hz = /bits/ 64 <25000000>;
> +               };
> +               opp-100M {
> +                       opp-hz = /bits/ 64 <100000000>;
> +               };
> +               opp-750M {
> +                       opp-hz = /bits/ 64 <750000000>;
> +               };
> +       };
> +};

The SoC's device tree has the opp for the SoC.  Since the SoC also has
the DDR controller, why not put the opp for the DDR into the SoC's
device tree set for its maximum rates.  If the individual boards need
to change them, they can do it on a case-by-case basis.

As more and more people add devices based on imx8m q/m/n, I can
imaging a lot of these entries will be duplicated if they base their
design on the reference evk for their respective SoC.

> +
>  &fec1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_fec1>;
>         phy-mode = "rgmii-id";
>         phy-handle = <&ethphy0>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 6edbdfe2d0d7..3d4802375715 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -856,10 +856,20 @@
>                         #interrupt-cells = <3>;
>                         interrupt-controller;
>                         interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>                 };
>
> +               ddrc: memory-controller@3d400000 {
> +                       compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
> +                       reg = <0x3d400000 0x400000>;
> +                       clock-names = "core", "pll", "alt", "apb";
> +                       clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
> +                                <&clk IMX8MM_DRAM_PLL>,
> +                                <&clk IMX8MM_CLK_DRAM_ALT>,
> +                                <&clk IMX8MM_CLK_DRAM_APB>;
> +               };
> +
>                 ddr-pmu@3d800000 {
>                         compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
>                         reg = <0x3d800000 0x400000>;
>                         interrupt-parent = <&gic>;
>                         interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> index 071949412caf..b051c927c11e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> @@ -15,10 +15,28 @@
>
>  &A53_0 {
>         cpu-supply = <&buck2_reg>;
>  };
>
> +&ddrc {
> +       operating-points-v2 = <&ddrc_opp_table>;
> +
> +       ddrc_opp_table: opp-table {
> +               compatible = "operating-points-v2";
> +
> +               opp-25M {
> +                       opp-hz = /bits/ 64 <25000000>;
> +               };
> +               opp-100M {
> +                       opp-hz = /bits/ 64 <100000000>;
> +               };
> +               opp-600M {
> +                       opp-hz = /bits/ 64 <600000000>;
> +               };
> +       };
> +};
> +
>  &i2c1 {
>         pmic@4b {
>                 compatible = "rohm,bd71847";
>                 reg = <0x4b>;
>                 pinctrl-0 = <&pinctrl_pmic>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index e91625063f8e..3a79fdddc72b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -757,10 +757,20 @@
>                         #interrupt-cells = <3>;
>                         interrupt-controller;
>                         interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>                 };
>
> +               ddrc: memory-controller@3d400000 {
> +                       compatible = "fsl,imx8mn-ddrc", "fsl,imx8m-ddrc";
> +                       reg = <0x3d400000 0x400000>;
> +                       clock-names = "core", "pll", "alt", "apb";
> +                       clocks = <&clk IMX8MN_CLK_DRAM_CORE>,
> +                                <&clk IMX8MN_DRAM_PLL>,
> +                                <&clk IMX8MN_CLK_DRAM_ALT>,
> +                                <&clk IMX8MN_CLK_DRAM_APB>;
> +               };
> +
>                 ddr-pmu@3d800000 {
>                         compatible = "fsl,imx8mn-ddr-pmu", "fsl,imx8m-ddr-pmu";
>                         reg = <0x3d800000 0x400000>;
>                         interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
>                 };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> index c36685916683..ee6dc5f07622 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> @@ -103,10 +103,34 @@
>
>  &A53_3 {
>         cpu-supply = <&buck2_reg>;
>  };
>
> +&ddrc {
> +       operating-points-v2 = <&ddrc_opp_table>;
> +
> +       ddrc_opp_table: opp-table {
> +               compatible = "operating-points-v2";
> +
> +               opp-25M {
> +                       opp-hz = /bits/ 64 <25000000>;
> +               };
> +               opp-100M {
> +                       opp-hz = /bits/ 64 <100000000>;
> +               };
> +               /*
> +                * On imx8mq B0 PLL can't be bypassed so low bus is 166M
> +                */
> +               opp-166M {
> +                       opp-hz = /bits/ 64 <166935483>;
> +               };
> +               opp-800M {
> +                       opp-hz = /bits/ 64 <800000000>;
> +               };
> +       };
> +};
> +
>  &fec1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_fec1>;
>         phy-mode = "rgmii-id";
>         phy-handle = <&ethphy0>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 7f9319452b58..d1fcf9887f8b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -1111,10 +1111,20 @@
>                         interrupt-controller;
>                         interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>                         interrupt-parent = <&gic>;
>                 };
>
> +               ddrc: memory-controller@3d400000 {
> +                       compatible = "fsl,imx8mq-ddrc", "fsl,imx8m-ddrc";
> +                       reg = <0x3d400000 0x400000>;
> +                       clock-names = "core", "pll", "alt", "apb";
> +                       clocks = <&clk IMX8MQ_CLK_DRAM_CORE>,
> +                                <&clk IMX8MQ_DRAM_PLL_OUT>,
> +                                <&clk IMX8MQ_CLK_DRAM_ALT>,
> +                                <&clk IMX8MQ_CLK_DRAM_APB>;
> +               };
> +
>                 ddr-pmu@3d800000 {
>                         compatible = "fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-pmu";
>                         reg = <0x3d800000 0x400000>;
>                         interrupt-parent = <&gic>;
>                         interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
