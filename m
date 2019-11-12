Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA656F8B40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 10:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYdUxePGp7bB0aq1ce24LDwcj1o1XO2RNl8txynlYlg=; b=qbUYG+ztHwu88q
	9Ab3j1nWB4Ald7hUt4Pk1Z2o04vBU3ZAqTjKk3BJx2QAImC9p4nMXT4nQVnmJbnOUe2VxiOxs7n70
	s2cHq2mKUgKr+0gHCflMXjutOm8VkDAMgz9ozGlIwuuNcGWSMtpR1nFfEIsMlJxDNtd/D+32wTHUn
	yD+Ll0Hrwh+mv2/cBZCKQaQ5jYTkrTJa0I9Vja2fzCB8gbMvxB6nTRMJ+t97ywnKz47VuQ8JtPTKD
	UG7lUUfzSe3tHVVTyXSRIEENjxMfdpg6B54VxU7lgMUeSyvH7AW/ZidCbhBH9DzxNKZjmfhLFUcoC
	OoD4ClZ2znQruPSAIRXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUS2V-0008Jz-V8; Tue, 12 Nov 2019 09:00:43 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUS20-0007Ty-68
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 09:00:15 +0000
Received: by mail-ua1-x944.google.com with SMTP id s14so1076308uad.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 01:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1mTS09YV5sLbGRhR8eLBR8az5kI+VEtyXkMiASWLN98=;
 b=YOUp0Sb06dRuaudxR7t7caTwSTstbvIIdATOS4cpPVNBtB8mbaIJyxZAurEvSsKwhu
 j6KD9pvfJYz2QJr9Wg8Lkuyx0LEC4wAwEfKx/Oti0eD8qvVCV0JQ6KoTRYOGcEDL6Qp6
 GECThp5a8BbccT0sBfHGbUfvnicncyqsspf6ISAwZ7HYOxZ1EzbF6I5mchGssao0Hv60
 GEltbF2Jfx1T1ZMhrqJwIHFXhSEVlYR9nWi9gL/l/q+lY7n3nZGptVdTOUwpA9LDRqBs
 zcn8s15pCOUOXG2SlncwUP0j8Ql61wdbe1m5siOyJ50PUmu+FxdXenD9CYpRSxaO3bI8
 rV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1mTS09YV5sLbGRhR8eLBR8az5kI+VEtyXkMiASWLN98=;
 b=bpfA8WVmNubFh+eEaJj+R29vVXKNyV3boB9ZkmGSIw3Rpni6cCsSOn4/Jhbf1PcRUN
 sy/3e6TlNd8NuErYWfnqWxAJNinEmD2A+7xaNCcSnlOeVdp9rnu8t0Qcscf7e59AwJff
 HH4cIZdkWrIpMRqNaK9lAKK1+PvPW2SlvK+ngDEtUbCeZge6CohNw4LhPAb/lDJxXKhh
 LZX+FVbglSOrywIDlIW84m/azFyK8xDyfd8il+zYGjmgrhia31UL9pqiPjuta+Rjf6xO
 pHbCIYHjseN7koucIaZhRe/obalk4H3EdsFPIlemvw6v7PbRvevEU16MEv6zYUluCvWU
 DeRg==
X-Gm-Message-State: APjAAAUn3jqt2jODJr4M07rJQhTZfpBz+QKSOymnbFt/ASM5rOkaadwm
 q8mUNsP/sEoqek8PCO9m0ZLg4QJSmDKnv0hZl8Vukck1
X-Google-Smtp-Source: APXvYqxabd40sALVZ8OQ7ToAPJNZ/uS9Scd5B48SraEZjMFQA9vGEPI0Qj3t3JkXgO0wuY66RFrxxze3Ex9ZHJlQsok=
X-Received: by 2002:ab0:24ce:: with SMTP id k14mr19253276uan.15.1573549208426; 
 Tue, 12 Nov 2019 01:00:08 -0800 (PST)
MIME-Version: 1.0
References: <25466090-3b24-2695-10fb-88c59be3f149@fivetechno.de>
In-Reply-To: <25466090-3b24-2695-10fb-88c59be3f149@fivetechno.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 12 Nov 2019 09:59:32 +0100
Message-ID: <CAPDyKFqo76wi0-7LQqSXuH3YOUSdTTLySzsxEGkEvZayAPuj6g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add SDR104 mode to SD-card I/F
 on rk3399-roc-pc
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_010012_283449_0D1B8146 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 at 09:45, Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Add SDR104 capability and regulators to SD card node.
> While at it, fix a typo in lcd pinctrl and remove two
> undocumented bindings from pmic.
>
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

FWIW:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
> v2: Remove always-on from vcc3v0_sd
> ---
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 30 +++++++++++++++----
>  1 file changed, 24 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index d1eb55c855b3..a31099f7620b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -135,6 +135,19 @@
>                 vin-supply = <&vcc_1v8>;
>         };
>
> +       vcc3v0_sd: vcc3v0-sd {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vcc3v0_sd_en>;
> +               regulator-name = "vcc3v0_sd";
> +               regulator-boot-on;
> +               regulator-min-microvolt = <3000000>;
> +               regulator-max-microvolt = <3000000>;
> +               vin-supply = <&vcc3v3_sys>;
> +       };
> +
>         vcc3v3_sys: vcc3v3-sys {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vcc3v3_sys";
> @@ -293,8 +306,6 @@
>                 vcc10-supply = <&vcc3v3_sys>;
>                 vcc11-supply = <&vcc3v3_sys>;
>                 vcc12-supply = <&vcc3v3_sys>;
> -               vcc13-supply = <&vcc3v3_sys>;
> -               vcc14-supply = <&vcc3v3_sys>;
>                 vddio-supply = <&vcc_3v0>;
>
>                 regulators {
> @@ -576,7 +587,7 @@
>
>         lcd-panel {
>                 lcd_panel_reset: lcd-panel-reset {
> -                       rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
> +                       rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
>                 };
>         };
>
> @@ -602,6 +613,10 @@
>                 vsel2_gpio: vsel2-gpio {
>                         rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>                 };
> +
> +               pmic_int_l: pmic-int-l {
> +                       rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> +               };
>         };
>
>         sdio-pwrseq {
> @@ -610,9 +625,9 @@
>                 };
>         };
>
> -       pmic {
> -               pmic_int_l: pmic-int-l {
> -                       rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> +       sdmmc {
> +               vcc3v0_sd_en: vcc3v0-sd-en {
> +                       rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
>         };
>
> @@ -667,6 +682,9 @@
>         cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>         disable-wp;
>         max-frequency = <150000000>;
> +       sd-uhs-sdr104;
> +       vmmc-supply = <&vcc3v0_sd>;
> +       vqmmc-supply = <&vcc_sdio>;
>         pinctrl-names = "default";
>         pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>         status = "okay";
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
