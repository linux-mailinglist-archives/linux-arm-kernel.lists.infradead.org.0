Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2DE425A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvpMjgZzFiG3MabCgdBeAgDx8LzktFlCcHUgfnhRw+Q=; b=c3vcaKnZXBNy0y
	7lkNr91Zhf5gYaAl/PN2a8re5VlTz9fZcQJg0vh02i2NqI1NKl9KaJoxqhsSy3PSn9cpu/8nS+G4S
	aoZYLhcVolA55Agl8530ItPRVH3MymEV+X2TncmKUJj+MwkaUOBu5NFDdU9cqm0NinUcXrPIXpmJE
	lSfk72kBFO5I+vpeWj9QbSiPmyZlYch2bGY2v9iHhMC04i0HUTg5xiYAVyiyLGMaLFEdujQ5h3A5V
	GqSu44zWp74TBqR3K3oz9PM7ZB3EH453FL7UH5d+uNw7FuDKeqYkQnX2VJv6wuSUvUiQfatubGdxM
	ZivZe8zZ1PrcRS9hpnEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2LK-0007w5-0a; Wed, 12 Jun 2019 12:27:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2Kc-0007W4-EY
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:26:24 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C30CE20874;
 Wed, 12 Jun 2019 12:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560342381;
 bh=Q4DR0ZfiZ07BcC65F0iVrnB89qNKvjsdzyOF+UzlnSQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aPC3w47Vx4ftoEzC0SsDE+HJwteGfxPGeFUoMw9bN6/EEl0kVTPxjAemiNyEmzRgG
 aJHK/b3tZIB/D2HWMXXdc9igxJLIPPdKuaW4ZOMyoThY2zXQED00PVpLu8FQAbD6U6
 J2DdHQWrJ2eiiigK2Cuk6+JI48CDDkiEaPlnG7WY=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 6/6] dma: qcom: hidma: no need to check return value of
 debugfs_create functions
Date: Wed, 12 Jun 2019 14:25:57 +0200
Message-Id: <20190612122557.24158-6-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612122557.24158-1-gregkh@linuxfoundation.org>
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_052622_544056_57B51D53 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sinan Kaya <okaya@kernel.org>, linux-kernel@vger.kernel.org,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Also, because there is no need to save the file dentry, remove the
variables that were saving them as they were never even being used once
set.

Cc: Sinan Kaya <okaya@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: David Brown <david.brown@linaro.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-arm-msm@vger.kernel.org
Cc: dmaengine@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/dma/qcom/hidma.h     |  5 +----
 drivers/dma/qcom/hidma_dbg.c | 37 +++++++-----------------------------
 2 files changed, 8 insertions(+), 34 deletions(-)

diff --git a/drivers/dma/qcom/hidma.h b/drivers/dma/qcom/hidma.h
index 5f9966e82c0b..36357d02333a 100644
--- a/drivers/dma/qcom/hidma.h
+++ b/drivers/dma/qcom/hidma.h
@@ -101,8 +101,6 @@ struct hidma_chan {
 	 * It is used by the DMA complete notification to
 	 * locate the descriptor that initiated the transfer.
 	 */
-	struct dentry			*debugfs;
-	struct dentry			*stats;
 	struct hidma_dev		*dmadev;
 	struct hidma_desc		*running;
 
@@ -134,7 +132,6 @@ struct hidma_dev {
 	struct dma_device		ddev;
 
 	struct dentry			*debugfs;
-	struct dentry			*stats;
 
 	/* sysfs entry for the channel id */
 	struct device_attribute		*chid_attrs;
@@ -166,6 +163,6 @@ irqreturn_t hidma_ll_inthandler(int irq, void *arg);
 irqreturn_t hidma_ll_inthandler_msi(int irq, void *arg, int cause);
 void hidma_cleanup_pending_tre(struct hidma_lldev *llhndl, u8 err_info,
 				u8 err_code);
-int hidma_debug_init(struct hidma_dev *dmadev);
+void hidma_debug_init(struct hidma_dev *dmadev);
 void hidma_debug_uninit(struct hidma_dev *dmadev);
 #endif
diff --git a/drivers/dma/qcom/hidma_dbg.c b/drivers/dma/qcom/hidma_dbg.c
index 9523faf7acdc..994f448b64d8 100644
--- a/drivers/dma/qcom/hidma_dbg.c
+++ b/drivers/dma/qcom/hidma_dbg.c
@@ -146,17 +146,13 @@ void hidma_debug_uninit(struct hidma_dev *dmadev)
 	debugfs_remove_recursive(dmadev->debugfs);
 }
 
-int hidma_debug_init(struct hidma_dev *dmadev)
+void hidma_debug_init(struct hidma_dev *dmadev)
 {
-	int rc = 0;
 	int chidx = 0;
 	struct list_head *position = NULL;
+	struct dentry *dir;
 
 	dmadev->debugfs = debugfs_create_dir(dev_name(dmadev->ddev.dev), NULL);
-	if (!dmadev->debugfs) {
-		rc = -ENODEV;
-		return rc;
-	}
 
 	/* walk through the virtual channel list */
 	list_for_each(position, &dmadev->ddev.channels) {
@@ -165,32 +161,13 @@ int hidma_debug_init(struct hidma_dev *dmadev)
 		chan = list_entry(position, struct hidma_chan,
 				  chan.device_node);
 		sprintf(chan->dbg_name, "chan%d", chidx);
-		chan->debugfs = debugfs_create_dir(chan->dbg_name,
+		dir = debugfs_create_dir(chan->dbg_name,
 						   dmadev->debugfs);
-		if (!chan->debugfs) {
-			rc = -ENOMEM;
-			goto cleanup;
-		}
-		chan->stats = debugfs_create_file("stats", S_IRUGO,
-						  chan->debugfs, chan,
-						  &hidma_chan_fops);
-		if (!chan->stats) {
-			rc = -ENOMEM;
-			goto cleanup;
-		}
+		debugfs_create_file("stats", S_IRUGO, dir, chan,
+				    &hidma_chan_fops);
 		chidx++;
 	}
 
-	dmadev->stats = debugfs_create_file("stats", S_IRUGO,
-					    dmadev->debugfs, dmadev,
-					    &hidma_dma_fops);
-	if (!dmadev->stats) {
-		rc = -ENOMEM;
-		goto cleanup;
-	}
-
-	return 0;
-cleanup:
-	hidma_debug_uninit(dmadev);
-	return rc;
+	debugfs_create_file("stats", S_IRUGO, dmadev->debugfs, dmadev,
+			    &hidma_dma_fops);
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
