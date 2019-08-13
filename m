Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5389F8BCFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMI7ZbZpC+VWER5bWkIIEFIWK7HFDquykqu5hZ6DGPs=; b=DzAx4pE+6xW2nN
	OjAfzBcK0VQG0qgTOkrmntK29a9a61gSreZ+BUkUD3n075ghbc0EmgsNLI8ldUsvZJ35soK3stiUG
	nIL5wUInrMtqFc2rtPR3BtjJtNpGWuw7QqPKk+KJLrYZFh10VrjSdpnEg+z/DXlygOBlqNBVPskby
	FggVw5jWsv4FLY5klfgSuxYyw012M6BkXx6TWUkVviRfN26k9TpD24Vtx1LpTEoBHpI54z1codi1P
	qG4d82ND7H6/TJBOcDl7lBWYUTTT+NLKQ/Z71kq7OFVlB6b+BK3GeRzROM6KIPheXwiCokgj0y9no
	SvmTmODhhuD0AjWJfUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYgi-0004Vu-Rh; Tue, 13 Aug 2019 15:26:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYgT-0004VG-6n; Tue, 13 Aug 2019 15:26:02 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E6B9208C2;
 Tue, 13 Aug 2019 15:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565709960;
 bh=HmV3d0tX/vIGU4K6vVAo5cUg5Z8uSssDtsYqHJAG5bg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oXTK/Z2XPavPmmocWCTzqLAhdopHEqr0+WhpFAK86e901QMUz2hwOJ782cXRzWt6O
 dd73osGsviYHzdVpTeZ7PctENRLocN/S6i3IIyyXpit2zvkMSpRGWyOpqenE2s4clG
 NWV+sTZ4ZhnFbgA7AijE2ghB1sb8nDYpGJvZVppw=
Received: by mail-qk1-f177.google.com with SMTP id m2so15670035qkd.10;
 Tue, 13 Aug 2019 08:26:00 -0700 (PDT)
X-Gm-Message-State: APjAAAW49zaLvZK1xQSR75oU03PPg0X/1n4V3ioLW682p/QzzVTeKBv+
 krMAbVJ2+3XUYNWAVgtXVXH24S0uj5Xmehf0ww==
X-Google-Smtp-Source: APXvYqwu0CBqLROjtaQy/EXgqwp575KsDNniswfKsW6qsOEg0w760DgeRdr91KRxD6alIStviaHUoqrBGdSw3n2c0Xw=
X-Received: by 2002:a37:6944:: with SMTP id e65mr31723600qkc.119.1565709959793; 
 Tue, 13 Aug 2019 08:25:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190812121511.4169-1-frank-w@public-files.de>
 <20190812121511.4169-2-frank-w@public-files.de>
In-Reply-To: <20190812121511.4169-2-frank-w@public-files.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 09:25:47 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+fW=x8MoL3GMj6+ZKC3fd6F6+8Rtx=j5R9vEuL9UHCuQ@mail.gmail.com>
Message-ID: <CAL_Jsq+fW=x8MoL3GMj6+ZKC3fd6F6+8Rtx=j5R9vEuL9UHCuQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] dt-bindings: add powercontroller
To: Frank Wunderlich <frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_082601_304630_C1A0E604 
X-CRM114-Status: GOOD (  24.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 6:24 AM Frank Wunderlich
<frank-w@public-files.de> wrote:
>
> From: Josef Friedl <josef.friedl@speed.at>
>
> add mt6323-rtc and mt6323-pwrc to mt6397 mfd DT bindings
> an example is shown in mt6323-poweroff.txt

How does this get to v5 with such a terrible subject? At least give
some indication this is for some Mediatek chip.

The recipient list needs some work too. Don't Cc git committers that
get_maintainers.pl lists.

>
> Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> ---
> changes since v4: use relative path
> changes since v3: none
> changes since v2: separated rtc-mt6397.txt to part 2
> ---
>  .../devicetree/bindings/mfd/mt6397.txt        | 20 +++++++++++++------
>  .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++++++++
>  2 files changed, 34 insertions(+), 6 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
>
> diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
> index 0ebd08af777d..063f5fe1cace 100644
> --- a/Documentation/devicetree/bindings/mfd/mt6397.txt
> +++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
> @@ -8,11 +8,12 @@ MT6397/MT6323 is a multifunction device with the following sub modules:
>  - Clock
>  - LED
>  - Keys
> +- Power controller
>
>  It is interfaced to host controller using SPI interface by a proprietary hardware
>  called PMIC wrapper or pwrap. MT6397/MT6323 MFD is a child device of pwrap.
>  See the following for pwarp node definitions:
> -Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
> +../../bindings/soc/mediatek/pwrap.txt

Unrelated change to what the subject says. Clean-ups and new things in
separate patches please.

>
>  This document describes the binding for MFD device and its sub module.
>
> @@ -22,14 +23,16 @@ compatible: "mediatek,mt6397" or "mediatek,mt6323"
>  Optional subnodes:
>
>  - rtc
> -       Required properties:
> +       Required properties: Should be one of follows
> +               - compatible: "mediatek,mt6323-rtc"

How is this related to 'powercontroller'?

>                 - compatible: "mediatek,mt6397-rtc"
> +       For details, see ../../bindings/rtc/rtc-mt6397.txt
>  - regulators
>         Required properties:
>                 - compatible: "mediatek,mt6397-regulator"
> -       see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
> +       see ../../bindings/regulator/mt6397-regulator.txt
>                 - compatible: "mediatek,mt6323-regulator"
> -       see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
> +       see ../../bindings/regulator/mt6323-regulator.txt
>  - codec
>         Required properties:
>                 - compatible: "mediatek,mt6397-codec"
> @@ -39,12 +42,17 @@ Optional subnodes:
>  - led
>         Required properties:
>                 - compatible: "mediatek,mt6323-led"
> -       see Documentation/devicetree/bindings/leds/leds-mt6323.txt
> +       see ../../bindings/leds/leds-mt6323.txt
>
>  - keys
>         Required properties:
>                 - compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
> -       see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
> +       see ../../bindings/input/mtk-pmic-keys.txt
> +
> +- power-controller
> +       Required properties:
> +               - compatible: "mediatek,mt6323-pwrc"
> +       For details, see ../../bindings/power/reset/mt6323-poweroff.txt
>
>  Example:
>         pwrap: pwrap@1000f000 {
> diff --git a/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
> new file mode 100644
> index 000000000000..933f0c48e887
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
> @@ -0,0 +1,20 @@
> +Device Tree Bindings for Power Controller on MediaTek PMIC
> +
> +The power controller which could be found on PMIC is responsible for externally
> +powering off or on the remote MediaTek SoC through the circuit BBPU.
> +
> +Required properties:
> +- compatible: Should be one of follows
> +       "mediatek,mt6323-pwrc": for MT6323 PMIC
> +
> +Example:
> +
> +       pmic {
> +               compatible = "mediatek,mt6323";
> +
> +               ...
> +
> +               power-controller {
> +                       compatible = "mediatek,mt6323-pwrc";
> +               };
> +       }
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
