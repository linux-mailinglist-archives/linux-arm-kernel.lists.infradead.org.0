Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489CE19D6A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uvNL3q/gYWhnyPk/rf1nDDhzm4rWWtUSJO/Bzi2aHs=; b=DHCyHz3Zts7AyU
	AvovuILc6CN8eHTdElhhQUVtHwldQn0Jwgw173NzscwIwm8KypapOyRfjDi2lepCkSm1A5LLMWlr3
	wfThhU1VAIFRzayguKDm64Ppo1MZfU0G9T7UhMuoPocl28aIfn3cHCbWhv4f672ZRfOk255jvfwrP
	lw7A1erRWW1Gsb3hqn8WYMEiO754W073PoSkw/gs9ziZ9zNUpOFhWmwdknLVcJx8jty7TWWIjbhld
	76hdiNI4KpaZ6hKCWBEabzBJxhzchTKW0q7+uwr6ZJKnlQK59FHUclKx4FhW3BAG4hq+O6fYr3iTw
	qRc4zkgA6PRdNQpfdSqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLMv-0006xO-1Z; Fri, 03 Apr 2020 12:24:17 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLMp-0006wl-1v
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 12:24:12 +0000
Received: by mail-ua1-x942.google.com with SMTP id r47so2610861uad.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 05:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qvyI6Sc61lD8J/TKKLvSHBnJpLEYrXxRzZK/pmr8tcg=;
 b=XsPDzoTQ41hY6HEPrchkLgIyTyUZXd/7hYRk7hgYvAQyaCqqW4xvUi9ngh25hdOXoa
 yMhq7WafBQ0A/1ilm6nWz/kuM2yWawQ0gYIElHm8mgFSRx28aAGOOwj68xw/NpCRYwuh
 C2nWwWuGuwH47OMW7dHh2/NH59AbGExXVtK6+90BJdmf2L2esTgbo9pHe4i4cZF4rxiz
 fa9ejul7C23G7guipBlYt4Q7u872Vm0pgFUSHL9Z6KLTAfV3coPxeIblL3Yqk3miScsk
 jKF8SDgAbn9TMC+nwoi7bB4bTPpa63u9nsPQ1/+BDroRI4Fms+im2b1nC4z3mMu9UKUT
 Qd8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qvyI6Sc61lD8J/TKKLvSHBnJpLEYrXxRzZK/pmr8tcg=;
 b=iLCMmTkwlTVWgetl3zlIegVpJtV60I2PUGUEkEjK26oo7RKF437peKN5sKFA2hzOVC
 cXjJdJTCkRSwVNIfzIy98p09cR2hH4V4uGrPZ+xby7ROEhetM0KVY48p/CrfLQlLCLOE
 DS8lovS4cTaQWlx5dLEiVh2rcaiblH0QcSdt0SLC5/9YSh+PqsIuo1FEh/vgNfd68wvt
 P2yRfrzgJ6majJUqgOWZ7+WeUDFlLLiAvS3KGtnIYLvPlEVJouhXx7JKovYyyLfkdaeR
 tnI3VQTU6b5fTSJ34IGKnMJ/3vdZu4FBetgww57eP3qAlh66y4PYQqjoDqTPgFF84HTp
 HfwA==
X-Gm-Message-State: AGi0Pub+IUShZ7R7R6QEykawbz0YcYbxU116Ex0FTnKoo/YmUotSs4Vj
 J9GrxH8U3FM1VtpzQ9HG3fhiVMAXXrihekq1fDG+/A==
X-Google-Smtp-Source: APiQypI1u6fH2mX4s1RMnAvdrTdNNnWXLCWcnocYGW43VybN65NwGB9/DkXtVrPHM3u37UwkTy8EsjAY0aRPDloK43M=
X-Received: by 2002:ab0:911:: with SMTP id w17mr6133575uag.60.1585916649174;
 Fri, 03 Apr 2020 05:24:09 -0700 (PDT)
