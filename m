Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B3C1AD1AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uQuhPPaYi2A9lSkanpaYcYEctuQd+r4e6f46P7eEac=; b=gKpWEGt/T5uz22
	iNZAD8qDQ35qN/Rn+oGQcQo/ZaxCFjtFS8+QHjAqT4I2kDU/icxiOdibf1QdJP03djDNQlQpyFDhd
	RLJOkQOywJH8DUbY0bDu/bdVRxOGOTCwvpiziOj+oMmjYFxSGHhAs1sl0+40Ix8XbB3vTuhQiMrv1
	9M6IuHlNIOEMRftASa+IlChUU1ct/v1nR8R2RU0MAarr6jcB5JSR0yKDXE9NWcF2UbHirLsDoX4Zo
	qhqACpl6rUAz5nfp7JEJjgKlCsiGnUiU+zVbeKM8nNSnm2Ml/btayFydNDI4dn/kQpRdSa3DPzCX4
	zs9rN0QB/JfumGZ4OrcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPBfL-0004KK-De; Thu, 16 Apr 2020 21:03:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBfD-0004Jj-SI
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:03:13 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A7E52076D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 21:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587070991;
 bh=AWOEVk56lIsRUxVQRPyTZEvG11RZxuh/vr2RhTlLGD4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ko9mrQcHlyPTKydNkO0FBl2I/cve3riHVAl/dEdYpM5QejULPUa/9M0RtqFUF1BPy
 ki84B6VAl+UrWQpWN1+AhBfMqRk+2Z6Y+6122CjCZu9visr0b+wT1H56X8JlKLQ8HG
 wf6w6niqlaKNvgjYVb480dQKZbhxpD/Hga/ZDRk8=
Received: by mail-qt1-f177.google.com with SMTP id 71so109641qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 14:03:11 -0700 (PDT)
X-Gm-Message-State: AGi0PuYM2/YMkZKLJPUmKUMq/cLhTY1g9yEhHSzRABjvJoV2P1PnlzYx
 aBFvego0auv2RyQvWR39Y3/INaM6FPKvA5PdwA==
X-Google-Smtp-Source: APiQypJ9CPStA21dmEG4Pw+wkQToBwzb9UsuS9u7k0jxZmYkIMgnueVRGpvhBIMIR23CbNLC4h4N2QH9F4ePINdwkG0=
X-Received: by 2002:ac8:4907:: with SMTP id e7mr28698015qtq.300.1587070990286; 
 Thu, 16 Apr 2020 14:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200117230855.25567-1-robh@kernel.org>
In-Reply-To: <20200117230855.25567-1-robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Apr 2020 16:02:58 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLDsoJteGC6BRMFvPZ0pekOU71eUNQUqh74we_BB7RZ_g@mail.gmail.com>
Message-ID: <CAL_JsqLDsoJteGC6BRMFvPZ0pekOU71eUNQUqh74we_BB7RZ_g@mail.gmail.com>
Subject: Re: [PATCH] arm: tegra: dts: Kill off "simple-panel" compatibles
To: devicetree@vger.kernel.org, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_140311_954042_53DA3188 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra <linux-tegra@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 5:08 PM Rob Herring <robh@kernel.org> wrote:
>
> "simple-panel" is a Linux driver and has never been an accepted upstream
> compatible string, so remove it.
>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: linux-tegra@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Ping. This never got picked up.

