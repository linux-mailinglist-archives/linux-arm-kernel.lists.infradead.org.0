Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74691A843
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 17:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoaPvFoM9gffc+H9VVkW68oeRoyXAJFerMBnom0T5l0=; b=Rc5Nkg+3LrkuKQ
	Iu/3GpkocVIT+Dq0iAPkZ7RgZarTugQVeXgJWmfmR6I+0EPLTxjOTB5Z73oBUlYrFAlcEfxdA5ZL/
	OgOzXaueac303W5D6B/loPASnQSP8saHLaOgN6t6kdaJV1hYLNXzlGQuaFIkBfmjDPMZu/DDVor37
	ZBDAEjp6RPtVu4X6AglTfUH1F/VmvYsXfsdlq8/ETYidTKU52CGHyRd5m+TOLRT5KReh8WStjCfgN
	t7KUUnDIfyPm9/pVAW6A0v4MR+uhKUhmsr+C0XBocpZRb1o42s5Es8oI3mMbMkI97Ys1/vILJJOQJ
	ukfYC9Yjg8SirxfGTaVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPU14-0001mS-0J; Sat, 11 May 2019 15:34:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPU0v-0001lx-Hv
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 15:34:19 +0000
Received: by mail-lf1-x142.google.com with SMTP id n134so6133892lfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 May 2019 08:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=84JHqpvk8mL81D3Fb9jHkIhre7Vu+1G/dx+IuNvSfMg=;
 b=iAL1t8GEA+dk7GYcG1LU+54t8yl4w0wQKm76b3bbuyLJ5MrZcLPlsMtflOKmMTeUVA
 e5tH/wDZCKzRPhyeyPcIA2C2sANNCtBmvr4BWUF7hRZ/kQQFQlmy07LOJMacc7dCjNb8
 AxLyKSDCThgWiBsI8oBsxkw8xoFmHDYiBHFiIDv7Q09iSboBZ/g95pUuFgCOmVsodfdp
 oO3juzdqxxGYjyN4KlyCXoRuoPsBv9+FPCEij6O2ytwreXvb1O/QbTOp97yJA7X/wGnh
 qIx9/8dP7cCBZIatPcNoglrGyHKyqLSjPvNOyOx+lx6tixI90xRagGbIUFhwb9L+bhZg
 TElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=84JHqpvk8mL81D3Fb9jHkIhre7Vu+1G/dx+IuNvSfMg=;
 b=WziMrjZLzEFcaEwn5Dxd7WDgRVfpxRqkv1aYYEVi1keXUBM1R0Gff7YbvfNZloArmX
 I0draHyuAtYA2NkuKR+yDm9NwhoRgue6kXp69DjaKZEOGuBvoJR5VzT4Amen32hidvyQ
 8V3E6+N6mTft7Fr+TVp2Sl+RXR4j4lik2Z9pgDg3RRz1suQgByays+E5+KjnmTZH6BW5
 nG0c8Fnj7dSJYkI+tDk9N+AveSp5ndfAvevxOhdMtbSA/5Kbfu+9YDjVndlly7tyZDU5
 r2v1l+A+z/Hv97/BXF0yM7qGfpZG3LG21Y60Y1szqF/3W8c5pX2xh5Zyr4xr71KfdFYN
 HP1g==
X-Gm-Message-State: APjAAAWs1mAlW4XI13UAF0Su56XwFTvOPmr+qdjwvNvO8x9Bc3S9PYd7
 RdrsLW0qUkx3UUJfip7jBAlnvQNMquX98xwzW1g=
X-Google-Smtp-Source: APXvYqyFSdB83+PvLvyVfaJGlXfF5Y+av+7oJkOt+vmG7S7sVxEQH18eoRtaGwY40fNCPNcELbQvjxou15T0CevLGDo=
X-Received: by 2002:ac2:5621:: with SMTP id b1mr9421588lff.27.1557588854794;
 Sat, 11 May 2019 08:34:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190501225719.3257-1-angus@akkea.ca>
 <20190501225719.3257-2-angus@akkea.ca>
In-Reply-To: <20190501225719.3257-2-angus@akkea.ca>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 11 May 2019 12:34:08 -0300
Message-ID: <CAOMZO5APMf+iuJuqXCrMNX0Ud73iANXvEs+Y59iH+g6tuMX++Q@mail.gmail.com>
Subject: Re: [PATCH v8 1/3] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_083417_596790_03A9E0D0 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Angus,

This looks good. Only minor issues:

On Wed, May 1, 2019 at 7:57 PM Angus Ainslie (Purism) <angus@akkea.ca> wrote:
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -0,0 +1,823 @@
> +/* SPDX-License-Identifier: GPL-2.0+

This should be
// SPDX-License-Identifier: GPL-2.0+

as pointed out by checkpatch.

> +       reg_1v8_p: regulator-1V8-P {

Maybe lowercase instead?

> +       wifi_pwr_en: wifi-en {
> +               compatible = "regulator-fixed";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_wifi_pwr_en>;
> +               regulator-name = "WIFI_EN";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               gpio = <&gpio3 5 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +               regulator-always-on;

Do you really needs all these regulators to be 'regulator-always-on'?

> +&i2c1 {
> +       clock-frequency = <400000>;

Maybe you could use 100kHz instead in order to avoid the problem
described by the following i.MX8M erratum:

e7805: I2C: When the I2C clock speed is configured for 400 kHz, the
SCL low period violates the I2C spec of 1.3 uS min
https://www.nxp.com/docs/en/errata/IMX8MDQLQ_1N14W.pdf

> +&usdhc2 {
> +       pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +       pinctrl-0 = <&pinctrl_usdhc2>;
> +       pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
> +       pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
> +       bus-width = <4>;
> +       vmmc-supply = <&reg_usdhc2_vmmc>;
> +       power-supply = <&wifi_pwr_en>;
> +

Unneeded blank line.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
