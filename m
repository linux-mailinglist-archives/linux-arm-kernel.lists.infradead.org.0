Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F7BA798D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 06:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+d6psdENKY94OesIdgmGuEaA4Ilh7e3skUZd+WgkqXo=; b=IgROkOJIzBdEVR
	lQ7zNgznneL/pfV5NcU4734nVK2E1bBgbyO/6QUwgX5Ya0oJsjfoPuGGFoz9iVr4jcms77dmkUyDp
	d4XkxREDtdnxUHbzRkZR9FMJViervxEJ6v7nizOF1CK/qx4M26XsjmHzcEcVKJ00O3w3bpe3Hj7b/
	+xOrliv3KWm6PrtyWTK2m8ccxuKREHhZEY13dCvDm5TRsuDMBnmZ5TZsL42ayDVTT8BV3JhBLdrEb
	0fVsSDBNFc/yLWkCiEDyO1nlRqxjHVwKnbZ0Q94LufqeYrvZMHD97MUk2oHgvaCsKOjYeJdUlLDtn
	aRzBgVbxafreyBHXF0ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Mag-0000CX-0U; Wed, 04 Sep 2019 04:08:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5MaR-0000B9-Po; Wed, 04 Sep 2019 04:08:06 +0000
X-UUID: b0d75cfeb761494b8ba8a8c4e0ed3482-20190903
X-UUID: b0d75cfeb761494b8ba8a8c4e0ed3482-20190903
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <houlong.wei@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 133474943; Tue, 03 Sep 2019 20:07:59 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 21:07:57 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 4 Sep 2019 12:07:54 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 12:07:53 +0800
Message-ID: <1567570074.31301.19.camel@mhfsdcap03>
Subject: Re: [PATCH v3 06/14] media: mtk-mdp: Get rid of mtk_smi_larb_get/put
From: houlong wei <houlong.wei@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>
Date: Wed, 4 Sep 2019 12:07:54 +0800
In-Reply-To: <mailman.21807.1567503573.19300.linux-mediatek@lists.infradead.org>
References: <mailman.21807.1567503573.19300.linux-mediatek@lists.infradead.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 500850E9C33D38436DBF3DA1D3DC54035EACB51BDE85BE19A0327058E6BBD5A42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_210803_849142_DFCEF742 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, houlong.wei@mediatek.com,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, minghsiu.tsai@mediatek.com, ming-fan.chen@mediatek.com,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yong,

I have inline comment below.

> MediaTek IOMMU has already added the device_link between the consumer
> and smi-larb device. If the mdp device call the pm_runtime_get_sync,
> the smi-larb's pm_runtime_get_sync also be called automatically.
> 
> CC: Minghsiu Tsai <minghsiu.tsai@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 38 ---------------------------
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.h |  2 --
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c |  1 -
>  3 files changed, 41 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> index 9afe816..5985a9b 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> @@ -9,7 +9,6 @@
>  #include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/of_platform.h>
> -#include <soc/mediatek/smi.h>
>  
>  #include "mtk_mdp_comp.h"
>  
> @@ -58,14 +57,6 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
>  {
>  	int i, err;
>  
> -	if (comp->larb_dev) {
> -		err = mtk_smi_larb_get(comp->larb_dev);
> -		if (err)
> -			dev_err(dev,
> -				"failed to get larb, err %d. type:%d id:%d\n",
> -				err, comp->type, comp->id);
> -	}

In previous design,mtk_mdp_comp_clock_on() is called by each MDP
hardware component, and mtk_smi_larb_get() is also called for each MDP
hardware component which accesses DRAM via SMI larb.

Since mdp device only contains mdp_rdma component, so
pm_runtime_get_sync() will ignore other smi-larb clock. We need consider
how to enable clocks of other smi-larb associated with other mdp
component, e.g. mdp_wdma, mdp_wrot.


>  	for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
>  		if (IS_ERR(comp->clk[i]))
>  			continue;
> @@ -86,16 +77,11 @@ void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp)
>  			continue;
>  		clk_disable_unprepare(comp->clk[i]);
>  	}
> -
> -	if (comp->larb_dev)
> -		mtk_smi_larb_put(comp->larb_dev);
>  }
>  
>  int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
>  		      struct mtk_mdp_comp *comp, enum mtk_mdp_comp_id comp_id)
>  {
> -	struct device_node *larb_node;
> -	struct platform_device *larb_pdev;
>  	int i;
>  
>  	if (comp_id < 0 || comp_id >= MTK_MDP_COMP_ID_MAX) {
> @@ -116,30 +102,6 @@ int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
>  			break;
>  	}
>  
> -	/* Only DMA capable components need the LARB property */
> -	comp->larb_dev = NULL;
> -	if (comp->type != MTK_MDP_RDMA &&
> -	    comp->type != MTK_MDP_WDMA &&
> -	    comp->type != MTK_MDP_WROT)
> -		return 0;
> -
> -	larb_node = of_parse_phandle(node, "mediatek,larb", 0);
> -	if (!larb_node) {
> -		dev_err(dev,
> -			"Missing mediadek,larb phandle in %pOF node\n", node);
> -		return -EINVAL;
> -	}
> -
> -	larb_pdev = of_find_device_by_node(larb_node);
> -	if (!larb_pdev) {
> -		dev_warn(dev, "Waiting for larb device %pOF\n", larb_node);
> -		of_node_put(larb_node);
> -		return -EPROBE_DEFER;
> -	}
> -	of_node_put(larb_node);
> -
> -	comp->larb_dev = &larb_pdev->dev;
> -
>  	return 0;
>  }
>  
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> index 998a4b9..a2da8df 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> @@ -39,7 +39,6 @@ enum mtk_mdp_comp_id {
>   * @dev_node:	component device node
>   * @clk:	clocks required for component
>   * @regs:	Mapped address of component registers.
> - * @larb_dev:	SMI device required for component
>   * @type:	component type
>   * @id:		component ID
>   */
> @@ -47,7 +46,6 @@ struct mtk_mdp_comp {
>  	struct device_node	*dev_node;
>  	struct clk		*clk[2];
>  	void __iomem		*regs;
> -	struct device		*larb_dev;
>  	enum mtk_mdp_comp_type	type;
>  	enum mtk_mdp_comp_id	id;
>  };
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> index fc9faec..c237ed9 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> @@ -17,7 +17,6 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/workqueue.h>
> -#include <soc/mediatek/smi.h>
>  
>  #include "mtk_mdp_core.h"
>  #include "mtk_mdp_m2m.h"




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