MIME-Version: 1.0
References: <1585915404-7658-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1585915404-7658-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 3 Apr 2020 17:53:58 +0530
Message-ID: <CAHLCerOpgoL3_F6mg3i2d3Mnb81-4Y=+fkc_81+aWr3ut3GVEg@mail.gmail.com>
Subject: Re: [PATCH V4] arm64: dts: imx8mp: Add thermal zones support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_052411_097371_2F5DE42F 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Horia Geanta <horia.geanta@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <Linux-imx@nxp.com>,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 3, 2020 at 5:41 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> i.MX8MP has a TMU inside which supports two thermal zones, add support
> for them.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>


Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
> Changes since V3:
>         - Drop some '0x' prefix;
>         - Add cpufreq cooling for soc thermal zone as well to fit the passive trip point.
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 74 +++++++++++++++++++++++++++++++
>  1 file changed, 74 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 9b1616e..77aff14 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -7,6 +7,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/thermal/thermal.h>
>
>  #include "imx8mp-pinfunc.h"
>
> @@ -43,6 +44,7 @@
>                         clocks = <&clk IMX8MP_CLK_ARM>;
>                         enable-method = "psci";
>                         next-level-cache = <&A53_L2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 A53_1: cpu@1 {
> @@ -53,6 +55,7 @@
>                         clocks = <&clk IMX8MP_CLK_ARM>;
>                         enable-method = "psci";
>                         next-level-cache = <&A53_L2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 A53_2: cpu@2 {
> @@ -63,6 +66,7 @@
>                         clocks = <&clk IMX8MP_CLK_ARM>;
>                         enable-method = "psci";
>                         next-level-cache = <&A53_L2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 A53_3: cpu@3 {
> @@ -73,6 +77,7 @@
>                         clocks = <&clk IMX8MP_CLK_ARM>;
>                         enable-method = "psci";
>                         next-level-cache = <&A53_L2>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 A53_L2: l2-cache0 {
> @@ -127,6 +132,68 @@
>                 method = "smc";
>         };
>
> +       thermal-zones {
> +               cpu-thermal {
> +                       polling-delay-passive = <250>;
> +                       polling-delay = <2000>;
> +                       thermal-sensors = <&tmu 0>;
> +                       trips {
> +                               cpu_alert0: trip0 {
> +                                       temperature = <85000>;
> +                                       hysteresis = <2000>;
> +                                       type = "passive";
> +                               };
> +
> +                               cpu_crit0: trip1 {
> +                                       temperature = <95000>;
> +                                       hysteresis = <2000>;
> +                                       type = "critical";
> +                               };
> +                       };
> +
> +                       cooling-maps {
> +                               map0 {
> +                                       trip = <&cpu_alert0>;
> +                                       cooling-device =
> +                                               <&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +                               };
> +                       };
> +               };
> +
> +               soc-thermal {
> +                       polling-delay-passive = <250>;
> +                       polling-delay = <2000>;
> +                       thermal-sensors = <&tmu 1>;
> +                       trips {
> +                               soc_alert0: trip0 {
> +                                       temperature = <85000>;
> +                                       hysteresis = <2000>;
> +                                       type = "passive";
> +                               };
> +
> +                               soc_crit0: trip1 {
> +                                       temperature = <95000>;
> +                                       hysteresis = <2000>;
> +                                       type = "critical";
> +                               };
> +                       };
> +
> +                       cooling-maps {
> +                               map0 {
> +                                       trip = <&soc_alert0>;
> +                                       cooling-device =
> +                                               <&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                               <&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +                               };
> +                       };
> +               };
> +       };
> +
>         timer {
>                 compatible = "arm,armv8-timer";
>                 interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
> @@ -215,6 +282,13 @@
>                                 gpio-ranges = <&iomuxc 0 114 30>;
>                         };
>
> +                       tmu: tmu@30260000 {
> +                               compatible = "fsl,imx8mp-tmu";
> +                               reg = <0x30260000 0x10000>;
> +                               clocks = <&clk IMX8MP_CLK_TSENSOR_ROOT>;
> +                               #thermal-sensor-cells = <1>;
> +                       };
> +
>                         wdog1: watchdog@30280000 {
>                                 compatible = "fsl,imx8mp-wdt", "fsl,imx21-wdt";
>                                 reg = <0x30280000 0x10000>;
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
