Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C10BAF21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txL24FiusuMNmOaR0J0ymylK59US5xBQCr7cl2H0Wcg=; b=XuzeaToNPqNGxL
	FfezRMq0Mma1uVDlC9Cwb4HbUX7gAkPIuxqUSkSrd9cgSrrEAhVpRXLuG4es2uzjyzdCYGkyOUqWU
	1KfQm1xnA/DC+FA5UVuy5eLrAPWb+p93dkWlRCMuMrjQqqgnbg6HWBvQdUQRI5NdbiVRR7P8beMtf
	NRHsBrxqyaL09486QlU7Swoqjp/ifOL5aFJtmyhGgw3dcP3ueF0phaW1vVJmxMdeeBg4u/VeJaiAH
	mHFxLQ4nht2BZb+AxFu2hGL4RX9eA7nwXek8rnMUzsPVS16UM/WUB8ChGEUsYNSYHjQpm/RN5cNWv
	mvw9/FQ3dVCpagc4C7Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJVy-0007kI-SW; Mon, 23 Sep 2019 08:16:11 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJVN-0007SY-67
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:15:35 +0000
Received: by mail-ed1-x541.google.com with SMTP id p10so12001353edq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YrphDalHhzS/eEcKq6pAk4HWzVaxWmV1yXuQ1gyWfUo=;
 b=PJL7bIGC0ZYBHvwVyYt2LJ5y887xECL9EXUH3kVh2gitdKh2PIj+LjzBO3LVxGro1P
 L45a/oCt5B7UKTTPbz8ClvwE8+bChE4KQP9p5SPpAnRpS9BKt7SQQpJAcS9rEmvpsy8w
 7Xt0OLUHniWm243JJOhB8bgzU99a89+rosGY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YrphDalHhzS/eEcKq6pAk4HWzVaxWmV1yXuQ1gyWfUo=;
 b=kG6RA2asyKIB63nFzYVWUpaRT7lPYnZGUbcwjBs7kPGxyezNLc88oD7+WuNFFO2DOW
 mlP5HVD4SCfjF0LZOVff6dSqQZbDJ5Oi/2Yp6Saeh23hACgYbw0ZHQjofzyktrs9bw2P
 lzBMq9mr3eESkYZgw50l2p5+3iC3vwWLuK6qJdom37RqXXWLVhRVQAZmyEbPampl/Wdu
 U78+ZGTGrFEDCckU9Jhmvny3+dFNNdUVJnKOgAUgHFZVumx5SAx+GLbJyuz1ucfYb8r6
 KJkoI/RDiPmOdB9MDFvFlo84AHc1kOjaW4dxE1KjS1CuVzzdi0L9QTUPTIYew53HS331
 2xMg==
X-Gm-Message-State: APjAAAVn58JnqhpCnHeOgwDlAG5qtTwQaqbA3Cz+ACJArvottKEmSzLo
 7yREDgU9Uo5Y9OTCVIUF6Z0x139w+1F3xH0TRUAeKA==
X-Google-Smtp-Source: APXvYqzVI45ag269E7dBFRpSiMPbDjXntVzL2o19/1Lnor6BCjBJy2beWlf+y8GGpI0LGcSqflkxyaky8ooirXFogWY=
X-Received: by 2002:a50:f391:: with SMTP id g17mr32700852edm.163.1569226531020; 
 Mon, 23 Sep 2019 01:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190830074103.16671-1-bibby.hsieh@mediatek.com>
 <20190830074103.16671-3-bibby.hsieh@mediatek.com>
In-Reply-To: <20190830074103.16671-3-bibby.hsieh@mediatek.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Mon, 23 Sep 2019 16:14:55 +0800
Message-ID: <CANdKZ0du8unMedhmdjCyXR7xKYBoWEZ7YLmrvd6Y_W-Y=u3TfQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/mediatek: Apply CMDQ control flow
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011533_271514_C5DD41F7 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Tomasz Figa <tfiga@chromium.org>, YT Shen <yt.shen@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bibby,

On Fri, Aug 30, 2019 at 3:41 PM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
> ...
> +static void ddp_cmdq_cb(struct cmdq_cb_data data)
> +{
> +
> +#if IS_ENABLED(CONFIG_MTK_CMDQ)
> +       struct mtk_cmdq_cb_data *cb_data = data.data;
> +       struct drm_crtc_state *crtc_state = cb_data->state;
> +       struct drm_atomic_state *atomic_state = crtc_state->state;
> +       struct drm_crtc *crtc = crtc_state->crtc;
> +       struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> +
> +       DRM_DEBUG_DRIVER("%s\n", __func__);
This debug message is printed about twice per second when enabled,
which makes debugging other things that also use DRM_DEBUG_DRIVER
harder. Can this be rate-limited or removed?

> +
> +       if (mtk_crtc->pending_needs_vblank) {
> +               /* cmdq_vblank_event must be read after cmdq_needs_event */
> +               smp_rmb();
> +
> ...
> +void mtk_drm_crtc_plane_update(struct drm_crtc *crtc, struct drm_plane *plane,
> +                              struct mtk_plane_state *state)
> +{
> +       struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
> +       struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> +       struct drm_crtc_state *crtc_state = crtc->state;
> +       struct mtk_crtc_state *mtk_crtc_state = to_mtk_crtc_state(crtc_state);
> +       struct cmdq_pkt *cmdq_handle = mtk_crtc_state->cmdq_handle;
> +       unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> +       unsigned int local_layer;
> +       unsigned int plane_index = plane - mtk_crtc->planes;
> +
> +       DRM_DEBUG_DRIVER("%s\n", __func__);
Same with this one.

> +       if (mtk_crtc->cmdq_client) {
> +               if (plane_index >= comp_layer_nr) {
> +                       comp = mtk_crtc->ddp_comp[1];
> +                       local_layer = plane_index - comp_layer_nr;
> ...
> @@ -494,13 +599,29 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
>                                       struct drm_crtc_state *old_crtc_state)
>  {
>         struct drm_atomic_state *old_atomic_state = old_crtc_state->state;
> +       struct drm_crtc_state *crtc_state = crtc->state;
> +       struct mtk_crtc_state *state = to_mtk_crtc_state(crtc_state);
> +       struct cmdq_pkt *cmdq_handle = state->cmdq_handle;
>         struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
>         struct mtk_drm_private *priv = crtc->dev->dev_private;
> +       struct mtk_cmdq_cb_data *cb_data;
>         unsigned int pending_planes = 0;
>         int i;
>
> -       if (mtk_crtc->event)
> -               mtk_crtc->pending_needs_vblank = true;
> +       DRM_DEBUG_DRIVER("[CRTC:%u] [STATE:%p(%p)->%p(%p)]\n", crtc->base.id,
> +                        old_crtc_state, old_crtc_state->state,
> +                        crtc_state, crtc_state->state);
Same with this one.

> +
> +       if (IS_ENABLED(CONFIG_MTK_CMDQ) && mtk_crtc->cmdq_client) {
> +               drm_atomic_state_get(old_atomic_state);
> +               cb_data = kmalloc(sizeof(*cb_data), GFP_KERNEL);
> +               cb_data->state = old_crtc_state;
> ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
