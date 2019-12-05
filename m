Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF6A113B9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 07:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6mBTHJxiR2CSwbULNlhCSofvO8l4anperG72UYyG8o=; b=s21J3uoYmGsC+Q
	JO3l+DKL9fbKe6yKlj1YaXRMrP72DeqfhsslniV12g0KMHT/2btyOcXJQgLW3TwOrhIWdZdwVxVSS
	ndXPcdJ/8fJzBm/xEh/tDOWZVBYhFRIC9fHjZb6eJ2vjnAtHm8NyeM2Jq6iekHYiHT1s4yfdQPC5c
	k4QZ+3xr90GVJ2Io0a4+IAugN7EYNFiD+2z1RdR+Unc1VIBI65QS3C4VD7mOQgT2JY9L2aL04I+54
	zC/X3rAAqIMC93wDFN+1Et9nIBboWodZqAqYG67oCXUFYxtezxYi9S0z7EruJlIhP1ejPxHMaX1Cr
	0du1OiIqNxo2CH0NK3fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ickRF-0005YF-Ko; Thu, 05 Dec 2019 06:16:33 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ickR7-0005Xa-5b
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 06:16:26 +0000
Received: by mail-io1-xd44.google.com with SMTP id z193so2425873iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 22:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sagxzG2UOJgqtCWMTEvuG8BujWW/Ac96ALrG1/iNc1g=;
 b=OpbZtYc602v9GzttMW4clzIL5MO4H74stJoLKvSgJ9YuuzxyAVwKg2x2E5bGNMS8Ix
 VDGM0ySfeLoY9+ChJHUdC74eBzZEuLW95Lorx6yqi4GfEEPEMk7F9nkm/1HdMBuXIe8W
 5dmUXfLm7RO8hDMjSRzUREtQ0GULXDZwxm5Vk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sagxzG2UOJgqtCWMTEvuG8BujWW/Ac96ALrG1/iNc1g=;
 b=a7RtosHoT+kFNviYBT+3boyZTIq6Tq76w5rCsq7srmFBUuLFN4/QBOqEynHOifI59/
 rrYAQ4gsil2E2L5UAENyZU7YlPeuQNHzAb1it1jN81Mugd8c0DuAll6VpFhAraM1UD+8
 IUCn8I867c1OshseqLSo9/UG8wncMeiAO1oRyTmIRx4LM1r6yii90x8bqa/7BGkiaZB2
 MXvCoa0BaP2THwVQMqqegplihQj22zvJlyi6GQAnbdw1BjSLo6e0dTlz5teRBjDUHV3N
 RXS4H/tTXIXiJyBi47NE6/hfe/l/Nqj1P9/Rc7e63smQiB7rT2o03UL8TTTZAM5jvXZB
 5pGw==
X-Gm-Message-State: APjAAAWqcwLlZ6iHt8v4cmEkjRovOILyX9cYtLssEVYj36r7nMbpMupY
 IEGQqoSXpT8MDHb3LZH+AtNp6Txqv5kf47SHsc9FPg==
X-Google-Smtp-Source: APXvYqwd0SY25U4cq3pwuC4ufVW/oZZK/mthsjkNg5Pt9lukryHB6LaDPd57XgXny29wudUpug6IojBLFRTn9swdYmo=
X-Received: by 2002:a02:b18d:: with SMTP id t13mr158882jah.4.1575526583427;
 Wed, 04 Dec 2019 22:16:23 -0800 (PST)
