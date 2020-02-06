Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECBE153F10
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 08:04:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYFLlFRPspvIAjj12Y/JieGG3IME85/XNe864nb/zTQ=; b=Ocn9UJJ2qhh2NC
	cmykk3YCKI/LbQ1JAvUb9kusYFIRQ1dfzmkZQKqJIJd38l4cB5S213LGoFItADaTaiab3UCoCF7JB
	/HsvVrLrLitSRrAcVqHCW0Jvh20j2IhbpIOhDiyADSbeFd1gTX29kTv41uE3vhqrideIufF59vgFf
	KEnTjHoGbH1ovBnQBRJ4stkP9z/QBVTDNLrzbj5gnxw8L8YI7VIeFTzjZcGc1V1FtSHZgbo1zrWVJ
	sR0nDnr8cGrtwx4w69DfgkqP5VeM+QWWxHUPFOT9VyGkDPj7UP/PZ8mSpotmv6gSngno+P5abdSku
	gHknumIIhQ1Iu3P9BjFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izbDN-0005eL-9Q; Thu, 06 Feb 2020 07:04:41 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izbDH-0005dd-40
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 07:04:36 +0000
Received: by mail-ua1-x942.google.com with SMTP id y23so1895927ual.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 23:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ove59E8b1DoXqKIMNbPWcUTEg1A71z0FSmp+cEYbzQU=;
 b=QZk8BNm9AWR4jIvF+08vBb+bhGvV4R815TnZP+O4tXRraowiur+hfQqiL8TyyApr7C
 rVOGy2c+cDYsUyDvSWEWv0/FH1cqNBX500KcSsKr/dWPOInSoWs9KCioKaah/tNa4vyA
 TPBsPXHhMzHphpg+9YQIhWeGwH1a/P3Y2kZ+ytuJLd2bqOhQUu9wOtoToe5oX7lCtIW9
 dt5WOJTFWEE3Aj/K8VlZiB9Dcr3adGHXbaLqk9/edfimimn8FXosBwqf+ef/QSsWmsvI
 QhGF3HocD/AbVy48+/dBj34xGJa29qFJuxevVWbi9UlFLlSOi/vQtqbpaK6roSeIHNVv
 7Vpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ove59E8b1DoXqKIMNbPWcUTEg1A71z0FSmp+cEYbzQU=;
 b=aMbaWVKsyJQEHRTNZF1oUx0mTQGjj5WQrUP3JgQ/NLg/Wmo/oCMy15xmNzfxyrqc4q
 Km13W2+7qsiXgaoDLk4KKxf46c5Iu7P3JlU50osUWkQA8+u7dU73mwXNaaiyKxONhio3
 JLjtqS1yJZD69Qn2es5U5s3M2mX/4VIPkG0tkSgy4usZ1n+OGPYXvhoVzh+xGBFvzgNk
 7Ped3G8TmF4IVDJeoZNdx+l8VizCVKxdsKR8YhLrc+O0n5mdFk9Tff3Bd/LkdkmfftRk
 NMP6EbX+Juu9vEJD+y+ELYTtFepAhgYcL8b9fikM6p6GpeWurNuuZ3Rm2Ez3dCJQzm3z
 fqkw==
X-Gm-Message-State: APjAAAV167qhcTav6uuo22xOy9Ke8P7t6iLwHJCv2iEUQM13QCBDbgKZ
 ynj5Q+CBEtEvwuP21THqP56brA7ySjnVUEhuWMX4fQ==
X-Google-Smtp-Source: APXvYqxUIf4tTjk0lKaAU43HHPHTdd0HPVTfnwWeW7nPH1mbgyJ0/ALEAhi8JI96h4uENmu5c/D5OVnD//9hW3plidw=
X-Received: by 2002:ab0:2006:: with SMTP id v6mr824857uak.22.1580972667836;
 Wed, 05 Feb 2020 23:04:27 -0800 (PST)
MIME-Version: 1.0
References: <1580441226.9516.1.camel@mtksdaap41>
 <20200206065951.213862-1-evanbenn@google.com>
