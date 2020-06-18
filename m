Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864041FEEC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDArlBsGdtgPq81gjroU4iF55HxTn1Y6Fh6uwCCasFs=; b=QqVAB3pIja4nil
	YJhlrN8WecdNqgNH4eirAtG65flxWciVaMEM04SbQ2zuyIL6lt6gXTA7/w4y1GGYIZA+SStyFeuHS
	lx9aztW1n3q2UjqZowl1PzX4MOahpHFjFfH4uuXtsvcsQVEjljkZNcKS/aaF85GLvEKQ3uNEz5uV0
	5+9r0KuKm8TJXaJaVs4rZ1seIZDOt0yn30uPVLdeVQvSwry/wCXpZ/xCUcVcxLp1Qa+dYqywer70z
	JceNJ8+5smTrgrX8J4t8yl/Qfu0cr6xnXzfW0Cx5jHPGyBVqWF2C4QvcJ4oE40LTzjNq+4Q+Ldymz
	9EYvUqW7meimtCw+P2Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqwk-00005D-6X; Thu, 18 Jun 2020 09:34:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqwZ-0008Vj-AB; Thu, 18 Jun 2020 09:34:48 +0000
X-UUID: 95fe9acb588d4a9886bc9180f2917bb6-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=fazQeAs8inAvGwYcQXqBGXqOlhYwCeTQdth0t/3tLpc=; 
 b=MHeeNIj++emO1PxnCKYQiheDFmpZ4QBACfg0h4/OsDUonE38uDizhI+ibfWfeYHrZWzdKmqjA4pspetmXciZRh0aMpC3nZVDYa6Z/T8lj5eJdfJoht83VIS8lU3VV4mz8emEXDFGXanQq7R5q4LS8CnMUfrDFmNHFsNV7hCie9k=;
X-UUID: 95fe9acb588d4a9886bc9180f2917bb6-20200618
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1120295212; Thu, 18 Jun 2020 01:34:39 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 02:34:40 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 18 Jun 2020 17:34:36 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 18 Jun 2020 17:34:33 +0800
Message-ID: <1592472725.20080.12.camel@mhfsdcap03>
Subject: Re: [PATCH v4 06/17] media: mtk-jpeg: Get rid of mtk_smi_larb_get/put
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rick Chang
 <rick.chang@mediatek.com>
Date: Thu, 18 Jun 2020 17:32:05 +0800
In-Reply-To: <1590826218-23653-7-git-send-email-yong.wu@mediatek.com>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
 <1590826218-23653-7-git-send-email-yong.wu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: EAA0222707355DB3D9C41720DD63D68CCECEA4A8CC20861737BF3012552CC6C52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_023447_364730_BBD2FC49 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: xia.jiang@mediatek.com, Will Deacon <will.deacon@arm.com>,
 youlin.pei@mediatek.com, Nicolas Boichat <drinkcat@chromium.org>,
 Rick Chang <rick.chang@mediatek.com>, Joerg Roedel <joro@8bytes.org>, Evan
 Green <evgreen@chromium.org>, eizan@chromium.org, Matthias
 Kaehlcke <mka@chromium.org>, devicetree@vger.kernel.org, cui.zhang@mediatek.com,
 Tomasz Figa <tfiga@google.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, ming-fan.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, anan.sun@mediatek.com,
 acourbot@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Rick

On Sat, 2020-05-30 at 16:10 +0800, Yong Wu wrote:
> MediaTek IOMMU has already added device_link between the consumer
> and smi-larb device. If the jpg device call the pm_runtime_get_sync,
> the smi-larb's pm_runtime_get_sync also be called automatically.
> 
> CC: Rick Chang <rick.chang@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 22 ----------------------
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h |  2 --
>  2 files changed, 24 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> index f82a81a..21fba6f 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> @@ -21,7 +21,6 @@
>  #include <media/v4l2-ioctl.h>
>  #include <media/videobuf2-core.h>
>  #include <media/videobuf2-dma-contig.h>
> -#include <soc/mediatek/smi.h>
>  
>  #include "mtk_jpeg_hw.h"
>  #include "mtk_jpeg_core.h"
> @@ -893,11 +892,6 @@ static int mtk_jpeg_queue_init(void *priv, struct vb2_queue *src_vq,
>  
>  static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jpeg)
>  {
> -	int ret;
> -
> -	ret = mtk_smi_larb_get(jpeg->larb);
> -	if (ret)
> -		dev_err(jpeg->dev, "mtk_smi_larb_get larbvdec fail %d\n", ret);
>  	clk_prepare_enable(jpeg->clk_jdec_smi);
>  	clk_prepare_enable(jpeg->clk_jdec);
>  }
> @@ -906,7 +900,6 @@ static void mtk_jpeg_clk_off(struct mtk_jpeg_dev *jpeg)
>  {
>  	clk_disable_unprepare(jpeg->clk_jdec);
>  	clk_disable_unprepare(jpeg->clk_jdec_smi);
> -	mtk_smi_larb_put(jpeg->larb);
>  }
>  
>  static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
> @@ -1051,21 +1044,6 @@ static int mtk_jpeg_release(struct file *file)
>  
>  static int mtk_jpeg_clk_init(struct mtk_jpeg_dev *jpeg)
>  {
> -	struct device_node *node;
> -	struct platform_device *pdev;
> -
> -	node = of_parse_phandle(jpeg->dev->of_node, "mediatek,larb", 0);
> -	if (!node)
> -		return -EINVAL;
> -	pdev = of_find_device_by_node(node);
> -	if (WARN_ON(!pdev)) {
> -		of_node_put(node);
> -		return -EINVAL;
> -	}
> -	of_node_put(node);
> -
> -	jpeg->larb = &pdev->dev;
> -
>  	jpeg->clk_jdec = devm_clk_get(jpeg->dev, "jpgdec");
>  	if (IS_ERR(jpeg->clk_jdec))
>  		return PTR_ERR(jpeg->clk_jdec);
> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> index 999bd14..8579494 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> @@ -47,7 +47,6 @@ enum mtk_jpeg_ctx_state {
>   * @dec_reg_base:	JPEG registers mapping
>   * @clk_jdec:		JPEG hw working clock
>   * @clk_jdec_smi:	JPEG SMI bus clock
> - * @larb:		SMI device
>   */
>  struct mtk_jpeg_dev {
>  	struct mutex		lock;
> @@ -61,7 +60,6 @@ struct mtk_jpeg_dev {
>  	void __iomem		*dec_reg_base;
>  	struct clk		*clk_jdec;
>  	struct clk		*clk_jdec_smi;
> -	struct device		*larb;
>  };
>  
>  /**

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
