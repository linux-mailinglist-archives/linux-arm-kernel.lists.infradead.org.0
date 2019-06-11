Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A7C3D0B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwaY+jIHRt1/QRHejfSs1gODc3q+wvIgxCN1mKzHck8=; b=clCHFWolEs0gdZ
	I4JSeIwSS9I827Cd28M68xk7+JZpc88f3S/RJGf83MwF6HhRfnIntE83/bujxAwnuN+xXzXyNFMxR
	bAWL3NekKjM4JKzcU61eJiEZRY6kUE99TZpIMYJDm4Xk2k4/EbV6N25A5x96IjamVNfiiBi0U427U
	/NIDcrKwAnqATsgpCjEHU8H+l76oFIQvJkisea+kkd0i2JQcIDwLO5cWGHXd+LUvEF3ejOZ7EIQQK
	d9X0yMwtLflrzv/xHhFgqoANGTZ1s8yspamz3UAfXzY0WxOjB7AfgG0gJ+cN076KkGsRkqIZw/gN7
	MUFLXTAg5rbjYodumqFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haif1-0008Dx-6E; Tue, 11 Jun 2019 15:26:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiek-0008BK-ET; Tue, 11 Jun 2019 15:25:51 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6D602145D;
 Tue, 11 Jun 2019 15:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560266750;
 bh=d/VaFO2GopJ/soJKDMYISKQ69HFRcP7EG77tPBICDJk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CdshHLDgJ7Z/1d5LTs2sVuwWCODL2x/qXUFAMEQPKZm794Tm7ad0pFwve7BIfoo62
 4WDI7usTGjFy11bRMh+JpMTO5ZOpdW4p4qrqu8N+4vInTl3LBXaRd+8FMIxGt33wcR
 dracVjyhFWQwwtHdPHeCNubvSPz6pWMOO7QqSbIQ=
Received: by mail-qt1-f178.google.com with SMTP id s15so14979949qtk.9;
 Tue, 11 Jun 2019 08:25:49 -0700 (PDT)
X-Gm-Message-State: APjAAAXxd6Yb0WnofY4zjd1+kYuMMCa5wl9WRaOJncKLGhadu6JIr2Vg
 EI43+Y7J7C52KELZWoZqBzxn8oJI6dm5r3irpQ==
X-Google-Smtp-Source: APXvYqzPjuRg7gzez7BpTEniSzx8damxLOxBNc/30j7Wqsby4Sg0SN/ftQhCVmvj52vSz6sLfP6GnUjon1dfQkvHQ3o=
X-Received: by 2002:a05:6214:248:: with SMTP id
 k8mr29740285qvt.200.1560266749174; 
 Tue, 11 Jun 2019 08:25:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-3-dbasehore@chromium.org>
In-Reply-To: <20190611040350.90064-3-dbasehore@chromium.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 11 Jun 2019 09:25:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLM1CikZ8+NPjLk2CEW-z9vPynZpVG20x0jsa7hVq0LvA@mail.gmail.com>
Message-ID: <CAL_JsqLM1CikZ8+NPjLk2CEW-z9vPynZpVG20x0jsa7hVq0LvA@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: display/panel: Expand rotation
 documentation
To: Derek Basehore <dbasehore@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_082550_541015_2985AA50 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:03 PM Derek Basehore <dbasehore@chromium.org> wrote:
>
> This adds to the rotation documentation to explain how drivers should
> use the property and gives an example of the property in a devicetree
> node.
>
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  .../bindings/display/panel/panel.txt          | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/panel/panel.txt b/Documentation/devicetree/bindings/display/panel/panel.txt
> index e2e6867852b8..f35d62d933fc 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel.txt
> +++ b/Documentation/devicetree/bindings/display/panel/panel.txt
> @@ -2,3 +2,35 @@ Common display properties
>  -------------------------
>
>  - rotation:    Display rotation in degrees counter clockwise (0,90,180,270)
> +
> +Property read from the device tree using of of_drm_get_panel_orientation

Don't put kernel specifics into bindings.

> +
> +The panel driver may apply the rotation at the TCON level, which will

What's TCON? Something Mediatek specific IIRC.

> +make the panel look like it isn't rotated to the kernel and any other
> +software.
> +
> +If not, a panel orientation property should be added through the SoC
> +vendor DRM code using the drm_connector_init_panel_orientation_property
> +function.

The 'rotation' property should be defined purely based on how the
panel is mounted relative to a device's orientation. If the display
pipeline has some ability to handle rotation, that's a feature of the
display pipeline and not the panel.

> +
> +Example:

This file is a collection of common properties. It shouldn't have an
example especially as this example is mostly non-common properties.

> +       panel: panel@0 {
> +               compatible = "boe,himax8279d8p";
> +               reg = <0>;
> +               enable-gpios = <&pio 45 0>;

> +               pp33-gpios = <&pio 35 0>;
> +               pp18-gpios = <&pio 36 0>;

BTW, are these upstream because they look like GPIO controlled
supplies which we model with gpio-regulator binding typically.

> +               pinctrl-names = "default", "state_3300mv", "state_1800mv";
> +               pinctrl-0 = <&panel_pins_default>;
> +               pinctrl-1 = <&panel_pins_3300mv>;
> +               pinctrl-2 = <&panel_pins_1800mv>;
> +               backlight = <&backlight_lcd0>;
> +               rotation = <180>;
> +               status = "okay";
> +
> +               port {
> +                       panel_in: endpoint {
> +                               remote-endpoint = <&dsi_out>;
> +                       };
> +               };
> +       };
> --
> 2.22.0.rc2.383.gf4fbbf30c2-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
