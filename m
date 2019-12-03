Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6E811007B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJREaY6dubeNLPVdHVAY/D1RBKDxOKu3Q808upTXISs=; b=I5GZtMSJV64N/T
	ZMLoGfHSjdyMhePki5QsHhJcTrlSZxQxxNxCBLmHZ8tYpA756mf7TNCWRSDvxQTR+yaGBJOBOKWiG
	fC2DwEZ581i/1iGlR7rylAKyPs0AUJNJZh+0Har4gEWnzlEMExLt1dyNFP0B/ld9LW6UIAq7pPTeP
	itssaTxV//kqz9OFqcaeN0W8SjUbR6i3aYjXO7oXrTysgLiX3gVXWrsVAoo+gYDK77uatIIMhiRm6
	oqJLC+RKZktGLrnmUm4uucA4TQkg/AaUBaxjfIjDNBgZC98iauj47MARQ7Mxc6YBkUtbFEgMVyRq7
	uvD1TW/HXYUBkWYwc38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9La-0005PG-7F; Tue, 03 Dec 2019 14:40:14 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9LI-0005OO-F6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:39:58 +0000
Received: by mail-ed1-f68.google.com with SMTP id cm12so3320550edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 06:39:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oPEnXL1XzID9qd2Be+10pgTMy8eYDYLQQ70JFSTiM08=;
 b=dhT3+NNlCH0Sc/wq31cXMWPGmvy8QekYvj3ElgmSa0EoXaYzYLFF09YimLQV4qcRti
 D4WhG18BQgOjtCIqJL0XKGRddEE3U6tsJ0ytiUgqBWAafLfiQ2N20UvBYWGaZNGtG1gc
 qg34F5EkuReEbE2C+JVRH/ZXaZTpWapgRlT366K6i1KxjFd2ri78SH6v6w5ELAqcCxyo
 OUv8owFsw8I7UF4+IwuTJJ7I+q7CjqHJ4JhD0GA77mNspUCoLL6iAy9DhfOXB+qknoxj
 V4m7StJ1vxS8t9+e0h7K0hNCdWyUfbmRnaNTdbIX81cSmdmcsHnugC6SKZrjCUA0pzZI
 dL9w==
X-Gm-Message-State: APjAAAV22GplaLWrWqDf6HxcFni3vijepc/9ssfi7NpamxJd6iXOZPof
 hClBb5/io+tGM6TznerawmGwBjvtg/U=
X-Google-Smtp-Source: APXvYqy6gVkq9l71OoRBihP/VeYymBFx14g6P1ZQmhrriVnFUE/DfepSInbacOG76ArtNRMrHE/Cmg==
X-Received: by 2002:a17:906:7e53:: with SMTP id
 z19mr6306644ejr.289.1575383991858; 
 Tue, 03 Dec 2019 06:39:51 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id d22sm86296edp.25.2019.12.03.06.39.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Dec 2019 06:39:51 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id q10so3917519wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 06:39:51 -0800 (PST)
X-Received: by 2002:a5d:6b88:: with SMTP id n8mr5834386wrx.288.1575383991083; 
 Tue, 03 Dec 2019 06:39:51 -0800 (PST)
