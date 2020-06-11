Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD941F698C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7op9tkRwTLgvcC/tB09aj1D25kRu2b836bZ7z9bBDg=; b=AXpuIX3JmwKbJx
	AtTe/0UUdI5Epda+zV8h4VnyWYcvR8ktMuZ0o3fQO2hHkXO3txnrpR34JM44rCfT/WZFPT14QtYJV
	f/OSvi/hYHiZ4PuJHXP5VLY3Kd3M/bq3Ij3xhr0sgvQahVZITRUuPuVc4UcFuV8FEjlDst0CihXCp
	LT3gMr3AHEDCT1LPsdsWhhy+Qm770WV6VKysJA6uVtkEx+B7JKqwJqytLE0ShClGnuFDhyYOK0iIY
	QviYMa2ErMK4Dhj9sx5GE2O3Sqq+D6EGupSnekFtl9dMpqzzaMUuFMd87NQzT127EomP77d5fiWNo
	Xk4+vfcHIlI6tUOkKoUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNmL-0005n6-IE; Thu, 11 Jun 2020 14:02:01 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNmC-0005lm-83
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:01:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id c71so5072146wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 07:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BkNnx+PJ4tEldkFE6NmGlbgnjVg2aGw3VhchR9OtaZw=;
 b=n5+Ok7nJ1Ld/w/7Po5tTgIg8khBvF2s7B4dF3iaf+dDI8f0kQUt9RRFUQ3/rjW4pjE
 D+g/9FREe+gmve3Mr2TykH97UBYHXWt5bL4O9GWAOueL27DPI2HXycc/Ts3nJXIslckn
 oraBFf1U8oWqH0DIRzC9ugtDfmz1gHnKmMQkeJEopugoikKPyF85BMOGj/MQJTnhqde3
 saUGkkSTzvlD5YpPjlJVwZPBoo7ZcqFNzl5nhj8/SOy8KRvTag6vgU6+OPIoR29JORt8
 s99sJ4V0DjoVCQrxu6oTqwXKIWCHaCo95r23NHAKCfxrO3svZkwOvW6RHh6g4yZLwRLT
 fQBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BkNnx+PJ4tEldkFE6NmGlbgnjVg2aGw3VhchR9OtaZw=;
 b=jEeZ5K3WyS4FIOru/mdE9jlFrdSg4yjX1m6K+nCrPtJPO2C9TLoDsqlOCC4lm3PF9q
 IsxjuuTmtH4LovfMHd+USOpzFk85WjNd6a/9QAdcMS+W5cCfqAhtWDBtvSsU75EzECZ9
 D19rExRJddsYLTZ8xEwL6uqUo6KDgHRyWnik/AVTc34slfMlw2W13TQOlJOVZniPNxoF
 KN7jMQgYlw83cmeVt5kuyHlDEh6pcJbaCGUuy5LYmWCCGJ7wLGCe0MlCADj9hdeep1Ya
 DmzVkDtNHYOiUiC9MNH/CHUxZe2JJwCrw7dWd8YX0pZp/EaMgw94PbMREIjzWZEb3fz2
 7/NA==
X-Gm-Message-State: AOAM530R3hhQXKZTf5ku+0Fun8z7yXDsoPDlC6JOKQoa+6lqdfqFvpr8
 lTl8r32H/CYxFkKgU1kOhGxmEg==
X-Google-Smtp-Source: ABdhPJzJTiQTtzCLL7YjE7Ki6AamPyJbUN9TYcNqL++1AxXSzCWNvaw1iqZfoStaFChZgwa3LhbhNw==
X-Received: by 2002:a1c:c908:: with SMTP id f8mr8469246wmb.150.1591884110019; 
 Thu, 11 Jun 2020 07:01:50 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id y5sm5360300wrs.63.2020.06.11.07.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 07:01:49 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] net: ethernet: mtk-star-emac: simplify interrupt handling
Date: Thu, 11 Jun 2020 16:01:39 +0200
Message-Id: <20200611140139.17702-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_070152_285134_00B4974B 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

