Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849CD10E60E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4jWAJZ0tQiTZ63uuQtQy25j6U30nRTHhSTgmf2sbo8=; b=bWJymapHnNC2E8
	YWesTVwPNql297OKBhyP6E1YA7OI0WyBST3m7pKMs3eJHaxqxq9zXXaP/J+FL3X6VuEfOxpw5znMD
	TBUjNiiqyzZifAKWYtzIGo3uMLb50D8SKoEBy0uvytd3hB77kFuK32w6MOD0tGquLHOugUawOEaiL
	hych0W7mjISRxDg2bu+4rKtO30g3/A8b5OJvMmyBKaDLlnZu2Ukug/v7/fS1wn2Es6eEb4/D6AMTO
	jFyeuMyoc/VbJKCqpgdAIE6WWSy87x2Bbuy88BBp7+H4TjdSMnxAyRjD+xY6dVN2ent3teRxWefOq
	qjqrgF1H96iADoxcUSCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibfQu-0007J6-L3; Mon, 02 Dec 2019 06:43:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibfQo-0007Ic-8n; Mon, 02 Dec 2019 06:43:39 +0000
X-UUID: ac19f32da86d4e5b803232ef38255261-20191201
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=19s7GBXuY9yIpUgA9xWsAVPEjx09DZz7pwIlU0oD5U8=; 
 b=dVb1kjibhL4AnclmLKAjbPqNtPF8qBoEiAA51Rz+JTVgN94B0f3gKLMd6gNxqhwra1Oz04dtbn2+ZdbQlRhRjNi7Uy0AS1I+4wi5+vEUR0Xk9FMzh+se3MolD070LX7ngaswnJWas4sbuvq1Rgz8GgwbquXs5GKnOo5At76QjuI=;
X-UUID: ac19f32da86d4e5b803232ef38255261-20191201
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1220740209; Sun, 01 Dec 2019 22:43:08 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 1 Dec 2019 22:43:40 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 14:43:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 2 Dec 2019 14:43:12 +0800
Message-ID: <1575269008.3674.1.camel@mtksdaap41>
Subject: Re: [PATCH v1 3/6] drm/mediatek: handle events when
 enabling/disabling crtc
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 2 Dec 2019 14:43:28 +0800
In-Reply-To: <20191128024238.9399-4-bibby.hsieh@mediatek.com>
References: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
 <20191128024238.9399-4-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_224338_318173_1CE2BCC4 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: drinkcat@chromium.org, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tfiga@chromium.org, YT Shen <yt.shen@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Thu, 2019-11-28 at 10:42 +0800, Bibby Hsieh wrote:
> The driver currently handles vblank events only when updating planes on
> an already enabled CRTC. The atomic update API however allows requesting
> an event when enabling or disabling a CRTC. This currently leads to
> event objects being leaked in the kernel and to events not being sent
> out. Fix it.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 71f4089a8117..cb87a538b8ff 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -334,6 +334,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  {
>  	struct drm_device *drm = mtk_crtc->base.dev;
> +	struct drm_crtc *crtc = &mtk_crtc->base;
>  	int i;
>  
>  	DRM_DEBUG_DRIVER("%s\n", __func__);
> @@ -357,6 +358,13 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  	mtk_disp_mutex_unprepare(mtk_crtc->mutex);
>  
>  	pm_runtime_put(drm->dev);
> +
> +	if (crtc->state->event && !crtc->state->active) {
> +		spin_lock_irq(&crtc->dev->event_lock);
> +		drm_crtc_send_vblank_event(crtc, crtc->state->event);
> +		crtc->state->event = NULL;
> +		spin_unlock_irq(&crtc->dev->event_lock);
> +	}
>  }
>  
>  static void mtk_crtc_ddp_config(struct drm_crtc *crtc)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
