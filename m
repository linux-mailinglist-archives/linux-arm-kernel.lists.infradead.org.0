Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D87D3C6B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41xcQ5WSdXupYI3n2LuYPUjSvi/4iavaPKeQsCc2hP0=; b=E2dVonHyn1e3NR
	CcLODv+lMkGRBwefiEt8Yc/K7t8X8Kxqaq2Cf5HAFp9OMlc5TO9/34umWG+5gHZG7Xa2+fs8lLVgg
	2ohg9rj2SDinOAliY67yrobzRhW8Hmjb1efejrFfFUCCrzsU1X2MatjsUUzv0I7g1Q3aElSIACLH9
	ScNB2v4g3QX3pBU5obe9f4Ra6N7yVK8Zg2dmoExMXuI2LnYIDk9jquUM2XOCittYGtPCcMQ0ISK4A
	rOjyd9WgLPgPAxVr6GpKw3w8QS/uNLF+Xy1cd18lkajVg4iROypGRPTKmZLZFbQ5JHTpMTyGxOQWP
	qPiZvYEDsz7bK1ZQuERQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacb6-000411-U1; Tue, 11 Jun 2019 08:57:41 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacat-00040M-1o
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:57:28 +0000
Received: by mail-ed1-x544.google.com with SMTP id w33so18869138edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 01:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bTkOEfoVS8xqoBdJMHWo3E+Rkaj2bpqidMUiZcDnoAk=;
 b=ZiTDkJRVzn+jc565v456AsNS1x9g3BjkYr7za4w5jSGUMvN0zRkNbwrjz+WKcjgJ7G
 nVEabfR7lwPxQPzOWNyhTaNeCZNmuZbiS/yoZmcFwLZx8+TklX/CEVM6W8dFxldKtroS
 fKKE1lLtvvPaX/DCq4LqhJjtJN0r4j+0DpEZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=bTkOEfoVS8xqoBdJMHWo3E+Rkaj2bpqidMUiZcDnoAk=;
 b=KxJVAfYnUsW++/6Ts+oipdgeppCGjvKz7W3HrRv77k9bYonk2qZVtCqTEIy/wzQcxu
 BwZ+NUcfUUuxtr2kQtG2DjH+cbiyTB3Bf9epcAQ+vP/uEoEEW5m1vaB4L1BeekXH4vqe
 wvastxVgJQgVCiBAvhCIyXa+iXuArGun2xmCAC4tb/4LQayuxOJ0ezJixTgPIFnEVJgs
 uxX/twkKJHtvoBSOqLF9hxFaAgxUfPmLoHYg2lix2LwMX4Mdpx+9OHDzz+FRcqssPz2P
 q3+5lMU1B1mx2mNQj3scxnvQWnJMO5OoyomiYLSZMklBzfq0vDYbZkuyHiEZ7Ff7hmv7
 XKfA==
X-Gm-Message-State: APjAAAXb/4SOAJCXRWfEVup4Euni4khJyusebc7LH6LnRybYvERpEJL9
 oaH+v1OgSisAag9ioTpKP1jLhw==
X-Google-Smtp-Source: APXvYqyYSiI8MCmhIFP5093eoXLHoiUXmUjorUOjoDyQgA+DoU3k97SYd9dqfm+MFflJC285PU1vqQ==
X-Received: by 2002:a05:6402:8d7:: with SMTP id
 d23mr37696956edz.17.1560243445858; 
 Tue, 11 Jun 2019 01:57:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id m3sm3498364edi.33.2019.06.11.01.57.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 01:57:25 -0700 (PDT)
Date: Tue, 11 Jun 2019 10:57:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH 3/5] drm/panel: Add attach/detach callbacks
Message-ID: <20190611085722.GX21222@phenom.ffwll.local>
Mail-Followup-To: Derek Basehore <dbasehore@chromium.org>,
 linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611040350.90064-4-dbasehore@chromium.org>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015727_096627_C2DEA7F7 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 09:03:48PM -0700, Derek Basehore wrote:
> This adds the attach/detach callbacks. These are for setting up
> internal state for the connector/panel pair that can't be done at
> probe (since the connector doesn't exist) and which don't need to be
> repeatedly done for every get/modes, prepare, or enable callback.
> Values such as the panel orientation, and display size can be filled
> in for the connector.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
>  include/drm/drm_panel.h     |  4 ++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 3b689ce4a51a..72f67678d9d5 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
>   */
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
>  {
> +	int ret;
> +
>  	if (panel->connector)
>  		return -EBUSY;
>  
>  	panel->connector = connector;
>  	panel->drm = connector->dev;
>  
> +	if (panel->funcs->attach) {
> +		ret = panel->funcs->attach(panel);
> +		if (ret < 0) {
> +			panel->connector = NULL;
> +			panel->drm = NULL;
> +			return ret;
> +		}
> +	}

Why can't we just implement this in the drm helpers for everyone, by e.g.
storing a dt node in drm_panel? Feels a bit overkill to have these new
hooks here.

Also, my understanding is that this dt stuff is supposed to be
standardized, so this should work.
-Daniel

> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_attach);
> @@ -128,6 +139,9 @@ EXPORT_SYMBOL(drm_panel_attach);
>   */
>  int drm_panel_detach(struct drm_panel *panel)
>  {
> +	if (panel->funcs->detach)
> +		panel->funcs->detach(panel);
> +
>  	panel->connector = NULL;
>  	panel->drm = NULL;
>  
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 13631b2efbaa..e136e3a3c996 100644
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
> @@ -70,6 +72,8 @@ struct display_timing;
>  struct drm_panel_funcs {
>  	int (*disable)(struct drm_panel *panel);
>  	int (*unprepare)(struct drm_panel *panel);
> +	void (*detach)(struct drm_panel *panel);
> +	int (*attach)(struct drm_panel *panel);
>  	int (*prepare)(struct drm_panel *panel);
>  	int (*enable)(struct drm_panel *panel);
>  	int (*get_modes)(struct drm_panel *panel);
> -- 
> 2.22.0.rc2.383.gf4fbbf30c2-goog
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
