Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDFF46505
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yENLTykxufe3BwOunD+p0O8Q6cvLNPbhNnAT+hODtiA=; b=TZOolUGVzNe7u8
	e1lmCbYgn0HyDeJM94AVB6m7xExOvXz2YYpnq6gLYEkAMId6PDqqckmr140lT+seLc6Q1ywqFaw4U
	qiD7xrq2Q3+z/RKcMv0dPSRRrFEk548r070ycnNRJJfoDr3N8TsczCXuK6fch0D8s5nBBBo0LpZ30
	9MEEN0oNrWVAlyX/m8KWud+Mocl2NcxxBoO0iVT3ugx9tG9vkvK2Auh6MyCDWAV8MxUQN14yfz5AA
	yXo+T5tQxnbYJUojedjXk++LHJggAcFu+EvEzCBHaZl3zF7G4jH6mRGY+UTl0f/okJzsmOQBlacTp
	QvepOg/LkDnshaXUFjyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpRD-00007K-0Y; Fri, 14 Jun 2019 16:52:27 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpR3-00006A-7x
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:52:18 +0000
Received: by mail-io1-xd41.google.com with SMTP id k13so7221269iop.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VHBN9wFTEuXJLZJuvq9UKo9jUBkumDESCB/tRtHAcUw=;
 b=OhkHV/C4uU7RQc1Ui4CvCg/LHrGATRYkRt59YooC0i5ZKpFaFLbdQns18vlCSUvPcN
 UTeUSi7QYJiqW53NN0GqsQ/1lMgigmmvGa5R7FZXafZCB+waf9R/LYpCEhIaQaxm044v
 uxOTQ4gPLhGA+hZ011/3lVzns6nemdjjREA+zScAKE6/S0wdEHeKi51jLQJPlPT8H+2a
 SLgebRCfYgbyQ8oZMnHBbscTkB3XAYwJdkG5rZvwC+3ef3fhiNjcl9Q5y1RMdK1m4v7i
 G0zMx8dujRl7YbRkxTXUD6AdxAOuqsrCoLzE+7rp7xTiEzsotkXGynhmaJq7ooq6aiTS
 nH2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VHBN9wFTEuXJLZJuvq9UKo9jUBkumDESCB/tRtHAcUw=;
 b=kdwDGjjR0WrAKu4CHNL1SsAQPHLsdJUhpTN727FrJzDAeaxOgrtS/E+VfRjwIFNTlF
 KwsjLLbPa2g9VWDW3VwIwIlKARV/yAUzTBn5TDiWX82KEA3w5q+ustBqa1Kz5TBvLoIq
 NQx9HO0PKgfMrK5IogYjPDO/wkn4xUOh/WH+dEjqKmEMqIC0wgad+cOM2oAME0d/oxbZ
 OSo53EydZ7/cXVg21BMsmnxG7Vngr0Thw4JMNLq4F0u8gXhWBWAxdaXN0Kmmiz4PVUAg
 FxHMRzb2GeodjR3U+uDvheFnQ7wBvyExu3YksRNnJuMpTfrdqbS1kOnjRl2zPbhzyFxb
 ha/Q==
X-Gm-Message-State: APjAAAXdcPS6zu/mIf68m/PNNyLngSnpTuBguCnxeTiBNNMpxBiLW9N8
 6U3QJBI5CYv6vS+NQ3T1PQhHIgI0JrRjSMx4qLbjCHoYbJ4=
X-Google-Smtp-Source: APXvYqw9IMOjvY8adpddV4q2iTxL7Wp/MrsOOO+GABMLEPFjmiFgpFagZAwQjnbkYEOV3VzYE4p0azX40JCtdTWVQ18=
X-Received: by 2002:a02:3b62:: with SMTP id i34mr62410188jaf.91.1560531135880; 
 Fri, 14 Jun 2019 09:52:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190614080317.16850-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190614080317.16850-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 14 Jun 2019 09:52:04 -0700
Message-ID: <CAHQ1cqFcbs5feFzSjrwMWyNsSphuQy487_wsvRY_BKnS=x4b=w@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: Add ZII support for ZII i.MX7 RMU2 board
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_095217_284477_55C28596 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Liang Pan <Liang.Pan@zii.aero>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Bob Langer <Bob.Langer@zii.aero>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 1:03 AM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Add support for ZII's i.MX7 based Remote Modem Unit 2 (RMU2) board.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Bob Langer <Bob.Langer@zii.aero>
> Cc: Liang Pan <Liang.Pan@zii.aero>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> ---
>  arch/arm/boot/dts/Makefile           |   1 +
>  arch/arm/boot/dts/imx7d-zii-rmu2.dts | 358 +++++++++++++++++++++++++++
>  2 files changed, 359 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx7d-zii-rmu2.dts
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 5559028b770e..516e2912236d 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -593,6 +593,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
>         imx7d-sdb.dtb \
>         imx7d-sdb-reva.dtb \
>         imx7d-sdb-sht11.dtb \
> +       imx7d-zii-rmu2.dtb \
>         imx7d-zii-rpu2.dtb \
>         imx7s-colibri-eval-v3.dtb \
>         imx7s-mba7.dtb \
> diff --git a/arch/arm/boot/dts/imx7d-zii-rmu2.dts b/arch/arm/boot/dts/imx7d-zii-rmu2.dts
> new file mode 100644
> index 000000000000..10fdafe5e0e4
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx7d-zii-rmu2.dts
> @@ -0,0 +1,358 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Device tree file for ZII's RMU2 board
> + *
> + * RMU - Remote Modem Unit
> + *
> + * Copyright (C) 2019 Zodiac Inflight Innovations
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/thermal/thermal.h>
> +#include "imx7d.dtsi"
> +
> +/ {
> +       model = "ZII RMU2 Board";
> +       compatible = "zii,imx7d-rmu2", "fsl,imx7d";
> +
> +       chosen {
> +               stdout-path = &uart2;
> +       };
> +
> +       gpio-leds {
> +               compatible = "gpio-leds";
> +               pinctrl-0 = <&pinctrl_leds_debug>;
> +               pinctrl-names = "default";
> +
> +               debug {
> +                       label = "zii:green:debug1";
> +                       gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
> +                       linux,default-trigger = "heartbeat";
> +               };
> +       };
> +};
> +
> +&cpu0 {
> +       arm-supply = <&sw1a_reg>;
> +};
> +
> +&ecspi1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_ecspi1>;
> +       cs-gpios = <&gpio4 19 GPIO_ACTIVE_HIGH>;
> +       status = "okay";
> +
> +       flash@0 {
> +               compatible = "jedec,spi-nor";
> +               spi-max-frequency = <20000000>;
> +               reg = <0>;
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +       };
> +};
> +
> +&fec1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_enet1>;
> +       assigned-clocks = <&clks IMX7D_ENET1_TIME_ROOT_SRC>,
> +                         <&clks IMX7D_ENET1_TIME_ROOT_CLK>;
> +       assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
> +       assigned-clock-rates = <0>, <100000000>;
> +       phy-mode = "rgmii";
> +       phy-handle = <&fec1_phy>;
> +       status = "okay";
> +
> +       mdio {

Ugh, missed

#address-cells = <1>;
#size-cells = <0>;

here. Will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
