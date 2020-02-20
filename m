Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5EE1669FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:38:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66+E1lI7itjLxPv4L7mRIN9j0M78wuyp94IhaFCfh74=; b=iGhA6UGUJieKmV
	hNk9O6sP6OHGhoFVeXm6oTF+4fXdX3U0oEsvI8YU7r3Y6Rwrw2AJe7/+B3oICMgEXqOGDUGB2wZn6
	cwboiASfOUvw6G8o/t8rVojT0sE1ZMPTffm18LVx1CHNRjDuYVtO65zbGfsxoikJmJFHjnP1Yacgj
	eIkdyFExoGbrNr3+Dan1MmFAvundpRA3ZGhrswBG9kxVXdxwH4NE3iQ0dD5C0AB6VGZsMv730GtVi
	Um25mTxI1JeBxDthUOFledmq5mh1QUDTch1KhIaPc6M6S7c9Ah75sr3rGO17ZRHFVdPkZYbLaU2JP
	ej1e6hSXQEPihOMy5GDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tWk-0007u7-66; Thu, 20 Feb 2020 21:38:34 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tWJ-0007fg-JO
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:38:09 +0000
Received: by mail-qt1-x843.google.com with SMTP id l16so4044238qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 13:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ya7BzNWkK/aNL6Tv2iIJrxyXJnuSHN2DAiGDBEKCFME=;
 b=rQTVaInbOR0nNBRyjg7OUiy8zpk8uVI/C0yvF8JrYqzIEQXaLVgUUhJRN1dp8pKmNm
 Gwz9SKu9e2EeGhGibjXdXOkIWcD65V5R0kSHQo/FV8h/yDspwYoe45a0PxLatb83l2R2
 E+gKsNlBxI/ALyh7kYSXTVAZqLVIqD1E9iGgDyO2G+22xyqxeW2MvHdqZdc0W14QJYTg
 2f96GaDm7RjwtN9iVrbBKVYzKK61yLmEFQTwQqwxAVhOpMiVh+lWjrYiqOjcNWiCuzsd
 sjrS1O0nXJqPVxmVmzKMUoIMysA64KkWboAHu9Tn9hwDODRe1zlRhxtx+7BVuZW96B3M
 t8fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ya7BzNWkK/aNL6Tv2iIJrxyXJnuSHN2DAiGDBEKCFME=;
 b=X7uS5I6vrcZdkd997iPVdNPPwYbkGWnS7VzNc6BIGlSj9QSXt0pBAPHYq/G7wqZtEz
 06AXbbvI2w29nhUetc0Kra7xH5TGpVaTk7pWO1Nm1GhD8B4hGyJDWVfOul7dGQ8sy5oE
 xboXbepBhGuw7YHZgoRBYBw7MMKOyFkFZp7xTlSXk/C72AWPhFbDJCj55SsIV+oiFmP0
 m+6+QJ4jS+n6teb+b5ncraarh0I/6G9TG7mh9fpN7wYTiuqTHA/pwAYYR8crs3uoM2uw
 o7hd1PvWN2y6HjvwnQxqeuW6nHHO2GmtkH0zzbIUbp4/0O++FWbPdXwy3RdPUCpkOs4l
 BbmQ==
X-Gm-Message-State: APjAAAVvIWxmz+yvhcZEAdyU3JR+VhfuBN1Rc8/vocqVijzmoV4xnuGB
 IzTtCbVyIRQvakqLLfrJjgp8dVcPGDQcQbK1AKI=
X-Google-Smtp-Source: APXvYqx9EZC0JNyWfusuB4QXxIWZmS+pIpitlsLm35JVfJohfpkIicI2phemogyTKUpyQwwnIXHCmtWvSi7373Q46BM=
X-Received: by 2002:aed:2510:: with SMTP id v16mr28785378qtc.306.1582234686749; 
 Thu, 20 Feb 2020 13:38:06 -0800 (PST)
MIME-Version: 1.0
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-7-anarsoul@gmail.com>
 <20200220141725.GG4998@pendragon.ideasonboard.com>
