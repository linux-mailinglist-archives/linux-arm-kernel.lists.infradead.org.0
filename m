Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECBA1F4D3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 07:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOdNYjEHTjFqJlHkrqv+7Hw+TbPptxFD9QWAIM/M/yI=; b=Zpa2mgIbVy+a9V
	nH+FGI9ne0NwSDdVnk7XaA7lCfMA43QPXTY81V5NEDF9dP47nEpFMvAlAo4s52Z4TeRDVsOuBNUC0
	Ly9YReffjBcDfONqaWrJyevd0l6IhAns+DSY/tOVyqHp4H8Isq1Pe2FK+dU7Q7ADO6jv5eKsOYHAA
	PLNr0tpz5TUYj8gAc2hSQUjgpT2uv7r6MLZwWuWMqggTXJVykMSbANEfMHZ8EMLK0lUkYw5Y8EWRo
	kWD3lhND1E1x0v6VTp42h9Emis8yWKQ19DVNSUo50/Jpu6+pBGsN9gtgjXvs2exxHaTPIT0nV69g+
	CNDMd2090RdcsHKgR39w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jitap-00024a-MM; Wed, 10 Jun 2020 05:48:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jitaA-0001Y2-04; Wed, 10 Jun 2020 05:47:30 +0000
X-UUID: 93cc083d972547ed8017c889919407ed-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=R2nKHBp5Cvsj2AhiULL9paxjnUyMgPHkofrlWMrINHY=; 
 b=NL4pbin7KeDovszSfsOG3qB4M0CD3YS0FscB7IQtqlzpt0oYhA+X0ZBzEI04O5LwT2T5jp1dh4GaL2arl/v2SHASJCxdA0Aq3i8v65FOWd3gHqZomJ4KjRbm+To/crQV9J781b1ZFGM8vA/yfpSrTmF6S198eFFmWzSNhWXlhZE=;
X-UUID: 93cc083d972547ed8017c889919407ed-20200609
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 938782650; Tue, 09 Jun 2020 21:47:06 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 22:47:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 10 Jun 2020 13:47:17 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 10 Jun 2020 13:47:17 +0800
Message-ID: <1591768038.527.6.camel@mtksdaap41>
Subject: Re: [PATCH v4 09/17] media: mtk-vcodec: Get rid of
 mtk_smi_larb_get/put
From: CK Hu <ck.hu@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>, Tiffany Lin <tiffany.lin@mediatek.com>,
 Maoguang Meng <Maoguang.Meng@mediatek.com>
Date: Wed, 10 Jun 2020 13:47:18 +0800
In-Reply-To: <1590826218-23653-10-git-send-email-yong.wu@mediatek.com>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
 <1590826218-23653-10-git-send-email-yong.wu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_224726_236377_2A7BACD0 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will.deacon@arm.com>, youlin.pei@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, Joerg Roedel <joro@8bytes.org>,
 Evan Green <evgreen@chromium.org>, eizan@chromium.org,
 Matthias Kaehlcke <mka@chromium.org>, devicetree@vger.kernel.org,
 cui.zhang@mediatek.com, Tomasz Figa <tfiga@google.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 anan.sun@mediatek.com, srv_heupstream@mediatek.com, acourbot@chromium.org,
 linux-kernel@vger.kernel.org, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Tiffany & Maoguang.