MIME-Version: 1.0
References: <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 5 Dec 2019 14:15:57 +0800
Message-ID: <CAJMQK-iDnOWCYmxcREGschD=sDfU6yKpUu+koP3YDeO3MPCdhQ@mail.gmail.com>
Subject: Re: [v1,1/2] drm/mediatek: Fixup external display black screen issue
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_221625_233817_1A560D77 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 1:17 AM <yongqiang.niu@mediatek.com> wrote:
>
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
>
> Problem:
> overlay hangup when external display hotplut test
>
> Fix:
> disable overlay when crtc disable
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 39 +++++++++++++++++++++------------
>  1 file changed, 25 insertions(+), 14 deletions(-)
>
> --
> 1.8.1.1.dirty
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 4fb346c..7eca02f 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -369,6 +369,20 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>         mtk_disp_mutex_add_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
>         mtk_disp_mutex_enable(mtk_crtc->mutex);
>
> +       /* Initially configure all planes */
> +       for (i = 0; i < mtk_crtc->layer_nr; i++) {
> +               struct drm_plane *plane = &mtk_crtc->planes[i];
> +               struct mtk_plane_state *plane_state;
> +               struct mtk_ddp_comp *comp;
> +               unsigned int local_layer;
> +
> +               plane_state = to_mtk_plane_state(plane->state);
> +               comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
> +               if (comp)
> +                       mtk_ddp_comp_layer_config(comp, local_layer,
> +                                                 plane_state, NULL);
> +       }
> +
>         for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>                 struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
>                 enum mtk_ddp_comp_id prev;
> @@ -385,20 +399,6 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>                 mtk_ddp_comp_start(comp);
>         }
>
> -       /* Initially configure all planes */
> -       for (i = 0; i < mtk_crtc->layer_nr; i++) {
> -               struct drm_plane *plane = &mtk_crtc->planes[i];
> -               struct mtk_plane_state *plane_state;
> -               struct mtk_ddp_comp *comp;
> -               unsigned int local_layer;
> -
> -               plane_state = to_mtk_plane_state(plane->state);
> -               comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
> -               if (comp)
> -                       mtk_ddp_comp_layer_config(comp, local_layer,
> -                                                 plane_state, NULL);
> -       }
> -
>         return 0;
>
>  err_mutex_unprepare:
> @@ -607,10 +607,21 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
>         for (i = 0; i < mtk_crtc->layer_nr; i++) {
>                 struct drm_plane *plane = &mtk_crtc->planes[i];
>                 struct mtk_plane_state *plane_state;
> +               struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> +               unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> +               unsigned int local_layer;
>
>                 plane_state = to_mtk_plane_state(plane->state);
>                 plane_state->pending.enable = false;
>                 plane_state->pending.config = true;
> +
> +               if (i >= comp_layer_nr) {
> +                       comp = mtk_crtc->ddp_comp[1];
> +                       local_layer = i - comp_layer_nr;
> +               } else
> +                       local_layer = i;
> +               mtk_ddp_comp_layer_config(comp, local_layer,
> +                                         plane_state, NULL);
This part should be moved to mtk_crtc_ddp_hw_fini(), or at least
called after drm_crtc_vblank_off(). Otherwise we would see
drm_wait_one_vblank warnings on 8173 when display turns off.

[   25.696182] Call trace:
[   25.698624]  drm_wait_one_vblank+0x1f0/0x1fc
[   25.702886]  drm_crtc_wait_one_vblank+0x20/0x2c
[   25.707415]  mtk_drm_crtc_atomic_disable+0xf0/0x308
[   25.712287]  drm_atomic_helper_commit_modeset_disables+0x1b8/0x3c0
[   25.718461]  mtk_atomic_complete+0x88/0x16c
[   25.722638]  mtk_atomic_commit+0xa8/0xb0
[   25.726553]  drm_atomic_commit+0x50/0x5c
[   25.730469]  drm_atomic_helper_set_config+0x98/0xa0
[   25.735341]  drm_mode_setcrtc+0x280/0x608
[   25.739344]  drm_ioctl_kernel+0xcc/0x10c
[   25.743261]  drm_ioctl+0x240/0x3c0
[   25.746658]  drm_compat_ioctl+0xd8/0xe8
[   25.750487]  __se_compat_sys_ioctl+0x100/0x26fc
[   25.755009]  __arm64_compat_sys_ioctl+0x20/0x2c
[   25.759534]  el0_svc_common+0xa4/0x154
[   25.763277]  el0_svc_compat_handler+0x2c/0x38
[   25.767628]  el0_svc_compat+0x8/0x18
[   25.771195] ---[ end trace f4619fdac8f1c0ff ]---

>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
