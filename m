Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE3B28031
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0/hFZdw4XJAuQVnSbryCfnfKxDbq5xsBm10rXekmjk=; b=agNHn7St45ZXdl
	4WI2b+2jSt3csRx7daOAtVNAjmLWQoGOwP9De9gu9ieQ1muIFtM1/Xzb6doqFWO/Iigu4KnYwNpdA
	6qj+9CQOINI94EvLUzlzDGr1ImULMSTIm4xu5ZJnodx7re2mYGElI8N5EMjTP4lmF7Q4zhE+S9dLR
	HyenDPRLSZUI87eofphKyvgFeeNnt0bTRtvGJAt8GoXF1xxvVEw6HGgBLYjs5Fr2CnJ/ybmj5oTsB
	bse01dusPkh97h2H6Dk58tWKi4c3h1Q5Qdrs42pSfYUYisUD815Tr4I+uuGOL9HUPLnPSPALD2u+3
	VYH0SB7r1EtoLkvJ+v6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTp1K-0003mL-4m; Thu, 23 May 2019 14:48:38 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTp1C-0003ld-4t
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:48:31 +0000
Received: by mail-ot1-x343.google.com with SMTP id l25so5647948otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 07:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oDQBZdIvYwIinFH3kAqUI347dxABstmtY5K29nEy8mo=;
 b=HNr+lm9qrX2w9n+0DHcc8xytZybxavfe+23JfHpNgn9pseNEgnEK0UTfApLytl3g9K
 JPfxVu6Ozzs/AWTnnt8YvUO5noCYyjb5r5fdlvOHCfygSc6lc6s1KKX2G3aaws7mPgYr
 ZODo9q5J84Pvb7LDzjMKYtcbpQ+k2785cimOMJKhSrEL/BNOkiA0DvyCiJlQd6XyUI1R
 xNge4WJLZqLPiNoaN0sHp8dNBpGSjdaULSEzM5V2FUa5iUxU0A3dZd+sWCwd1nq5pZHA
 rpR1DJxBRNF/ZBXNbinJniHhF3t9FMym1Z0QdoAn0/JDUL+MySyXAunoctX5Mb4/gG/q
 77/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oDQBZdIvYwIinFH3kAqUI347dxABstmtY5K29nEy8mo=;
 b=l2uiZmnc9RyFYY+E9TGi2BL9HdJS0YX8JSFsZvDjIeyiOAJU+StE9XqCcea6+MjeUw
 UUXrxynqbBEQ/DpZ1BwnnrK2CeIP/mCuo+8sUQPQ/EMxe4qiqCdhPkNuKEg9iuwtfvfE
 r2oPFiIZnIXIQKRKc/rwUCtdC8EVIwSJD5grCt7MjhjRJCNEyJl9Ezy3vuL0lAXPgfRu
 4Aq//ZuK31A9LLqBpsAe/8qlbBlFYP6MhoojGiX0tFB1yCoBjVd3Uxw8iVadJy6+igT6
 tc98BApjRirg7myjxnVcaIPzT8dbMrvHWcdrfS33VfxI2l4mP3qDv59LHz1oV+nxWSvX
 UgHA==
X-Gm-Message-State: APjAAAVsoLkSaMhxv8IikmDbknApwEwueO+K5pXEpKAUAu9xr6lgtaOF
 EMQEPllF0bgGMOOepOV/kwYG7Fa4dW+pPevv0cY=
X-Google-Smtp-Source: APXvYqw3lXNzL20L5yiXLKv5Z3v3y22lX4Y0hQjIQiu0uAzQPUXWXHzt/EhByUGPnFRRFPnfxLaM88AV6ZYWkFV34b8=
X-Received: by 2002:a05:6830:2047:: with SMTP id
 f7mr29121701otp.312.1558622909158; 
 Thu, 23 May 2019 07:48:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065404.BB60F68B20@newverein.lst.de>
In-Reply-To: <20190523065404.BB60F68B20@newverein.lst.de>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 23 May 2019 07:48:03 -0700
Message-ID: <CA+E=qVdh-=C5zOYWYj95jLN51EaXFS6B+CQ101-f64q5QmgN3g@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: allwinner: a64: enable ANX6345 bridge on
 Teres-I
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_074830_192200_13045966 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, May 22, 2019 at 11:54 PM Torsten Duwe <duwe@lst.de> wrote:
>
> From: Icenowy Zheng <icenowy@aosc.io>
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
>  arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts |   65 +++++++++++++++++--
>  1 file changed, 61 insertions(+), 4 deletions(-)
>
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> @@ -65,6 +65,21 @@
>                 };
>         };
>
> +       panel: panel {
> +               compatible ="innolux,n116bge", "simple-panel";

IIRC Rob wanted it to be edp-connector, not simple-panel. Also you
need to introduce edp-connector binding.

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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
