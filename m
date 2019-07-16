Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DE36B23E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 01:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zqq7uKIUmD70kuqR/nnnNV43X/k/KGu+1sLfSShkCU=; b=ljpTkcGtK8Ru8b
	B2/deRFKBLt+NqpbW0TEObNcLGXHf4blXUur4eneLtOxOjB43eg5oXyWrs5v8LduXP5K4980RVA6o
	R8vKmwRLxgRrJV+C7ty8At1l2GFT63faFzsCQQ3Wg6JBrCgB5w5W9aAHapSowocL0UxzY+ZEBw0o2
	Pvd6dbh2lEuxdwal9lMEk9OZN41lM16fNyLem1PXVectRFz7GNhPqH8pJoOb9BrEMVjf0lOd0Ik9Q
	NN9bC8O6C4wdg5DcKVEFIsvNXJKKdh3+8W9i9/ZA+Mjo/X7RA1xKvukNuXBk263j7L6sMtheymmC+
	H0VZfduyFa7eWNgljLWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnWe4-0005n4-CR; Tue, 16 Jul 2019 23:14:04 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnWdg-0005kr-Bf
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 23:13:42 +0000
Received: by mail-qt1-x843.google.com with SMTP id 44so21359576qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 16:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0vVPokc5d+Sgj99HAa1k+ihxyyDw2qJJoHYr3swOfDY=;
 b=npN4iCwRcHVsuF2BJh4ZW7sl77KF563UBDP+Vo40O+2gEmjxaU5/vnqNQtpiJs7yIn
 M6qWcc2DxuzW1xTa6eLEHeb6YraOwjroaHToF+QD45Ahlhnux+nQDyh1EfX04kDiIaqv
 EE3srqM8P/i591ms/4hle9MiaggUo4SRGLG5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0vVPokc5d+Sgj99HAa1k+ihxyyDw2qJJoHYr3swOfDY=;
 b=g/1NCgkleONwb5gXzpJRFkPGEGF9C41ef1G0AFpNjLtTMPZMq1myYcp4EDzKAOPFIp
 HdP46cPBhNqO7757IXAxrHW6tKW8RcL465sxbzU5NJlLWlA/T06QVLb8U7Eb/MAsiqFo
 y1WVnLhrr4cRp1T2JhISnJuI2QKqcKVpfUuMx44+xZ8b3wP+u/dClJDH0DZzkQ08nMHY
 eAginGcl0UfUoT6g2Rsf7i3ql1VpQkmba9wJdx950Nyib0AID/ccO8oZEUuw4MdqSB8B
 64zDrona96HmP5ta32H4+td+LP7gS5oESochUze+s4HFi95knPZVnXI7ElPkZy/+17bF
 GxEg==
X-Gm-Message-State: APjAAAWZEFGKMAOfcewfFcaCUJ3G5CTTJffYcDc06Dr7OqHrwL6tiHMJ
 h5oMsfzzqSlyM+/MLln0QXRYZGlGHPvtjx7g3KMMxA==
X-Google-Smtp-Source: APXvYqwqF+BfqG9NwAIGQhOUSg/ata3RZiX/cvuHswIPD1N9Cau1oN4JI06GzaDLk1MGquQ3R6rBvTWlK6d6ZqKbm+A=
X-Received: by 2002:aed:3b1c:: with SMTP id p28mr23903043qte.312.1563318816713; 
 Tue, 16 Jul 2019 16:13:36 -0700 (PDT)
