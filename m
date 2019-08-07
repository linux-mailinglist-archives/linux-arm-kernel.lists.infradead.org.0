Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D6284A84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlzJjtcfu9TNOwGGfTATYS4oV4pIILBztbgQbTKHomA=; b=UoaO/VB+bDK4gg
	bJHLcaJieqjtimH7UKyjxbsmTauNSX6LmoEtMKyDwALWfRbdBJmUgBQ0zXlZQtRKxekFZUtWWFsWO
	/wDeN2KAcHENO3O7QxXE2TPXRsmCvL98jrkYW5/bQ7BpSCosDdiZ9aBKZN32LGcWvKsjBFf4oSl6F
	1TLfWpvf6N5ZkXIJOL37cd1jBRv7oQHZe86mRFRQrvYelumQc2N5oTs/XTzkngdWEjIlBo/3bseo8
	jqXNCMO+UlEZbMkfCzqtlpwdSsb2AJ0Teq2Lq3f3wlP3+WXdGNZ/69C0RUV+Aa6HC8XyU5vLD44mk
	zxNjUT9SdIiwB4KKbeFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJyI-0005gQ-9y; Wed, 07 Aug 2019 11:19:10 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJy2-0005fc-LX
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:18:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id x3so63845342lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 04:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4iBTa8F4iscBu82+17pzT3Qab/EEBbunWl8afY7niSU=;
 b=sF6dihV43csLq+fA0fDyAkqui6Go9Flk6Ct4EVEwIhwKA+FDOE33TnpFLqnjGA7NYk
 Bkw66KLdBZg3p6Az7vaeWkEJk5FVKfmEPpm533tF5X25Qf68Uzt7D/A5wSTO4s29Fg9x
 jeufz5SpgKdTTxdyA5RF2XNcbctlTFs5RrSVc77DiYB1ouw7p9dYUabMQjidkZdOy+B2
 74bfZsUxEuM15OASr9ocJErtO8WoEO3JH7YBXQZ1d1szuhNWMd9nqsvMMAqtpTzAdsuW
 W0wfCOjOn1qRD5saBPH9tmSI01KGPU7wV0TDt8yOz05FYfYw29xHGEyHrM8Dg2I7Dwdk
 eoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4iBTa8F4iscBu82+17pzT3Qab/EEBbunWl8afY7niSU=;
 b=Z9tWscBFyIRtjSOu0Qxm1IwyWlkYejo1TU/QWEdeh7lMIZ30FMiz2m+hkHvDXsSYwt
 VjtXdY22Xoyt/yIZMxyyFB0AshcAymvsyORAEKYwgpNuzDDcTQ20vqpjMSukDOjo94GA
 vNvaU3vitnQZ7v4lE1iDaMdgXrwEz+YJ70xQPu2waSl30PR/dvlMyGB+PiP7D5WGIR3r
 vMV3b/eFD6asDknXE/Gek8rXmEIjTWVTP2crwjQfA0F9wHlPdW4Id8keytSOb5fO4Vc0
 rR6qzf+zqi/qM+qvRfoDSXTJIp3iv7GyILGVYoTjROlLFyff7wWintaFp6loenuj//U6
 1QLQ==
X-Gm-Message-State: APjAAAWVeIkt5wXDkYnkGEUtfUGVXJTq+cw98XRc5XqRfJUFtniYaKyb
 uHpA8c5wc2FcszVWbu2L4KyxTtBh1NTgqXDiFTk=
X-Google-Smtp-Source: APXvYqzqCdLDUtnhayzCog26NrhjC5YUt3AaS8RJSxFNakCbMqYeiF7YIxJ4CfOxxBeLe6dzO1HWwkAP+VI5/ixRm20=
X-Received: by 2002:ac2:4a6e:: with SMTP id q14mr5361835lfp.80.1565176732480; 
 Wed, 07 Aug 2019 04:18:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-8-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-8-philippe.schenker@toradex.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 7 Aug 2019 08:19:13 -0300
Message-ID: <CAOMZO5CdWmVKXmNSLdbsmnU6_ZKwbeVArtOQzuTg_gtqTUnVag@mail.gmail.com>
Subject: Re: [PATCH v3 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
To: Philippe Schenker <philippe.schenker@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_041854_723887_65FC1417 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philippe,

On Wed, Aug 7, 2019 at 5:26 AM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> From: Stefan Agner <stefan.agner@toradex.com>
>
> Add pinmuxing and do not specify voltage restrictions for the usdhc
> instance available on the modules edge connector. This allows to use
> SD-cards with higher transfer modes if supported by the carrier board.
>
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
>
> ---
>
> Changes in v3:
> - Add new commit message from Stefan's proposal on ML

The commit message has been improved, but there is also another point
I mentioned earlier:

>
> Changes in v2: None
>
>  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 16d1a1ed1aff..67f5e0c87fdc 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -326,7 +326,6 @@
>  &usdhc1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> -       no-1-8-v;
>         cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
>         disable-wp;
>         vqmmc-supply = <&reg_LDO2>;
> @@ -671,6 +670,28 @@
>                 >;
>         };
>
> +       pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {

This new entry has been added and it is not referenced.

> +               fsl,pins = <
> +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5a
> +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1a
> +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5a
> +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5a
> +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5a
> +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5a
> +               >;
> +       };
> +
> +       pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {

Same here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
