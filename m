Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFDE51EE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 01:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Txnc8Y21E7qz8tnaTCZtVF1xtjHqJLe/0dLU1unaBdI=; b=WDI6LyQvQa5koH
	O86kImeEjf1zPNbZiurSiQh4WVbaLfgVF9kHJvLQb0DMvpL7pKmBZRuaKawz5T3jdoQCgehKyqAM6
	jWoRWfx8CGb5o28QOEAs4zli7MW1WGghEvnYVz1Ss1mcj3+kAIvX8Kjf3l0s4xtIe3zL57LP2vNVF
	4QAi04KGIB4cPJFhTzeKzjlUCV+u4w0yDXbz7GsZ0n+zlvanCnpY4mhxb7ODK7zSnq5sTcP2/BtmU
	nfYOQFX1FzW9gQKRQkjru3d8cizriAzFnL8nQO1jrO4SwQSOPXRGZz+cHRg6JogvihdIhfCa/tJIJ
	71BG9qFbgpbVK8OBj0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfY1a-0008NY-K0; Mon, 24 Jun 2019 23:05:22 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfY1O-0007pj-3O
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 23:05:11 +0000
Received: by mail-ua1-x941.google.com with SMTP id s4so6311127uad.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 16:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UUo1KrRDh5d7CTBF6eaNp9PxHrRcB6qM3gI926f1TeA=;
 b=WVw0EoU/h/EqUukaJvGtqujV+cXiSxfpwlH2O1mjOPjBOWZm7X31Fi0BEpRrTWYB9o
 o3CdLbtue0bwaz7Vgm1UpKlE0E0fSuldvTbmZ5qdmnnWwc+B2pMoaALrgyVv/folYTdx
 o5vrcJW2m//kZ2EHqvUqM4fL2R7S887YcxtaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UUo1KrRDh5d7CTBF6eaNp9PxHrRcB6qM3gI926f1TeA=;
 b=KwGL/ec0hjyR6+5Cnsq7TlpQiXZ0LtgrjzRHTOHgahCaCmMrjTydmnxijZKMULkzGs
 ba08XMbcmv7Vo2vwNnx7qYVgEs8+MfqXh+rbdC8ZTb3YWC5S5T3mo5rHMvZc1TIVzDAK
 kmn2priqIk+wZfzI7eWFu1VRYVdRx/knxWGBKnuwzrgOyQR2qwl9Q5neGYcyr/7t7m5/
 +77dkQa/1E518xU6/b5RRqYxUxsthv9ZpWrdxHnmYgN3oOlcvRBn+5P2S9aO+r4BL/Bd
 DKBWlvLBiUxUvAU4/YhVIVIXPJD7UanhGPEsgwdfUC06dds+rOAQWbW2fuMkVbUAVMWt
 Vrqg==
X-Gm-Message-State: APjAAAU+hoplE9U1QZc7jbF1kqx0A9ik/ktyvgnSollolTlSHH88XNsb
 7acKsRl2qhKbqSHz6/RIt5mpkgwDCwZE00Woxl/SXA==
X-Google-Smtp-Source: APXvYqzGrtkWF399TOCeEibm6SiwufJW+tbfw85UkDFZQy9sMXwWQnNPBCZCk62frDzlYpVuKPp8w75505JQWMBjpNM=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr30915038uad.15.1561417505834; 
 Mon, 24 Jun 2019 16:05:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190622034105.188454-1-dbasehore@chromium.org>
 <20190622034105.188454-3-dbasehore@chromium.org>
In-Reply-To: <20190622034105.188454-3-dbasehore@chromium.org>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Mon, 24 Jun 2019 16:04:54 -0700
Message-ID: <CAGAzgsrhS_nsXqf83ivZS5qcfT+Ss0=pzshH_i2+-Hd1iVNgNA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] drm/panel: set display info in panel attach
To: linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_160510_201217_5E4FA573 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 8:41 PM Derek Basehore <dbasehore@chromium.org> wrote:
>
> Devicetree systems can set panel orientation via a panel binding, but
> there's no way, as is, to propagate this setting to the connector,
> where the property need to be added.
> To address this, this patch sets orientation, as well as other fixed
> values for the panel, in the drm_panel_attach function. These values
> are stored from probe in the drm_panel struct.
>
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/drm_panel.c | 28 ++++++++++++++++++++++++++++
>  include/drm/drm_panel.h     | 14 ++++++++++++++
>  2 files changed, 42 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 507099af4b57..5690fca30236 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
>   */
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
>  {
> +       struct drm_display_info *info;
> +
>         if (panel->connector)
>                 return -EBUSY;
>
>         panel->connector = connector;
>         panel->drm = connector->dev;
> +       info = &connector->display_info;
> +       info->width_mm = panel->width_mm;
> +       info->height_mm = panel->height_mm;
> +       info->bpc = panel->bpc;
> +       info->panel_orientation = panel->orientation;
> +       info->bus_flags = panel->bus_flags;
> +       if (panel->bus_formats)
> +               drm_display_info_set_bus_formats(&connector->display_info,
> +                                                panel->bus_formats,
> +                                                panel->num_bus_formats);
>
>         return 0;
>  }
> @@ -128,6 +140,22 @@ EXPORT_SYMBOL(drm_panel_attach);
>   */
>  int drm_panel_detach(struct drm_panel *panel)
>  {
> +       struct drm_display_info *info;
> +
> +       if (!panel->connector)
> +               goto out;
> +
> +       info = &panel->connector->display_info;
> +       info->width_mm = 0;
> +       info->height_mm = 0;
> +       info->bpc = 0;
> +       info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> +       info->bus_flags = 0;
> +       kfree(info->bus_formats);
> +       info->bus_formats = NULL;
> +       info->num_bus_formats = 0;
> +
> +out:
>         panel->connector = NULL;
>         panel->drm = NULL;
>
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 3564952f1a4f..760ca5865962 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -37,6 +37,8 @@ struct display_timing;
>   * struct drm_panel_funcs - perform operations on a given panel
>   * @disable: disable panel (turn off back light, etc.)
>   * @unprepare: turn off panel
> + * @detach: detach panel->connector (clear internal state, etc.)
> + * @attach: attach panel->connector (update internal state, etc.)
>   * @prepare: turn on panel and perform set up
>   * @enable: enable panel (turn on back light, etc.)
>   * @get_modes: add modes to the connector that the panel is attached to and
> @@ -93,6 +95,18 @@ struct drm_panel {
>
>         const struct drm_panel_funcs *funcs;
>
> +       /*
> +        * panel information to be set in the connector when the panel is
> +        * attached.
> +        */
> +       unsigned int width_mm;
> +       unsigned int height_mm;
> +       unsigned int bpc;
> +       int orientation;
> +       const u32 *bus_formats;
> +       unsigned int num_bus_formats;
> +       u32 bus_flags;

Should probably put these in a struct to ensure the connector and
panel have the same data types. Will do in a following patch if we
stay with this.

> +
>         struct list_head list;
>  };
>
> --
> 2.22.0.410.gd8fdbe21b5-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
