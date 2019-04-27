Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2232B28D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 05:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A+ofNmGdq2vMmwmnPwhS85QWvpat6CrfyKigmtxv4g=; b=uc0LC80X4qMc8u
	d4BCj/lCmRUzeXKEkWbFLxrYsw0J4yKlz6q+mcUze6Ky7r3a/qK9rOP+G6WBY/isJAzzvo04lQglB
	7VEc7y4aWsmTLNIlnRTchELzeCvVaubTc0dTGjJwexnUNJs4Kls8hAB9FOH9x0q3x1i47TIHedd0o
	ET6m0wTrsla5G7PjC75tEeFSMwlDoCdqrNoW6zBrfjSnkeRuCMQrVKN5WIc89nf5tKukbYKfWBbou
	91y3PInzZ+RfN6Ru5I/mqSiEAbnITT96jB/M0wQPNkuxyVaHAlJOwQL7eJkvd6VSvj0oYevPIo2ra
	EZYD8yI2uEGQWOh13T6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKE9p-0001KC-8M; Sat, 27 Apr 2019 03:37:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKE97-0000ak-90; Sat, 27 Apr 2019 03:37:08 +0000
X-UUID: 48b2d030769b45eaba743caec20d9ab8-20190426
X-UUID: 48b2d030769b45eaba743caec20d9ab8-20190426
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <long.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 371189639; Fri, 26 Apr 2019 19:36:52 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Apr 2019 20:36:50 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 27 Apr 2019 11:36:42 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 27 Apr 2019 11:36:41 +0800
From: Long Cheng <long.cheng@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Ryder Lee
 <ryder.lee@mediatek.com>, Sean Wang <sean.wang@kernel.org>, Nicolas Boichat
 <drinkcat@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/4] dmaengine: mediatek: Add MediaTek UART APDMA support
Date: Sat, 27 Apr 2019 11:36:30 +0800
Message-ID: <1556336193-15198-2-git-send-email-long.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
References: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7F8DA4DC7EDB503104174522F7C93896631D3AA5BC1BA5A4BF2169237ECCA62E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_203702_345456_E9AC5507 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Zhenbao Liu <zhenbao.liu@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 YT Shen <yt.shen@mediatek.com>, Long Cheng <long.cheng@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, dmaengine@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add 8250 UART APDMA to support MediaTek UART. If MediaTek UART is
enabled by SERIAL_8250_MT6577, and we can enable this driver to offload
the UART device moving bytes.

Signed-off-by: Long Cheng <long.cheng@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 drivers/dma/mediatek/Kconfig          |   11 +
 drivers/dma/mediatek/Makefile         |    1 +
 drivers/dma/mediatek/mtk-uart-apdma.c |  666 +++++++++++++++++++++++++++++++++
 3 files changed, 678 insertions(+)
 create mode 100644 drivers/dma/mediatek/mtk-uart-apdma.c

diff --git a/drivers/dma/mediatek/Kconfig b/drivers/dma/mediatek/Kconfig
index 680fc05..ac49eb6 100644
--- a/drivers/dma/mediatek/Kconfig
+++ b/drivers/dma/mediatek/Kconfig
@@ -24,3 +24,14 @@ config MTK_CQDMA
 
 	  This controller provides the channels which is dedicated to
 	  memory-to-memory transfer to offload from CPU.
+
+config MTK_UART_APDMA
+	tristate "MediaTek SoCs APDMA support for UART"
+	depends on OF && SERIAL_8250_MT6577
+	select DMA_ENGINE
+	select DMA_VIRTUAL_CHANNELS
+	help
+	  Support for the UART DMA engine found on MediaTek MTK SoCs.
+	  When SERIAL_8250_MT6577 is enabled, and if you want to use DMA,
+	  you can enable the config. The DMA engine can only be used
+	  with MediaTek SoCs.
diff --git a/drivers/dma/mediatek/Makefile b/drivers/dma/mediatek/Makefile
index 41bb381..61a6d29 100644
--- a/drivers/dma/mediatek/Makefile
+++ b/drivers/dma/mediatek/Makefile
@@ -1,2 +1,3 @@
+obj-$(CONFIG_MTK_UART_APDMA) += mtk-uart-apdma.o
 obj-$(CONFIG_MTK_HSDMA) += mtk-hsdma.o
 obj-$(CONFIG_MTK_CQDMA) += mtk-cqdma.o