> ---
>  arch/arm/boot/dts/tegra114-dalmore.dts         | 3 +--
>  arch/arm/boot/dts/tegra124-venice2.dts         | 2 +-
>  arch/arm/boot/dts/tegra20-colibri-eval-v3.dts  | 2 +-
>  arch/arm/boot/dts/tegra20-colibri-iris.dts     | 2 +-
>  arch/arm/boot/dts/tegra20-harmony.dts          | 2 +-
>  arch/arm/boot/dts/tegra20-medcom-wide.dts      | 2 +-
>  arch/arm/boot/dts/tegra20-paz00.dts            | 2 +-
>  arch/arm/boot/dts/tegra20-seaboard.dts         | 2 +-
>  arch/arm/boot/dts/tegra20-ventana.dts          | 2 +-
>  arch/arm/boot/dts/tegra30-apalis-eval.dts      | 2 +-
>  arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts | 2 +-
>  arch/arm/boot/dts/tegra30-cardhu.dtsi          | 2 +-
>  arch/arm/boot/dts/tegra30-colibri-eval-v3.dts  | 2 +-
>  arch/arm64/boot/dts/nvidia/tegra132-norrin.dts | 2 +-
>  14 files changed, 14 insertions(+), 15 deletions(-)
>
> diff --git a/arch/arm/boot/dts/tegra114-dalmore.dts b/arch/arm/boot/dts/tegra114-dalmore.dts
> index 97a5c3504bbe..8e48792ecdc8 100644
> --- a/arch/arm/boot/dts/tegra114-dalmore.dts
> +++ b/arch/arm/boot/dts/tegra114-dalmore.dts
> @@ -46,8 +46,7 @@
>                         avdd-dsi-csi-supply = <&avdd_1v2_reg>;
>
>                         panel@0 {
> -                               compatible = "panasonic,vvx10f004b00",
> -                                            "simple-panel";
> +                               compatible = "panasonic,vvx10f004b00";
>                                 reg = <0>;
>
>                                 power-supply = <&avdd_lcd_reg>;
> diff --git a/arch/arm/boot/dts/tegra124-venice2.dts b/arch/arm/boot/dts/tegra124-venice2.dts
> index 7309393bfced..9004fb6dcede 100644
> --- a/arch/arm/boot/dts/tegra124-venice2.dts
> +++ b/arch/arm/boot/dts/tegra124-venice2.dts
> @@ -1087,7 +1087,7 @@
>         };
>
>         panel: panel {
> -               compatible = "lg,lp129qe", "simple-panel";
> +               compatible = "lg,lp129qe";
>
>                 backlight = <&backlight>;
>                 ddc-i2c-bus = <&dpaux>;
> diff --git a/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts b/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
> index 3c0f2681fcde..37ad508b61d9 100644
> --- a/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
> @@ -223,7 +223,7 @@
>                  * edt,et057090dhu: EDT 5.7" LCD TFT
>                  * edt,et070080dh6: EDT 7.0" LCD TFT
>                  */
> -               compatible = "edt,et057090dhu", "simple-panel";
> +               compatible = "edt,et057090dhu";
>                 backlight = <&backlight>;
>                 power-supply = <&reg_3v3>;
>         };
> diff --git a/arch/arm/boot/dts/tegra20-colibri-iris.dts b/arch/arm/boot/dts/tegra20-colibri-iris.dts
> index d8004d68efa0..af4740847769 100644
> --- a/arch/arm/boot/dts/tegra20-colibri-iris.dts
> +++ b/arch/arm/boot/dts/tegra20-colibri-iris.dts
> @@ -205,7 +205,7 @@
>                  * edt,et057090dhu: EDT 5.7" LCD TFT
>                  * edt,et070080dh6: EDT 7.0" LCD TFT
>                  */
> -               compatible = "edt,et057090dhu", "simple-panel";
> +               compatible = "edt,et057090dhu";
>                 backlight = <&backlight>;
>                 power-supply = <&reg_3v3>;
>         };
> diff --git a/arch/arm/boot/dts/tegra20-harmony.dts b/arch/arm/boot/dts/tegra20-harmony.dts
> index 1d96d92b72a7..02cd67ea2503 100644
> --- a/arch/arm/boot/dts/tegra20-harmony.dts
> +++ b/arch/arm/boot/dts/tegra20-harmony.dts
> @@ -665,7 +665,7 @@
>         };
>
>         panel: panel {
> -               compatible = "auo,b101aw03", "simple-panel";
> +               compatible = "auo,b101aw03";
>
>                 power-supply = <&vdd_pnl_reg>;
>                 enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm/boot/dts/tegra20-medcom-wide.dts b/arch/arm/boot/dts/tegra20-medcom-wide.dts
> index cda5448c2ace..c73510cd501c 100644
> --- a/arch/arm/boot/dts/tegra20-medcom-wide.dts
> +++ b/arch/arm/boot/dts/tegra20-medcom-wide.dts
> @@ -57,7 +57,7 @@
>         };
>
>         panel: panel {
> -               compatible = "innolux,n156bge-l21", "simple-panel";
> +               compatible = "innolux,n156bge-l21";
>
>                 power-supply =  <&vdd_1v8_reg>, <&vdd_3v3_reg>;
>                 enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm/boot/dts/tegra20-paz00.dts b/arch/arm/boot/dts/tegra20-paz00.dts
> index 85fce5bc72d6..0151cdd09ffb 100644
> --- a/arch/arm/boot/dts/tegra20-paz00.dts
> +++ b/arch/arm/boot/dts/tegra20-paz00.dts
> @@ -558,7 +558,7 @@
>         };
>
>         panel: panel {
> -               compatible = "samsung,ltn101nt05", "simple-panel";
> +               compatible = "samsung,ltn101nt05";
>
>                 ddc-i2c-bus = <&lvds_ddc>;
>                 power-supply = <&vdd_pnl_reg>;
> diff --git a/arch/arm/boot/dts/tegra20-seaboard.dts b/arch/arm/boot/dts/tegra20-seaboard.dts
> index f91441683aad..376ecb6435f4 100644
> --- a/arch/arm/boot/dts/tegra20-seaboard.dts
> +++ b/arch/arm/boot/dts/tegra20-seaboard.dts
> @@ -826,7 +826,7 @@
>         };
>
>         panel: panel {
> -               compatible = "chunghwa,claa101wa01a", "simple-panel";
> +               compatible = "chunghwa,claa101wa01a";
>
>                 power-supply = <&vdd_pnl_reg>;
>                 enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm/boot/dts/tegra20-ventana.dts b/arch/arm/boot/dts/tegra20-ventana.dts
> index f44551e2d9d0..022649119821 100644
> --- a/arch/arm/boot/dts/tegra20-ventana.dts
> +++ b/arch/arm/boot/dts/tegra20-ventana.dts
> @@ -611,7 +611,7 @@
>         };
>
>         panel: panel {
> -               compatible = "chunghwa,claa101wa01a", "simple-panel";
> +               compatible = "chunghwa,claa101wa01a";
>
>                 power-supply = <&vdd_pnl_reg>;
>                 enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm/boot/dts/tegra30-apalis-eval.dts b/arch/arm/boot/dts/tegra30-apalis-eval.dts
> index 749fc6d1ff70..b39c26806bf2 100644
> --- a/arch/arm/boot/dts/tegra30-apalis-eval.dts
> +++ b/arch/arm/boot/dts/tegra30-apalis-eval.dts
> @@ -195,7 +195,7 @@
>                  * edt,et057090dhu: EDT 5.7" LCD TFT
>                  * edt,et070080dh6: EDT 7.0" LCD TFT
>                  */
> -               compatible = "edt,et057090dhu", "simple-panel";
> +               compatible = "edt,et057090dhu";
>                 backlight = <&backlight>;
>                 power-supply = <&reg_3v3>;
>         };
> diff --git a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
> index 0be50e881684..e29dca92ba0a 100644
> --- a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
> +++ b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
> @@ -196,7 +196,7 @@
>                  * edt,et057090dhu: EDT 5.7" LCD TFT
>                  * edt,et070080dh6: EDT 7.0" LCD TFT
>                  */
> -               compatible = "edt,et057090dhu", "simple-panel";
> +               compatible = "edt,et057090dhu";
>                 backlight = <&backlight>;
>                 power-supply = <&reg_3v3>;
>         };
> diff --git a/arch/arm/boot/dts/tegra30-cardhu.dtsi b/arch/arm/boot/dts/tegra30-cardhu.dtsi
> index 7ce61edd52f5..9048fdf4ad54 100644
> --- a/arch/arm/boot/dts/tegra30-cardhu.dtsi
> +++ b/arch/arm/boot/dts/tegra30-cardhu.dtsi
> @@ -432,7 +432,7 @@
>         };
>
>         panel: panel {
> -               compatible = "chunghwa,claa101wb01", "simple-panel";
> +               compatible = "chunghwa,claa101wb01";
>                 ddc-i2c-bus = <&panelddc>;
>
>                 power-supply = <&vdd_pnl1_reg>;
> diff --git a/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts b/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
> index 5965150ecdd2..8e106e784dce 100644
> --- a/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
> @@ -159,7 +159,7 @@
>                  * edt,et057090dhu: EDT 5.7" LCD TFT
>                  * edt,et070080dh6: EDT 7.0" LCD TFT
>                  */
> -               compatible = "edt,et057090dhu", "simple-panel";
> +               compatible = "edt,et057090dhu";
>                 backlight = <&backlight>;
>                 power-supply = <&reg_3v3>;
>         };
> diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
> index a0385a386a3f..9f3206c63900 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
> @@ -990,7 +990,7 @@
>         };
>
>         panel: panel {
> -               compatible = "innolux,n116bge", "simple-panel";
> +               compatible = "innolux,n116bge";
>                 backlight = <&backlight>;
>                 ddc-i2c-bus = <&dpaux>;
>         };
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
