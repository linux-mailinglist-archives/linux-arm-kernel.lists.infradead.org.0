Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345A819E52E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 15:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7F9lrvSVzdQYDayqNytAyHP+Dtjfu6yIaaqK1Z2QUg=; b=haHbSfINSxXbqz
	YV6EDGSbNGspyum2MvV2ZnLCcH+bZd7u/nwG7wbGaAhgEkgJbIV3eK/V1QF4Q6pkxmHSQ8ogxASe4
	sTohvGFDOASsh1Ux11waKxJNEu87O2tMUW0htkN6TosHxrlMgGdJupBN8LnX2NQf30ro/XVkeeGvt
	KEQlMZ8W7Em6ubcy064v2KB1nmJ566EexjYnteWD5eyPAl004nWEeXwRKNQZtkiH0gLStv/hVoCwf
	nAd/bt/C7dXy5LZCQ00wHz8YX6zNjSmr5+XtfdL0OExxW/oi5FEP8lFPkbgno6OTP9A0EJzaelxaw
	tPjYBo+BETpo39L1W7pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKinz-0004UN-Sl; Sat, 04 Apr 2020 13:25:47 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKint-0004T7-EF
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 13:25:43 +0000
Received: by mail-il1-x144.google.com with SMTP id p13so10193014ilp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 06:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ScNwQlaT6PVi5sYfWnDXWuHcgtCKis/6yURrV47X/cw=;
 b=KhHDddTVPCEDtxdQUJfKSnbB9NWNom/HqErDavx0IaUhRhdpx8p7eRolCvpreprFX+
 bG0ts4onYD8+DdHJeAv4kcsjWFfqNFmy5dnffK5cQWyIL7BeoCKNAZdTJ0wCrOGTIXJU
 GxFJYX4eLBWo5BFiMBaHxN3LTv3LmLNLCLWeDF5VFlIGrAsSu1qF5tONkYyuHRaRwVC6
 oskhir3uLQZfptJIT5XeNYtQffa8kN7NYmCN+kZKERvMaW1AFGXGFjASeLS0U61etPc0
 UHlbEIr6Fr51DTIo0qddYuYHxefIOvCnbrgfStN/khTJUK5HkQoNvB6CYoP8wXCkRi6A
 ZiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ScNwQlaT6PVi5sYfWnDXWuHcgtCKis/6yURrV47X/cw=;
 b=WcyXHxzbV0z1TQxoqlSRrnnT/thraZOra3Zfbq9iouENgWOZxuo9ykl1HbH5F2RMsq
 IzBzYPWmEYAYNL68oXI2Ww9DxdqrY9tiUL1y5xiqXqo2ANoGt9NsBbfv5wOWyOu2nZd0
 E7RUImYh0O5Sg4ROlGn008ddCF96kc2H9ZrV/3LLxikUbx1HjqVaKFLGNs45UQ5B7zBV
 WZu9CZjfxFJQLjCjOddoeKpEmhXW6G2/gfQIq0kS78+no+gXasRBlkS+Vymhc9YHPqSE
 q9MhICSt5s7NdEoTbQ080pgohq/JwzpBF85b3FrWBqsOd4MbiQ3SuX2uYsglVI62gbmb
 kTKQ==
X-Gm-Message-State: AGi0PuZdF14A5MIggWaaS9r/I8jydwS3bhK1BY0SRb5xJGluO8selYjl
 k8QURrNFUWdoT8vOpyvVSVO4MHFP0B5WY1IkJ9w=
X-Google-Smtp-Source: APiQypK3XiIUkQMbXIv7kgzxvm2CyJbazGkPtKRTHWEaSDKDC9suPX8g16lHi4ncEU9Lqs/8MRVkjMMs1CkPfI8XepQ=
X-Received: by 2002:a92:4896:: with SMTP id j22mr12637650ilg.158.1586006736069; 
 Sat, 04 Apr 2020 06:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1585751281.git.leonard.crestez@nxp.com>
 <c167baa48d6830cf32b9ac51968eeadd684ebf2d.1585751281.git.leonard.crestez@nxp.com>
