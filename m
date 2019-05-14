Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDB11CE41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukB5xTK00mAXnRyvXV1R6cexF7pCi2NJbK8Js8ulSF4=; b=SPE6KWrOKmZnMr
	9MfSWp05y6GoTq/6n9qZMcm0L7uy24w2qtiEUoSxkaP/0vWmClyz2p0S8cl+E3h/6d+q15kOFU7wn
	jTjqEpqX8R/JCU1spEnvVO6fK+dZV9I9YqNCpA1jCFnzepnAxbLMU0MGk1gv51FvGjvcNBhEX4wC8
	Zu71FIWWs9wDxwQlHUFxSPSd313+HZSzzuQuNhpYAAr/lK67hE/iQfmj/T3RUTGiv46hEiokERw9e
	iTcnFfeuGdwagjIkVB1WGZzA0AeoZMD7L0Oy27tHTJRUr1dbxrKheXqDanQg1fqYc5WauiBSnuyLr
	7W+NPoCUZapIJKRFS/Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQbXW-0003F1-75; Tue, 14 May 2019 17:48:34 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQbXP-0003Eb-Iv
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:48:29 +0000
Received: by mail-oi1-x244.google.com with SMTP id u199so12795345oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 10:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NgsTwqqp4QTELA2VQObpORPn+MSwt+1NAVlS7rJZ1DM=;
 b=ewXY1DQNTyonbjv+uTp/T9kh8QUq73Y/yojjn/k8dI5sHJfbFDieQe+sL4QVPoQuBN
 1K4IVk3HQPF5Xur2KlUYUApzaPpx5qQ5pLt/9FMS/f10GwvcepdhPMtXWr+RwfnH3tZD
 eEoQdSlKXwdPMc4Y1zR78QoDyYqWjxFJgAuEnUgkFn+9rhBEnwuUJwzdnGMbS+eDOFWN
 zmYR9xiCmg9RcnXOAm/KBdm9mhUJ8lArU4QOmDepTfTPOCw16hBCppqu4vphtFDX8JqR
 k+BGeZSFdkKzb2PwtxyGo+NUDXZIjNWnQs8o5+p7VrxZ9LJFLS9NQt5B76M5sKKZKewt
 m1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NgsTwqqp4QTELA2VQObpORPn+MSwt+1NAVlS7rJZ1DM=;
 b=sBf6sevXoyApTUONSuxwthEvn//1IH4Z2I2JxzAEE6TyWKCozR2r7p394FzT6J9GRK
 l2I9NyJFYXtFVbSLDDUnDWqm81IXDDdW6oqqsCdb8sTkgYK1p+6IMK0OQLn6HE2OM4gJ
 A9xuw2FCQQpuKZql7B9s7RDdyeiZLp/VO+M/XzwcjAQVZxyVAIq6xcToVJ3mlvV4Xzon
 83b8rNEEt2AYZOGHrJr/898XAiLXJ84i+lAWHyQYP+qEOPN+8W4G1OrgWBSQcl7XLkqV
 ZfHdMeMpYpmJ36NNGDBd+EX1sFx9+R1mdspsHTXnomLXdnoiNKTl53UspyDHccJQHXIN
 yCDA==
X-Gm-Message-State: APjAAAWHW3OUImNp0p5e5v2Z0U+qjg5ZBZJZSXjPXQCFysVviVFtOH5P
 GPCKvtp9lDiEfVp47hol50VZ70byCMkGrLYtjUc=
X-Google-Smtp-Source: APXvYqwIlBQE8thnJAT4s73XlbxV7ceTFnF4jCgHAss0Y402uCwVNeNTcBhJBKF3isskLjwDR6meyAZ4ouAt/kG0fR8=
X-Received: by 2002:aca:240d:: with SMTP id n13mr3609989oic.145.1557856105979; 
 Tue, 14 May 2019 10:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
In-Reply-To: <20190514160241.9EAC768C7B@newverein.lst.de>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 14 May 2019 10:48:40 -0700
Message-ID: <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge on
 Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_104827_628985_9ED42774 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>,
 Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 9:03 AM Torsten Duwe <duwe@lst.de> wrote:
>
> From: Icenowy Zheng <icenowy@aosc.io>
>
> TERES-I has an ANX6345 bridge connected to the RGB666 LCD output, and
> the I2C controlling signals are connected to I2C0 bus.
>
> Enable it in the device tree.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> ---
>
> originally: patchwork.kernel.org/patch/10646867
>
> Changed the reset polarity, which is active low,
> according to the (terse) datasheet, Teres-I and pinebook schematics,
> and the confusing parts of the linux driver code (not yet included here).
> Active low -> no more confusion.
>
> ---
>  .../boot/dts/allwinner/sun50i-a64-teres-i.dts | 40 +++++++++++++++++--
>  1 file changed, 36 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> index c455b24dd079..bc1d0d6c0672 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> @@ -72,20 +72,38 @@
>         };
>  };
>
> +&de {
> +       status = "okay";
> +};
> +
>  &ehci1 {
>         status = "okay";
>  };
>
>
> -/* The ANX6345 eDP-bridge is on i2c0. There is no linux (mainline)
> - * driver for this chip at the moment, the bootloader initializes it.
> - * However it can be accessed with the i2c-dev driver from user space.
> - */
>  &i2c0 {
>         clock-frequency = <100000>;
>         pinctrl-names = "default";
>         pinctrl-0 = <&i2c0_pins>;
>         status = "okay";
> +
> +       anx6345: anx6345@38 {
> +               compatible = "analogix,anx6345";
> +               reg = <0x38>;
> +               reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
> +               dvdd25-supply = <&reg_dldo2>;
> +               dvdd12-supply = <&reg_dldo3>;
> +
> +               port {
> +                       anx6345_in: endpoint {
> +                               remote-endpoint = <&tcon0_out_anx6345>;
> +                       };
> +               };

It doesn't comply with bindings document. You need to add out endpoint
as well, and to do so you need to add bindings for eDP connector first
and then implement panel driver.
See Rob's suggestions here: http://patchwork.ozlabs.org/patch/1042593/

> +       };
> +};
> +
> +&mixer0 {
> +       status = "okay";
>  };
>
>  &mmc0 {
> @@ -258,6 +276,20 @@
>         vcc-hdmi-supply = <&reg_dldo1>;
>  };
>
> +&tcon0 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&lcd_rgb666_pins>;
> +
> +       status = "okay";
> +};
> +
> +&tcon0_out {
> +       tcon0_out_anx6345: endpoint@0 {
> +               reg = <0>;
> +               remote-endpoint = <&anx6345_in>;
> +       };
> +};
> +
>  &uart0 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&uart0_pb_pins>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