On Sat, 2020-05-30 at 16:10 +0800, Yong Wu wrote:
> MediaTek IOMMU has already added the device_link between the consumer
> and smi-larb device. If the vcodec device call the pm_runtime_get_sync,
> the smi-larb's pm_runtime_get_sync also be called automatically.
> 
> CC: Tiffany Lin <tiffany.lin@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
>  .../media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c  | 19 ---------------
>  drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h |  3 ---
>  drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c |  1 -
>  .../media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c  | 27 ----------------------
>  4 files changed, 50 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
> index 36dfe3f..1d7d14d 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
> @@ -8,14 +8,12 @@
>  #include <linux/of_address.h>
>  #include <linux/of_platform.h>
>  #include <linux/pm_runtime.h>
> -#include <soc/mediatek/smi.h>
>  
>  #include "mtk_vcodec_dec_pm.h"
>  #include "mtk_vcodec_util.h"
>  
>  int mtk_vcodec_init_dec_pm(struct mtk_vcodec_dev *mtkdev)
>  {
> -	struct device_node *node;
>  	struct platform_device *pdev;
>  	struct mtk_vcodec_pm *pm;
>  	struct mtk_vcodec_clk *dec_clk;
> @@ -26,18 +24,7 @@ int mtk_vcodec_init_dec_pm(struct mtk_vcodec_dev *mtkdev)
>  	pm = &mtkdev->pm;
>  	pm->mtkdev = mtkdev;
>  	dec_clk = &pm->vdec_clk;
> -	node = of_parse_phandle(pdev->dev.of_node, "mediatek,larb", 0);
> -	if (!node) {
> -		mtk_v4l2_err("of_parse_phandle mediatek,larb fail!");
> -		return -1;
> -	}
>  
> -	pdev = of_find_device_by_node(node);
> -	of_node_put(node);
> -	if (WARN_ON(!pdev)) {
> -		return -1;
> -	}
> -	pm->larbvdec = &pdev->dev;
>  	pdev = mtkdev->plat_dev;
>  	pm->dev = &pdev->dev;
>  
> @@ -113,11 +100,6 @@ void mtk_vcodec_dec_clock_on(struct mtk_vcodec_pm *pm)
>  		}
>  	}
>  
> -	ret = mtk_smi_larb_get(pm->larbvdec);
> -	if (ret) {
> -		mtk_v4l2_err("mtk_smi_larb_get larbvdec fail %d", ret);
> -		goto error;
> -	}
>  	return;
>  
>  error:
> @@ -130,7 +112,6 @@ void mtk_vcodec_dec_clock_off(struct mtk_vcodec_pm *pm)
>  	struct mtk_vcodec_clk *dec_clk = &pm->vdec_clk;
>  	int i = 0;
>  
> -	mtk_smi_larb_put(pm->larbvdec);
>  	for (i = dec_clk->clk_num - 1; i >= 0; i--)
>  		clk_disable_unprepare(dec_clk->clk_info[i].vcodec_clk);
>  }
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
> index 52d1ce1..7d3966a 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
> @@ -190,10 +190,7 @@ struct mtk_vcodec_clk {
>   */
>  struct mtk_vcodec_pm {
>  	struct mtk_vcodec_clk	vdec_clk;
> -	struct device	*larbvdec;
> -
>  	struct mtk_vcodec_clk	venc_clk;
> -	struct device	*larbvenc;
>  	struct device	*dev;
>  	struct mtk_vcodec_dev	*mtkdev;
>  };
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> index 5301dca..18025f7 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
> @@ -8,7 +8,6 @@
>  #include <media/v4l2-event.h>
>  #include <media/v4l2-mem2mem.h>
>  #include <media/videobuf2-dma-contig.h>
> -#include <soc/mediatek/smi.h>
>  #include <linux/pm_runtime.h>
>  
>  #include "mtk_vcodec_drv.h"
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> index 01c6a55..047919e 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> @@ -8,44 +8,25 @@
>  #include <linux/of_address.h>
>  #include <linux/of_platform.h>
>  #include <linux/pm_runtime.h>
> -#include <soc/mediatek/smi.h>
>  
>  #include "mtk_vcodec_enc_pm.h"
>  #include "mtk_vcodec_util.h"
>  
>  int mtk_vcodec_init_enc_pm(struct mtk_vcodec_dev *mtkdev)
>  {
> -	struct device_node *node;
>  	struct platform_device *pdev;
>  	struct mtk_vcodec_pm *pm;
>  	struct mtk_vcodec_clk *enc_clk;
>  	struct mtk_vcodec_clk_info *clk_info;
>  	int ret = 0, i = 0;
> -	struct device *dev;
>  
>  	pdev = mtkdev->plat_dev;
>  	pm = &mtkdev->pm;
>  	memset(pm, 0, sizeof(struct mtk_vcodec_pm));
>  	pm->mtkdev = mtkdev;
>  	pm->dev = &pdev->dev;
> -	dev = &pdev->dev;
>  	enc_clk = &pm->venc_clk;
>  
> -	node = of_parse_phandle(dev->of_node, "mediatek,larb", 0);
> -	if (!node) {
> -		mtk_v4l2_err("no mediatek,larb found");
> -		return -ENODEV;
> -	}
> -	pdev = of_find_device_by_node(node);
> -	of_node_put(node);
> -	if (!pdev) {
> -		mtk_v4l2_err("no mediatek,larb device found");
> -		return -ENODEV;
> -	}
> -	pm->larbvenc = &pdev->dev;
> -	pdev = mtkdev->plat_dev;
> -	pm->dev = &pdev->dev;
> -
>  	enc_clk->clk_num = of_property_count_strings(pdev->dev.of_node,
>  		"clock-names");
>  	if (enc_clk->clk_num > 0) {
> @@ -93,13 +74,6 @@ void mtk_vcodec_enc_clock_on(struct mtk_vcodec_pm *pm)
>  		}
>  	}
>  
> -	ret = mtk_smi_larb_get(pm->larbvenc);
> -	if (ret) {
> -		mtk_v4l2_err("mtk_smi_larb_get larb3 fail %d", ret);
> -		goto clkerr;
> -	}
> -	return;
> -
>  clkerr:
>  	for (i -= 1; i >= 0; i--)
>  		clk_disable_unprepare(enc_clk->clk_info[i].vcodec_clk);
> @@ -110,7 +84,6 @@ void mtk_vcodec_enc_clock_off(struct mtk_vcodec_pm *pm)
>  	struct mtk_vcodec_clk *enc_clk = &pm->venc_clk;
>  	int i = 0;
>  
> -	mtk_smi_larb_put(pm->larbvenc);
>  	for (i = enc_clk->clk_num - 1; i >= 0; i--)
>  		clk_disable_unprepare(enc_clk->clk_info[i].vcodec_clk);
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