In-Reply-To: <c167baa48d6830cf32b9ac51968eeadd684ebf2d.1585751281.git.leonard.crestez@nxp.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 4 Apr 2020 08:25:24 -0500
Message-ID: <CAHCN7xKpwex8MQbTFAYKjGPQbQ1uOe7EywASmcakg8F_2w-iuA@mail.gmail.com>
Subject: Re: [PATCH v2 8/8] arm64: dts: imx8m: Add NOC nodes
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_062541_507158_0B6A2CD2 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 1, 2020 at 9:35 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> Add nodes for the main interconnect of the imx8m series chips.
>
> These nodes are bound to by devfreq and interconnect drivers.
>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 24 +++++++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 24 +++++++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 24 +++++++++++++++++++++++
>  3 files changed, 72 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 175c28ae10cf..41047b6709b6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -6,10 +6,11 @@
>  #include <dt-bindings/clock/imx8mm-clock.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/thermal/thermal.h>
> +#include <dt-bindings/interconnect/imx8mm.h>
>
>  #include "imx8mm-pinfunc.h"
>
>  / {
>         interrupt-parent = <&gic>;
> @@ -860,10 +861,33 @@
>                                 status = "disabled";
>                         };
>
>                 };
>
> +               noc: interconnect@32700000 {
> +                       compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
> +                       reg = <0x32700000 0x100000>;
> +                       clocks = <&clk IMX8MM_CLK_NOC>;
> +                       fsl,ddrc = <&ddrc>;
> +                       #interconnect-cells = <1>;
> +                       operating-points-v2 = <&noc_opp_table>;
> +
> +                       noc_opp_table: opp-table {
> +                               compatible = "operating-points-v2";
> +
> +                               opp-150M {
> +                                       opp-hz = /bits/ 64 <150000000>;
> +                               };
> +                               opp-375M {
> +                                       opp-hz = /bits/ 64 <375000000>;
> +                               };
> +                               opp-750M {
> +                                       opp-hz = /bits/ 64 <750000000>;

Out of curiosity, the 8M Mini runs up to 750M, and  the 8M Nano and
8MQ run up to 800.  The 8MQ had a patch to increase the assigned clock
speed for the NOC to 800MHz

See: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/patch/arch/arm64/boot/dts/freescale?id=912b9dacf3f0ffad55e1a1b3c5af0e433ebdb5dd)

The 8M Mini and 8M Nano appear to be setting the default speed to 0.

Should the 8M Mini or 8M Nano do something similar to what the 8MQ
did, or does this series negate the need for such a patch?

thanks

adam

> +                               };
> +                       };
> +               };
> +
>                 aips4: bus@32c00000 {
>                         compatible = "fsl,aips-bus", "simple-bus";
>                         reg = <0x32df0000 0x10000>;
>                         #address-cells = <1>;
>                         #size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index 88e7d74e077f..e8a55956813f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -6,10 +6,11 @@
>  #include <dt-bindings/clock/imx8mn-clock.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/thermal/thermal.h>
> +#include <dt-bindings/interconnect/imx8mn.h>
>
>  #include "imx8mn-pinfunc.h"
>
>  / {
>         interrupt-parent = <&gic>;
> @@ -751,10 +752,33 @@
>                                 status = "disabled";
>                         };
>
>                 };
>
> +               noc: interconnect@32700000 {
> +                       compatible = "fsl,imx8mn-noc", "fsl,imx8m-noc";
> +                       reg = <0x32700000 0x100000>;
> +                       clocks = <&clk IMX8MN_CLK_NOC>;
> +                       fsl,ddrc = <&ddrc>;
> +                       #interconnect-cells = <1>;
> +                       operating-points-v2 = <&noc_opp_table>;
> +
> +                       noc_opp_table: opp-table {
> +                               compatible = "operating-points-v2";
> +
> +                               opp-100M {
> +                                       opp-hz = /bits/ 64 <100000000>;
> +                               };
> +                               opp-600M {
> +                                       opp-hz = /bits/ 64 <600000000>;
> +                               };
> +                               opp-800M {
> +                                       opp-hz = /bits/ 64 <800000000>;
> +                               };
> +                       };
> +               };
> +
>                 aips4: bus@32c00000 {
>                         compatible = "fsl,aips-bus", "simple-bus";
>                         reg = <0x32df0000 0x10000>;
>                         #address-cells = <1>;
>                         #size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index ea93bc4b7d7e..3a208feec74c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -9,10 +9,11 @@
>  #include <dt-bindings/reset/imx8mq-reset.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include "dt-bindings/input/input.h"
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/thermal/thermal.h>
> +#include <dt-bindings/interconnect/imx8mq.h>
>  #include "imx8mq-pinfunc.h"
>
>  / {
>         interrupt-parent = <&gpc>;
>
> @@ -1026,10 +1027,33 @@
>                                 fsl,num-rx-queues = <3>;
>                                 status = "disabled";
>                         };
>                 };
>
> +               noc: interconnect@32700000 {
> +                       compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
> +                       reg = <0x32700000 0x100000>;
> +                       clocks = <&clk IMX8MQ_CLK_NOC>;
> +                       fsl,ddrc = <&ddrc>;
> +                       #interconnect-cells = <1>;
> +                       operating-points-v2 = <&noc_opp_table>;
> +
> +                       noc_opp_table: opp-table {
> +                               compatible = "operating-points-v2";
> +
> +                               opp-133M {
> +                                       opp-hz = /bits/ 64 <133333333>;
> +                               };
> +                               opp-400M {
> +                                       opp-hz = /bits/ 64 <400000000>;
> +                               };
> +                               opp-800M {
> +                                       opp-hz = /bits/ 64 <800000000>;
> +                               };
> +                       };
> +               };
> +
>                 bus@32c00000 { /* AIPS4 */
>                         compatible = "fsl,aips-bus", "simple-bus";
>                         reg = <0x32df0000 0x10000>;
>                         #address-cells = <1>;
>                         #size-cells = <1>;
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
