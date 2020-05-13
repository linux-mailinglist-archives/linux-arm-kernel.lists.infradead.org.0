Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37291D1B4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 18:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0LfA4EghMNP0YK6H6dfuOqMcNURncxciL/bsj6nNCQ=; b=HKZSTRMuqSGdfJ
	2/poxB9sBIC46zgHRAxOuLEwurMeC/TMosi1TnvxF2PbaukQgbpmucRUYeLN6D42Au/SdgUd0BBCw
	ENva8Mg6F8AbQpgE7+PRScuZ3Jd0kK2NDtR/ExbxhuY4wMMGZmZKtKHBH6KxkG+NWQSWIho53746V
	IVHxaG+JUxyhrJvhRTWQFYJ4wgS6ov8ZdUS7poEnJXo9NTcKUX9Lj9xzZHl+MVcf4jWTsKJbY6Vcj
	cxpW5E7YCa2gSfKgOTWXh367Wx03jK60tO7WUA+J3tzCJ8vOVTFlk+gGljBeMbM8Aj3obVjpsqI2H
	5nLCslX+Fxgn7VY6XAwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYuRU-0005aB-50; Wed, 13 May 2020 16:41:12 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYuRL-0005Yq-Sw; Wed, 13 May 2020 16:41:05 +0000
Received: by mail-qt1-x842.google.com with SMTP id l1so341144qtp.6;
 Wed, 13 May 2020 09:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Of6DuVfllLEJKZni4Ai4vipcUdfNzlQ6+FZgLgcsMF8=;
 b=ehOQ0f61ejewm2g+6SEOb8DS6voX1jKlEAKsoRPlJRIIFmbPMjaaoPGNrQLjj3ZK4w
 hepeE8/r99wWaPmbogTTG7Ujhx8Di0mHpuuPhQE2unfc1UhiQiu6Q3QrZIpmOMuv6E97
 F+xMDkcQOEEjl0OQOqReOKAB2mWDFPN2LEFmfLNwdfXI4RA8iuoL+aBebyrP0d7h1tvs
 XpEa5UoXed4Q8b2c1IDNtjFndFuYyMQZzCznKxs5pofbHgpMmu3aOmTehGln+XUVUmN0
 jOaeqf/ZGDI+PVcrkjgJC0H0KMdQX3JTkTYYECXWD+Mdugahf5Jz5tZpneOUtIIEWU8a
 BcAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Of6DuVfllLEJKZni4Ai4vipcUdfNzlQ6+FZgLgcsMF8=;
 b=ZHHpKHM3BKKOoBF7rOlq2DNsGzIn8CN+ds0JrZOgEfQ9l95Nf/T6tzf9tSyxx6dwpj
 HCoIr8FJWmPqigQrsUT/co9+sKufdfojRLmnr8KrdYM0f991LybH3Ct/0/eOLrv17caa
 LFZM+5PJxThAWELSzEN62I6N5Jm4FteApdzxgNO+8q9HcJwwmvKJRPD//iw5oXueY7Hd
 gkA8iiG3H3SLArVsg96NxXOomgMbMzW5qyObwESUD8y0OXIRPOHZtKxFUQzu6Ko3wBeb
 97UToxHqv7b2mbcH2okhKlw3zke0J4cqr9X82dJ8fGQ0UYAQw7sIV1tk/Dsm4LiJGUTL
 jaFg==
X-Gm-Message-State: AGi0PuYklqgWQ+enJ7B4emTvVNBb8MAjVI01a4bUEfIiRmED3/gg7/KG
 0UdlgntLEL57bhXlrsBCRUN/YUfJz1ytnFd0w5M=
X-Google-Smtp-Source: APiQypKQF8wuPkIB/Ht0f9sQIUQaXRfVgczFyL9sDMRdp1ebZgYPB8wvKrKrbVS6PA73SGgLiaV98lH5IaSqDqzX4fc=
X-Received: by 2002:ac8:739a:: with SMTP id t26mr27687484qtp.311.1589388061575; 
 Wed, 13 May 2020 09:41:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
In-Reply-To: <20200501152335.1805790-8-enric.balletbo@collabora.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 13 May 2020 18:40:50 +0200
Message-ID: <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_094103_938762_D0A5F049 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chun-Kuang,

Missatge de Enric Balletbo i Serra <enric.balletbo@collabora.com> del
dia dv., 1 de maig 2020 a les 17:25:
>
> Use the drm_bridge_connector helper to create a connector for pipelines
> that use drm_bridge. This allows splitting connector operations across
> multiple bridges when necessary, instead of having the last bridge in
> the chain creating the connector and handling all connector operations
> internally.
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>

A gentle ping on this, I think that this one is the only one that
still needs a review in the series.

Thanks,
 Enric

> ---
>
> Changes in v4: None
> Changes in v3:
> - Move the bridge.type line to the patch that adds drm_bridge support. (Laurent Pinchart)
>
> Changes in v2: None
>
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 4f3bd095c1ee..471fcafdf348 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -17,6 +17,7 @@
>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_bridge_connector.h>
>  #include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
> @@ -183,6 +184,7 @@ struct mtk_dsi {
>         struct drm_encoder encoder;
>         struct drm_bridge bridge;
>         struct drm_bridge *next_bridge;
> +       struct drm_connector *connector;
>         struct phy *phy;
>
>         void __iomem *regs;
> @@ -977,10 +979,19 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
>          */
>         dsi->encoder.possible_crtcs = 1;
>
> -       ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL, 0);
> +       ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL,
> +                               DRM_BRIDGE_ATTACH_NO_CONNECTOR);
>         if (ret)
>                 goto err_cleanup_encoder;
>
> +       dsi->connector = drm_bridge_connector_init(drm, &dsi->encoder);
> +       if (IS_ERR(dsi->connector)) {
> +               DRM_ERROR("Unable to create bridge connector\n");
> +               ret = PTR_ERR(dsi->connector);
> +               goto err_cleanup_encoder;
> +       }
> +       drm_connector_attach_encoder(dsi->connector, &dsi->encoder);
> +
>         return 0;
>
>  err_cleanup_encoder:
> --
> 2.26.2
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