diff --git a/drivers/dma/mediatek/mtk-uart-apdma.c b/drivers/dma/mediatek/mtk-uart-apdma.c
new file mode 100644
index 0000000..546995c
--- /dev/null
+++ b/drivers/dma/mediatek/mtk-uart-apdma.c
@@ -0,0 +1,666 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * MediaTek UART APDMA driver.
+ *
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Long Cheng <long.cheng@mediatek.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/dmaengine.h>
+#include <linux/dma-mapping.h>
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/of_dma.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+
+#include "../virt-dma.h"
+
+/* The default number of virtual channel */
+#define MTK_UART_APDMA_NR_VCHANS	8
+
+#define VFF_EN_B		BIT(0)
+#define VFF_STOP_B		BIT(0)
+#define VFF_FLUSH_B		BIT(0)
+#define VFF_4G_EN_B		BIT(0)
+/* rx valid size >=  vff thre */
+#define VFF_RX_INT_EN_B		(BIT(0) | BIT(1))
+/* tx left size >= vff thre */
+#define VFF_TX_INT_EN_B		BIT(0)
+#define VFF_WARM_RST_B		BIT(0)
+#define VFF_RX_INT_CLR_B	(BIT(0) | BIT(1))
+#define VFF_TX_INT_CLR_B	0
+#define VFF_STOP_CLR_B		0
+#define VFF_EN_CLR_B		0
+#define VFF_INT_EN_CLR_B	0
+#define VFF_4G_SUPPORT_CLR_B	0
+
+/*
+ * interrupt trigger level for tx
+ * if threshold is n, no polling is required to start tx.
+ * otherwise need polling VFF_FLUSH.
+ */
+#define VFF_TX_THRE(n)		(n)
+/* interrupt trigger level for rx */
+#define VFF_RX_THRE(n)		((n) * 3 / 4)
+
+#define VFF_RING_SIZE	0xffff
+/* invert this bit when wrap ring head again */
+#define VFF_RING_WRAP	0x10000
+
+#define VFF_INT_FLAG		0x00
+#define VFF_INT_EN		0x04
+#define VFF_EN			0x08
+#define VFF_RST			0x0c
+#define VFF_STOP		0x10
+#define VFF_FLUSH		0x14
+#define VFF_ADDR		0x1c
+#define VFF_LEN			0x24
+#define VFF_THRE		0x28
+#define VFF_WPT			0x2c
+#define VFF_RPT			0x30
+/* TX: the buffer size HW can read. RX: the buffer size SW can read. */
+#define VFF_VALID_SIZE		0x3c
+/* TX: the buffer size SW can write. RX: the buffer size HW can write. */
+#define VFF_LEFT_SIZE		0x40
+#define VFF_DEBUG_STATUS	0x50
+#define VFF_4G_SUPPORT		0x54
+
+struct mtk_uart_apdmadev {
+	struct dma_device ddev;
+	struct clk *clk;
+	bool support_33bits;
+	unsigned int dma_requests;
+};
+
+struct mtk_uart_apdma_desc {
+	struct virt_dma_desc vd;
+
+	dma_addr_t addr;
+	unsigned int avail_len;
+};
+
+struct mtk_chan {
+	struct virt_dma_chan vc;
+	struct dma_slave_config	cfg;
+	struct mtk_uart_apdma_desc *desc;
+	enum dma_transfer_direction dir;
+
+	void __iomem *base;
+	unsigned int irq;
+
+	unsigned int rx_status;
+};
+
+static inline struct mtk_uart_apdmadev *
+to_mtk_uart_apdma_dev(struct dma_device *d)
+{
+	return container_of(d, struct mtk_uart_apdmadev, ddev);
+}
+
+static inline struct mtk_chan *to_mtk_uart_apdma_chan(struct dma_chan *c)
+{
+	return container_of(c, struct mtk_chan, vc.chan);
+}
+
+static inline struct mtk_uart_apdma_desc *to_mtk_uart_apdma_desc
+	(struct dma_async_tx_descriptor *t)
+{
+	return container_of(t, struct mtk_uart_apdma_desc, vd.tx);
+}
+
+static void mtk_uart_apdma_write(struct mtk_chan *c,
+			       unsigned int reg, unsigned int val)
+{
+	writel(val, c->base + reg);
+}
+
+static unsigned int mtk_uart_apdma_read(struct mtk_chan *c, unsigned int reg)
+{
+	return readl(c->base + reg);
+}
+
+static void mtk_uart_apdma_desc_free(struct virt_dma_desc *vd)
+{
+	struct dma_chan *chan = vd->tx.chan;
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+
+	kfree(c->desc);
+}
+
+static void mtk_uart_apdma_start_tx(struct mtk_chan *c)
+{
+	struct mtk_uart_apdmadev *mtkd =
+				to_mtk_uart_apdma_dev(c->vc.chan.device);
+	struct mtk_uart_apdma_desc *d = c->desc;
+	unsigned int wpt, vff_sz;
+
+	vff_sz = c->cfg.dst_port_window_size;
+	if (!mtk_uart_apdma_read(c, VFF_LEN)) {
+		mtk_uart_apdma_write(c, VFF_ADDR, d->addr);
+		mtk_uart_apdma_write(c, VFF_LEN, vff_sz);
+		mtk_uart_apdma_write(c, VFF_THRE, VFF_TX_THRE(vff_sz));
+		mtk_uart_apdma_write(c, VFF_WPT, 0);
+		mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);
+
+		if (mtkd->support_33bits)
+			mtk_uart_apdma_write(c, VFF_4G_SUPPORT, VFF_4G_EN_B);
+	}
+
+	mtk_uart_apdma_write(c, VFF_EN, VFF_EN_B);
+	if (mtk_uart_apdma_read(c, VFF_EN) != VFF_EN_B)
+		dev_err(c->vc.chan.device->dev, "Enable TX fail\n");
+
+	if (!mtk_uart_apdma_read(c, VFF_LEFT_SIZE)) {
+		mtk_uart_apdma_write(c, VFF_INT_EN, VFF_TX_INT_EN_B);
+		return;
+	}
+
+	wpt = mtk_uart_apdma_read(c, VFF_WPT);
+
+	wpt += c->desc->avail_len;
+	if ((wpt & VFF_RING_SIZE) == vff_sz)
+		wpt = (wpt & VFF_RING_WRAP) ^ VFF_RING_WRAP;
+
+	/* Let DMA start moving data */
+	mtk_uart_apdma_write(c, VFF_WPT, wpt);
+
+	/* HW auto set to 0 when left size >= threshold */
+	mtk_uart_apdma_write(c, VFF_INT_EN, VFF_TX_INT_EN_B);
+	if (!mtk_uart_apdma_read(c, VFF_FLUSH))
+		mtk_uart_apdma_write(c, VFF_FLUSH, VFF_FLUSH_B);
+}
+
+static void mtk_uart_apdma_start_rx(struct mtk_chan *c)
+{
+	struct mtk_uart_apdmadev *mtkd =
+				to_mtk_uart_apdma_dev(c->vc.chan.device);
+	struct mtk_uart_apdma_desc *d = c->desc;
+	unsigned int vff_sz;
+
+	vff_sz = c->cfg.src_port_window_size;
+	if (!mtk_uart_apdma_read(c, VFF_LEN)) {
+		mtk_uart_apdma_write(c, VFF_ADDR, d->addr);
+		mtk_uart_apdma_write(c, VFF_LEN, vff_sz);
+		mtk_uart_apdma_write(c, VFF_THRE, VFF_RX_THRE(vff_sz));
+		mtk_uart_apdma_write(c, VFF_RPT, 0);
+		mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_RX_INT_CLR_B);
+
+		if (mtkd->support_33bits)
+			mtk_uart_apdma_write(c, VFF_4G_SUPPORT, VFF_4G_EN_B);
+	}
+
+	mtk_uart_apdma_write(c, VFF_INT_EN, VFF_RX_INT_EN_B);
+	mtk_uart_apdma_write(c, VFF_EN, VFF_EN_B);
+	if (mtk_uart_apdma_read(c, VFF_EN) != VFF_EN_B)
+		dev_err(c->vc.chan.device->dev, "Enable RX fail\n");
+}
+
+static void mtk_uart_apdma_tx_handler(struct mtk_chan *c)
+{
+	struct mtk_uart_apdma_desc *d = c->desc;
+
+	mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);
+	mtk_uart_apdma_write(c, VFF_INT_EN, VFF_INT_EN_CLR_B);
+	mtk_uart_apdma_write(c, VFF_EN, VFF_EN_CLR_B);
+
+	list_del(&d->vd.node);
+	vchan_cookie_complete(&d->vd);
+}
+
+static void mtk_uart_apdma_rx_handler(struct mtk_chan *c)
+{
+	struct mtk_uart_apdma_desc *d = c->desc;
+	unsigned int len, wg, rg;
+	int cnt;
+
+	mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_RX_INT_CLR_B);
+
+	if (!mtk_uart_apdma_read(c, VFF_VALID_SIZE))
+		return;
+
+	mtk_uart_apdma_write(c, VFF_EN, VFF_EN_CLR_B);
+	mtk_uart_apdma_write(c, VFF_INT_EN, VFF_INT_EN_CLR_B);
+
+	len = c->cfg.src_port_window_size;
+	rg = mtk_uart_apdma_read(c, VFF_RPT);
+	wg = mtk_uart_apdma_read(c, VFF_WPT);
+	cnt = (wg & VFF_RING_SIZE) - (rg & VFF_RING_SIZE);
+
+	/*
+	 * The buffer is ring buffer. If wrap bit different,
+	 * represents the start of the next cycle for WPT
+	 */
+	if ((rg ^ wg) & VFF_RING_WRAP)
+		cnt += len;
+
+	c->rx_status = d->avail_len - cnt;
+	mtk_uart_apdma_write(c, VFF_RPT, wg);
+
+	list_del(&d->vd.node);
+	vchan_cookie_complete(&d->vd);
+}
+
+static irqreturn_t mtk_uart_apdma_irq_handler(int irq, void *dev_id)
+{
+	struct dma_chan *chan = (struct dma_chan *)dev_id;
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+	unsigned long flags;
+
+	spin_lock_irqsave(&c->vc.lock, flags);
+	if (c->dir == DMA_DEV_TO_MEM)
+		mtk_uart_apdma_rx_handler(c);
+	else if (c->dir == DMA_MEM_TO_DEV)
+		mtk_uart_apdma_tx_handler(c);
+	spin_unlock_irqrestore(&c->vc.lock, flags);
+
+	return IRQ_HANDLED;
+}
+
+static int mtk_uart_apdma_alloc_chan_resources(struct dma_chan *chan)
+{
+	struct mtk_uart_apdmadev *mtkd = to_mtk_uart_apdma_dev(chan->device);
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+	unsigned int status;
+	int ret;
+
+	ret = pm_runtime_get_sync(mtkd->ddev.dev);
+	if (ret < 0) {
+		pm_runtime_put_noidle(chan->device->dev);
+		return ret;
+	}
+
+	mtk_uart_apdma_write(c, VFF_ADDR, 0);
+	mtk_uart_apdma_write(c, VFF_THRE, 0);
+	mtk_uart_apdma_write(c, VFF_LEN, 0);
+	mtk_uart_apdma_write(c, VFF_RST, VFF_WARM_RST_B);
+
+	ret = readx_poll_timeout(readl, c->base + VFF_EN,
+			  status, !status, 10, 100);
+	if (ret)
+		return ret;
+
+	ret = request_irq(c->irq, mtk_uart_apdma_irq_handler,
+			  IRQF_TRIGGER_NONE, KBUILD_MODNAME, chan);
+	if (ret < 0) {
+		dev_err(chan->device->dev, "Can't request dma IRQ\n");
+		return -EINVAL;
+	}
+
+	if (mtkd->support_33bits)
+		mtk_uart_apdma_write(c, VFF_4G_SUPPORT, VFF_4G_SUPPORT_CLR_B);
+
+	return ret;
+}
+
+static void mtk_uart_apdma_free_chan_resources(struct dma_chan *chan)
+{
+	struct mtk_uart_apdmadev *mtkd = to_mtk_uart_apdma_dev(chan->device);
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+
+	free_irq(c->irq, chan);
+
+	tasklet_kill(&c->vc.task);
+
+	vchan_free_chan_resources(&c->vc);
+
+	pm_runtime_put_sync(mtkd->ddev.dev);
+}
+
+static enum dma_status mtk_uart_apdma_tx_status(struct dma_chan *chan,
+					 dma_cookie_t cookie,
+					 struct dma_tx_state *txstate)
+{
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+	enum dma_status ret;
+
+	ret = dma_cookie_status(chan, cookie, txstate);
+	if (!txstate)
+		return ret;
+
+	dma_set_residue(txstate, c->rx_status);
+
+	return ret;
+}
+
+/*
+ * dmaengine_prep_slave_single will call the function. and sglen is 1.
+ * 8250 uart using one ring buffer, and deal with one sg.
+ */
+static struct dma_async_tx_descriptor *mtk_uart_apdma_prep_slave_sg
+	(struct dma_chan *chan, struct scatterlist *sgl,
+	unsigned int sglen, enum dma_transfer_direction dir,
+	unsigned long tx_flags, void *context)
+{
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+	struct mtk_uart_apdma_desc *d;
+
+	if (!is_slave_direction(dir) || sglen != 1)
+		return NULL;
+
+	/* Now allocate and setup the descriptor */
+	d = kzalloc(sizeof(*d), GFP_ATOMIC);
+	if (!d)
+		return NULL;
+
+	d->avail_len = sg_dma_len(sgl);
+	d->addr = sg_dma_address(sgl);
+	c->dir = dir;
+
+	return vchan_tx_prep(&c->vc, &d->vd, tx_flags);
+}
+
+static void mtk_uart_apdma_issue_pending(struct dma_chan *chan)
+{
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+	struct virt_dma_desc *vd;
+	unsigned long flags;
+
+	spin_lock_irqsave(&c->vc.lock, flags);
+	if (vchan_issue_pending(&c->vc)) {
+		vd = vchan_next_desc(&c->vc);
+		c->desc = to_mtk_uart_apdma_desc(&vd->tx);
+
+		if (c->dir == DMA_DEV_TO_MEM)
+			mtk_uart_apdma_start_rx(c);
+		else if (c->dir == DMA_MEM_TO_DEV)
+			mtk_uart_apdma_start_tx(c);
+	}
+
+	spin_unlock_irqrestore(&c->vc.lock, flags);
+}
+
+static int mtk_uart_apdma_slave_config(struct dma_chan *chan,
+				   struct dma_slave_config *config)
+{
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+
+	memcpy(&c->cfg, config, sizeof(*config));
+
+	return 0;
+}
+
+static int mtk_uart_apdma_terminate_all(struct dma_chan *chan)
+{
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+	unsigned long flags;
+	unsigned int status;
+	LIST_HEAD(head);
+	int ret;
+
+	mtk_uart_apdma_write(c, VFF_FLUSH, VFF_FLUSH_B);
+
+	ret = readx_poll_timeout(readl, c->base + VFF_FLUSH,
+			  status, status != VFF_FLUSH_B, 10, 100);
+	if (ret)
+		dev_err(c->vc.chan.device->dev, "flush: fail, status=0x%x\n",
+			mtk_uart_apdma_read(c, VFF_DEBUG_STATUS));
+
+	/*
+	 * Stop need 3 steps.
+	 * 1. set stop to 1
+	 * 2. wait en to 0
+	 * 3. set stop as 0
+	 */
+	mtk_uart_apdma_write(c, VFF_STOP, VFF_STOP_B);
+	ret = readx_poll_timeout(readl, c->base + VFF_EN,
+			  status, !status, 10, 100);
+	if (ret)
+		dev_err(c->vc.chan.device->dev, "stop: fail, status=0x%x\n",
+			mtk_uart_apdma_read(c, VFF_DEBUG_STATUS));
+
+	mtk_uart_apdma_write(c, VFF_STOP, VFF_STOP_CLR_B);
+	mtk_uart_apdma_write(c, VFF_INT_EN, VFF_INT_EN_CLR_B);
+
+	if (c->dir == DMA_DEV_TO_MEM)
+		mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_RX_INT_CLR_B);
+	else if (c->dir == DMA_MEM_TO_DEV)
+		mtk_uart_apdma_write(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);
+
+	synchronize_irq(c->irq);
+
+	spin_lock_irqsave(&c->vc.lock, flags);
+	vchan_get_all_descriptors(&c->vc, &head);
+	vchan_dma_desc_free_list(&c->vc, &head);
+	spin_unlock_irqrestore(&c->vc.lock, flags);
+
+	return 0;
+}
+
+static int mtk_uart_apdma_device_pause(struct dma_chan *chan)
+{
+	struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
+	unsigned long flags;
+
+	spin_lock_irqsave(&c->vc.lock, flags);
+
+	mtk_uart_apdma_write(c, VFF_EN, VFF_EN_CLR_B);
+	mtk_uart_apdma_write(c, VFF_INT_EN, VFF_INT_EN_CLR_B);
+
+	synchronize_irq(c->irq);
+
+	spin_unlock_irqrestore(&c->vc.lock, flags);
+
+	return 0;
+}
+
+static void mtk_uart_apdma_free(struct mtk_uart_apdmadev *mtkd)
+{
+	while (!list_empty(&mtkd->ddev.channels)) {
+		struct mtk_chan *c = list_first_entry(&mtkd->ddev.channels,
+			struct mtk_chan, vc.chan.device_node);
+
+		list_del(&c->vc.chan.device_node);
+		tasklet_kill(&c->vc.task);
+	}
+}
+
+static const struct of_device_id mtk_uart_apdma_match[] = {
+	{ .compatible = "mediatek,mt6577-uart-dma", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, mtk_uart_apdma_match);
+
+static int mtk_uart_apdma_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct mtk_uart_apdmadev *mtkd;
+	int bit_mask = 32, rc;
+	struct resource *res;
+	struct mtk_chan *c;
+	unsigned int i;
+
+	mtkd = devm_kzalloc(&pdev->dev, sizeof(*mtkd), GFP_KERNEL);
+	if (!mtkd)
+		return -ENOMEM;
+
+	mtkd->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(mtkd->clk)) {
+		dev_err(&pdev->dev, "No clock specified\n");
+		rc = PTR_ERR(mtkd->clk);
+		return rc;
+	}
+
+	if (of_property_read_bool(np, "mediatek,dma-33bits"))
+		mtkd->support_33bits = true;
+
+	if (mtkd->support_33bits)
+		bit_mask = 33;
+
+	rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(bit_mask));
+	if (rc)
+		return rc;
+
+	dma_cap_set(DMA_SLAVE, mtkd->ddev.cap_mask);
+	mtkd->ddev.device_alloc_chan_resources =
+				mtk_uart_apdma_alloc_chan_resources;
+	mtkd->ddev.device_free_chan_resources =
+				mtk_uart_apdma_free_chan_resources;
+	mtkd->ddev.device_tx_status = mtk_uart_apdma_tx_status;
+	mtkd->ddev.device_issue_pending = mtk_uart_apdma_issue_pending;
+	mtkd->ddev.device_prep_slave_sg = mtk_uart_apdma_prep_slave_sg;
+	mtkd->ddev.device_config = mtk_uart_apdma_slave_config;
+	mtkd->ddev.device_pause = mtk_uart_apdma_device_pause;
+	mtkd->ddev.device_terminate_all = mtk_uart_apdma_terminate_all;
+	mtkd->ddev.src_addr_widths = BIT(DMA_SLAVE_BUSWIDTH_1_BYTE);
+	mtkd->ddev.dst_addr_widths = BIT(DMA_SLAVE_BUSWIDTH_1_BYTE);
+	mtkd->ddev.directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV);
+	mtkd->ddev.residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;
+	mtkd->ddev.dev = &pdev->dev;
+	INIT_LIST_HEAD(&mtkd->ddev.channels);
+
+	mtkd->dma_requests = MTK_UART_APDMA_NR_VCHANS;
+	if (of_property_read_u32(np, "dma-requests", &mtkd->dma_requests)) {
+		dev_info(&pdev->dev,
+			 "Using %u as missing dma-requests property\n",
+			 MTK_UART_APDMA_NR_VCHANS);
+	}
+
+	for (i = 0; i < mtkd->dma_requests; i++) {
+		c = devm_kzalloc(mtkd->ddev.dev, sizeof(*c), GFP_KERNEL);
+		if (!c) {
+			rc = -ENODEV;
+			goto err_no_dma;
+		}
+
+		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
+		if (!res) {
+			rc = -ENODEV;
+			goto err_no_dma;
+		}
+
+		c->base = devm_ioremap_resource(&pdev->dev, res);
+		if (IS_ERR(c->base)) {
+			rc = PTR_ERR(c->base);
+			goto err_no_dma;
+		}
+		c->vc.desc_free = mtk_uart_apdma_desc_free;
+		vchan_init(&c->vc, &mtkd->ddev);
+
+		rc = platform_get_irq(pdev, i);
+		if (rc < 0) {
+			dev_err(&pdev->dev, "failed to get IRQ[%d]\n", i);
+			goto err_no_dma;
+		}
+		c->irq = rc;
+	}
+
+	pm_runtime_enable(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+
+	rc = dma_async_device_register(&mtkd->ddev);
+	if (rc)
+		goto rpm_disable;
+
+	platform_set_drvdata(pdev, mtkd);
+
+	/* Device-tree DMA controller registration */
+	rc = of_dma_controller_register(np, of_dma_xlate_by_chan_id, mtkd);
+	if (rc)
+		goto dma_remove;
+
+	return rc;
+
+dma_remove:
+	dma_async_device_unregister(&mtkd->ddev);
+rpm_disable:
+	pm_runtime_disable(&pdev->dev);
+err_no_dma:
+	mtk_uart_apdma_free(mtkd);
+	return rc;
+}
+
+static int mtk_uart_apdma_remove(struct platform_device *pdev)
+{
+	struct mtk_uart_apdmadev *mtkd = platform_get_drvdata(pdev);
+
+	of_dma_controller_free(pdev->dev.of_node);
+
+	mtk_uart_apdma_free(mtkd);
+
+	dma_async_device_unregister(&mtkd->ddev);
+
+	pm_runtime_disable(&pdev->dev);
+
+	return 0;
+}
+
+#ifdef CONFIG_PM_SLEEP
+static int mtk_uart_apdma_suspend(struct device *dev)
+{
+	struct mtk_uart_apdmadev *mtkd = dev_get_drvdata(dev);
+
+	if (!pm_runtime_suspended(dev))
+		clk_disable_unprepare(mtkd->clk);
+
+	return 0;
+}
+
+static int mtk_uart_apdma_resume(struct device *dev)
+{
+	int ret;
+	struct mtk_uart_apdmadev *mtkd = dev_get_drvdata(dev);
+
+	if (!pm_runtime_suspended(dev)) {
+		ret = clk_prepare_enable(mtkd->clk);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+#endif /* CONFIG_PM_SLEEP */
+
+#ifdef CONFIG_PM
+static int mtk_uart_apdma_runtime_suspend(struct device *dev)
+{
+	struct mtk_uart_apdmadev *mtkd = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(mtkd->clk);
+
+	return 0;
+}
+
+static int mtk_uart_apdma_runtime_resume(struct device *dev)
+{
+	int ret;
+	struct mtk_uart_apdmadev *mtkd = dev_get_drvdata(dev);
+
+	ret = clk_prepare_enable(mtkd->clk);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+#endif /* CONFIG_PM */
+
+static const struct dev_pm_ops mtk_uart_apdma_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(mtk_uart_apdma_suspend, mtk_uart_apdma_resume)
+	SET_RUNTIME_PM_OPS(mtk_uart_apdma_runtime_suspend,
+			   mtk_uart_apdma_runtime_resume, NULL)
+};
+
+static struct platform_driver mtk_uart_apdma_driver = {
+	.probe	= mtk_uart_apdma_probe,
+	.remove	= mtk_uart_apdma_remove,
+	.driver = {
+		.name		= KBUILD_MODNAME,
+		.pm		= &mtk_uart_apdma_pm_ops,
+		.of_match_table = of_match_ptr(mtk_uart_apdma_match),
+	},
+};
+
+module_platform_driver(mtk_uart_apdma_driver);
+
+MODULE_DESCRIPTION("MediaTek UART APDMA Controller Driver");
+MODULE_AUTHOR("Long Cheng <long.cheng@mediatek.com>");
+MODULE_LICENSE("GPL v2");
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
