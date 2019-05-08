Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9452F16F5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqN0qlsJ7KZJXhHqDe+GPVptJxRm6z8cHY2sZGUZymA=; b=Pq7deV/oAOjKbc
	VPaP6FqerqSJ6EXKokbCoqkZHPjkBTXX86yNCMc163BIGzaXjK8DmZ0FmvFJW+jxzQ9QragxzZTSg
	vCqn95ewbgREFomdWGhnXaEcNBRXkUax6DAQEZJaIvS4u6o0Yc54Q6SEKWQLS80iCs+gJzYUSMBwL
	4ymDoHIhC5sErrdPsZprOehJ1siqs72v9+O4iEuT82yH87uUJJF13zAOO8K8zHlLIx3wEoZOpEY4z
	k0vVYIn/w6TohsJIykPGChY8/uwfZk+8l/RoI4sqoDPCLzWd7jLX8s3u+bwZYwEF3d32U+dFzkoIq
	e80eaNuCEhKDYZSd1fAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCnz-0003GM-KK; Wed, 08 May 2019 02:59:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCns-0003Fr-N1; Wed, 08 May 2019 02:59:33 +0000
X-UUID: f41a6a178a4546a7a33654096d80ee4a-20190507
X-UUID: f41a6a178a4546a7a33654096d80ee4a-20190507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1851197226; Tue, 07 May 2019 18:59:18 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 19:59:17 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS33N1.mediatek.inc (172.27.4.75) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 10:59:15 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 10:59:15 +0800
Message-ID: <1557284354.31731.9.camel@mtksdaap41>
Subject: Re: [v2 4/5] drm/mediatek: add frame size control
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Wed, 8 May 2019 10:59:14 +0800
In-Reply-To: <20190416060501.76276-5-jitao.shi@mediatek.com>
References: <20190416060501.76276-1-jitao.shi@mediatek.com>
 <20190416060501.76276-5-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_195932_754728_61D3BBDC 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com, Ajay
 Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul
 Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Kumar Gala <galak@codeaurora.org>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Tue, 2019-04-16 at 14:05 +0800, Jitao Shi wrote:
> Our new DSI chip has frame size control.
> So add the driver data to control for different chips.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index be42405a0a78..458a700ce74c 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -78,6 +78,7 @@
>  #define DSI_VBP_NL		0x24
>  #define DSI_VFP_NL		0x28
>  #define DSI_VACT_NL		0x2C
> +#define DSI_SIZE_CON		0x38
>  #define DSI_HSA_WC		0x50
>  #define DSI_HBP_WC		0x54
>  #define DSI_HFP_WC		0x58
> @@ -162,6 +163,7 @@ struct phy;
>  struct mtk_dsi_driver_data {
>  	const u32 reg_cmdq_off;
>  	bool has_shadow_ctl;
> +	bool has_size_ctl;
>  };
>  
>  struct mtk_dsi {
> @@ -430,6 +432,9 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>  	writel(vm->vfront_porch, dsi->regs + DSI_VFP_NL);
>  	writel(vm->vactive, dsi->regs + DSI_VACT_NL);
>  
> +	if (dsi->driver_data->has_size_ctl)
> +		writel(vm->vactive << 16 | vm->hactive, dsi->regs + DSI_SIZE_CON);
> +
>  	horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
>  
>  	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
