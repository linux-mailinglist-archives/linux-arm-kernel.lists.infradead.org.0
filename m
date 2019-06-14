Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568BE45324
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6okYp6z3LGa0fUP4wKrDT1dZjEZG2M6lhcHW99SlFVM=; b=NWCHXUgd181WoK
	CV7oAecOPXGE7Ep2HQsFN+jR8yLbChzhxyUzHy/SuPmOpzUmrCVamu44DzSk1W1Gzn1KC8chZphX9
	GL4ekejlcbAQvQrSpcbPZ3/WgjGAVJkoE9bv+u1smUCLecSjyoYzccsYX0DkEbw/Y574/+DNZyDC7
	Vwuj0T3P4vFdO1aKgklWBwL1Pevs94MEirnhYWMfWWqO72KKVuFisXEWBUbI0Ovs9bksU6mEENYW4
	cN78eZHh4imGWWD0DY01KJQpG5+UPFw/T1faGSQEDQ9kvQVa7Bx6wdt83hYg0Jc55jn/t9p1ZGn2M
	U7tK0GOuzWlELtp8Bl5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbdIe-0006C9-NF; Fri, 14 Jun 2019 03:54:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbdIV-0006Bh-Gm; Fri, 14 Jun 2019 03:54:41 +0000
X-UUID: fcaefcc9db624be4ba6dc63488209118-20190613
X-UUID: fcaefcc9db624be4ba6dc63488209118-20190613
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 411854905; Thu, 13 Jun 2019 19:54:34 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 20:54:32 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 11:54:30 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 11:54:30 +0800
Message-ID: <1560484470.16718.13.camel@mtksdaap41>
Subject: Re: [PATCH v3, 14/27] drm/mediatek: add commponent OVL_2L0
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 14 Jun 2019 11:54:30 +0800
In-Reply-To: <1559734986-7379-15-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-15-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_205439_568673_8AB88D4A 
X-CRM114-Status: GOOD (  12.32  )
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
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Wed, 2019-06-05 at 19:42 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add commponent OVL_2L0

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 2 ++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 310c0b9..8094926 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -227,6 +227,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
>  
>  static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
>  	[MTK_DISP_OVL] = "ovl",
> +	[MTK_DISP_OVL_2L] = "ovl_2l",
>  	[MTK_DISP_RDMA] = "rdma",
>  	[MTK_DISP_WDMA] = "wdma",
>  	[MTK_DISP_COLOR] = "color",
> @@ -266,6 +267,7 @@ struct mtk_ddp_comp_match {
>  	[DDP_COMPONENT_OD1]	= { MTK_DISP_OD,	1, &ddp_od },
>  	[DDP_COMPONENT_OVL0]	= { MTK_DISP_OVL,	0, NULL },
>  	[DDP_COMPONENT_OVL1]	= { MTK_DISP_OVL,	1, NULL },
> +	[DDP_COMPONENT_OVL_2L0]	= { MTK_DISP_OVL_2L,	0, NULL },
>  	[DDP_COMPONENT_PWM0]	= { MTK_DISP_PWM,	0, NULL },
>  	[DDP_COMPONENT_PWM1]	= { MTK_DISP_PWM,	1, NULL },
>  	[DDP_COMPONENT_PWM2]	= { MTK_DISP_PWM,	2, NULL },
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 87ef290..a81c322 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -25,6 +25,7 @@
>  
>  enum mtk_ddp_comp_type {
>  	MTK_DISP_OVL,
> +	MTK_DISP_OVL_2L,
>  	MTK_DISP_RDMA,
>  	MTK_DISP_WDMA,
>  	MTK_DISP_COLOR,
> @@ -58,6 +59,7 @@ enum mtk_ddp_comp_id {
>  	DDP_COMPONENT_OD0,
>  	DDP_COMPONENT_OD1,
>  	DDP_COMPONENT_OVL0,
> +	DDP_COMPONENT_OVL_2L0,
>  	DDP_COMPONENT_OVL1,
>  	DDP_COMPONENT_PWM0,
>  	DDP_COMPONENT_PWM1,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
