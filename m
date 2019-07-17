Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DAC6B5FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 07:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcQJFv7oCwPSutR7QlzvlNahFn4fVhHvbj4yIpJ/acw=; b=aa0Pj0fJoUstVp
	kazV+9kIDtBWPWi0iMhf42L7fylV+BnV5PaeMiKwLqf0ltHpULwNkWRPkCkMJyljqUauz1cZFUtL0
	qT3DxZI4T8PM+l23Z/Zgx+BjkViqu7RM65U7YXIHmcE6e2hbN7v+m16vu53+jIA7CMEg8HWY9LkPU
	4YhLLBoFLSpTvtgUEiX/TI9BwcHLrXICUkvWm33pJZ4zRb5wSXM6yBhwrH3kNr/l2xbOyNZnCt/C5
	r4awWxQ+FszrqkI+SrN47HBkbIbcP76dXxn6Gk2d96nogctJrS8ZjaE4+mAm4foOIqv3u1VHSqwcv
	kTlffhkgLLIVqQ1y3NpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hncbd-00070J-Ft; Wed, 17 Jul 2019 05:35:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hncbP-0006zp-9m; Wed, 17 Jul 2019 05:35:44 +0000
X-UUID: 4ae9c82b7dc040e8a155ffe5098594f9-20190716
X-UUID: 4ae9c82b7dc040e8a155ffe5098594f9-20190716
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 234591834; Tue, 16 Jul 2019 21:35:40 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 22:35:39 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 13:35:35 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 13:35:36 +0800
Message-ID: <1563341736.29169.15.camel@mtksdaap41>
Subject: Re: [PATCH v4, 12/33] drm/mediatek: split DISP_REG_CONFIG_DSI_SEL
 setting into another use case
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 17 Jul 2019 13:35:36 +0800
In-Reply-To: <1562625253-29254-13-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-13-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F9D2280166EF5AA1468B07A64B20AE04654710B0E0A7273E89A21F547161FA5F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_223543_348545_BA53F127 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, 2019-07-09 at 06:33 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Here is two modifition in this patch:
> 1.bls->dpi0 and rdma1->dsi are differen usecase,
> Split DISP_REG_CONFIG_DSI_SEL setting into anther usecase
> 2.remove DISP_REG_CONFIG_DPI_SEL setting, DPI_SEL_IN_BLS is 0 and
> this is same with hardware defautl setting,
> 

You move 2 register setting out of the path from BLS to DPI0, does this
path still work? Please make sure that all modification could work on
all supported SoC.

Regards,
CK

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index d015c1a..47b3e35 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -400,10 +400,9 @@ static void mtk_ddp_sout_sel(void __iomem *config_regs,
>  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
>  		writel_relaxed(BLS_TO_DPI_RDMA1_TO_DSI,
>  			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
>  		writel_relaxed(DSI_SEL_IN_RDMA,
>  			       config_regs + DISP_REG_CONFIG_DSI_SEL);
> -		writel_relaxed(DPI_SEL_IN_BLS,
> -			       config_regs + DISP_REG_CONFIG_DPI_SEL);
>  	}
>  }
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
