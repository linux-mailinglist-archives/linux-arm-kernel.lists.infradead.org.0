Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0604752011
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 02:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMkHKaKQBNVySPRtlMiYY6gvUnDqCrk1Oidxc2X7GlA=; b=N5SVTOPpY5uqKg
	2iErJMRUaD37i/IDQh0p6ooK3EE99VEWfNTYDHByiekhAyx32881Soi9ZIs8rfM0QdLzSEyyRQmQV
	6MtUXk0qpihmO6DZHS/1AuvfMsb01rViio3xO+5MjuXcKvHSuDRCMvhky7gulu0oikcWtFGbTtZRc
	iJYB762Oyq/SbJth+rLyvwVQI/C2iXbrKQQmpT9MUIAH3nYMbzUx9V6iQB0DANIwKiwmoP0/9q52A
	jlPQBjNGJs4oXX7ASlNstLiFupHuJzDVgtLK3266LaBMpxW5h5u0VeHiQUDxB/VFvlIvPT49n05j0
	ww/mwu5omy/N8dGYW/ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfZYQ-0000a9-Sy; Tue, 25 Jun 2019 00:43:22 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfZYE-0000Yw-AG
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 00:43:11 +0000
Received: by mail-qk1-x743.google.com with SMTP id m14so11240383qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 17:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e2ogumH57Dk+mOO0y5/CmcdAve3k/tPr0Lofkj3W1yQ=;
 b=gn85bRpxX7rX0vPi2OF9kz6nsjSpDytW5uaW02EslXpNifmNJJW+bfXA/vNHvtnfyd
 LEbGvEe0UTmhomOdUgl3WLDYKeBbP9GS8Ul3o4lm0omA18ix5UVvi5y53tJ9mWlSYZ+O
 2tGmkRpE9D4p4h3dyylbbuMMhbJXozsVkMUW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e2ogumH57Dk+mOO0y5/CmcdAve3k/tPr0Lofkj3W1yQ=;
 b=du1U1pRrWJ+5+jtsdf7ALD/HsaAktitNzQts6qlMmTsgL532hsRJQtw1wE85oacPpn
 g7CyZJT1wGSa/xfC4hl+a1cZ7D2f4kaPbrFvMVc4VX/0Ihi/JvlDiK1w8xcd1YKqWypi
 mqcXctNGOMtoKK67TwrRUfoAkw4KUYrNcgdNLA4JlVW5pJ9Z+74+/b5zVkyQOtN3pOvT
 tObVWbcypOZCu8bcRlegWXOn3Fp/R/w6lUg0ltKnLu50Tn6TZeBO2X0OZuwhdFhtEtSa
 bIj0amEB5t4Mxrt04QO47c8f4aq7/ikLgIicUTt/qzOrx6XAzAJQ9jO3ExUVfbs+/IZj
 Z/pg==
X-Gm-Message-State: APjAAAU/opLE273qwu07YLIbXCAKIm3mnOQcwLjQL5n3s6NZiH+Vifh+
 JPFEbn8R2OCSWJQHU36Q7D3A7+Ljbm8pYy5q7F+z+Q==
X-Google-Smtp-Source: APXvYqwwA4s9JiBdyoHXEJ7/imxeIhWDD7nr1Z+Ib6NtNVV+u9MWlCR9lGtMIebURg5vdee28cPPsppvaqexL5f8k3E=
X-Received: by 2002:a37:9c88:: with SMTP id
 f130mr19471044qke.457.1561423388940; 
 Mon, 24 Jun 2019 17:43:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190624080001.67222-1-jitao.shi@mediatek.com>
 <20190624080001.67222-3-jitao.shi@mediatek.com>
In-Reply-To: <20190624080001.67222-3-jitao.shi@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 25 Jun 2019 08:42:57 +0800
Message-ID: <CANMq1KDixwQN13o84Jp6E6tyfTQSZjiZSMzaNFZ02LEVPx0Z8g@mail.gmail.com>
Subject: Re: [v2 2/2] drm/panel: support for auo, kd101n80-45na wuxga dsi
 video mode panel
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_174310_353680_48F7A484 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa cheng <cawa.cheng@mediatek.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Sean Paul <seanpaul@chromium.org>, linux-pwm@vger.kernel.org,
 Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 lkml <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 4:00 PM Jitao Shi <jitao.shi@mediatek.com> wrote:
>
> Auo,kd101n80-45na's connector is same as boe,tv101wum-nl6.
> The most codes can be reuse.
> So auo,kd101n80-45na and boe,tv101wum-nl6 use one driver file.
> Add the different parts in driver data.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> index 6e06c8506623..d1ee43cfcbe2 100644
> --- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> +++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> @@ -372,6 +372,15 @@ static const struct panel_init_cmd boe_init_cmd[] = {
>         {},
>  };
>
> +static const struct panel_init_cmd auo_init_cmd[] = {
> +       _INIT_DELAY_CMD(24),
> +       _INIT_DCS_CMD(0x11),
> +       _INIT_DELAY_CMD(120),
> +       _INIT_DCS_CMD(0x29),
> +       _INIT_DELAY_CMD(120),
> +       {},
> +};
> +
>  static inline struct boe_panel *to_boe_panel(struct drm_panel *panel)
>  {
>         return container_of(panel, struct boe_panel, base);
> @@ -572,6 +581,34 @@ static const struct panel_desc boe_tv101wum_nl6_desc = {
>         .init_cmds = boe_init_cmd,
>  };
>
> +static const struct drm_display_mode auo_default_mode = {
> +       .clock = 157000,
> +       .hdisplay = 1200,
> +       .hsync_start = 1200 + 80,
> +       .hsync_end = 1200 + 80 + 24,
> +       .htotal = 1200 + 80 + 24 + 36,
> +       .vdisplay = 1920,
> +       .vsync_start = 1920 + 16,
> +       .vsync_end = 1920 + 16 + 4,
> +       .vtotal = 1920 + 16 + 4 + 16,
> +       .vrefresh = 60,
> +       .type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +};
> +
> +static const struct panel_desc auo_kd101n80_45na_desc = {
> +       .modes = &auo_default_mode,
> +       .bpc = 8,
> +       .size = {
> +               .width = 216,
> +               .height = 135,

Same issue as the BOE panel:
This is wrong, as this is a portrait panel, should be: width=135, height=216.

> +       },
> +       .lanes = 4,
> +       .format = MIPI_DSI_FMT_RGB888,
> +       .mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
> +                     MIPI_DSI_MODE_LPM,
> +       .init_cmds = auo_init_cmd,
> +};
> +
>  static int boe_panel_get_modes(struct drm_panel *panel)
>  {
>         struct boe_panel *boe = to_boe_panel(panel);
> @@ -695,6 +732,9 @@ static const struct of_device_id boe_of_match[] = {
>         { .compatible = "boe,tv101wum-nl6",
>           .data = &boe_tv101wum_nl6_desc
>         },
> +       { .compatible = "auo,kd101n80-45na",
> +         .data = &auo_kd101n80_45na_desc
> +       },
>         { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, boe_of_match);
> --
> 2.21.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