In-Reply-To: <20200220141725.GG4998@pendragon.ideasonboard.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 20 Feb 2020 13:37:53 -0800
Message-ID: <CA+E=qVe7vMwK3m-AfTiK+mL=9+rD7dNWjYSXBLgZZnMU1zPeSg@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: allwinner: a64: enable LCD-related hardware
 for Pinebook
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_133807_665871_C6C63246 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 Stephan Gerhold <stephan@gerhold.net>, Jonas Karlman <jonas@kwiboo.se>,
 Torsten Duwe <duwe@suse.de>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 6:17 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Vasily,

Hi Laurent,

> Thank you for the patch.
>
> On Thu, Feb 20, 2020 at 12:35:08AM -0800, Vasily Khoruzhick wrote:
> > From: Icenowy Zheng <icenowy@aosc.io>
> >
> > Pinebook has an ANX6345 bridge connected to the RGB666 LCD output and
> > eDP panel input. The bridge is controlled via I2C that's connected to
> > R_I2C bus.
> >
> > Enable all this hardware in device tree.
> >
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  .../dts/allwinner/sun50i-a64-pinebook.dts     | 69 ++++++++++++++++++-
> >  1 file changed, 68 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > index c06c540e6c08..f5633f550d8a 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > @@ -48,6 +48,18 @@ lid_switch {
> >               };
> >       };
> >
> > +     panel_edp: panel-edp {
> > +             compatible = "neweast,wjfh116008a";
> > +             backlight = <&backlight>;
> > +             power-supply = <&reg_dc1sw>;
> > +
> > +             port {
> > +                     panel_edp_in: endpoint {
> > +                             remote-endpoint = <&anx6345_out_edp>;
> > +                     };
> > +             };
> > +     };
> > +
> >       reg_vbklt: vbklt {
> >               compatible = "regulator-fixed";
> >               regulator-name = "vbklt";
> > @@ -109,6 +121,10 @@ &dai {
> >       status = "okay";
> >  };
> >
> > +&de {
> > +     status = "okay";
> > +};
> > +
> >  &ehci0 {
> >       phys = <&usbphy 0>;
> >       phy-names = "usb";
> > @@ -119,6 +135,10 @@ &ehci1 {
> >       status = "okay";
> >  };
> >
> > +&mixer0 {
> > +     status = "okay";
> > +};
> > +
> >  &mmc0 {
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&mmc0_pins>;
> > @@ -177,12 +197,45 @@ &pwm {
> >       status = "okay";
> >  };
> >
> > -/* The ANX6345 eDP-bridge is on r_i2c */
> >  &r_i2c {
> >       clock-frequency = <100000>;
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&r_i2c_pl89_pins>;
> >       status = "okay";
> > +
> > +     anx6345: anx6345@38 {
> > +             compatible = "analogix,anx6345";
> > +             reg = <0x38>;
> > +             reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
> > +             dvdd25-supply = <&reg_dldo2>;
> > +             dvdd12-supply = <&reg_fldo1>;
> > +
> > +             ports {
> > +                     #address-cells = <1>;
> > +                     #size-cells = <0>;
> > +
> > +                     anx6345_in: port@0 {
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +                             reg = <0>;
> > +                             anx6345_in_tcon0: endpoint@0 {
> > +                                     reg = <0>;
> > +                                     remote-endpoint = <&tcon0_out_anx6345>;
> > +                             };
>
> As there's a single endpoint, you can drop the reg property, the @0
> suffix, and the #address-cells and #size-cells property in the port@0
> node (but not in the ports node).

Will do

> > +                     };
> > +
> > +                     anx6345_out: port@1 {
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +                             reg = <1>;
> > +
> > +                             anx6345_out_edp: endpoint@0 {
> > +                                     reg = <0>;
> > +                                     remote-endpoint = <&panel_edp_in>;
> > +                             };
>
> Same here.

Will do

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Thanks for reviewing the series!


>
> > +                     };
> > +             };
> > +     };
> >  };
> >
> >  &r_pio {
> > @@ -357,6 +410,20 @@ &sound {
> >                       "MIC2", "Internal Microphone Right";
> >  };
> >
> > +&tcon0 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&lcd_rgb666_pins>;
> > +
> > +     status = "okay";
> > +};
> > +
> > +&tcon0_out {
> > +     tcon0_out_anx6345: endpoint@0 {
> > +             reg = <0>;
> > +             remote-endpoint = <&anx6345_in_tcon0>;
> > +     };
> > +};
> > +
> >  &uart0 {
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&uart0_pb_pins>;
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