During development we tried to make the interrupt handling as fine-grained
as possible with TX and RX interrupts being disabled/enabled independently
and the counter registers reset from workqueue context.

Unfortunately after thorough testing of current mainline, we noticed the
driver has become unstable under heavy load. While this is hard to
reproduce, it's quite consistent in the driver's current form.

This patch proposes to go back to the previous approach of doing all
processing in napi context with all interrupts masked in order to make the
driver usable in mainline linux. This doesn't impact the performance on
pumpkin boards at all and it's in line with what many ethernet drivers do
in mainline linux anyway.

At the same time we're adding a FIXME comment about the need to improve
the interrupt handling.

Fixes: 8c7bd5a454ff ("net: ethernet: mtk-star-emac: new driver")
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 118 +++++-------------
 1 file changed, 29 insertions(+), 89 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
index f1ace4fec19f..3e765bdcf9e1 100644
--- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
+++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
@@ -24,7 +24,6 @@
 #include <linux/regmap.h>
 #include <linux/skbuff.h>
 #include <linux/spinlock.h>
-#include <linux/workqueue.h>
 
 #define MTK_STAR_DRVNAME			"mtk_star_emac"
 
@@ -262,7 +261,6 @@ struct mtk_star_priv {
 	spinlock_t lock;
 
 	struct rtnl_link_stats64 stats;
-	struct work_struct stats_work;
 };
 
 static struct device *mtk_star_get_dev(struct mtk_star_priv *priv)
@@ -432,42 +430,6 @@ static void mtk_star_intr_disable(struct mtk_star_priv *priv)
 	regmap_write(priv->regs, MTK_STAR_REG_INT_MASK, ~0);
 }
 
-static void mtk_star_intr_enable_tx(struct mtk_star_priv *priv)
-{
-	regmap_clear_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			  MTK_STAR_BIT_INT_STS_TNTC);
-}
-
-static void mtk_star_intr_enable_rx(struct mtk_star_priv *priv)
-{
-	regmap_clear_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			  MTK_STAR_BIT_INT_STS_FNRC);
-}
-
-static void mtk_star_intr_enable_stats(struct mtk_star_priv *priv)
-{
-	regmap_clear_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			  MTK_STAR_REG_INT_STS_MIB_CNT_TH);
-}
-
-static void mtk_star_intr_disable_tx(struct mtk_star_priv *priv)
-{
-	regmap_set_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			MTK_STAR_BIT_INT_STS_TNTC);
-}
-
-static void mtk_star_intr_disable_rx(struct mtk_star_priv *priv)
-{
-	regmap_set_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			MTK_STAR_BIT_INT_STS_FNRC);
-}
-
-static void mtk_star_intr_disable_stats(struct mtk_star_priv *priv)
-{
-	regmap_set_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			MTK_STAR_REG_INT_STS_MIB_CNT_TH);
-}
-
 static unsigned int mtk_star_intr_read(struct mtk_star_priv *priv)
 {
 	unsigned int val;
@@ -663,20 +625,6 @@ static void mtk_star_update_stats(struct mtk_star_priv *priv)
 	stats->rx_errors += stats->rx_fifo_errors;
 }
 
-/* This runs in process context and parallel TX and RX paths executing in
- * napi context may result in losing some stats data but this should happen
- * seldom enough to be acceptable.
- */
-static void mtk_star_update_stats_work(struct work_struct *work)
-{
-	struct mtk_star_priv *priv = container_of(work, struct mtk_star_priv,
-						 stats_work);
-
-	mtk_star_update_stats(priv);
-	mtk_star_reset_counters(priv);
-	mtk_star_intr_enable_stats(priv);
-}
-
 static struct sk_buff *mtk_star_alloc_skb(struct net_device *ndev)
 {
 	uintptr_t tail, offset;
@@ -767,42 +715,25 @@ static void mtk_star_free_tx_skbs(struct mtk_star_priv *priv)
 	mtk_star_ring_free_skbs(priv, ring, mtk_star_dma_unmap_tx);
 }
 