MIME-Version: 1.0
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-4-jagan@amarulasolutions.com>
In-Reply-To: <20191203134816.5319-4-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 3 Dec 2019 22:39:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v67kQ391QJhQYYYEdchHpRYBUDji=iYMZ9fKY3aCw0He-Q@mail.gmail.com>
Message-ID: <CAGb2v67kQ391QJhQYYYEdchHpRYBUDji=iYMZ9fKY3aCw0He-Q@mail.gmail.com>
Subject: Re: [PATCH v12 3/7] drm/sun4i: dsi: Add has_mod_clk quirk
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_063956_508701_2A1BC308 
X-CRM114-Status: GOOD (  25.83  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 9:48 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> As per the user manual, look like mod clock is not mandatory
> for all Allwinner MIPI DSI controllers, it is connected to
> CLK_DSI_SCLK for A31 and not available in A64.
>
> So add has_mod_clk quirk and process the mod clk accordingly.
>
> Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v12:
> - none
>
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 38 ++++++++++++++++++--------
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  5 ++++
>  2 files changed, 32 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> index c958ca9bae63..8c4c541224dd 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -11,6 +11,7 @@
>  #include <linux/crc-ccitt.h>
>  #include <linux/module.h>
>  #include <linux/of_address.h>
> +#include <linux/of_device.h>
>  #include <linux/phy/phy-mipi-dphy.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> @@ -1093,6 +1094,7 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>         dsi->dev = dev;
>         dsi->host.ops = &sun6i_dsi_host_ops;
>         dsi->host.dev = dev;
> +       dsi->variant = of_device_get_match_data(dev);
>
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>         base = devm_ioremap_resource(dev, res);
> @@ -1120,17 +1122,20 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>                 return PTR_ERR(dsi->reset);
>         }
>
> -       dsi->mod_clk = devm_clk_get(dev, "mod");
> -       if (IS_ERR(dsi->mod_clk)) {
> -               dev_err(dev, "Couldn't get the DSI mod clock\n");
> -               return PTR_ERR(dsi->mod_clk);
> +       if (dsi->variant->has_mod_clk) {
> +               dsi->mod_clk = devm_clk_get(dev, "mod");
> +               if (IS_ERR(dsi->mod_clk)) {
> +                       dev_err(dev, "Couldn't get the DSI mod clock\n");
> +                       return PTR_ERR(dsi->mod_clk);
> +               }
>         }
>
>         /*
>          * In order to operate properly, that clock seems to be always
>          * set to 297MHz.
>          */
> -       clk_set_rate_exclusive(dsi->mod_clk, 297000000);
> +       if (dsi->variant->has_mod_clk)
> +               clk_set_rate_exclusive(dsi->mod_clk, 297000000);

The clk API can handle NULL pointers, so you don't need to add the if here...

>
>         dsi->dphy = devm_phy_get(dev, "dphy");
>         if (IS_ERR(dsi->dphy)) {
> @@ -1160,7 +1165,8 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>  err_pm_disable:
>         pm_runtime_disable(dev);
>  err_unprotect_clk:
> -       clk_rate_exclusive_put(dsi->mod_clk);
> +       if (dsi->variant->has_mod_clk)
> +               clk_rate_exclusive_put(dsi->mod_clk);

and here...

>         return ret;
>  }
>
> @@ -1172,7 +1178,8 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
>         component_del(&pdev->dev, &sun6i_dsi_ops);
>         mipi_dsi_host_unregister(&dsi->host);
>         pm_runtime_disable(dev);
> -       clk_rate_exclusive_put(dsi->mod_clk);
> +       if (dsi->variant->has_mod_clk)
> +               clk_rate_exclusive_put(dsi->mod_clk);

and here ...

>
>         return 0;
>  }
> @@ -1189,7 +1196,8 @@ static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
>         }
>
>         reset_control_deassert(dsi->reset);
> -       clk_prepare_enable(dsi->mod_clk);
> +       if (dsi->variant->has_mod_clk)
> +               clk_prepare_enable(dsi->mod_clk);

and here...

>
>         /*
>          * Enable the DSI block.
> @@ -1217,7 +1225,8 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
>  {
>         struct sun6i_dsi *dsi = dev_get_drvdata(dev);
>
> -       clk_disable_unprepare(dsi->mod_clk);
> +       if (dsi->variant->has_mod_clk)
> +               clk_disable_unprepare(dsi->mod_clk);

and here.

>         reset_control_assert(dsi->reset);
>         regulator_disable(dsi->regulator);
>
> @@ -1230,9 +1239,16 @@ static const struct dev_pm_ops sun6i_dsi_pm_ops = {
>                            NULL)
>  };
>
> +static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
> +       .has_mod_clk = true,
> +};
> +
>  static const struct of_device_id sun6i_dsi_of_table[] = {
> -       { .compatible = "allwinner,sun6i-a31-mipi-dsi" },
> -       { }
> +       {
> +               .compatible = "allwinner,sun6i-a31-mipi-dsi",
> +               .data = &sun6i_a31_mipi_dsi,
> +       },
> +       { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> index 3f4846f581ef..d791c9f6fccf 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> @@ -15,6 +15,10 @@
>
>  #define SUN6I_DSI_TCON_DIV     4
>
> +struct sun6i_dsi_variant {
> +       bool                    has_mod_clk;
> +};
> +

You could choose to put this above the probe function, since this isn't used
anywhere else, and a pointer field doesn't need the full definition.

ChenYu

>  struct sun6i_dsi {
>         struct drm_connector    connector;
>         struct drm_encoder      encoder;
> @@ -31,6 +35,7 @@ struct sun6i_dsi {
>         struct sun4i_drv        *drv;
>         struct mipi_dsi_device  *device;
>         struct drm_panel        *panel;
> +       const struct sun6i_dsi_variant  *variant;
>  };
>
>  static inline struct sun6i_dsi *host_to_sun6i_dsi(struct mipi_dsi_host *host)
> --
> 2.18.0.321.gffc6fa0e3
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
