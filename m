Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0332F9F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 12:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/jep5FZSB4dqrf8eUGvFNFNX2EmU3+V4Ku5oPMFvBA=; b=Oj844hExFJEvH9
	Id3I/VmIOnR1Wahsy0H79BtSF21HLbhiqQDYmaUzqI6NIs/GTyTafzoT22dFxYervVJJvUCo85g4N
	/X5pKCDfOt/2Iw3bAZ9onfQONcUH+kMk5yzG1ouKOaN8alOxH1bNuyAbfKxp09yKklkKJBTlQlv56
	A87662Az+/gvAaDhpdDkjv53K/qpGC+xIqYotg6FwwL1d1M9eDZsjGbjgGKQ8eQ0WfTS2tcCXKabH
	kdKCg+ggrQiv177acIZDfs23fyPhOpvGHS7L2Q2TYKzMriTsTVtqPrDtxW5bbdP4jN5ZOJOL26HPO
	p1TfNNqJs+Pzz7o5uRvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHxC-0002Ue-0i; Thu, 30 May 2019 10:06:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHx1-0002TP-UK; Thu, 30 May 2019 10:06:25 +0000
X-UUID: 0f65a1d84337428dad5633dd072e89d9-20190530
X-UUID: 0f65a1d84337428dad5633dd072e89d9-20190530
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 990244314; Thu, 30 May 2019 02:06:13 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 03:06:12 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 18:06:10 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 18:06:10 +0800
Message-ID: <1559210770.12373.0.camel@mtksdaap41>
Subject: Re: [PATCH v4] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 18:06:10 +0800
In-Reply-To: <20190530091847.90263-1-hsinyi@chromium.org>
References: <20190530091847.90263-1-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_030623_982775_0636F3FD 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Thu, 2019-05-30 at 17:18 +0800, Hsin-Yi Wang wrote:
> mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(), which needs
> ovl irq for drm_crtc_wait_one_vblank(), since after mtk_dsi_stop() is called,
> ovl irq will be disabled. If drm_crtc_wait_one_vblank() is called after last
> irq, it will timeout with this message: "vblank wait timed out on crtc 0". This
> happens sometimes when turning off the screen.
> 
> In drm_atomic_helper.c#disable_outputs(),
> the calling sequence when turning off the screen is:
> 
> 1. mtk_dsi_encoder_disable()
>      --> mtk_output_dsi_disable()
>        --> mtk_dsi_stop();  // sometimes make vblank timeout in atomic_disable
>        --> mtk_dsi_poweroff();
> 2. mtk_drm_crtc_atomic_disable()
>      --> drm_crtc_wait_one_vblank();
>      ...
>        --> mtk_dsi_ddp_stop()
>          --> mtk_dsi_poweroff();
> 
> mtk_dsi_poweroff() has reference count design, change to make mtk_dsi_stop()
> called in mtk_dsi_poweroff() when refcount is 0.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Fixes: 0707632b5bac ("drm/mediatek: update DSI sub driver flow for sending commands to panel")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log v3->v4:
> * add comment in code.
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b00eb2d2e086..730594a91440 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -630,6 +630,15 @@ static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
>  	if (--dsi->refcount != 0)
>  		return;
>  
> +	/* 
> +	 * mtk_dsi_stop() and mtk_dsi_start() is asymmetric, since
> +	 * mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(),
> +	 * which needs irq for vblank, and mtk_dsi_stop() will disable irq.
> +	 * mtk_dsi_start() needs to be called in mtk_output_dsi_enable(),
> +	 * after dsi is fully set.
> +	 */
> +	mtk_dsi_stop(dsi);
> +
>  	if (!mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500)) {
>  		if (dsi->panel) {
>  			if (drm_panel_unprepare(dsi->panel)) {
> @@ -696,7 +705,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
>  		}
>  	}
>  
> -	mtk_dsi_stop(dsi);
>  	mtk_dsi_poweroff(dsi);
>  
>  	dsi->enabled = false;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