In-Reply-To: <20200206065951.213862-1-evanbenn@google.com>
From: Evan Benn <evanbenn@google.com>
Date: Thu, 6 Feb 2020 18:04:02 +1100
Message-ID: <CAKz_xw0Ue_B=E6UixLshoKa_J4jkOzK-C1RsAna4c4ALAALhAQ@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: Ensure the cursor plane is on top of other
 overlays
To: ck.hu@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_230435_188327_22615194 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: dcastagna@chromium.org, evanbenn@gmail.com, evanbenn@chromium.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 p.zabel@pengutronix.de, matthias.bgg@gmail.com, seanpaul@chromium.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apologies if I have formatted this wrong / sent to the wrong place!

The patch posted had an issue, another place in the driver was
assuming planes[1] still referred to the cursor.
Now search for the cursor before sending (as the plane cannot be
hard-coded, some devices have different numbers of planes).

Thanks

Evan Benn


On Thu, Feb 6, 2020 at 6:00 PM <evanbenn@google.com> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> Currently the cursor is placed on the first overlay plane, which means
> it will be at the bottom of the stack when the hw does the compositing
> with anything other than primary plane. Since mtk doesn't support plane
> zpos, change the cursor location to the top-most plane.
>
> Signed-off-by: Evan Benn <evanbenn@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 29 +++++++++++++++++--------
>  1 file changed, 20 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 7b392d6c71cc..d4078c2089e0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -658,10 +658,21 @@ static const struct drm_crtc_helper_funcs mtk_crtc_helper_funcs = {
>
>  static int mtk_drm_crtc_init(struct drm_device *drm,
>                              struct mtk_drm_crtc *mtk_crtc,
> -                            struct drm_plane *primary,
> -                            struct drm_plane *cursor, unsigned int pipe)
> +                            unsigned int pipe)
>  {
> -       int ret;
> +       int i, ret;
> +
> +       struct drm_plane *primary = NULL;
> +       struct drm_plane *cursor = NULL;
> +
> +       for (i = 0; i < mtk_crtc->layer_nr; ++i) {
> +               if (!primary && mtk_crtc->planes[i].type ==
> +                               DRM_PLANE_TYPE_PRIMARY)
> +                       primary = &mtk_crtc->planes[i];
> +               if (!cursor && mtk_crtc->planes[i].type ==
> +                               DRM_PLANE_TYPE_CURSOR)
> +                       cursor = &mtk_crtc->planes[i];
> +       }
>
>         ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
>                                         &mtk_crtc_funcs, NULL);
> @@ -711,11 +722,12 @@ static int mtk_drm_crtc_num_comp_planes(struct mtk_drm_crtc *mtk_crtc,
>  }
>
>  static inline
> -enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx)
> +enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx,
> +                                           unsigned int num_planes)
>  {
>         if (plane_idx == 0)
>                 return DRM_PLANE_TYPE_PRIMARY;
> -       else if (plane_idx == 1)
> +       else if (plane_idx == (num_planes - 1))
>                 return DRM_PLANE_TYPE_CURSOR;
>         else
>                 return DRM_PLANE_TYPE_OVERLAY;
> @@ -734,7 +746,8 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
>                 ret = mtk_plane_init(drm_dev,
>                                 &mtk_crtc->planes[mtk_crtc->layer_nr],
>                                 BIT(pipe),
> -                               mtk_drm_crtc_plane_type(mtk_crtc->layer_nr),
> +                               mtk_drm_crtc_plane_type(mtk_crtc->layer_nr,
> +                                                       num_planes),
>                                 mtk_ddp_comp_supported_rotations(comp));
>                 if (ret)
>                         return ret;
> @@ -830,9 +843,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>                         return ret;
>         }
>
> -       ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, &mtk_crtc->planes[0],
> -                               mtk_crtc->layer_nr > 1 ? &mtk_crtc->planes[1] :
> -                               NULL, pipe);
> +       ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
>         if (ret < 0)
>                 return ret;
>
> --
> 2.25.0.341.g760bfbb309-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
