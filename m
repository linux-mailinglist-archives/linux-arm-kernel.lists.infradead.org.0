Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E73362BF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lvw+Z8EwI9HVNjFoykoiCYMzO2irJ8kvAiNntJQZtpM=; b=EJyhlWNytaE4WQ
	AdRQUOgn8qJxB30mp4zmjeepI+pRQOSBUmyqw7xmGtVoElDiKf8xXI8moOwCXgsubDpEef8u3be8/
	IGnVMF8COI/CO672HfoS8AIxHsrfRu6IdKdMsFRh2rewX+jJtt80CDIyjb5KbL2SkL9GmDCF7Y2HC
	fqEHZhKUCKI1mbnhMfqGUKxFmoaiq+SDsbmvsv7qsViX4LyAsW98saXOeLHiHOLoTpbT7KPl3C5La
	lEdFnw5LhjJaipyOAx8cXXyRJ4XDQTq5hQx/AtJBevZUTetwteaB5WT0RpnhdQG5vzquEVh1OKCDk
	Ei7e/Mgx75vdNkpaeSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkcLE-000738-Sp; Mon, 08 Jul 2019 22:42:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkcDk-0004t2-QD; Mon, 08 Jul 2019 22:34:54 +0000
X-UUID: e2cfde263afe4ea3904abe6c3a2369f5-20190708
X-UUID: e2cfde263afe4ea3904abe6c3a2369f5-20190708
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 999859521; Mon, 08 Jul 2019 14:34:39 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 15:34:38 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 06:34:27 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 06:34:27 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4, 08/33] drm/mediatek: add mutex mod into ddp private data
Date: Tue, 9 Jul 2019 06:33:48 +0800
Message-ID: <1562625253-29254-9-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 225097C3D8CB0E70DA658BF06083C2FDB2F48FEDD2382F5AB18219059F5D0E922000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_153453_007255_862659AA 
X-CRM114-Status: GOOD (  12.20  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

except mutex mod, mutex mod reg,mutex sof reg,
and mutex sof id will be ddp private data

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 41 +++++++++++++++++++++++++---------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 579ce28..412b82f 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -147,12 +147,16 @@ struct mtk_disp_mutex {
 	bool claimed;
 };
 
+struct mtk_ddp_data {
+	const unsigned int *mutex_mod;
+};
+
 struct mtk_ddp {
 	struct device			*dev;
 	struct clk			*clk;
 	void __iomem			*regs;
 	struct mtk_disp_mutex		mutex[10];
-	const unsigned int		*mutex_mod;
+	const struct mtk_ddp_data	*data;
 };
 
 static const unsigned int mt2701_mutex_mod[DDP_COMPONENT_ID_MAX] = {
@@ -202,6 +206,18 @@ struct mtk_ddp {
 	[DDP_COMPONENT_WDMA1] = MT8173_MUTEX_MOD_DISP_WDMA1,
 };
 
+static const struct mtk_ddp_data mt2701_ddp_driver_data = {
+	.mutex_mod = mt2701_mutex_mod,
+};
+
+static const struct mtk_ddp_data mt2712_ddp_driver_data = {
+	.mutex_mod = mt2712_mutex_mod,
+};
+
+static const struct mtk_ddp_data mt8173_ddp_driver_data = {
+	.mutex_mod = mt8173_mutex_mod,
+};
+
 static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
 				    enum mtk_ddp_comp_id next,
 				    unsigned int *addr)
@@ -464,15 +480,15 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
 		reg = MUTEX_SOF_DPI1;
 		break;
 	default:
-		if (ddp->mutex_mod[id] < 32) {
+		if (ddp->data->mutex_mod[id] < 32) {
 			offset = DISP_REG_MUTEX_MOD(mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
-			reg |= 1 << ddp->mutex_mod[id];
+			reg |= 1 << ddp->data->mutex_mod[id];
 			writel_relaxed(reg, ddp->regs + offset);
 		} else {
 			offset = DISP_REG_MUTEX_MOD2(mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
-			reg |= 1 << (ddp->mutex_mod[id] - 32);
+			reg |= 1 << (ddp->data->mutex_mod[id] - 32);
 			writel_relaxed(reg, ddp->regs + offset);
 		}
 		return;
@@ -502,15 +518,15 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
 			       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
 		break;
 	default:
-		if (ddp->mutex_mod[id] < 32) {
+		if (ddp->data->mutex_mod[id] < 32) {
 			offset = DISP_REG_MUTEX_MOD(mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
-			reg &= ~(1 << ddp->mutex_mod[id]);
+			reg &= ~(1 << ddp->data->mutex_mod[id]);
 			writel_relaxed(reg, ddp->regs + offset);
 		} else {
 			offset = DISP_REG_MUTEX_MOD2(mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
-			reg &= ~(1 << (ddp->mutex_mod[id] - 32));
+			reg &= ~(1 << (ddp->data->mutex_mod[id] - 32));
 			writel_relaxed(reg, ddp->regs + offset);
 		}
 		break;
@@ -585,7 +601,7 @@ static int mtk_ddp_probe(struct platform_device *pdev)
 		return PTR_ERR(ddp->regs);
 	}
 
-	ddp->mutex_mod = of_device_get_match_data(dev);
+	ddp->data = of_device_get_match_data(dev);
 
 	platform_set_drvdata(pdev, ddp);
 
@@ -598,9 +614,12 @@ static int mtk_ddp_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id ddp_driver_dt_match[] = {
-	{ .compatible = "mediatek,mt2701-disp-mutex", .data = mt2701_mutex_mod},
-	{ .compatible = "mediatek,mt2712-disp-mutex", .data = mt2712_mutex_mod},
-	{ .compatible = "mediatek,mt8173-disp-mutex", .data = mt8173_mutex_mod},
+	{ .compatible = "mediatek,mt2701-disp-mutex",
+	  .data = &mt2701_ddp_driver_data},
+	{ .compatible = "mediatek,mt2712-disp-mutex",
+	  .data = &mt2712_ddp_driver_data},
+	{ .compatible = "mediatek,mt8173-disp-mutex",
+	  .data = &mt8173_ddp_driver_data},
 	{},
 };
 MODULE_DEVICE_TABLE(of, ddp_driver_dt_match);
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
