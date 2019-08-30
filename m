Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC77EA2FF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRGeR9md+QV0XOSW9Baqf/2tNAAAPRR2rokQNnYsdBA=; b=L1Mt8ovknjP9rX
	ftpHjQ5OWLqfhspMzogzoOsxJln6uhZt9swz73RHtd8XnIQmto/YzqF+wFN7UKe6R8jqD9Y4M6LOM
	VDhtbXYBurhIENusW1+WCD514ZUek20LVbXozNAEiuem3DYBKfk2toDLqyphvRd00eYsC+qTcfcQd
	KjitCRrOGTT9NGb8/aeNQjRA0Fx8eNwvnrOEjvH5KfFH0mCafMxIn1CkCbqTPQflYFuoLRf6JewDL
	Jp+Si9kr4Kqie9T4WmnvwusGtu3vShfqPGMo3sygR27g5WHs66yMk9pRnk+6swyJeonKU4YvECBBG
	OyqI/f/iK4BT5bwsiOig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aRU-0005D0-Sp; Fri, 30 Aug 2019 06:31:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aQy-0005AM-ME; Fri, 30 Aug 2019 06:30:59 +0000
X-UUID: 5f29f082be9e4fcdb871f633f39d262e-20190829
X-UUID: 5f29f082be9e4fcdb871f633f39d262e-20190829
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1167954889; Thu, 29 Aug 2019 22:31:00 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 23:30:58 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 14:30:53 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 14:30:53 +0800
Message-ID: <1567146647.5942.19.camel@mtksdaap41>
Subject: Re: [PATCH v5, 28/32] drm/mediatek: add connection from OVL_2L0 to
 RDMA0
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 30 Aug 2019 14:30:47 +0800
In-Reply-To: <1567090254-15566-29-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-29-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4CE476717C2C671C40EAF66D9332FFD3A6FB89C3A2A75C9C0B564E557C4AD3FA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_233056_966749_2691C50B 
X-CRM114-Status: GOOD (  13.22  )
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

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> this patch add add connection from OVL_2L0 to RDMA0

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index aa6173b..943e114 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -33,6 +33,12 @@
>  #define DISP_REG_CONFIG_DSI_SEL			0x050
>  #define DISP_REG_CONFIG_DPI_SEL			0x064
>  
> +#define MT8183_DISP_OVL0_2L_MOUT_EN		0xf04
> +#define MT8183_DISP_PATH0_SEL_IN		0xf24
> +
> +#define OVL0_2L_MOUT_EN_DISP_PATH0			BIT(0)
> +#define DISP_PATH0_SEL_IN_OVL0_2L			0x1
> +
>  #define MT2701_DISP_MUTEX0_MOD0			0x2c
>  #define MT2701_DISP_MUTEX0_SOF0			0x30
>  
> @@ -307,6 +313,10 @@ static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
>  	} else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_OVL_2L0) {
>  		*addr = data->ovl0_mout_en;
>  		value = OVL0_MOUT_EN_OVL0_2L;
> +	} else if (cur == DDP_COMPONENT_OVL_2L0 &&
> +		   next == DDP_COMPONENT_RDMA0) {
> +		*addr = MT8183_DISP_OVL0_2L_MOUT_EN;
> +		value = OVL0_2L_MOUT_EN_DISP_PATH0;
>  	} else {
>  		value = 0;
>  	}
> @@ -366,6 +376,10 @@ static unsigned int mtk_ddp_sel_in(const struct mtk_mmsys_reg_data *data,
>  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
>  		*addr = DISP_REG_CONFIG_DSI_SEL;
>  		value = DSI_SEL_IN_BLS;
> +	} else if (cur == DDP_COMPONENT_OVL_2L0 &&
> +		   next == DDP_COMPONENT_RDMA0) {
> +		*addr = MT8183_DISP_PATH0_SEL_IN;
> +		value = DISP_PATH0_SEL_IN_OVL0_2L;
>  	} else {
>  		value = 0;
>  	}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
