Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC44A193414
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 00:01:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKtwYlkARUDbnskFkJUCa8RtvvGTacdS+oIAX/ZN3o4=; b=TY+3fa+FGeJboP
	nOpIjVU8n9ua0/RR3SFS8lA1hSpqrFq1zoSCdMlYkiJsDV7jPKDPBuekSd+C2PkZt8g8gYI18Zio+
	88OdRPebzMQ1LYgcxnOwmo7mIoMhm2BQjW2gNwpZ5ZEHa8J+xFxdPuNHSVOGcC1ue2np1d9vjJpf3
	EcpT5VEQPSbgiAMffnKQFHQ6vxPN2208+Dr/XicMilo/LdJ7XC8PiZsRPMdhXwKpEmzQcQ4QPCqWo
	7HRjhOdVc/HzwjHMcaoRI2wcNVXLEsm2q67jHTPvRED7cydNOc/wASA0fX6TAdMlGFI4zOl0jLO25
	NRXwG9GOzN+t/D/L5Kow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHF19-0008S3-Rx; Wed, 25 Mar 2020 23:00:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHF0o-0008QP-67; Wed, 25 Mar 2020 23:00:39 +0000
X-UUID: 9a80fba9e475448e86081c0760d89450-20200325
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=zRMHb+7lQ/kxPsZpJcKWipHS7+03jckwS7Gwba6WOEM=; 
 b=r8lv1lYlGPHABlJA5/YvzkJB1hF9pK/v1LICPxxSO5nZCcv32OHDOmvHfEUd+znkTB995rws7hJHYTPnlQWT66hkirsOEUbpu6uo/53tSXJAnbFi1jeFk6/PbpDCO4Wf0oNaFpj8AaxKx8TQ4lQM+ym1wlIa1AHmIXg9f2JoVyc=;
X-UUID: 9a80fba9e475448e86081c0760d89450-20200325
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 672323448; Wed, 25 Mar 2020 15:00:36 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Mar 2020 16:00:34 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Mar 2020 07:00:28 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 26 Mar 2020 07:00:21 +0800
Message-ID: <1585177223.26117.1.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Remove debug messages for function calls
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Thu, 26 Mar 2020 07:00:23 +0800
In-Reply-To: <20200226112723.649954-1-enric.balletbo@collabora.com>
References: <20200226112723.649954-1-enric.balletbo@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_160038_237614_A11DD65A 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Philipp
 Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Enric:

On Wed, 2020-02-26 at 12:27 +0100, Enric Balletbo i Serra wrote:
> Equivalent information can be nowadays obtained using function tracer.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---

Acked-by: CK Hu <ck.hu@mediatek.com>

> 
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 5 -----
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 2 --
>  2 files changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index a236499123aa..882c690d3f13 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -192,7 +192,6 @@ static int mtk_crtc_ddp_clk_enable(struct mtk_drm_crtc *mtk_crtc)
>  	int ret;
>  	int i;
>  
> -	DRM_DEBUG_DRIVER("%s\n", __func__);
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>  		ret = clk_prepare_enable(mtk_crtc->ddp_comp[i]->clk);
>  		if (ret) {
> @@ -212,7 +211,6 @@ static void mtk_crtc_ddp_clk_disable(struct mtk_drm_crtc *mtk_crtc)
>  {
>  	int i;
>  
> -	DRM_DEBUG_DRIVER("%s\n", __func__);
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
>  		clk_disable_unprepare(mtk_crtc->ddp_comp[i]->clk);
>  }
> @@ -257,7 +255,6 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  	int ret;
>  	int i;
>  
> -	DRM_DEBUG_DRIVER("%s\n", __func__);
>  	if (WARN_ON(!crtc->state))
>  		return -EINVAL;
>  
> @@ -298,7 +295,6 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  		goto err_mutex_unprepare;
>  	}
>  
> -	DRM_DEBUG_DRIVER("mediatek_ddp_ddp_path_setup\n");
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
>  		mtk_ddp_add_comp_to_path(mtk_crtc->config_regs,
>  					 mtk_crtc->ddp_comp[i]->id,
> @@ -348,7 +344,6 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  	struct drm_crtc *crtc = &mtk_crtc->base;
>  	int i;
>  
> -	DRM_DEBUG_DRIVER("%s\n", __func__);
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>  		mtk_ddp_comp_stop(mtk_crtc->ddp_comp[i]);
>  		if (i == 1)
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 17f118ee0e57..4934834977b3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -570,7 +570,6 @@ static int mtk_drm_sys_suspend(struct device *dev)
>  	int ret;
>  
>  	ret = drm_mode_config_helper_suspend(drm);
> -	DRM_DEBUG_DRIVER("mtk_drm_sys_suspend\n");
>  
>  	return ret;
>  }
> @@ -582,7 +581,6 @@ static int mtk_drm_sys_resume(struct device *dev)
>  	int ret;
>  
>  	ret = drm_mode_config_helper_resume(drm);
> -	DRM_DEBUG_DRIVER("mtk_drm_sys_resume\n");
>  
>  	return ret;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
