Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185D6EC4A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtzFO+5TMW+XKZVnpQR8loQcYuN+/nh8scgfpIvlhcE=; b=qFpj0qTxciRRZb
	MQ3bstZJFGO4gCjsHX15TNBQjlbUivteZQpI73/Qe1WTm4DAP/M9/XyeLnhxXI6rwR8Q9OQT/4rVY
	TJSwQJQfCm6upxh/1tNzaUWZ9oPPTe61fXNoIGCPv3RXAh34tNhDqRxiGFclunnfu8MDTFBmjjAL+
	5k0HpBrDK5s3GRJApfCS55kpYK1T0NPeLuXFlo6eC5ai/+vZJUB8/vww+t2syInZIWFJlTJ22R4rk
	6TP77bdjZu4rQ5MtuKYIt0rT4ZqPz5U7hzEWRIok12k7j/5gyE6u3dDzniEXIADAOQVvh840x9nNi
	1tt4+bDryCAJQUnRMp2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXqz-0001nX-MC; Fri, 01 Nov 2019 14:24:41 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXqp-0001hC-6S
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:24:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id 1so11097353iou.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 07:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V+vng+J+x8nXnMK0HHy+Gog6stMzieYZQkzg6Lms2hs=;
 b=L9mkgsOeP8AqU8o8n+ekUfpsIyQ3KRaj1BZKKoHpDP2oa3tdd7xdWBPjNK6LfJi0NY
 pksrlocMn8kXwDiKL83WVfFe33M81phbZPhE7xogOl5y4BKhEcm8NOXh164yJsvpP8aH
 iFX3UiNoapjux3YdCx++qV7Gu3+0a9I48ta1RjYRfVlWsLNRAckj4cQF6yKtWBCeXwjl
 c0TatTBg5Js+gMI4v8N6+KQGUOCHeyFyMl/pCwGJfpbDhiFyfw6xiFo7/joc0UFRMOZJ
 B9R7p704QuE2ohW57iu/hHx57Nzom5UtFH9o234qQyjKaEYCmIPjLTKv1dMtrUqIc5Bp
 cR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V+vng+J+x8nXnMK0HHy+Gog6stMzieYZQkzg6Lms2hs=;
 b=KQk7hw+ASeh81J3d7ft9sIwTND3TNOtUIs5/7zkwH8PG9Y1rPNn8MDZMD7WQMK60VD
 AgGAk5yDoMGLgf6rQaw745TeSh74e+n/U3Z/WwgLl8V8ylhqLlaBcRMGjpf0XT1eG5wi
 bISizyggDzbun+3ajRsLW4moY+fJ2BtudZqWGiEJ2dxZ+ckHp3IqAWfClGdo0Bm1X4Ie
 aaRmpQB85sV2z3VRNthdKEdGAvq4FO4XeBFJcn96dN+BeVRYqw8/DuGd0k49RnygnYlR
 Tf+qfN5HJ69nJ/ScnYdm286bpifROsPzC2j7A1ku0Fj6b1/30FwwTx7x+1IY8s+7BZJU
 RZ9w==
X-Gm-Message-State: APjAAAV+cHyX5LJ0ANNEgzrlJoas4+zNvQu7BY+etRFmCJ/bSSpYAwg5
 Ti4/ExDVTKkXp2z62K3dvb8slGvCXAcyfkG5XUqx/Q==
X-Google-Smtp-Source: APXvYqzfPVi2/Z+rgUtPHPQHchTRbkYa5nQMNiBMdfzogx6iHFNX42+5L/njt4nEUIxQ8+6+wQ3nIYf1VjaDvbVKZAA=
X-Received: by 2002:a6b:d104:: with SMTP id l4mr10730180iob.50.1572618266728; 
 Fri, 01 Nov 2019 07:24:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191101132647.189033-1-sean@poorly.run>
In-Reply-To: <20191101132647.189033-1-sean@poorly.run>
From: Mark Yacoub <markyacoub@google.com>
Date: Fri, 1 Nov 2019 10:24:15 -0400
Message-ID: <CAC0gqY4cK7wZ97ory-kPEBAcqUsC2GLv9LOQw+QMODe=pKz5NQ@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: Support reflect-y plane rotation
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_072431_271842_6C9BE1C6 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniele Castagna <dcastagna@chromium.org>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, Miguel Casas <mcasas@chromium.org>,
 Sean Paul <seanpaul@chromium.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Fritz Koenig <frkoenig@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested it on my end and confirmed that it works as intended.

On Fri, Nov 1, 2019 at 9:26 AM Sean Paul <sean@poorly.run> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> Expose the rotation property and handle REFLECT_Y rotations.
>
> Cc: Fritz Koenig <frkoenig@chromium.org>
> Cc: Daniele Castagna <dcastagna@chromium.org>
> Cc: Miguel Casas <mcasas@chromium.org>
> Cc: Mark Yacoub <markyacoub@google.com>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
>
> The hardware also supports REFLECT_X, but I just could not figure out
> how to get it working. If someone is interested in getting this going,
> I'm happy to share notes and my WIP patch. For now, though, I actually
> only need y-flip so I'm giving up on x-flip.
>
>
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c  |  6 ++++++
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 11 ++++++++++-
>  drivers/gpu/drm/mediatek/mtk_drm_plane.h |  1 +
>  3 files changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 14878ebf59d7..6505479ee506 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -50,6 +50,7 @@
>                                         OVL_CON_CLRFMT_RGB : 0)
>  #define        OVL_CON_AEN             BIT(8)
>  #define        OVL_CON_ALPHA           0xff
> +#define        OVL_CON_VIRT_FLIP       BIT(9)
>
>  struct mtk_disp_ovl_data {
>         unsigned int addr;
> @@ -229,6 +230,11 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>         if (idx != 0)
>                 con |= OVL_CON_AEN | OVL_CON_ALPHA;
>
> +       if (pending->rotation & DRM_MODE_REFLECT_Y) {
> +               con |= OVL_CON_VIRT_FLIP;
> +               addr += (pending->height - 1) * pending->pitch;
> +       }
> +
>         writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
>         writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
>         writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 584a9ecadce6..4d8f2b55334b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -88,6 +88,9 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
>         if (!fb)
>                 return 0;
>
> +       if (fb->format->is_yuv && (state->rotation & ~DRM_MODE_ROTATE_0) != 0)
> +               return -EINVAL;
> +
>         if (!state->crtc)
>                 return 0;
>
> @@ -132,6 +135,7 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
>         state->pending.y = plane->state->dst.y1;
>         state->pending.width = drm_rect_width(&plane->state->dst);
>         state->pending.height = drm_rect_height(&plane->state->dst);
> +       state->pending.rotation = plane->state->rotation;
>         wmb(); /* Make sure the above parameters are set before update */
>         state->pending.dirty = true;
>  }
> @@ -166,7 +170,12 @@ int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
>                 return err;
>         }
>
> -       drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
> +       err = drm_plane_create_rotation_property(plane, 0,
> +                                                DRM_MODE_ROTATE_0 |
> +                                                DRM_MODE_REFLECT_Y);
> +       if (err)
> +               DRM_INFO("Create rotation property failed, continuing...\n");
>
> +       drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
>         return 0;
>  }
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> index 6f842df722c7..83b634a997cc 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> @@ -20,6 +20,7 @@ struct mtk_plane_pending_state {
>         unsigned int                    y;
>         unsigned int                    width;
>         unsigned int                    height;
> +       unsigned int                    rotation;
>         bool                            dirty;
>  };
>
> --
> Sean Paul, Software Engineer, Google / Chromium OS
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