-/* All processing for TX and RX happens in the napi poll callback. */
+/* All processing for TX and RX happens in the napi poll callback.
+ *
+ * FIXME: The interrupt handling should be more fine-grained with each
+ * interrupt enabled/disabled independently when needed. Unfortunatly this
+ * turned out to impact the driver's stability and until we have something
+ * working properly, we're disabling all interrupts during TX & RX processing
+ * or when resetting the counter registers.
+ */
 static irqreturn_t mtk_star_handle_irq(int irq, void *data)
 {
 	struct mtk_star_priv *priv;
 	struct net_device *ndev;
-	bool need_napi = false;
-	unsigned int status;
 
 	ndev = data;
 	priv = netdev_priv(ndev);
 
 	if (netif_running(ndev)) {
-		status = mtk_star_intr_read(priv);
-
-		if (status & MTK_STAR_BIT_INT_STS_TNTC) {
-			mtk_star_intr_disable_tx(priv);
-			need_napi = true;
-		}
-
-		if (status & MTK_STAR_BIT_INT_STS_FNRC) {
-			mtk_star_intr_disable_rx(priv);
-			need_napi = true;
-		}
-
-		if (need_napi)
-			napi_schedule(&priv->napi);
-
-		/* One of the counters reached 0x8000000 - update stats and
-		 * reset all counters.
-		 */
-		if (unlikely(status & MTK_STAR_REG_INT_STS_MIB_CNT_TH)) {
-			mtk_star_intr_disable_stats(priv);
-			schedule_work(&priv->stats_work);
-		}
-
-		mtk_star_intr_ack_all(priv);
+		mtk_star_intr_disable(priv);
+		napi_schedule(&priv->napi);
 	}
 
 	return IRQ_HANDLED;
@@ -1169,8 +1100,6 @@ static void mtk_star_tx_complete_all(struct mtk_star_priv *priv)
 	if (wake && netif_queue_stopped(ndev))
 		netif_wake_queue(ndev);
 
-	mtk_star_intr_enable_tx(priv);
-
 	spin_unlock(&priv->lock);
 }
 
@@ -1332,20 +1261,32 @@ static int mtk_star_process_rx(struct mtk_star_priv *priv, int budget)
 static int mtk_star_poll(struct napi_struct *napi, int budget)
 {
 	struct mtk_star_priv *priv;
+	unsigned int status;
 	int received = 0;
 
 	priv = container_of(napi, struct mtk_star_priv, napi);
 
-	/* Clean-up all TX descriptors. */
-	mtk_star_tx_complete_all(priv);
-	/* Receive up to $budget packets. */
-	received = mtk_star_process_rx(priv, budget);
+	status = mtk_star_intr_read(priv);
+	mtk_star_intr_ack_all(priv);
 
-	if (received < budget) {
-		napi_complete_done(napi, received);
-		mtk_star_intr_enable_rx(priv);
+	if (status & MTK_STAR_BIT_INT_STS_TNTC)
+		/* Clean-up all TX descriptors. */
+		mtk_star_tx_complete_all(priv);
+
+	if (status & MTK_STAR_BIT_INT_STS_FNRC)
+		/* Receive up to $budget packets. */
+		received = mtk_star_process_rx(priv, budget);
+
+	if (unlikely(status & MTK_STAR_REG_INT_STS_MIB_CNT_TH)) {
+		mtk_star_update_stats(priv);
+		mtk_star_reset_counters(priv);
 	}
 
+	if (received < budget)
+		napi_complete_done(napi, received);
+
+	mtk_star_intr_enable(priv);
+
 	return received;
 }
 
@@ -1532,7 +1473,6 @@ static int mtk_star_probe(struct platform_device *pdev)
 	ndev->max_mtu = MTK_STAR_MAX_FRAME_SIZE;
 
 	spin_lock_init(&priv->lock);
-	INIT_WORK(&priv->stats_work, mtk_star_update_stats_work);
 
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
