Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C49E310015E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:35:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8GtPd/k4rnOIEVOnnzcPYOBngAh0KSLhzoUuEBjzC4=; b=k/IRNQHStyQnlq
	MxUmh8EixSMY6Xk8EPiu7TQyylrCfisubWKBjFvMGNoixZgQNNQy08JXxvIAk//5wq3Y2zr1ty8AB
	maXhAxDc32bfrKBEYYDtUeh+LAwNifM0jn7Sup86u5YU+prbtdPecdXlp8fqnYHg/3RDO/FJUbO1+
	nPWJBaKZn+3tun4xKKOrzNThBtF6YQZFvnG5HHc/WAmEzQpHqoSBxftF2v9rdaSclN/pPWws34bbx
	+N7hVsUy5aqdIXve/czDhYLKxUR6+itKvxHGrGr8E2g3ze77L+d/j8OEwe9SiagXt+8iYENtlwWbj
	tTsVE+XAoot91hXqVEAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdQu-0002Vn-73; Mon, 18 Nov 2019 09:34:56 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdQh-0002Tx-Ro
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:34:46 +0000
Received: by mail-il1-x142.google.com with SMTP id q1so15350994ile.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lr/4E5ZW9jz9oShySXGCc5V6Txdcr0g9QJ5gIXifIGk=;
 b=W6V9SCS3NzD7+ytXHksdvuTMYaJofAh3nWAX40damlaaJWjWjZHtQ+k6ikYy6z6QM1
 VHwrlguvhMqY7NmZM9gTooG0Z9XHILEXYgbysYUT6DYzcl/XH1wIjioMeK/75YCyLtb/
 aUi3Yq3X/P9iXf6Kg85iW+swL8ttWmJ0SlonE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lr/4E5ZW9jz9oShySXGCc5V6Txdcr0g9QJ5gIXifIGk=;
 b=XQrKfU0fm7cai+YX/dxd8hbJTdTK2Jtw5kPkv1iL2Jljj85W0TEJ8t5wvrsOb/snnH
 uj2q4lR6TeDzuvmdABLE0HRJNGnorT/3vnOcw3Ic4V+OY064GxpOTnLFBJ/85pax7wAG
 BXSyzpwQllKuqdrEbIqimIgAE0mwQr+7kMPV7cbXeKTpESu0S67tgHbcGNbV5Xxf5hAD
 i8e1NSQZlMwCnyVH+IsH1I+WCR6+sKIv0+1JuhijbsRV92aJT3pAAEGQ67Aad9cd5sS9
 M6sdzj6SSfCaLBCRHJxbMTL5Fosv8GeQ7drjYp/U/D4XqiRMvnBYWjTu/c19lGRFj6tn
 7TTg==
X-Gm-Message-State: APjAAAWo/Q8dO5W70CLHoPWFbii1XkhkT7QECmM70lHlSDchuHU/ZcJI
 lqoeQVnNuni4g46DeayDm0fD9wgXe3UhhAT0WYhbYg==
X-Google-Smtp-Source: APXvYqxLrh5aVv3p0xE1Cuv2M9Lu4EqPeULGldZRnOqi6Hjy+4RMLF1tR9vxtOQ6RJa0zB6OkWOb0ZxRDT43EqGIS1Q=
X-Received: by 2002:a92:d608:: with SMTP id w8mr14471824ilm.308.1574069682145; 
 Mon, 18 Nov 2019 01:34:42 -0800 (PST)
MIME-Version: 1.0
References: <20190830074103.16671-1-bibby.hsieh@mediatek.com>
 <20190830074103.16671-3-bibby.hsieh@mediatek.com>
In-Reply-To: <20190830074103.16671-3-bibby.hsieh@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 18 Nov 2019 17:34:16 +0800
Message-ID: <CAJMQK-ir=8ukNZw8XN=prLuh3znjbjNszVB=dcDxa_bVnFwVAQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/mediatek: Apply CMDQ control flow
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013443_925993_9C1650D4 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, tfiga@chromium.org,
 YT Shen <yt.shen@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 7:41 AM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:

> @@ -405,26 +458,69 @@ void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
>                 return;
>
>         mutex_lock(&priv->hw_lock);
> -       plane_helper_funcs->atomic_update(plane, plane_state);
> -       for (i = 0; i < mtk_crtc->layer_nr; i++) {
> -               struct drm_plane *plane = &mtk_crtc->planes[i];
> -               struct mtk_plane_state *plane_state;
> +       if (IS_ENABLED(CONFIG_MTK_CMDQ) && mtk_crtc->cmdq_client) {
> +               struct mtk_crtc_state *mtk_crtc_state =
> +                               to_mtk_crtc_state(crtc->state);
> +               struct mtk_cmdq_cb_data *cb_data;
> +
> +               mtk_crtc_state->cmdq_handle =
> +                               cmdq_pkt_create(mtk_crtc->cmdq_client,
> +                                               PAGE_SIZE);
> +               cmdq_pkt_clear_event(mtk_crtc_state->cmdq_handle,
> +                                    mtk_crtc->cmdq_event);
> +               cmdq_pkt_wfe(mtk_crtc_state->cmdq_handle, mtk_crtc->cmdq_event);
> +               plane_helper_funcs->atomic_update(plane, plane_state);
> +               cb_data = kmalloc(sizeof(*cb_data), GFP_KERNEL);
Check kmalloc failure?
> +               cb_data->cmdq_handle = mtk_crtc_state->cmdq_handle;
> +               cmdq_pkt_flush_async(mtk_crtc_state->cmdq_handle,
> +                                    ddp_cmdq_cursor_cb, cb_data);

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
> +
> +       if (IS_ENABLED(CONFIG_MTK_CMDQ) && mtk_crtc->cmdq_client) {
> +               drm_atomic_state_get(old_atomic_state);
> +               cb_data = kmalloc(sizeof(*cb_data), GFP_KERNEL);
Check kmalloc failure?
> +               cb_data->state = old_crtc_state;
> +               cb_data->cmdq_handle = cmdq_handle;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
