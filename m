Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804B175095
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGqeMOCm+x95U2N94t6IlqZlV/kcqcq+Ii1xT+sy61I=; b=IYHlMWLwAGfQgr
	okD31zsZYTv5P5Vf3z2wdFv/u+LQSPx/mREfwwX9P2D/+2XriOo8B90KLm91kEfbEz5+9PM5hCW4B
	Mjqr/7Dl8llsi8t21Q7/a/Jz1oF4pDmBRQLoi4Wts++lxtQ3o8MDDX6dKwRsdX5cuO9paa1NwsB0Z
	1jJIa/6nWKAMZPj7A+cF43549Q+CBCzBj+DIuhiLkV0wa5/sAG/6a6+gz5C6QKFrS1J/iWEIE0b4/
	O08JAtplFdNXrSRwvjc4tLQxW2aYruGhOc6r3F9sHr9uf/KUd1UCUvH1fM0n9Y+3sg3RY+Rt5I1lC
	Lp7djaEWpcWIAWTkx5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqePS-0001P6-2f; Thu, 25 Jul 2019 14:07:54 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeP9-0001NT-7n
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:07:39 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so34729586lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rC7CJ3Us0JHdnFwo5M1FbCnSzpf/yZ4Z3VE1tDizNCA=;
 b=rUySh5lsYoDX6So5KaiKnCykcehQFNsmsNlgnnSGBL4Nq6j0qUO7iAkhwwqjWSWmhC
 zemDKCKpV6ugv6dVkspNpL4nf+cI2rpoOpGuCp/zAJosNgXUqF2WZHOFnWftSu5MagJv
 JNxYhLjW7sSE03ic4ibRUdrhd6i1gdOBeIZudZlLTvcuoxflzCua91YhbITRAn5VW/Ow
 P2Q/VAyIphqfLYs5ZlqOUZ3wVimx7WC6C6Eq3fJ3JpqNIY1ELqwI51uAOdGF1snVBn5N
 l6MkTgRLMYzfpXo386oWBP7CIpUxEPWqdkqIlncILwrny8r+LrIPKKUn1K7sYk6kZmX6
 JahA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rC7CJ3Us0JHdnFwo5M1FbCnSzpf/yZ4Z3VE1tDizNCA=;
 b=cXq7JjdVA13xBZAyMa29lvZYH7sI+ngDT/rYsYUXoqD6XgF5JUF00yywn1oYNW6Wem
 l/xV5HVMgO6uWAyqCezUPpE7SA88bFosA3p9cF3JW3HnW+fPLeF6IHLWf+ChyVoogITL
 6Yz7108Wvik/ynDL4bxXdcokW9gzNkX+ujKLFtM6dupUnaM4SiYRLXv/T/ZcZj4+io9O
 pmcf17eh+OcYa0y9GffGwsW66FQXjRnoynAUOjk3EtwKkaqdQM1ZnRw0g2gV9mrV3Ki0
 aFbJtTPGRME2YIS/qTlwpQJS0NMrViA9QGYCtDbdtbzPbzzM2hnD91K2ZseYoRLeSam0
 bH5g==
X-Gm-Message-State: APjAAAX93IvGiTvEMwqR0j6YLH9939BlT/SUtvAua75frU8dsES2Q/Oe
 MvLuowqyKTSToKPC0Ig6+YiEpNz/9OqUG+zy74Q=
X-Google-Smtp-Source: APXvYqybVQQ6LELvat6wI1HX6srPrUA8LGsWE6tcmgtfjJZ13dyU1yiUAYM5W7zhul+DXGPFfOjwvdPhUuNASVk2vLo=
X-Received: by 2002:a19:6e41:: with SMTP id q1mr31289910lfk.20.1564063653383; 
 Thu, 25 Jul 2019 07:07:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190724171747.26076-1-dafna.hirschfeld@collabora.com>
