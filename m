Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B632634BA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkWMRONjDt5E95uER/K93eNfImtSe4BnMqZU8lXLyNU=; b=VmmrP3WPICVW0K
	Mn6uFMQzkmh/NP+iV+tq8GTlBPHBdYtjCRzMxul0xnrrP7rlOb3bFlEh9Dsd5ncVMNxshWTtj/Now
	Q5jX6loGl/KHVe0Tf20uC9kTxotUPFDbMb2LOe/axZWa/WzVyc7qJKZWacPkPBgDsXBbYgLP+W4/P
	UaAyRQkOF2qHIoW8tcNCL+jDd5eNrVIan/S713FbK5FoTE9jnuIFOfTwEERf11Jw7ruGnFZMGfj4U
	S2Pd9/Ik9XRlY2d+uXbqU33kubgRIWWJONzgrp40BlI0mo0g7WLv/coUKAnWPeyKdAIwt4dGwrxWg
	L2bz6Sm5fQvtbaRvPOXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYB3t-0006jh-8t; Tue, 04 Jun 2019 15:09:17 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYB3m-0006if-S8
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:09:12 +0000
Received: by mail-ot1-x343.google.com with SMTP id n14so19874368otk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 08:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XKSHYo9ctUMrD0sjylIwNb1es2ByOZKas8LIpRbYBmw=;
 b=iQ0KHhetCVR5IsqwtBICpgv+IF3ki1lApWvboK97GBOeFeF30aJpMMIc+Pv7G75AzY
 fbNFD0cVlFkARgRfffG0B0/ymhuaz58CPbPj1tRw3w/wzMKB/Q9gh9wimCyFPHETfFCB
 dIlApbe6rwG169C0YAk650uTa+EZqQlRNnBrNEBsmKxauoxatj6zeERRwK4njpSkGPQV
 Sda9jJhVREVTr/Wpb2Z+NAAcN0xOxA0sXnrZarbBM3lS0tAqTyWiI86aYo1/4ZcACEZ/
 B6v91CjdXTlpIAC3w9zSbHeDKu1YHNDQILpNAF6OD0np8sOXOnghUlUz0KHM/jlYzvDX
 hhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XKSHYo9ctUMrD0sjylIwNb1es2ByOZKas8LIpRbYBmw=;
 b=SLJ9Sm8YvLiW+790tldvhbGaJrA8rCYEuQQTcKrqxy2Taep3KNUBId2sgGemV4kV8s
 KKzQosXitfv9yxyAjFbid7pB4pB88rLMZ8rCfXaiVveti91QuzOmIOWZkjGRJicsVRC1
 ylsXthZ29xYLX3LTsydhfOFejsClRY6o8LgbpUXyafRKMmNgxIG0oYy0wTixj+F8f/o6
 WgRiiwQLieK3src0Pv88hYE+V8e3++oJvICHW/aPCYCwmyH1H6qFKiAER4AB4abDsvaT
 h/upj/b6E0CBBc8IgT16GKNKotBs0HYdrKlAm5rMWj4Lk91A738AURbUzcqBZA+x7CCU
 mLuw==
X-Gm-Message-State: APjAAAX8JhViS4SiXGiSZbDZXlVmJXOcUgrBCuXjgZnPz96/aQP2NjCF
 yl3enYwTaZu6Xer7desMeKZmGm6H3/iNIwwCNGA=
X-Google-Smtp-Source: APXvYqwWBcudZPjaM9b9iqmRFgfE4JacyimajXEuFISTyDx4p3PP+AK36wMIWf9cNbNJe5l9iy35X4ISimTqp7AgU2I=
X-Received: by 2002:a9d:d87:: with SMTP id 7mr5183267ots.263.1559660947275;
 Tue, 04 Jun 2019 08:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
In-Reply-To: <20190604122308.98D4868B20@newverein.lst.de>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 4 Jun 2019 08:08:40 -0700
Message-ID: <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_080910_904297_EFE35C7F 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 5:23 AM Torsten Duwe <duwe@lst.de> wrote:
>
> Teres-I has an anx6345 bridge connected to the RGB666 LCD output, and
> the I2C controlling signals are connected to I2C0 bus. eDP output goes
> to an Innolux N116BGE panel.
>
> Enable it in the device tree.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> ---
>  .../boot/dts/allwinner/sun50i-a64-teres-i.dts      | 65 ++++++++++++++++++++--
>  1 file changed, 61 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> index 0ec46b969a75..a0ad438b037f 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> @@ -65,6 +65,21 @@
>                 };
>         };
>
> +       panel: panel {
> +               compatible ="innolux,n116bge", "simple-panel";

It's still "simple-panel". I believe I already mentioned that Rob
asked it to be edp-connector.

> +               status = "okay";
> +               power-supply = <&reg_dcdc1>;
> +               backlight = <&backlight>;
> +
> +               ports {
> +                       panel_in: port {
> +                               panel_in_edp: endpoint {
> +                                       remote-endpoint = <&anx6345_out>;
> +                               };
> +                       };
> +               };
> +       };
> +
>         reg_usb1_vbus: usb1-vbus {
>                 compatible = "regulator-fixed";
>                 regulator-name = "usb1-vbus";
> @@ -81,20 +96,48 @@
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
> +               ports {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       port@0 {
> +                               anx6345_in: endpoint {
> +                                       remote-endpoint = <&tcon0_out_anx6345>;
> +                               };
> +                       };
> +                       port@1 {
> +                               anx6345_out: endpoint {
> +                                       remote-endpoint = <&panel_in_edp>;
> +                               };
> +                       };
> +               };
> +       };
> +};
> +
> +&mixer0 {
> +       status = "okay";
>  };
>
>  &mmc0 {
> @@ -279,6 +322,20 @@
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
> --
> 2.16.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
