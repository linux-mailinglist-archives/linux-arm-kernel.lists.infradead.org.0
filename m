Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BFA173440
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 10:38:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBrx0Tb8S5Tp9UJvYNJG7WZV6Dbsm+UX+n5IjsD+BUU=; b=A7WqfEZ8WkbffR
	dOpFohPbglxWo4juNhPn4QImUyDmO1W0kmFpk8s9A7gn72PMCUGR3R9QIxWLIzomvzOMzNFwBRbGE
	yS6IANlsj3JJhfvou/3r//yCDwtPQGz13nOazikG5Mwy0U/W1N/quxHZSpf2hC9uAWd0EUw0Ht+XY
	haXxXMnD7AdABaNpid0N8wQYIZeUgXcnnJ+aHChZMsbJFddHyKljM9BXvADzMWQsP64U7Pi8LU91Y
	+jpSFyHFYChUvMstN8OSSg1lxey51vZe2BUH9QIOatMfPmej82wBRxDTn6DE1etMoZ6l/CHqlvJTQ
	KtT0p8r8Mgk9NK25Tl8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7c61-00012e-5d; Fri, 28 Feb 2020 09:38:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7c5g-00010u-7K; Fri, 28 Feb 2020 09:37:53 +0000
X-UUID: 64a042e964224cdbabc90aa7eedf7ee4-20200228
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=wbDyMawynlrwHWkUP0rf/CmT5tZ9aeV3JKqgN+jnUl8=; 
 b=ZRx8M3Wnifgb+h9tl0gfO6h5jaIQLReCZBPxWaOoSwovd/QlrWYu7DNqjAV7NACZooSZvcV1UjGyrTZFHhGlelpTLEpVpDaTzAsdymzfuVlK1mzucRwLmXvIUAEG4Lg9dM29X9j1G1KMI2s9myAZmEISNLp5h5GGR4IRTf7Lc8I=;
X-UUID: 64a042e964224cdbabc90aa7eedf7ee4-20200228
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 822250393; Fri, 28 Feb 2020 01:37:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 01:38:28 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 17:36:54 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Feb 2020 17:37:27 +0800
Message-ID: <1582882664.22475.6.camel@mtksdaap41>
Subject: Re: [PATCH v10 4/5] soc / drm: mediatek: Move routing control to
 mmsys device
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Fri, 28 Feb 2020 17:37:44 +0800
In-Reply-To: <20200227180858.1514157-5-enric.balletbo@collabora.com>
References: <20200227180858.1514157-1-enric.balletbo@collabora.com>
 <20200227180858.1514157-5-enric.balletbo@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_013752_269173_22E569AF 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora
 Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, frank-w@public-files.de, Seiya
 Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Allison Randal <allison@lohutok.net>,
 Matthias Brugger <mbrugger@suse.com>, sboyd@kernel.org, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Enric:

On Thu, 2020-02-27 at 19:08 +0100, Enric Balletbo i Serra wrote:
> Provide a mtk_mmsys_ddp_connect() and mtk_mmsys_disconnect() functions to
> replace mtk_ddp_add_comp_to_path() and mtk_ddp_remove_comp_from_path().
> Those functions will allow DRM driver and others to control the data
> path routing.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v10:
> - Introduced a new patch to move routing control into mmsys driver.
> - Removed the patch to use regmap as is not needed anymore.
> 
> Changes in v9: None
> Changes in v8: None
> Changes in v7: None
> 
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  13 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 256 ----------------------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |   7 -
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  13 +-
>  drivers/soc/mediatek/mtk-mmsys.c        | 275 ++++++++++++++++++++++++
>  include/linux/soc/mediatek/mtk-mmsys.h  |  19 ++
>  6 files changed, 306 insertions(+), 277 deletions(-)
>  create mode 100644 include/linux/soc/mediatek/mtk-mmsys.h
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index fd4042de12f2..3c89449bea6e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -6,6 +6,7 @@
>  #include <linux/clk.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/soc/mediatek/mtk-cmdq.h>
> +#include <linux/soc/mediatek/mtk-mmsys.h>
>  
>  #include <asm/barrier.h>
>  #include <soc/mediatek/smi.h>
> @@ -296,9 +297,9 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  	}
>  
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> -		mtk_ddp_add_comp_to_path(mtk_crtc->config_regs,
> -					 mtk_crtc->ddp_comp[i]->id,
> -					 mtk_crtc->ddp_comp[i + 1]->id);
> +		mtk_mmsys_ddp_connect(mtk_crtc->config_regs,
> +				      mtk_crtc->ddp_comp[i]->id,
> +				      mtk_crtc->ddp_comp[i + 1]->id);

When CONFIG_MTK_MMSYS is not enable, this would built fail. So make some
modification in Kconfig.

>  		mtk_disp_mutex_add_comp(mtk_crtc->mutex,
>  					mtk_crtc->ddp_comp[i]->id);
>  	}
> @@ -355,9 +356,9 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
>  					   mtk_crtc->ddp_comp[i]->id);
>  	mtk_disp_mutex_disable(mtk_crtc->mutex);
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> -		mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
> -					      mtk_crtc->ddp_comp[i]->id,
> -					      mtk_crtc->ddp_comp[i + 1]->id);
> +		mtk_mmsys_ddp_disconnect(mtk_crtc->config_regs,
> +					 mtk_crtc->ddp_comp[i]->id,
> +					 mtk_crtc->ddp_comp[i + 1]->id);
>  		mtk_disp_mutex_remove_comp(mtk_crtc->mutex,
>  					   mtk_crtc->ddp_comp[i]->id);
>  	}
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index b885f60f474c..014c1bbe1df2 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -13,26 +13,6 @@
>  #include "mtk_drm_ddp.h"
>  #include "mtk_drm_ddp_comp.h"
>  

[snip]

> diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
> new file mode 100644
> index 000000000000..02fd86e62a8d
> --- /dev/null
> +++ b/include/linux/soc/mediatek/mtk-mmsys.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2015 MediaTek Inc.
> + */
> +
> +#ifndef __MTK_MMSYS_H
> +#define __MTK_MMSYS_H
> +
> +enum mtk_ddp_comp_id;
> +
> +void mtk_mmsys_ddp_connect(void __iomem *config_regs,

I prefer the first parameter to be 'struct device *dev' which is the
device pointer of mmsys device. and mmsys driver could use this pointer
to get its register address.

Regards,
CK

> +			   enum mtk_ddp_comp_id cur,
> +			   enum mtk_ddp_comp_id next);
> +
> +void mtk_mmsys_ddp_disconnect(void __iomem *config_regs,
> +			      enum mtk_ddp_comp_id cur,
> +			      enum mtk_ddp_comp_id next);
> +
> +#endif /* __MTK_MMSYS_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