MIME-Version: 1.0
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-24-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1562625253-29254-24-git-send-email-yongqiang.niu@mediatek.com>
From: Ryan Case <ryandcase@chromium.org>
Date: Tue, 16 Jul 2019 16:13:26 -0700
Message-ID: <CACjz--=Wn4BH_EwEm0DD-vUxB796wUy5Z3MLiOSeiOZXa92r_w@mail.gmail.com>
Subject: Re: [PATCH v4, 23/33] drm/mediatek: add ovl0/ovl_2l0 usecase
To: yongqiang.niu@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_161340_424982_4442E187 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 3:35 PM <yongqiang.niu@mediatek.com> wrote:
>
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
>
> This patch add ovl0/ovl_2l0 usecase
> in ovl->ovl_2l0 direct link usecase:
> 1. the crtc support layer number will 4+2
> 2. ovl_2l0 background color input select ovl0 when crtc init
> and disable it when crtc finish
> 3. config ovl_2l0 layer, if crtc config layer number is
> bigger than ovl0 support layers(max is 4)
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 38 +++++++++++++++++++++++++++++++--
>  1 file changed, 36 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 5eac376..9ee9ce2 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -282,6 +282,15 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>
>         for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>                 struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
> +               enum mtk_ddp_comp_id prev;
> +
> +               if (i > 0)
> +                       prev = mtk_crtc->ddp_comp[i - 1]->id;
> +               else
> +                       prev = DDP_COMPONENT_ID_MAX;
> +
> +               if (prev == DDP_COMPONENT_OVL0)
> +                       mtk_ddp_comp_bgclr_in_on(comp);
>
>                 mtk_ddp_comp_config(comp, width, height, vrefresh, bpc);
>                 mtk_ddp_comp_start(comp);
> @@ -291,9 +300,18 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>         for (i = 0; i < mtk_crtc->layer_nr; i++) {
>                 struct drm_plane *plane = &mtk_crtc->planes[i];
>                 struct mtk_plane_state *plane_state;
> +               struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> +               unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> +               unsigned int local_layer;
>
>                 plane_state = to_mtk_plane_state(plane->state);
> -               mtk_ddp_comp_layer_config(mtk_crtc->ddp_comp[0], i,
> +
> +               if (i >= comp_layer_nr) {
> +                       comp = mtk_crtc->ddp_comp[1];
> +                       local_layer = i - comp_layer_nr;
> +               } else
> +                       local_layer = i;
> +               mtk_ddp_comp_layer_config(comp , local_layer,
>                                           plane_state);

There is an extra space after comp.

This whole loop is essentially identical to the one found in
mtk_crtc_ddp_config below. It would be nice to either move that loop
to a dedicated function called from both spots or allow
mtk_crtc_ddp_config to be called from here.

>         }
>
> @@ -319,6 +337,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>                                            mtk_crtc->ddp_comp[i]->id);
>         mtk_disp_mutex_disable(mtk_crtc->mutex);
>         for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> +               mtk_ddp_comp_bgclr_in_off(mtk_crtc->ddp_comp[i]);
>                 mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
>                                               mtk_crtc->mmsys_reg_data,
>                                               mtk_crtc->ddp_comp[i]->id,
> @@ -339,6 +358,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>         struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
>         struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
>         unsigned int i;
> +       unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> +       unsigned int local_layer;
>
>         /*
>          * TODO: instead of updating the registers here, we should prepare
> @@ -361,7 +382,14 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
>                         plane_state = to_mtk_plane_state(plane->state);
>
>                         if (plane_state->pending.config) {
> -                               mtk_ddp_comp_layer_config(comp, i, plane_state);
> +                               if (i >= comp_layer_nr) {
> +                                       comp = mtk_crtc->ddp_comp[1];
> +                                       local_layer = i - comp_layer_nr;
> +                               } else
> +                                       local_layer = i;
> +
> +                               mtk_ddp_comp_layer_config(comp, local_layer,
> +                                                         plane_state);
>                                 plane_state->pending.config = false;
>                         }
>                 }
> @@ -592,6 +620,12 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>         }
>
>         mtk_crtc->layer_nr = mtk_ddp_comp_layer_nr(mtk_crtc->ddp_comp[0]);
> +       if (mtk_crtc->ddp_comp_nr > 1) {
> +               struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[1];
> +
> +               if (comp->funcs->bgclr_in_on)
> +                       mtk_crtc->layer_nr += mtk_ddp_comp_layer_nr(comp);
> +       }
>         mtk_crtc->planes = devm_kcalloc(dev, mtk_crtc->layer_nr,
>                                         sizeof(struct drm_plane),
>                                         GFP_KERNEL);
> --
> 1.8.1.1.dirty
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
