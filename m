Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BC58E569
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 09:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvXcgqnVhc0HoX6eYKgWKB8jw9lX9XGSOurJpkLFnvQ=; b=WkkOaVBwpSTArv
	wW6cqv+rwNeADxQxw9veQ+9pD2Ev1QlvMZ8AbU4RIvneaL7Ney1m8xZL8na+q/BIDeSvKhTJrSuBs
	drQctKrGpYkZndEcA2zLtKMao7GD5xlZr9c4vjpekZDRi6YCr+G/PQcmFl3xuM9X/AMUjwZX+hgcq
	1Pk1qva+F6QSQbju0WCKiIWuG+xIYe/YP/0Y4aSC18kwZ1k1Su+Oi5PTSgqStvJkoAptX+Cte7Emb
	eP0wWo0bOVESyZkArkkHmjPLTuu4fudkaebbnTZPrO8FXZ4pJ4TpuBvkb8evvIFfspLJRscfhIjDE
	JkVnFZqaloqsDT91TAEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyA1H-0005Lm-EJ; Thu, 15 Aug 2019 07:17:59 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyA0B-0004iR-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 07:16:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id m3so343539pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 00:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NBRnKheCKulsZxWYYyvGgIojbpCXtVAZPAGt45miIto=;
 b=nXUjFjbAhSPHhTjaX9a1e5C7fKT7WY6YTO8VWuxfHz2UjDuUhaiT0U/HMj7L62zZPl
 KvMI7z8s0LbFcrPY+pVsl8G7ERv8JJljndack90o6+iu3CPt6BtsFheL55FMSukn8CXf
 xgArqon7K6fDqoXDIn2/qxogs9KrDLij171u4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NBRnKheCKulsZxWYYyvGgIojbpCXtVAZPAGt45miIto=;
 b=HOVgxX0Eu+LqtaCJ7o6Fs/Nr3lKBB0tR7zLASz9DCQqYf9vVbh6F3NuRN4GAeXpLvy
 TcYn+uEetmXupwK9p81WiVUHI+cGfNUqdTo45Fkm4npGtti8YMoB4HlJvc3x9WODxSuW
 EueEtzAM32JG2LgTWLP7UvSqA4GIxbRtvXDas/wvlws1TLuQl4cd/Yu6R3GNphfWknRw
 SGgGtR1iWGq/G75tyg8G1St4GxCLS3j6bunRGlww8FbFJ6ZOCLo6Uh2GspzuOHfVOoq3
 yvYHFxqstSETPoJq0mG2qJNMCA5UU2onb/I2P+1dZ4o9sSR0Tqg6fOUsPM65ctROhNXt
 b1Hw==
X-Gm-Message-State: APjAAAXYYIb3dK8jwaIl5HDao2J3V4hm9tXhnJd7RQ37/kvi+qutScJK
 j+vteisTy+N1ViketHPdkATipQ==
X-Google-Smtp-Source: APXvYqwbA0LfR2w8oCwYd2APhX5f2aA9W+xs5dIlCfCEsx2fVgUukOPifpvTRTKGqhu2/6H1xDv+Gw==
X-Received: by 2002:a17:90a:c68c:: with SMTP id
 n12mr1011591pjt.29.1565853410259; 
 Thu, 15 Aug 2019 00:16:50 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id v6sm1768727pff.78.2019.08.15.00.16.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 15 Aug 2019 00:16:49 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v16 2/5] remoteproc/mediatek: add SCP support for mt8183
Date: Thu, 15 Aug 2019 15:16:26 +0800
Message-Id: <20190815071635.168671-3-pihsun@chromium.org>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
In-Reply-To: <20190815071635.168671-1-pihsun@chromium.org>
References: <20190815071635.168671-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_001651_941869_DE894975 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Erin Lo <erin.lo@mediatek.com>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Erin Lo <erin.lo@mediatek.com>

Provide a basic driver to control Cortex M4 co-processor

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
Changes from v15:
 - Fix a bug on incorrect usage of wait_event_timeout return value.

Changes from v14:
 - No change.

Changes from v13:
 - Move include/linux/platform_data/mtk_scp.h to
   include/linux/remoteproc/mtk_scp.h.
 - Add lock for access of scp->ipi_desc.
 - Lock the whole ipi_send function.
 - Move more setting of cache size from SCP firmware to kernel driver,
   to prevent problem while loading firmware onto DRAM.
 - Cleanup and remove unused branch in scp_da_to_va.
 - Minor fixes addressing comment.

Changes from v12:
 - Initialize cache before firmware load, to avoid problem while loading
   large firmware.
 - Disable watchdog before stopping SCP, to avoid extra warning message.
 - Use strscpy instead of strncpy.

Changes from v11:
 - No change.

Changes from v10:
 - Add a clock reset before loading firmware.

Changes from v9:
 - No change.

Changes from v8:
 - Add a missing space.

Changes from v7:
 - Moved the location of shared SCP buffer.
 - Fix clock enable/disable sequence.
 - Add more IPI ID that would be used.

