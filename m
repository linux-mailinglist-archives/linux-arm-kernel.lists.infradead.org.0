Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4858CE9CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzLNafbX6HOf+e/HqlPXmRgucjPN3aeLzdoxphH2JA4=; b=D8pbIZ6posI56a
	9GYsZzWzf63hw21IvTrLOkcOg95LPutGNFXwoOoj3HgdgWR13O81ziDs/mxZ2sCA/oFd8ii9U3B0o
	UMUE3GmBQNtmlE7w1o7U0jY3fbwh45zlaOrV5IXwSUoBioD75IMXymcpsYpnpYgY5K6ut0zPCbc7m
	hyrrsZGphUxpyg+Kr0jiitjiwmULfqtOqQ6zuRxpX9MfjZCmOX3QRNhYH4QBPI0Do86TcoOfr9pyb
	Rcm+VWYpgoo0u4FUn2aL0W41yQt//GKM97vcbZbbyoVQVa2GaswcNdu9uvKGMHCuP7jnYRxgpG252
	zfkk1FEKlYQGEypSPivQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWBD-0005u3-Sx; Mon, 07 Oct 2019 16:48:15 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWB2-0005l0-6i
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:48:05 +0000
Received: by mail-yw1-xc42.google.com with SMTP id q7so5358603ywe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 09:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bQ7t0YfEyUi6/XxzSzzzJPgkBy/Y1npqi1QHUBdAdjs=;
 b=W3fLoSUrj8yJnZCMtZp+3Z2XubKePSGiIXKCTJtf8NgGqe6YfhNrC9bveRjZw6wpmF
 v9jzQ5j1VQP3GRAx44r0Jhgc8TJPiEB7XTnjchviKgXZI8nD3yG7I/WgoHu3YEtryVvz
 fG4rdsgZxIXFthOSjMaybVSlmOow3T3ljx0qxNCFJpkpmiiGPJBCNNOiY057IySo7EGV
 2yf1Zh1r/t+Q8vdPk8hNVF6FtTOalBTihx2aE1PTwc4qPBruNr0J8+YNM4KwX9C1BzCc
 g8jWzB0LOr31wuXEGyYlQ9E7EGPr+FHjDYwtdXdDlFUFtbYFK+7Ic2bLdoPaPMQMlzMz
 oOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bQ7t0YfEyUi6/XxzSzzzJPgkBy/Y1npqi1QHUBdAdjs=;
 b=ZhR6FbKBtgdiuw/7nLGhUC6hO910Z/ptJle2D3mwFg5Fa0X0bP+JHKC0CHyBkaydej
 dNP+UO8kl0geQrxoeuxJQ8ac+pbqAmKXwwC+TP/LCMrioWaUuiY6SJg3X7FF25KmpWEv
 NUlLEWaHRBAqkg+3J5EFXBlKhRdyaSpy+GWq99lMJvZWwi0Nw7FcaMpvPHIdByfEx2V+
 IjenWjRlJd9u4lgxBtjPown0dbxcDYPh6raGzPP+2zTz+VEiAAfQwgTY8/SAXVCDKOWk
 pPL38HADK+5j9uNsqO00a31uduVixJj+V4PszGW1VwpI5w1BlheMDVpHPqnhebNyBsSm
 S0UA==
X-Gm-Message-State: APjAAAWP3wdYNcucOhImK4Cix1/+VB2zZ0kpcJwLDTKg1NfNzoDClLQe
 e1unOD/twF6I6O8pldkxcN1eEQ==
X-Google-Smtp-Source: APXvYqzqFE/kG9F8NYrqeqGMnEJIHroH1DGoJ5wHOm/YlpjWwk8tZNWrYg1M2OA9pEzzh3ILFWBkWg==
X-Received: by 2002:a81:7b05:: with SMTP id w5mr20591060ywc.15.1570466883457; 
 Mon, 07 Oct 2019 09:48:03 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id y129sm4181437ywy.41.2019.10.07.09.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:48:02 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:48:02 -0400
From: Sean Paul <sean@poorly.run>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH v8 4/4] drm/mtk: add panel orientation property
Message-ID: <20191007164802.GD126146@art_vandelay>
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-5-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925225833.7310-5-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_094804_246268_79B6826B 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 03:58:33PM -0700, Derek Basehore wrote:
> This inits the panel orientation property for the mediatek dsi driver
> if the panel orientation (connector.display_info.panel_orientation) is
> not DRM_MODE_PANEL_ORIENTATION_UNKNOWN.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 224afb666881..2936932344eb 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -792,10 +792,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
>  			DRM_ERROR("Failed to attach panel to drm\n");
>  			goto err_connector_cleanup;
>  		}
> +
> +		ret = drm_connector_init_panel_orientation_property(&dsi->conn);
> +		if (ret) {
> +			DRM_ERROR("Failed to init panel orientation\n");
> +			goto err_panel_detach;
> +		}
>  	}
>  
>  	return 0;
>  
> +err_panel_detach:
> +	drm_panel_detach(dsi->panel);
>  err_connector_cleanup:
>  	drm_connector_cleanup(&dsi->conn);
>  	return ret;
> -- 
> 2.23.0.351.gc4317032e6-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
