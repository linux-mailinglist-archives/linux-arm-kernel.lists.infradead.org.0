Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C84381D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 01:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHgwew7zIHpE3AbWyWroK0RFhb4D9LbM2hyMI2jxsT0=; b=YrFvp8/nUtS38d
	Vfp1W/HA5Evh/XiuQuBnF8RIpIPsVikWn0z7oksHE/xWOR1qEtZXp9N+cg3Yj83QF0jKmYPe1k2gM
	oeUUX2JF172rgFv6qRKjH/W4mzpB56Q1u78V+nTg3yg9X8b5sWaA+0BNr1VrNRhOCLos5FcbUFwbX
	suq3O+/WpcMoJFjfX2njqkEbqwgarz7E6v6NX8Cww6/BiWd62uLjp3IppY9y5EKKD3mv+7kBiQElO
	ErWZ7+qH3F5tZSZpwfoRSG0JPAB43wCOza8QVGwEehGAngSHBcPAeKnWtLI1EU8ObXJqfMfjoLKpN
	s8LcEmUCL9qUBie76jDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1sj-00084P-JH; Thu, 06 Jun 2019 23:33:17 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1sQ-0007jD-Ks
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 23:33:00 +0000
Received: by mail-it1-x144.google.com with SMTP id i21so70126ita.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 16:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k0A3A4PZm4/qsXsHFur2v9UHOlrbEBQyk4vcKPIBFw0=;
 b=fkbxgUrEv8PfhTy3wvjiFFp1EImbq7M90vH3PXzj1KqC9QVgYow75jLTgKOq3FfxOL
 ZUcYMofKM9SzoTgEA4dphTznhi2DKKtXgfDNcaq0CjU9oVG3wuL1B/toPbhiZNpICNSa
 po1KErA7hXKSYO31giKbUpqEV3GmbqFoGEnmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k0A3A4PZm4/qsXsHFur2v9UHOlrbEBQyk4vcKPIBFw0=;
 b=GXjmjJ47aypfvTxJGarFGJMr9FlQVFRgWnGbhjD72MOsxYmZBuYYs37ULsFnPVnmRg
 x2v7YvauMQkDUNweGC/Ur1xJsMQKcXArvdYg1NQbDfKWo1wq+PtcJI/dwz4qB0vfQzfS
 OHDz8u32kuXXnmplfZhsM41vyxYM2eUcZIubx2j7NQJv85RycqtG28vdabRxf66xHido
 07evRMsrDinJnoaJZhYKchrYCfBJ/xTdQxKwKJPE2+6oS/WGRJyA5aTkKDfhDoA1TGop
 pSLlSHX3A3M2P1k4dky/knmD1QHwl0S2fMbXwlmzPj/+V0gCbTOM5wUqLoGZOGadRQLc
 alwg==
X-Gm-Message-State: APjAAAV2mvo817dLf/suJ1KVU+/YW83DahJrBWryfwbMPg6jatJIo2fr
 La1gRI23F23ank/u71dkL4Q/dXvwkb8=
X-Google-Smtp-Source: APXvYqxEo+5P3tyZa5n2iiDWXn1bAL145SR0PAvshH4Q9QwL8UnuYxHJjRT2ijd7X8YdI+ia65JPnw==
X-Received: by 2002:a05:660c:251:: with SMTP id
 t17mr2215205itk.7.1559863976841; 
 Thu, 06 Jun 2019 16:32:56 -0700 (PDT)
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com.
 [209.85.166.170])
 by smtp.gmail.com with ESMTPSA id t133sm122856iof.21.2019.06.06.16.32.55
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 16:32:55 -0700 (PDT)
Received: by mail-it1-f170.google.com with SMTP id h9so73539itk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 16:32:55 -0700 (PDT)
X-Received: by 2002:a02:9143:: with SMTP id b3mr9665780jag.12.1559863975142;
 Thu, 06 Jun 2019 16:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605204320.22343-2-mka@chromium.org>
In-Reply-To: <20190605204320.22343-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Jun 2019 16:32:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VnjRPokOp+DH5H04Ej=TSxKDeDWhbbJt46b6cVFnOosQ@mail.gmail.com>
Message-ID: <CAD=FV=VnjRPokOp+DH5H04Ej=TSxKDeDWhbbJt46b6cVFnOosQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_163258_747941_5F29979F 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 5, 2019 at 1:43 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> This enables wake up on Bluetooth activity when the device is
> suspended. The BT_HOST_WAKE signal is only connected on devices
> with BT module that are connected through UART.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 29 ++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index cc4c3595f145..145cac7c0847 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -23,6 +23,31 @@
>                 reg = <0x0 0x0 0x0 0x80000000>;
>         };
>
> +       bt_activity: bt-activity {
> +               compatible = "gpio-keys";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&bt_host_wake>;
> +
> +               /*
> +                * HACK: until we have an LPM driver, we'll use an
> +                * ugly GPIO key to allow Bluetooth to wake from S3.
> +                * This is expected to only be used by BT modules that
> +                * use UART for comms.  For BT modules that talk over
> +                * SDIO we should use a wakeup mechanism related to SDIO.
> +                *
> +                * Use KEY_RESERVED here since that will work as a wakeup but
> +                * doesn't get reported to higher levels (so doesn't confuse
> +                * Chrome).
> +                */
> +               bt-wake {
> +                       label = "BT Wakeup";
> +                       gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> +                       linux,code = <KEY_RESERVED>;
> +                       wakeup-source;
> +               };
> +
> +       };
> +
>         power_button: power-button {
>                 compatible = "gpio-keys";
>                 pinctrl-names = "default";
> @@ -555,6 +580,10 @@
>                         rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
>
> +               bt_host_wake: bt-host-wake {
> +                       rockchip,pins = <4 31 RK_FUNC_GPIO &pcfg_pull_down>;

nit: s/31/RK_PD7

Other than that, feel free to add my Reviewed-by assuming that this
isn't too hacky for mainline to accept while we wait for someone to
come up with a better solution.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