Changes from v6:
 - No change.

Changes from v5:
 - Changed some space to tab.

Changes from v4:
 - Rename most function from mtk_scp_* to scp_*.
 - Change the irq to threaded handler.
 - Load ELF file instead of plain binary file as firmware by default
   (Squashed patch 6 in v4 into this patch).

Changes from v3:
 - Fix some issue found by checkpatch.
 - Make writes aligned in scp_ipi_send.

Changes from v2:
 - Squash patch 3 from v2 (separate the ipi interface) into this patch.
 - Remove unused name argument from scp_ipi_register.
 - Add scp_ipi_unregister for proper cleanup.
 - Move IPI ids in sync with firmware.
 - Add mb() in proper place, and correctly clear the run->signaled.

Changes from v1:
 - Extract functions and rename variables in mtk_scp.c.
---
 drivers/remoteproc/Kconfig         |   9 +
 drivers/remoteproc/Makefile        |   1 +
 drivers/remoteproc/mtk_common.h    |  90 +++++
 drivers/remoteproc/mtk_scp.c       | 535 +++++++++++++++++++++++++++++
 drivers/remoteproc/mtk_scp_ipi.c   | 160 +++++++++
 include/linux/remoteproc/mtk_scp.h | 141 ++++++++
 6 files changed, 936 insertions(+)
 create mode 100644 drivers/remoteproc/mtk_common.h
 create mode 100644 drivers/remoteproc/mtk_scp.c
 create mode 100644 drivers/remoteproc/mtk_scp_ipi.c
 create mode 100644 include/linux/remoteproc/mtk_scp.h

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index 28ed306982f7..ea71cad399f7 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -23,6 +23,15 @@ config IMX_REMOTEPROC
 
 	  It's safe to say N here.
 
+config MTK_SCP
+	tristate "Mediatek SCP support"
+	depends on ARCH_MEDIATEK
+	help
+	  Say y here to support Mediatek's System Companion Processor (SCP) via
+	  the remote processor framework.
+
+	  It's safe to say N here.
+
 config OMAP_REMOTEPROC
 	tristate "OMAP remoteproc support"
 	depends on ARCH_OMAP4 || SOC_OMAP5
diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
index 00f09e658cb3..e30a1b15fbac 100644
--- a/drivers/remoteproc/Makefile
+++ b/drivers/remoteproc/Makefile
@@ -10,6 +10,7 @@ remoteproc-y				+= remoteproc_sysfs.o
 remoteproc-y				+= remoteproc_virtio.o
 remoteproc-y				+= remoteproc_elf_loader.o
 obj-$(CONFIG_IMX_REMOTEPROC)		+= imx_rproc.o
+obj-$(CONFIG_MTK_SCP)			+= mtk_scp.o mtk_scp_ipi.o
 obj-$(CONFIG_OMAP_REMOTEPROC)		+= omap_remoteproc.o
 obj-$(CONFIG_WKUP_M3_RPROC)		+= wkup_m3_rproc.o
 obj-$(CONFIG_DA8XX_REMOTEPROC)		+= da8xx_remoteproc.o
diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
new file mode 100644
index 000000000000..e213039543ec
--- /dev/null
+++ b/drivers/remoteproc/mtk_common.h
@@ -0,0 +1,90 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __RPROC_MTK_COMMON_H
+#define __RPROC_MTK_COMMON_H
+
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/platform_device.h>
+#include <linux/remoteproc.h>
+
+#define MT8183_SW_RSTN			0x0
+#define MT8183_SW_RSTN_BIT		BIT(0)
+#define MT8183_SCP_TO_HOST		0x1C
+#define MT8183_SCP_IPC_INT_BIT		BIT(0)
+#define MT8183_SCP_WDT_INT_BIT		BIT(8)
+#define MT8183_HOST_TO_SCP		0x28
+#define MT8183_HOST_IPC_INT_BIT		BIT(0)
+#define MT8183_WDT_CFG			0x84
+#define MT8183_SCP_CLK_SW_SEL		0x4000
+#define MT8183_SCP_CLK_DIV_SEL		0x4024
+#define MT8183_SCP_SRAM_PDN		0x402C
+#define MT8183_SCP_L1_SRAM_PD		0x4080
+#define MT8183_SCP_TCM_TAIL_SRAM_PD	0x4094
+
+#define MT8183_SCP_CACHE_SEL(x)		(0x14000 + (x) * 0x3000)
+#define MT8183_SCP_CACHE_CON		MT8183_SCP_CACHE_SEL(0)
+#define MT8183_SCP_DCACHE_CON		MT8183_SCP_CACHE_SEL(1)
+#define MT8183_SCP_CACHESIZE_8KB	BIT(8)
+#define MT8183_SCP_CACHE_CON_WAYEN	BIT(10)
+
+#define SCP_FW_VER_LEN			32
+#define SCP_SHARE_BUFFER_SIZE		288
+
+struct scp_run {
+	u32 signaled;
+	s8 fw_ver[SCP_FW_VER_LEN];
+	u32 dec_capability;
+	u32 enc_capability;
+	wait_queue_head_t wq;
+};
+
+struct scp_ipi_desc {
+	scp_ipi_handler_t handler;
+	void *priv;
+};
+
+struct mtk_scp {
+	struct device *dev;
+	struct rproc *rproc;
+	struct clk *clk;
+	void __iomem *reg_base;
+	void __iomem *sram_base;
+	size_t sram_size;
+
+	struct share_obj *recv_buf;
+	struct share_obj *send_buf;
+	struct scp_run run;
+	/* To prevent multiple ipi_send run concurrently. */
+	struct mutex send_lock;
+	/* For protecting ipi_desc field. */
+	struct mutex desc_lock;
+	struct scp_ipi_desc ipi_desc[SCP_IPI_MAX];
+	bool ipi_id_ack[SCP_IPI_MAX];
+	wait_queue_head_t ack_wq;
+
+	void __iomem *cpu_addr;
+	phys_addr_t phys_addr;
+	size_t dram_size;
+};
+
+/**
+ * struct share_obj - SRAM buffer shared with
+ *		      AP and SCP
+ *
+ * @id:		IPI id
+ * @len:	share buffer length
+ * @share_buf:	share buffer data
+ */
+struct share_obj {
+	u32 id;
+	u32 len;
+	u8 share_buf[SCP_SHARE_BUFFER_SIZE];
+};
+
+void scp_memcpy_aligned(void *dst, const void *src, unsigned int len);
+
+#endif
diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
new file mode 100644
index 000000000000..2e4fa3e41f84
--- /dev/null
+++ b/drivers/remoteproc/mtk_scp.c
@@ -0,0 +1,535 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2019 MediaTek Inc.
+
+#include <asm/barrier.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/remoteproc.h>
+#include <linux/remoteproc/mtk_scp.h>
+
+#include "mtk_common.h"
+#include "remoteproc_internal.h"
+
+#define MAX_CODE_SIZE 0x500000
+#define SCP_FW_END 0x7C000
+
+struct platform_device *scp_get_pdev(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *scp_node;
+	struct platform_device *scp_pdev;
+
+	scp_node = of_parse_phandle(dev->of_node, "mediatek,scp", 0);
+	if (!scp_node) {
+		dev_err(dev, "can't get SCP node\n");
+		return NULL;
+	}
+
+	scp_pdev = of_find_device_by_node(scp_node);
+	if (WARN_ON(!scp_pdev)) {
+		dev_err(dev, "SCP pdev failed\n");
+		of_node_put(scp_node);
+		return NULL;
+	}
+
+	return scp_pdev;
+}
+EXPORT_SYMBOL_GPL(scp_get_pdev);
+
+static void scp_wdt_handler(struct mtk_scp *scp, u32 scp_to_host)
+{
+	dev_err(scp->dev, "SCP watchdog timeout! 0x%x", scp_to_host);
+	rproc_report_crash(scp->rproc, RPROC_WATCHDOG);
+}
+
+static void scp_init_ipi_handler(void *data, unsigned int len, void *priv)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)priv;
+	struct scp_run *run = (struct scp_run *)data;
+
+	scp->run.signaled = run->signaled;
+	strscpy(scp->run.fw_ver, run->fw_ver, SCP_FW_VER_LEN);
+	scp->run.dec_capability = run->dec_capability;
+	scp->run.enc_capability = run->enc_capability;
+	wake_up_interruptible(&scp->run.wq);
+}
+
+static void scp_ipi_handler(struct mtk_scp *scp)
+{
+	struct share_obj *rcv_obj = scp->recv_buf;
+	struct scp_ipi_desc *ipi_desc = scp->ipi_desc;
+	u8 tmp_data[SCP_SHARE_BUFFER_SIZE];
+	scp_ipi_handler_t handler;
+
+	if (rcv_obj->len > SCP_SHARE_BUFFER_SIZE) {
+		dev_err(scp->dev, "ipi message too long (len %d, max %d)",
+			rcv_obj->len, SCP_SHARE_BUFFER_SIZE);
+		return;
+	}
+	mutex_lock(&scp->desc_lock);
+	handler = ipi_desc[rcv_obj->id].handler;
+	mutex_unlock(&scp->desc_lock);
+	if (rcv_obj->id >= SCP_IPI_MAX || !handler) {
+		dev_err(scp->dev, "No such ipi id = %d\n", rcv_obj->id);
+		return;
+	}
+
+	memcpy_fromio(tmp_data, &rcv_obj->share_buf, rcv_obj->len);
+	handler(tmp_data, rcv_obj->len, ipi_desc[rcv_obj->id].priv);
+	scp->ipi_id_ack[rcv_obj->id] = true;
+	wake_up(&scp->ack_wq);
+}
+
+static int scp_ipi_init(struct mtk_scp *scp)
+{
+	size_t send_offset = SCP_FW_END - sizeof(struct share_obj);
+	size_t recv_offset = send_offset - sizeof(struct share_obj);
+
+	/* Disable SCP to host interrupt */
+	writel(MT8183_SCP_IPC_INT_BIT, scp->reg_base + MT8183_SCP_TO_HOST);
+
+	/* shared buffer initialization */
+	scp->recv_buf = (__force struct share_obj *)(scp->sram_base +
+						recv_offset);
+	scp->send_buf = (__force struct share_obj *)(scp->sram_base +
+						send_offset);
+	memset_io(scp->recv_buf, 0, sizeof(scp->recv_buf));
+	memset_io(scp->send_buf, 0, sizeof(scp->send_buf));
+
+	return 0;
+}
+
+static void scp_reset_assert(const struct mtk_scp *scp)
+{
+	u32 val;
+
+	val = readl(scp->reg_base + MT8183_SW_RSTN);
+	val &= ~MT8183_SW_RSTN_BIT;
+	writel(val, scp->reg_base + MT8183_SW_RSTN);
+}
+
+static void scp_reset_deassert(const struct mtk_scp *scp)
+{
+	u32 val;
+
+	val = readl(scp->reg_base + MT8183_SW_RSTN);
+	val |= MT8183_SW_RSTN_BIT;
+	writel(val, scp->reg_base + MT8183_SW_RSTN);
+}
+
+static irqreturn_t scp_irq_handler(int irq, void *priv)
+{
+	struct mtk_scp *scp = priv;
+	u32 scp_to_host;
+	int ret;
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(scp->dev, "failed to enable clocks\n");
+		return IRQ_NONE;
+	}
+
+	scp_to_host = readl(scp->reg_base + MT8183_SCP_TO_HOST);
+	if (scp_to_host & MT8183_SCP_IPC_INT_BIT)
+		scp_ipi_handler(scp);
+	else
+		scp_wdt_handler(scp, scp_to_host);
+
+	/*
+	 * Ensure that all writes to SRAM are committed before another
+	 * interrupt.
+	 */
+	mb();
+	/* SCP won't send another interrupt until we set SCP_TO_HOST to 0. */
+	writel(MT8183_SCP_IPC_INT_BIT | MT8183_SCP_WDT_INT_BIT,
+	       scp->reg_base + MT8183_SCP_TO_HOST);
+	clk_disable_unprepare(scp->clk);
+
+	return IRQ_HANDLED;
+}
+
+static int scp_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
+{
+	struct device *dev = &rproc->dev;
+	struct elf32_hdr *ehdr;
+	struct elf32_phdr *phdr;
+	int i, ret = 0;
+	const u8 *elf_data = fw->data;
+
+	ehdr = (struct elf32_hdr *)elf_data;
+	phdr = (struct elf32_phdr *)(elf_data + ehdr->e_phoff);
+
+	/* go through the available ELF segments */
+	for (i = 0; i < ehdr->e_phnum; i++, phdr++) {
+		u32 da = phdr->p_paddr;
+		u32 memsz = phdr->p_memsz;
+		u32 filesz = phdr->p_filesz;
+		u32 offset = phdr->p_offset;
+		void __iomem *ptr;
+
+		if (phdr->p_type != PT_LOAD)
+			continue;
+
+		dev_dbg(dev, "phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\n",
+			phdr->p_type, da, memsz, filesz);
+
+		if (filesz > memsz) {
+			dev_err(dev, "bad phdr filesz 0x%x memsz 0x%x\n",
+				filesz, memsz);
+			ret = -EINVAL;
+			break;
+		}
+
+		if (offset + filesz > fw->size) {
+			dev_err(dev, "truncated fw: need 0x%x avail 0x%zx\n",
+				offset + filesz, fw->size);
+			ret = -EINVAL;
+			break;
+		}
+
+		/* grab the kernel address for this device address */
+		ptr = rproc_da_to_va(rproc, da, memsz);
+		if (!ptr) {
+			dev_err(dev, "bad phdr da 0x%x mem 0x%x\n", da, memsz);
+			ret = -EINVAL;
+			break;
+		}
+
+		/* put the segment where the remote processor expects it */
+		if (phdr->p_filesz)
+			scp_memcpy_aligned(ptr, elf_data + phdr->p_offset,
+					   filesz);
+	}
+
+	return ret;
+}
+
+static int scp_load(struct rproc *rproc, const struct firmware *fw)
+{
+	const struct mtk_scp *scp = rproc->priv;
+	struct device *dev = scp->dev;
+	int ret;
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(dev, "failed to enable clocks\n");
+		return ret;
+	}
+
+	/* Hold SCP in reset while loading FW. */
+	scp_reset_assert(scp);
+
+	/* Reset clocks before loading FW */
+	writel(0x0, scp->reg_base + MT8183_SCP_CLK_SW_SEL);
+	writel(0x0, scp->reg_base + MT8183_SCP_CLK_DIV_SEL);
+
+	/* Initialize TCM before loading FW. */
+	writel(0x0, scp->reg_base + MT8183_SCP_L1_SRAM_PD);
+	writel(0x0, scp->reg_base + MT8183_SCP_TCM_TAIL_SRAM_PD);
+
+	/* Turn on the power of SCP's SRAM before using it. */
+	writel(0x0, scp->reg_base + MT8183_SCP_SRAM_PDN);
+
+	/*
+	 * Set I-cache and D-cache size before loading SCP FW.
+	 * SCP SRAM logical address may change when cache size setting differs.
+	 */
+	writel(MT8183_SCP_CACHE_CON_WAYEN | MT8183_SCP_CACHESIZE_8KB,
+	       scp->reg_base + MT8183_SCP_CACHE_CON);
+	writel(MT8183_SCP_CACHESIZE_8KB, scp->reg_base + MT8183_SCP_DCACHE_CON);
+
+	ret = scp_elf_load_segments(rproc, fw);
+	clk_disable_unprepare(scp->clk);
+
+	return ret;
+}
+
+static int scp_start(struct rproc *rproc)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
+	struct device *dev = scp->dev;
+	struct scp_run *run = &scp->run;
+	int ret;
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(dev, "failed to enable clocks\n");
+		return ret;
+	}
+
+	run->signaled = false;
+
+	scp_reset_deassert(scp);
+
+	ret = wait_event_interruptible_timeout(
+					run->wq,
+					run->signaled,
+					msecs_to_jiffies(2000));
+
+	if (ret == 0) {
+		dev_err(dev, "wait SCP initialization timeout!\n");
+		ret = -ETIME;
+		goto stop;
+	}
+	if (ret == -ERESTARTSYS) {
+		dev_err(dev, "wait SCP interrupted by a signal!\n");
+		goto stop;
+	}
+	clk_disable_unprepare(scp->clk);
+	dev_info(dev, "SCP is ready. FW version %s\n", run->fw_ver);
+
+	return 0;
+
+stop:
+	scp_reset_assert(scp);
+	clk_disable_unprepare(scp->clk);
+	return ret;
+}
+
+static void *scp_da_to_va(struct rproc *rproc, u64 da, int len)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
+	int offset;
+
+	if (da < scp->sram_size) {
+		offset = da;
+		if (offset >= 0 && (offset + len) < scp->sram_size)
+			return scp->sram_base + offset;
+	} else {
+		offset = da - scp->phys_addr;
+		if (offset >= 0 && (offset + len) < scp->dram_size)
+			return scp->cpu_addr + offset;
+	}
+
+	return NULL;
+}
+
+static int scp_stop(struct rproc *rproc)
+{
+	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
+	int ret;
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(scp->dev, "failed to enable clocks\n");
+		return ret;
+	}
+
+	scp_reset_assert(scp);
+	/* Disable SCP watchdog */
+	writel(0, scp->reg_base + MT8183_WDT_CFG);
+	clk_disable_unprepare(scp->clk);
+
+	return 0;
+}
+
+static const struct rproc_ops scp_ops = {
+	.start		= scp_start,
+	.stop		= scp_stop,
+	.load		= scp_load,
+	.da_to_va	= scp_da_to_va,
+};
+
+unsigned int scp_get_vdec_hw_capa(struct platform_device *pdev)
+{
+	struct mtk_scp *scp = platform_get_drvdata(pdev);
+
+	return scp->run.dec_capability;
+}
+EXPORT_SYMBOL_GPL(scp_get_vdec_hw_capa);
+
+unsigned int scp_get_venc_hw_capa(struct platform_device *pdev)
+{
+	struct mtk_scp *scp = platform_get_drvdata(pdev);
+
+	return scp->run.enc_capability;
+}
+EXPORT_SYMBOL_GPL(scp_get_venc_hw_capa);
+
+void *scp_mapping_dm_addr(struct platform_device *pdev, u32 mem_addr)
+{
+	struct mtk_scp *scp = platform_get_drvdata(pdev);
+	void *ptr;
+
+	ptr = scp_da_to_va(scp->rproc, mem_addr, 0);
+	if (!ptr)
+		return ERR_PTR(-EINVAL);
+
+	return ptr;
+}
+EXPORT_SYMBOL_GPL(scp_mapping_dm_addr);
+
+static int scp_map_memory_region(struct mtk_scp *scp)
+{
+	struct device_node *node;
+	struct resource r;
+	int ret;
+
+	node = of_parse_phandle(scp->dev->of_node, "memory-region", 0);
+	if (!node) {
+		dev_err(scp->dev, "no memory-region specified\n");
+		return -EINVAL;
+	}
+
+	ret = of_address_to_resource(node, 0, &r);
+	if (ret)
+		return ret;
+
+	scp->phys_addr = r.start;
+	scp->dram_size = resource_size(&r);
+	scp->cpu_addr =
+		devm_ioremap_wc(scp->dev, scp->phys_addr, scp->dram_size);
+
+	if (!scp->cpu_addr) {
+		dev_err(scp->dev, "unable to map memory region: %pa+%zx\n",
+			&r.start, scp->dram_size);
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
+static int scp_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct mtk_scp *scp;
+	struct rproc *rproc;
+	struct resource *res;
+	char *fw_name = "scp.img";
+	int ret;
+
+	rproc = rproc_alloc(dev,
+			    np->name,
+			    &scp_ops,
+			    fw_name,
+			    sizeof(*scp));
+	if (!rproc) {
+		dev_err(dev, "unable to allocate remoteproc\n");
+		return -ENOMEM;
+	}
+
+	scp = (struct mtk_scp *)rproc->priv;
+	scp->rproc = rproc;
+	scp->dev = dev;
+	platform_set_drvdata(pdev, scp);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "sram");
+	scp->sram_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR((__force void *)scp->sram_base)) {
+		dev_err(dev, "Failed to parse and map sram memory\n");
+		ret = PTR_ERR((__force void *)scp->sram_base);
+		goto free_rproc;
+	}
+	scp->sram_size = resource_size(res);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "cfg");
+	scp->reg_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR((__force void *)scp->reg_base)) {
+		dev_err(dev, "Failed to parse and map cfg memory\n");
+		ret = PTR_ERR((__force void *)scp->reg_base);
+		goto free_rproc;
+	}
+
+	ret = scp_map_memory_region(scp);
+	if (ret)
+		goto free_rproc;
+
+	scp->clk = devm_clk_get(dev, "main");
+	if (IS_ERR(scp->clk)) {
+		dev_err(dev, "Failed to get clock\n");
+		ret = PTR_ERR(scp->clk);
+		goto free_rproc;
+	}
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(dev, "failed to enable clocks\n");
+		goto free_rproc;
+	}
+
+	ret = scp_ipi_init(scp);
+	clk_disable_unprepare(scp->clk);
+	if (ret) {
+		dev_err(dev, "Failed to init ipi\n");
+		goto free_rproc;
+	}
+
+	/* register SCP initialization IPI */
+	ret = scp_ipi_register(pdev,
+			       SCP_IPI_INIT,
+			       scp_init_ipi_handler,
+			       scp);
+	if (ret) {
+		dev_err(dev, "Failed to register IPI_SCP_INIT\n");
+		goto free_rproc;
+	}
+
+	mutex_init(&scp->send_lock);
+	mutex_init(&scp->desc_lock);
+
+	init_waitqueue_head(&scp->run.wq);
+	init_waitqueue_head(&scp->ack_wq);
+
+	ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0), NULL,
+					scp_irq_handler, IRQF_ONESHOT,
+					pdev->name, scp);
+
+	if (ret) {
+		dev_err(dev, "failed to request irq\n");
+		goto destroy_mutex;
+	}
+
+	ret = rproc_add(rproc);
+	if (ret)
+		goto destroy_mutex;
+
+	return ret;
+
+destroy_mutex:
+	mutex_destroy(&scp->desc_lock);
+	mutex_destroy(&scp->send_lock);
+free_rproc:
+	rproc_free(rproc);
+
+	return ret;
+}
+
+static int scp_remove(struct platform_device *pdev)
+{
+	struct mtk_scp *scp = platform_get_drvdata(pdev);
+
+	mutex_destroy(&scp->desc_lock);
+	mutex_destroy(&scp->send_lock);
+	rproc_del(scp->rproc);
+	rproc_free(scp->rproc);
+
+	return 0;
+}
+
+static const struct of_device_id mtk_scp_of_match[] = {
+	{ .compatible = "mediatek,mt8183-scp"},
+	{},
+};
+MODULE_DEVICE_TABLE(of, mtk_scp_of_match);
+
+static struct platform_driver mtk_scp_driver = {
+	.probe = scp_probe,
+	.remove = scp_remove,
+	.driver = {
+		.name = "mtk-scp",
+		.of_match_table = of_match_ptr(mtk_scp_of_match),
+	},
+};
+
+module_platform_driver(mtk_scp_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MediaTek SCP control driver");
diff --git a/drivers/remoteproc/mtk_scp_ipi.c b/drivers/remoteproc/mtk_scp_ipi.c
new file mode 100644
index 000000000000..1bff5567df8e
--- /dev/null
+++ b/drivers/remoteproc/mtk_scp_ipi.c
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2019 MediaTek Inc.
+
+#include <asm/barrier.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/remoteproc/mtk_scp.h>
+
+#include "mtk_common.h"
+
+int scp_ipi_register(struct platform_device *pdev,
+		     enum scp_ipi_id id,
+		     scp_ipi_handler_t handler,
+		     void *priv)
+{
+	struct mtk_scp *scp = platform_get_drvdata(pdev);
+
+	if (!scp) {
+		dev_err(&pdev->dev, "scp device is not ready\n");
+		return -EPROBE_DEFER;
+	}
+
+	if (WARN_ON(id < 0) || WARN_ON(id >= SCP_IPI_MAX) ||
+	    WARN_ON(handler == NULL))
+		return -EINVAL;
+
+	mutex_lock(&scp->desc_lock);
+	scp->ipi_desc[id].handler = handler;
+	scp->ipi_desc[id].priv = priv;
+	mutex_unlock(&scp->desc_lock);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(scp_ipi_register);
+
+void scp_ipi_unregister(struct platform_device *pdev, enum scp_ipi_id id)
+{
+	struct mtk_scp *scp = platform_get_drvdata(pdev);
+
+	if (!scp)
+		return;
+
+	if (WARN_ON(id < 0) || WARN_ON(id >= SCP_IPI_MAX))
+		return;
+
+	mutex_lock(&scp->desc_lock);
+	scp->ipi_desc[id].handler = NULL;
+	scp->ipi_desc[id].priv = NULL;
+	mutex_unlock(&scp->desc_lock);
+}
+EXPORT_SYMBOL_GPL(scp_ipi_unregister);
+
+/*
+ * Copy src to dst, where dst is in SCP SRAM region.
+ * Since AP access of SCP SRAM don't support byte write, this always write a
+ * full word at a time, and may cause some extra bytes to be written at the
+ * beginning & ending of dst.
+ */
+void scp_memcpy_aligned(void *dst, const void *src, unsigned int len)
+{
+	void *ptr;
+	u32 val;
+	unsigned int i = 0;
+
+	if (!IS_ALIGNED((unsigned long)dst, 4)) {
+		ptr = (void *)ALIGN_DOWN((unsigned long)dst, 4);
+		i = 4 - (dst - ptr);
+		val = readl_relaxed(ptr);
+		memcpy((u8 *)&val + (4 - i), src, i);
+		writel_relaxed(val, ptr);
+	}
+
+	while (i + 4 <= len) {
+		val = *((u32 *)(src + i));
+		writel_relaxed(val, dst + i);
+		i += 4;
+	}
+	if (i < len) {
+		val = readl_relaxed(dst + i);
+		memcpy(&val, src + i, len - i);
+		writel_relaxed(val, dst + i);
+	}
+}
+EXPORT_SYMBOL_GPL(scp_memcpy_aligned);
+
+int scp_ipi_send(struct platform_device *pdev,
+		 enum scp_ipi_id id,
+		 void *buf,
+		 unsigned int len,
+		 unsigned int wait)
+{
+	struct mtk_scp *scp = platform_get_drvdata(pdev);
+	struct share_obj *send_obj = scp->send_buf;
+	unsigned long timeout;
+	int ret;
+
+	if (WARN_ON(id <= SCP_IPI_INIT) || WARN_ON(id >= SCP_IPI_MAX) ||
+	    WARN_ON(len > sizeof(send_obj->share_buf)) || WARN_ON(!buf))
+		return -EINVAL;
+
+	mutex_lock(&scp->send_lock);
+
+	ret = clk_prepare_enable(scp->clk);
+	if (ret) {
+		dev_err(scp->dev, "failed to enable clock\n");
+		goto unlock_mutex;
+	}
+
+	 /* Wait until SCP receives the last command */
+	timeout = jiffies + msecs_to_jiffies(2000);
+	do {
+		if (time_after(jiffies, timeout)) {
+			dev_err(scp->dev, "%s: IPI timeout!\n", __func__);
+			ret = -ETIMEDOUT;
+			goto clock_disable;
+		}
+	} while (readl(scp->reg_base + MT8183_HOST_TO_SCP));
+
+	scp_memcpy_aligned(send_obj->share_buf, buf, len);
+
+	send_obj->len = len;
+	send_obj->id = id;
+
+	scp->ipi_id_ack[id] = false;
+	/*
+	 * Ensure that all writes to SRAM are committed before sending the
+	 * interrupt to SCP.
+	 */
+	mb();
+	/* send the command to SCP */
+	writel(MT8183_HOST_IPC_INT_BIT, scp->reg_base + MT8183_HOST_TO_SCP);
+
+	if (wait) {
+		/* wait for SCP's ACK */
+		timeout = msecs_to_jiffies(wait);
+		ret = wait_event_timeout(scp->ack_wq,
+					 scp->ipi_id_ack[id],
+					 timeout);
+		scp->ipi_id_ack[id] = false;
+		if (WARN(!ret, "scp ipi %d ack time out !", id))
+			ret = -EIO;
+		else
+			ret = 0;
+	}
+
+clock_disable:
+	clk_disable_unprepare(scp->clk);
+unlock_mutex:
+	mutex_unlock(&scp->send_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(scp_ipi_send);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MediaTek scp IPI interface");
diff --git a/include/linux/remoteproc/mtk_scp.h b/include/linux/remoteproc/mtk_scp.h
new file mode 100644
index 000000000000..b80d8e3f7959
--- /dev/null
+++ b/include/linux/remoteproc/mtk_scp.h
@@ -0,0 +1,141 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef _MTK_SCP_H
+#define _MTK_SCP_H
+
+#include <linux/platform_device.h>
+
+typedef void (*scp_ipi_handler_t) (void *data,
+				   unsigned int len,
+				   void *priv);
+
+/**
+ * enum ipi_id - the id of inter-processor interrupt
+ *
+ * @SCP_IPI_INIT:	 The interrupt from scp is to notfiy kernel
+ *			 SCP initialization completed.
+ *			 IPI_SCP_INIT is sent from SCP when firmware is
+ *			 loaded. AP doesn't need to send IPI_SCP_INIT
+ *			 command to SCP.
+ *			 For other IPI below, AP should send the request
+ *			 to SCP to trigger the interrupt.
+ * @SCP_IPI_MAX:	 The maximum IPI number
+ */
+
+enum scp_ipi_id {
+	SCP_IPI_INIT = 0,
+	SCP_IPI_VDEC_H264,
+	SCP_IPI_VDEC_VP8,
+	SCP_IPI_VDEC_VP9,
+	SCP_IPI_VENC_H264,
+	SCP_IPI_VENC_VP8,
+	SCP_IPI_MDP_INIT,
+	SCP_IPI_MDP_DEINIT,
+	SCP_IPI_MDP_FRAME,
+	SCP_IPI_DIP,
+	SCP_IPI_ISP_CMD,
+	SCP_IPI_ISP_FRAME,
+	SCP_IPI_FD_CMD,
+	SCP_IPI_CROS_HOST_CMD,
+	SCP_IPI_MAX,
+};
+
+/**
+ * scp_ipi_register - register an ipi function
+ *
+ * @pdev:	SCP platform device
+ * @id:		IPI ID
+ * @handler:	IPI handler
+ * @priv:	private data for IPI handler
+ *
+ * Register an ipi function to receive ipi interrupt from SCP.
+ *
+ * Return: Return 0 if ipi registers successfully, otherwise it is failed.
+ */
+int scp_ipi_register(struct platform_device *pdev,
+		     enum scp_ipi_id id,
+		     scp_ipi_handler_t handler,
+		     void *priv);
+
+/**
+ * scp_ipi_unregister - unregister an ipi function
+ *
+ * @pdev:	SCP platform device
+ * @id:		IPI ID
+ *
+ * Unregister an ipi function to receive ipi interrupt from SCP.
+ */
+void scp_ipi_unregister(struct platform_device *pdev, enum scp_ipi_id id);
+
+/**
+ * scp_ipi_send - send data from AP to scp.
+ *
+ * @pdev:	SCP platform device
+ * @id:		IPI ID
+ * @buf:	the data buffer
+ * @len:	the data buffer length
+ * @wait:	1: need ack
+ *
+ * This function is thread-safe. When this function returns,
+ * SCP has received the data and starts the processing.
+ * When the processing completes, IPI handler registered
+ * by scp_ipi_register will be called in interrupt context.
+ *
+ * Return: Return 0 if sending data successfully, otherwise it is failed.
+ **/
+int scp_ipi_send(struct platform_device *pdev,
+		 enum scp_ipi_id id,
+		 void *buf,
+		 unsigned int len,
+		 unsigned int wait);
+
+/**
+ * scp_get_pdev - get SCP's platform device
+ *
+ * @pdev:	the platform device of the module requesting SCP platform
+ *		device for using SCP API.
+ *
+ * Return: Return NULL if it is failed.
+ * otherwise it is SCP's platform device
+ **/
+struct platform_device *scp_get_pdev(struct platform_device *pdev);
+
+/**
+ * scp_get_vdec_hw_capa - get video decoder hardware capability
+ *
+ * @pdev:	SCP platform device
+ *
+ * Return: video decoder hardware capability
+ **/
+unsigned int scp_get_vdec_hw_capa(struct platform_device *pdev);
+
+/**
+ * scp_get_venc_hw_capa - get video encoder hardware capability
+ *
+ * @pdev:	SCP platform device
+ *
+ * Return: video encoder hardware capability
+ **/
+unsigned int scp_get_venc_hw_capa(struct platform_device *pdev);
+
+/**
+ * scp_mapping_dm_addr - Mapping SRAM/DRAM to kernel virtual address
+ *
+ * @pdev:	SCP platform device
+ * @mem_addr:	SCP views memory address
+ *
+ * Mapping the SCP's SRAM address /
+ * DMEM (Data Extended Memory) memory address /
+ * Working buffer memory address to
+ * kernel virtual address.
+ *
+ * Return: Return ERR_PTR(-EINVAL) if mapping failed,
+ * otherwise the mapped kernel virtual address
+ **/
+void *scp_mapping_dm_addr(struct platform_device *pdev,
+			  u32 mem_addr);
+
+#endif /* _MTK_SCP_H */
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
