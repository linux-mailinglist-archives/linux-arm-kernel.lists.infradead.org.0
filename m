Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101AA74105
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 23:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QA2QkUb4DTwS4BstC05wOARWKut77l0ol7S6t8pVjlc=; b=KYD+joStc6noJx
	qrzb6Xbe81sKCfP9hBm81aV7y6P4pwRYiyqi6nRrWAP344TJNg1bWSPd77XanMbDv3KdtvxMx2wDD
	M3TJbJkMSwVcjDMcj6rK3F+dPZBCviXn4c07XKKJLvQGv2Y+IEcNr6bEmkK62N6KUIEkJh0dOqtYe
	2AI851afHFgIlBWP8/HUUWSBYFiLtVaM82he4Hul6ZJzSm+1jCYq8rOJTACKEAYVX8TncV7xrjJO2
	Uzkg5JMwy/Oh2+AwdESpeL1t9y35ctKnV+WDK82+NAv3UnM5BQIcWEQsVbuQKrInJnGlmDvxT0i5m
	RndCPIKDbM/v3uGYNUZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqP6R-0000EG-IU; Wed, 24 Jul 2019 21:47:15 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqP5y-0000DA-1k
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 21:46:47 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so92874561ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 14:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eOzpntW4jYuzCuRORz9nWSGQo3322zBOXDNxUCNWQVo=;
 b=N49uHsHU+zcaMFDqNV4M15/FPHDeWl0BFf+uvUz6Ah/f9VZ3iGgGU7udezJpszRZrl
 OuaZ+b0F8RqK82CQm9avLSxoSp0LcZU237Tk1WiIDqICFMob+o2PoxWNVNtFnmSMARna
 DzJTZ6PwcljRvItJBPksdvEKkg7zDpVhXGLzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eOzpntW4jYuzCuRORz9nWSGQo3322zBOXDNxUCNWQVo=;
 b=g1UQEiKL8Mt9kqssXZrfdLHhqnEtvJuEdkq6w3iP1lfrcwWmDZ65uWazLqX0lWcZnG
 Qzh2L0keggHChVxlVMgTfeW06exEXuUlokfljrPrtMMAeKEtq19kOOLxOw890jUiq6yv
 n5wf4tgL4aWNbG3J/OY2gs6JQBgs6+02uxBQj1PjYX4uSIz/Z1s4c+joeRO1OYITENGG
 ecLuomW+O5M5s/ABSA1cR5O8mfF3HhWwM9FjvKd0XEL0Vw2JMikUttq0dac81QrKoMcX
 LunU2HFY+ac26AqFkrYUEiJdqLEK7lp0RQhWyGgBE/5ypskM8hc1yp1u6gnl6ZHdDrUB
 SMMA==
X-Gm-Message-State: APjAAAVLDwZHdPKYoLH2vIafxj8pkqp/pOj24Qz4Ozi2GQqU6z8wBfP3
 kJVdVLSkRgulFLaZkeWWwMiqedVpHTc=
X-Google-Smtp-Source: APXvYqz0GZ5l6B1bcWnZuLBZKua2d8U6LeONp/V67ETZimLs8RQ9yJlOMrQYvrFEatttuFwYKPgwzw==
X-Received: by 2002:a5e:d51a:: with SMTP id e26mr72106534iom.71.1564004804594; 
 Wed, 24 Jul 2019 14:46:44 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id y18sm46599038iob.64.2019.07.24.14.46.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 14:46:44 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id e20so62436644iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 14:46:44 -0700 (PDT)
X-Received: by 2002:a6b:5103:: with SMTP id f3mr74359598iob.142.1564004803178; 
 Wed, 24 Jul 2019 14:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190711223455.12210-1-mka@chromium.org>
 <20190711223455.12210-2-mka@chromium.org>
In-Reply-To: <20190711223455.12210-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Jul 2019 14:46:30 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
Message-ID: <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: rockchip: consolidate veyron panel and
 backlight settings
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_144646_122402_7DD032FC 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> index 4cc7d3659484..2b0801a539c9 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -15,40 +15,6 @@
>                      "google,veyron-minnie-rev0", "google,veyron-minnie",
>                      "google,veyron", "rockchip,rk3288";
>
> -       backlight_regulator: backlight-regulator {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&bl_pwr_en>;
> -               regulator-name = "backlight_regulator";
> -               vin-supply = <&vcc33_sys>;
> -               startup-delay-us = <15000>;
> -       };
> -
> -       panel_regulator: panel-regulator {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&lcd_enable_h>;
> -               regulator-name = "panel_regulator";
> -               startup-delay-us = <100000>;
> -               vin-supply = <&vcc33_sys>;
> -       };
> -
> -       vcc18_lcd: vcc18-lcd {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&avdd_1v8_disp_en>;
> -               regulator-name = "vcc18_lcd";
> -               regulator-always-on;
> -               regulator-boot-on;
> -               vin-supply = <&vcc18_wl>;
> -       };
> -
>         volume_buttons: volume-buttons {
>                 compatible = "gpio-keys";
>                 pinctrl-names = "default";

You forgot to remove the line:

power-supply = <&backlight_regulator>;

...from minnie.


> diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> index 9b6f4d9b03b6..06af58e37a4b 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> @@ -14,7 +14,14 @@
>         compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
>                      "google,veyron", "rockchip,rk3288";
>
> +       /delete-node/backlight-regulator;
> +       /delete-node/panel-regulator;
>         /delete-node/emmc-pwrseq;
> +       /delete-node/vcc18-lcd;
> +};
> +
> +&backlight {
> +       /delete-property/power-supply;
>  };
>
>  &emmc {
> @@ -52,7 +59,17 @@
>         i2c-scl-rising-time-ns = <300>;
>  };
>
> +&panel {
> +       power-supply= <&vcc33_lcd>;

Might as well put a space before the "="?


>  &pinctrl {
> +       /delete-node/ lcd;
> +
> +       backlight {
> +               /delete-node/ bl_pwr_en;
> +       };

I general as the defender of "pinky", I'll let Heiko confirm he's OK
with the color of this bikeshed.  Sometimes a bit of repetition is
preferred over a bunch of confusing /delete-node/ statements since
those tend to make things harder to reason about in general.  In this
case I think things are cleaner after your patch but I won't say it's
100% clear cut.

Other than nits I have double-checked this patch, so feel free to add
my Reviewed-by after nits are fixed.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
