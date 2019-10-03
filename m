Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9542C98B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+cf33qa8OIGsfk8rDnB1BUo8gwTI6RtTGqH2huz5qg=; b=uxcPJMwePapSWd
	5Gt9uuMB1dyfaYf52XG9HiOJS3c68yGxsoLwfGsX1OIMtE3qYkVlRefYZqNblxkWHT0vm4IHlTp24
	tXY4QO7p9m3/svW/NGZAI9I4HN17i4nDRSOZFonWEEtibkrtsodsvv7fGgxTBvZrTT5HYiIqjEcyL
	cvVgLRUK3HxaQ34ocf15roILSPkRIXZuEk1SxMvp+J9wNrpgRovuqpgo5aihVaYi65/aq22iHqBh4
	8u1BO5lX4dE56Guo9igEJQkkCViMBZegKqkm33ngZkn2c7t5LnH/y3hv1r9Ykaf0M0SuzDMJeKl3b
	a5SE6PAZa9oFl/ZnZg6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFv23-0002li-32; Thu, 03 Oct 2019 06:56:11 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFv1v-0002kQ-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:56:04 +0000
Received: by mail-ed1-f68.google.com with SMTP id r9so1382193edl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:56:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1O/m2RHGnuqku3yr69v1puhEpk9yyZ7Bn2a9zyF0W0s=;
 b=hBgmr2sHzJfSxJTiK0i88YaaQqzLHoGB9ZjipdGlYvG8MFUDHY/ghyx8DZuKshf8Jc
 GtHSVp4hAHCyLu9AlsKon3EGLjC5N/1lC3+DE1ZHwnN8UYpjKLDWEmaUnFCJQNsWk7/w
 bASH/yPiFgyieRTtfJjtmC2SJJ0UhJOf0MgLWCgmWsc2dHzmJItG82jAS9A9Cw3PPxxm
 A8KAMCSC2YKzVsHTbkSCIxxxMlbS8lO7cJXEpDQGF4enUln0DGj9xjwCkEyWq+qnk9/U
 xIGnd8eQveBWfZVD6+rrp5vYM+2DxcPtM6E2qJ7d0xps+ZDf+338v9hx4poKoBNDKoRa
 3ufA==
X-Gm-Message-State: APjAAAVyfJQieNaa/5mVsWgSYbA+SVM+PvA4Lfacu+1sX7P1kegDrObc
 b9Q8fDlZQzlzXBlwIloCr00DXsUDLaQ=
X-Google-Smtp-Source: APXvYqxfhEH+Y2QzZElSAKzikopErhgyI0LuqxuX8GeLXwyRLj0LAQ+7OGjuI18oEK3lqrzBAmPdzw==
X-Received: by 2002:a17:906:57c3:: with SMTP id
 u3mr6257369ejr.303.1570085760503; 
 Wed, 02 Oct 2019 23:56:00 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id 36sm300095edz.92.2019.10.02.23.55.59
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 23:56:00 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id r5so1592622wrm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:55:59 -0700 (PDT)
X-Received: by 2002:a5d:55c4:: with SMTP id i4mr858936wrw.142.1570085759470;
 Wed, 02 Oct 2019 23:55:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-6-jagan@amarulasolutions.com>
In-Reply-To: <20191003064527.15128-6-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 3 Oct 2019 14:55:46 +0800
X-Gmail-Original-Message-ID: <CAGb2v64RJeHXSDknPvH3RrDLqPzSvR-p2k2vA73Zt1xsOd5TSw@mail.gmail.com>
Message-ID: <CAGb2v64RJeHXSDknPvH3RrDLqPzSvR-p2k2vA73Zt1xsOd5TSw@mail.gmail.com>
Subject: Re: [PATCH v11 5/7] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator
 support
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_235603_198830_5BEA18E8 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 2:46 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Allwinner MIPI DSI controllers are supplied with SoC
> DSI power rails via VCC-DSI pin.
>
> Add support for this supply pin by adding voltage
> regulator handling code to MIPI DSI driver.
>
> Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 14 ++++++++++++++
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 ++
>  2 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> index 446dc56cc44b..fe9a3667f3a1 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -1110,6 +1110,12 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>                 return PTR_ERR(base);
>         }
>
> +       dsi->regulator = devm_regulator_get(dev, "vcc-dsi");
> +       if (IS_ERR(dsi->regulator)) {
> +               dev_err(dev, "Couldn't get VCC-DSI supply\n");
> +               return PTR_ERR(dsi->regulator);
> +       }
> +
>         dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
>                                               &sun6i_dsi_regmap_config);
>         if (IS_ERR(dsi->regs)) {
> @@ -1183,6 +1189,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
>  static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
>  {
>         struct sun6i_dsi *dsi = dev_get_drvdata(dev);
> +       int err;
> +
> +       err = regulator_enable(dsi->regulator);
> +       if (err) {
> +               dev_err(dsi->dev, "failed to enable VCC-DSI supply: %d\n", err);
> +               return err;
> +       }
>
>         reset_control_deassert(dsi->reset);
>         clk_prepare_enable(dsi->mod_clk);
> @@ -1215,6 +1228,7 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
>
>         clk_disable_unprepare(dsi->mod_clk);
>         reset_control_assert(dsi->reset);
> +       regulator_disable(dsi->regulator);
>
>         return 0;
>  }
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> index 5c3ad5be0690..a01d44e9e461 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> @@ -12,6 +12,7 @@
>  #include <drm/drm_connector.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_mipi_dsi.h>
> +#include <linux/regulator/consumer.h>

You don't need to include the header file since you are only
including a pointer to the struct, and nothing else.

Otherwise,

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

>
>  #define SUN6I_DSI_TCON_DIV     4
>
> @@ -23,6 +24,7 @@ struct sun6i_dsi {
>         struct clk              *bus_clk;
>         struct clk              *mod_clk;
>         struct regmap           *regs;
> +       struct regulator        *regulator;
>         struct reset_control    *reset;
>         struct phy              *dphy;
>
> --
> 2.18.0.321.gffc6fa0e3
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