In-Reply-To: <20190724171747.26076-1-dafna.hirschfeld@collabora.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 25 Jul 2019 11:07:34 -0300
Message-ID: <CAOMZO5AJwocYFaKtUBZbo0NareGmdAySwDjouxh5KMvnGz2o0A@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx: Add i.mx8mq nitrogen8m basic dts
 support
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_070735_290983_313A5079 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Gary Bisson <gary.bisson@boundarydevices.com>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 kernel@collabora.com, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dafna,

On Wed, Jul 24, 2019 at 2:51 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> From: dafna <dafna.hirschfeld@collabora.com>
>
> Add basic dts support for i.MX8MQ NITROGEN8M.
>
> Signed-off-by: Gary Bisson <gary.bisson@boundarydevices.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Your From and Signed-off-by tags do not match.

> ---
>  arch/arm64/boot/dts/freescale/Makefile             |   1 +
>  .../arm64/boot/dts/freescale/imx8mq-nitrogen8m.dts | 411 +++++++++++++++++++++
>  2 files changed, 412 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-nitrogen8m.dts
>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index c043aca66572..54a5c18c5c30 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -26,3 +26,4 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mq-nitrogen8m.dtb

Please keep it in alphabetical order.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-nitrogen8m.dts b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen8m.dts
> new file mode 100644
> index 000000000000..cfd4915d2916
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen8m.dts

Isn't the 8m in the end redundant? What about just naming it
imx8mq-nitrogen.dts instead?

> +&a53_opp_table {
> +               opp-1500000000 {
> +                       opp-hz = /bits/ 64 <1500000000>;
> +                       opp-microvolt = <1000000>;
> +               };
> +
> +               opp-1000000000 {
> +                       opp-hz = /bits/ 64 <1000000000>;
> +                       opp-microvolt = <900000>;
> +               };

Couldn't this be dropped and just use the operational points defined
at imx8mq.dtsi?

> +};
> +
> +&iomuxc {

We usually prefer to place iomux as the last node.

> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_hog>;

You could place the "pinctrl_hog: hoggrp {" here

> +&i2c1 {
> +       clock-frequency = <400000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c1>;
> +       status = "okay";
> +
> +       i2cmux@70 {
> +               compatible = "pca9546";

You missed the manufacturer string: "nxp,pca9546"

> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_i2c1_pca9546>;
> +               reg = <0x70>;
> +               reset-gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               i2c1a: i2c1@0 {
> +                       reg = <0>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       reg_arm_dram: fan53555@60 {

Node names should be generic:

regulator@60

> +                               compatible = "fcs,fan53555";
> +                               pinctrl-names = "default";
> +                               pinctrl-0 = <&pinctrl_reg_arm_dram>;
> +                               reg = <0x60>;
> +                               regulator-min-microvolt =  <900000>;
> +                               regulator-max-microvolt = <1000000>;
> +                               regulator-always-on;
> +                               vsel-gpios = <&gpio3 24 GPIO_ACTIVE_HIGH>;
> +                       };
> +               };
> +
> +               i2c1b: i2c1@1 {
> +                       reg = <1>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       reg_dram_1p1v: fan53555@60 {

regulator@60

> +                               compatible = "fcs,fan53555";
> +                               pinctrl-names = "default";
> +                               pinctrl-0 = <&pinctrl_reg_dram_1p1v>;
> +                               reg = <0x60>;
> +                               regulator-min-microvolt = <1100000>;
> +                               regulator-max-microvolt = <1100000>;
> +                               regulator-always-on;
> +                               vsel-gpios = <&gpio2 11 GPIO_ACTIVE_HIGH>;
> +                       };
> +               };
> +
> +               i2c1c: i2c1@2 {
> +                       reg = <2>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       reg_soc_gpu_vpu: fan53555@60 {

regulator@60

> +&usdhc1 {
> +       bus-width = <8>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_usdhc1>;
> +       non-removable;
> +       vqmmc-1-8-v;

This property does not exist. Please remove it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
