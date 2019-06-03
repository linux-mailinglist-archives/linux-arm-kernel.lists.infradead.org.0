Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5A732710
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 05:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkRbrIoizAElWjLch48fR9i/2rX7ZdBzQprfAheb0MU=; b=awEVRvvZzU1a0E
	W1DoFpp8hkgR3dtQZKF4HmxD8Fah6ZgZkvObA6WdsdGrQgcByGUlMHJf+uNIoM6PWpo+P+nMZP5mf
	NwsNHb00y8mF+nD9syhQkuLKzK0ugDe6O6s5kK5jgd/LHz/s836zood78ewejeIAJQklt1U9z/ASb
	T0ouLS26lgdXwk2PiJ8TXKQKehhlm3jcnsQMA6WByfU5SwtsceTsk5212vgXRYAIPSJaS+cUxzWck
	8eFQiY8eDkQCVjsxWF5jOqk72K/ePmDqCa8MMeSs5lsPpjpHQSZB6msiQNFZejgTYT7tM1s2l8eqv
	MqlXtJL4BEZ2YPRBbnOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXe0a-0005Rp-Bj; Mon, 03 Jun 2019 03:51:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXe0Q-0005RJ-V1; Mon, 03 Jun 2019 03:51:34 +0000
X-UUID: 3092f35601174addb83f010424f15c32-20190602
X-UUID: 3092f35601174addb83f010424f15c32-20190602
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1932050138; Sun, 02 Jun 2019 19:51:22 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 20:51:20 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 11:51:18 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 11:51:18 +0800
From: Qii Wang <qii.wang@mediatek.com>
To: <bbrezillon@kernel.org>
Subject: [PATCH 2/2] i3c: master: Add driver for MediaTek IP
Date: Mon, 3 Jun 2019 11:51:03 +0800
Message-ID: <1559533863-10292-3-git-send-email-qii.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559533863-10292-1-git-send-email-qii.wang@mediatek.com>
References: <1559533863-10292-1-git-send-email-qii.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_205131_019687_7DF56793 
X-CRM114-Status: GOOD (  17.70  )
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 leilk.liu@mediatek.com, gregkh@linuxfoundation.org, xinping.qian@mediatek.com,
 linux-kernel@vger.kernel.org, liguo.zhang@mediatek.com,
 linux-mediatek@lists.infradead.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a driver for MediaTek I3C master IP.

Signed-off-by: Qii Wang <qii.wang@mediatek.com>
---
 drivers/i3c/master/Kconfig          |   10 +
 drivers/i3c/master/Makefile         |    1 +
 drivers/i3c/master/i3c-master-mtk.c | 1246 +++++++++++++++++++++++++++++++++++
 3 files changed, 1257 insertions(+)
 create mode 100644 drivers/i3c/master/i3c-master-mtk.c

diff --git a/drivers/i3c/master/Kconfig b/drivers/i3c/master/Kconfig
index 26c6b58..acc00d9 100644
--- a/drivers/i3c/master/Kconfig
+++ b/drivers/i3c/master/Kconfig
@@ -20,3 +20,13 @@ config DW_I3C_MASTER
 
 	  This driver can also be built as a module.  If so, the module
 	  will be called dw-i3c-master.
+
+config MTK_I3C_MASTER
+	tristate "MediaTek I3C master driver"
+	depends on I3C
+	depends on HAS_IOMEM
+	depends on !(ALPHA || PARISC)
+	help
+	  This selects the MediaTek(R) I3C master controller driver.
+	  If you want to use MediaTek(R) I3C interface, say Y here.
+	  If unsure, say N or M.
diff --git a/drivers/i3c/master/Makefile b/drivers/i3c/master/Makefile
index fc53939..fe7ccf5 100644
--- a/drivers/i3c/master/Makefile
+++ b/drivers/i3c/master/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_CDNS_I3C_MASTER)		+= i3c-master-cdns.o
 obj-$(CONFIG_DW_I3C_MASTER)		+= dw-i3c-master.o
+obj-$(CONFIG_MTK_I3C_MASTER)		+= i3c-master-mtk.o
diff --git a/drivers/i3c/master/i3c-master-mtk.c b/drivers/i3c/master/i3c-master-mtk.c
new file mode 100644
index 0000000..a209bb6
--- /dev/null
+++ b/drivers/i3c/master/i3c-master-mtk.c
@@ -0,0 +1,1246 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Design Systems Inc.
+ *
+ * Author: Qii Wang <qii.wang@mediatek.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/dma-mapping.h>
+#include <linux/i3c/master.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+#define DRV_NAME		"i3c-master-mtk"
+
+#define SLAVE_ADDR		0x04
+#define INTR_MASK		0x08
+#define INTR_STAT		0x0c
+#define INTR_TRANSAC_COMP	BIT(0)
+#define INTR_ACKERR		GENMASK(2, 1)
+#define INTR_ARB_LOST		BIT(3)
+#define INTR_RS_MULTI		BIT(4)
+#define INTR_MAS_ERR		BIT(8)
+#define INTR_ALL		(INTR_MAS_ERR | INTR_ARB_LOST |\
+				INTR_ACKERR | INTR_TRANSAC_COMP)
+
+#define CONTROL			0x10
+#define CONTROL_WRAPPER		BIT(0)
+#define CONTROL_RS		BIT(1)
+#define CONTROL_DMA_EN		BIT(2)
+#define CONTROL_CLK_EXT_EN	BIT(3)
+#define CONTROL_DIR_CHANGE      BIT(4)
+#define CONTROL_ACKERR_DET_EN	BIT(5)
+#define CONTROL_LEN_CHANGE	BIT(6)
+#define CONTROL_DMAACK_EN	BIT(8)
+#define CONTROL_ASYNC_MODE	BIT(9)
+
+#define TRANSFER_LEN		0x14
+#define TRANSAC_LEN		0x18
+#define TRANSAC_LEN_WRRD	0x0002
+#define TRANS_ONE_LEN		0x0001
+
+#define DELAY_LEN		0x1c
+#define DELAY_LEN_DEFAULT	0x000a
+
+#define TIMING			0x20
+#define TIMING_VALUE(sample_cnt, step_cnt) ({ \
+	typeof(sample_cnt) sample_cnt_ = (sample_cnt); \
+	typeof(step_cnt) step_cnt_ = (step_cnt); \
+	(((sample_cnt_) << 8) | (step_cnt_)); \
+})
+
+#define START			0x24
+#define START_EN		BIT(0)
+#define START_MUL_TRIG		BIT(14)
+#define START_MUL_CNFG		BIT(15)
+
+#define EXT_CONF		0x28
+#define EXT_CONF_DEFAULT	0x0a1f
+
+#define LTIMING			0x2c
+#define LTIMING_VALUE(sample_cnt, step_cnt) ({ \
+	typeof(sample_cnt) sample_cnt_ = (sample_cnt); \
+	typeof(step_cnt) step_cnt_ = (step_cnt); \
+	(((sample_cnt_) << 6) | (step_cnt_) | \
+	((sample_cnt_) << 12) | ((step_cnt_) << 9)); \
+})
+
+#define HS			0x30
+#define HS_CLR_VALUE		0x0000
+#define HS_DEFAULT_VALUE	0x0083
+#define HS_VALUE(sample_cnt, step_cnt) ({ \
+	typeof(sample_cnt) sample_cnt_ = (sample_cnt); \
+	typeof(step_cnt) step_cnt_ = (step_cnt); \
+	(HS_DEFAULT_VALUE | \
+	((sample_cnt_) << 12) | ((step_cnt_) << 8)); \
+})
+
+#define IO_CONFIG		0x34
+#define IO_CONFIG_PUSH_PULL	0x0000
+
+#define FIFO_ADDR_CLR		0x38
+#define FIFO_CLR		0x0003
+
+#define MCU_INTR		0x40
+#define MCU_INTR_EN		BIT(0)
+
+#define TRANSFER_LEN_AUX	0x44
+#define CLOCK_DIV		0x48
+#define CLOCK_DIV_DEFAULT	((INTER_CLK_DIV - 1) << 8 |\
+				(INTER_CLK_DIV - 1))
+
+#define SOFTRESET		0x50
+#define SOFT_RST		BIT(0)
+
+#define TRAFFIC			0x54
+#define TRAFFIC_DAA_EN		BIT(4)
+#define TRAFFIC_TBIT		BIT(7)
+#define TRAFFIC_HEAD_ONLY	BIT(9)
+#define TRAFFIC_SKIP_SLV_ADDR	BIT(10)
+#define TRAFFIC_HANDOFF		BIT(14)
+
+#define DEF_DA			0x68
+#define DEF_DAA_SLV_PARITY	BIT(8)
+
+#define SHAPE			0x6c
+#define SHAPE_TBIT_STALL	BIT(1)
+
+#define HFIFO_DATA		0x70
+#define NINTH_BIT_IGNORE	0
+#define NINTH_BIT_ACK		1
+#define NINTH_BIT_NACK		2
+#define NINTH_BIT_ODD_PAR	3
+#define INST_WITH_HS		BIT(10)
+#define UNLOCK_HFIFO		BIT(15)
+#define HFIFO_DATA_08		0x8208
+#define HFIFO_DATA_7E		(UNLOCK_HFIFO |\
+				(I3C_BROADCAST_ADDR << 1) |\
+				(NINTH_BIT_ACK << 8))
+#define HFIFO_HEAD		(UNLOCK_HFIFO | INST_WITH_HS |\
+				(NINTH_BIT_ODD_PAR << 8))
+
+#define FIFO_STAT		0xf4
+#define FIFO_DAA		0x0080
+
+#define	DMA_INT_FLAG		0x0
+#define	DMA_EN			0x08
+#define	DMA_RST			0x0c
+#define	DMA_CON			0x18
+#define	DMA_TX_MEM_ADDR		0x1c
+#define	DMA_RX_MEM_ADDR		0x20
+#define	DMA_TX_LEN		0x24
+#define	DMA_RX_LEN		0x28
+#define	DMA_TX_4G_MODE		0x54
+#define	DMA_RX_4G_MODE		0x58
+
+#define DMA_EN_START		BIT(0)
+#define DMA_RST_HARD		BIT(1)
+#define DMA_4G_MODE		BIT(0)
+#define DMA_CLR_FLAG		0x0000
+#define DMA_CON_TX		0x0000
+#define DMA_CON_RX		0x0001
+
+#define INTER_CLK_DIV		5
+#define MAX_SAMPLE_CNT		8
+#define MAX_STEP_CNT		64
+#define MAX_HS_STEP_CNT		8
+#define MAX_I3C_DEVS		16
+
+#define MTK_I3C_BCR		0x01
+#define MTK_I3C_DCR		0x02
+#define MTK_I3C_PID		0x03040506
+
+enum mtk_trans_op {
+	MASTER_WR = 1,
+	MASTER_RD,
+	MASTER_WRRD,
+	/* I3C private op */
+	MASTER_CCC_BROADCAST,
+	MASTER_DAA,
+};
+
+enum mtk_trans_mode {
+	I2C_TRANSFER = 1,
+	I3C_TRANSFER,
+	I3C_CCC,
+};
+
+struct daa_addr_ary {
+	u8 addr;
+	bool used;
+};
+
+struct daa_anchor {
+	struct daa_addr_ary daa_addr[MAX_I3C_DEVS];
+	int idx;
+};
+
+struct mtk_i3c_cmd {
+	enum mtk_trans_op op;
+	u8 ccc_id;
+	u16 addr;				/* device addr */
+
+	u16 tx_len;
+	const void *tx_buf;
+	u16 rx_len;
+	void *rx_buf;
+};
+
+struct mtk_i3c_xfer {
+	struct list_head node;
+	struct completion complete;		/* i3c transfer stop */
+
+	int ret;
+	u16 irq_stat;				/* interrupt status */
+	enum mtk_trans_mode mode;
+	bool ignore_restart_irq;
+	bool auto_restart;
+	unsigned int ncmds;
+	unsigned int trans_num;
+	u8 *msg_buf_w;
+	u8 *msg_buf_r;
+	dma_addr_t rpaddr;
+	dma_addr_t wpaddr;
+	struct mtk_i3c_cmd cmds[0];
+};
+
+struct mtk_i3c_master {
+	struct device *dev;
+	struct i3c_master_controller mas_ctrler;
+
+	/* set in i3c probe */
+	void __iomem *regs;			/* i3c base addr */
+	void __iomem *dma_regs;			/* apdma base address*/
+	struct clk *clk_main;			/* main clock for i3c bus */
+	struct clk *clk_dma;			/* DMA clock for i3c via DMA */
+	struct clk *clk_arb;			/* Arbitrator clock for i3c */
+	struct daa_anchor daa_anchor;
+
+	unsigned int clk_src_div;
+	u16 timing_reg[2];
+	u16 ltiming_reg[2];
+	u16 high_speed_reg[2];
+
+	struct {
+		struct list_head list;
+		struct mtk_i3c_xfer *cur;
+		spinlock_t lock;		/* Lock for stats update */
+	} xferqueue;
+};
+
+static u16 mtk_i3c_readw(struct mtk_i3c_master *master, u16 offset)
+{
+	return readw(master->regs + offset);
+}
+
+static void mtk_i3c_writew(struct mtk_i3c_master *master, u16 val, u16 offset)
+{
+	writew(val, master->regs + offset);
+}
+
+/**
+ * Calculate i3c port speed
+ *
+ * Hardware design:
+ * i3c_bus_freq = parent_clk / (clock_div * 2 * sample_cnt * step_cnt)
+ * clock_div: fixed in hardware, but may be various in different SoCs
+ *
+ * The calculation want to pick the highest bus frequency that is still
+ * less than or equal to master->speed_hz. The calculation try to get
+ * sample_cnt and step_cn
+ */
+static int mtk_i3c_calculate_speed(struct mtk_i3c_master *master,
+				   unsigned int clk_src,
+				   unsigned int target_speed,
+				   unsigned int *timing_step_cnt,
+				   unsigned int *timing_sample_cnt)
+{
+	unsigned int sample_cnt, step_cnt, max_step_cnt, opt_div;
+	unsigned int best_mul, cnt_mul, base_step_cnt;
+	unsigned int base_sample_cnt = MAX_SAMPLE_CNT;
+
+	if (target_speed > I3C_BUS_I2C_FM_PLUS_SCL_RATE)
+		max_step_cnt = MAX_HS_STEP_CNT;
+	else
+		max_step_cnt = MAX_STEP_CNT;
+
+	base_step_cnt = max_step_cnt;
+	/* Find the best combination */
+	opt_div = DIV_ROUND_UP(clk_src >> 1, target_speed);
+	best_mul = MAX_SAMPLE_CNT * max_step_cnt;
+
+	/* Search for the best pair (sample_cnt, step_cnt) with
+	 * 0 < sample_cnt < MAX_SAMPLE_CNT
+	 * 0 < step_cnt < max_step_cnt
+	 * sample_cnt * step_cnt >= opt_div
+	 * optimizing for sample_cnt * step_cnt being minimal
+	 */
+	for (sample_cnt = 1; sample_cnt <= MAX_SAMPLE_CNT; sample_cnt++) {
+		step_cnt = DIV_ROUND_UP(opt_div, sample_cnt);
+		cnt_mul = step_cnt * sample_cnt;
+		if (step_cnt > max_step_cnt)
+			continue;
+
+		if (cnt_mul < best_mul) {
+			best_mul = cnt_mul;
+			base_sample_cnt = sample_cnt;
+			base_step_cnt = step_cnt;
+			if (best_mul == opt_div)
+				break;
+		}
+	}
+
+	sample_cnt = base_sample_cnt;
+	step_cnt = base_step_cnt;
+
+	if ((clk_src / (2 * sample_cnt * step_cnt)) > target_speed) {
+		dev_err(master->dev, "Unsupport speed (%uhz)\n", target_speed);
+		return -EINVAL;
+	}
+
+	*timing_step_cnt = step_cnt - 1;
+	*timing_sample_cnt = sample_cnt - 1;
+
+	return 0;
+}
+
+static int mtk_i3c_set_speed(struct mtk_i3c_master *master,
+			     unsigned int parent_clk)
+{
+	struct i3c_bus *bus = i3c_master_get_bus(&master->mas_ctrler);
+	unsigned int clk_src, step_cnt, sample_cnt;
+	int ret;
+
+	clk_src = parent_clk / master->clk_src_div;
+
+	ret = mtk_i3c_calculate_speed(master, clk_src, bus->scl_rate.i2c,
+				      &step_cnt, &sample_cnt);
+	if (ret < 0)
+		return ret;
+
+	master->timing_reg[0] = TIMING_VALUE(sample_cnt, step_cnt);
+	/* Disable the high speed transaction */
+	master->high_speed_reg[0] = HS_CLR_VALUE;
+	master->ltiming_reg[0] = LTIMING_VALUE(sample_cnt, step_cnt);
+
+	ret = mtk_i3c_calculate_speed(master, clk_src, bus->scl_rate.i3c,
+				      &step_cnt, &sample_cnt);
+	if (ret < 0)
+		return ret;
+
+	master->timing_reg[1] = TIMING_VALUE(sample_cnt, step_cnt);
+	master->high_speed_reg[1] = HS_VALUE(sample_cnt, step_cnt);
+	master->ltiming_reg[1] = LTIMING_VALUE(sample_cnt, step_cnt);
+
+	return 0;
+}
+
+static inline u32 mtk_i3c_set_4g_mode(dma_addr_t addr)
+{
+	return (addr & BIT_ULL(32)) ? DMA_4G_MODE : DMA_CLR_FLAG;
+}
+
+static inline struct mtk_i3c_master *
+to_mtk_i3c_master(struct i3c_master_controller *master)
+{
+	return container_of(master, struct mtk_i3c_master, mas_ctrler);
+}
+
+static u8 mtk_i3c_master_get_free_addr(struct mtk_i3c_master *master)
+{
+	int slot = 0;
+
+	for (slot = 0; slot < MAX_I3C_DEVS; slot++) {
+		if (master->daa_anchor.daa_addr[slot].used)
+			continue;
+
+		master->daa_anchor.idx = slot;
+		master->daa_anchor.daa_addr[slot].used = true;
+		return master->daa_anchor.daa_addr[slot].addr;
+	}
+
+	return 0;
+}
+
+static int mtk_i3c_master_clock_enable(struct mtk_i3c_master *master)
+{
+	int ret;
+
+	ret = clk_prepare_enable(master->clk_dma);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(master->clk_main);
+	if (ret)
+		goto err_main;
+
+	ret = clk_prepare_enable(master->clk_arb);
+	if (ret)
+		goto err_arb;
+
+	return 0;
+
+err_arb:
+	clk_disable_unprepare(master->clk_main);
+err_main:
+	clk_disable_unprepare(master->clk_dma);
+
+	return ret;
+}
+
+static void mtk_i3c_master_clock_disable(struct mtk_i3c_master *master)
+{
+	clk_disable_unprepare(master->clk_arb);
+	clk_disable_unprepare(master->clk_main);
+	clk_disable_unprepare(master->clk_dma);
+}
+
+static inline void mtk_i3c_master_init_hw(struct mtk_i3c_master *master)
+{
+	struct mtk_i3c_xfer *mtk_xfer = master->xferqueue.cur;
+
+	if (!mtk_xfer->trans_num)
+		mtk_i3c_writew(master, SOFT_RST, SOFTRESET);
+
+	mtk_i3c_writew(master, IO_CONFIG_PUSH_PULL, IO_CONFIG);
+	mtk_i3c_writew(master, CLOCK_DIV_DEFAULT, CLOCK_DIV);
+
+	mtk_i3c_writew(master, DELAY_LEN_DEFAULT, DELAY_LEN);
+	mtk_i3c_writew(master, EXT_CONF_DEFAULT, EXT_CONF);
+	mtk_i3c_writew(master, FIFO_CLR, FIFO_ADDR_CLR);
+
+	/* DMA hard reset */
+	writel(DMA_RST_HARD, master->dma_regs + DMA_RST);
+	writel(DMA_CLR_FLAG, master->dma_regs + DMA_RST);
+}
+
+static int mtk_i3c_master_apdma_tx(struct mtk_i3c_master *master)
+{
+	struct mtk_i3c_xfer *xfer = master->xferqueue.cur;
+	struct mtk_i3c_cmd *cmd = &xfer->cmds[xfer->trans_num];
+	u32 reg_4g_mode;
+
+	xfer->msg_buf_w = kzalloc(cmd->tx_len, GFP_KERNEL);
+	if (!xfer->msg_buf_w)
+		return -ENOMEM;
+
+	memcpy(xfer->msg_buf_w, cmd->tx_buf, cmd->tx_len);
+
+	writel(DMA_CLR_FLAG, master->dma_regs + DMA_INT_FLAG);
+	writel(DMA_CON_TX, master->dma_regs + DMA_CON);
+
+	xfer->wpaddr = dma_map_single(master->dev, xfer->msg_buf_w,
+				      cmd->tx_len, DMA_TO_DEVICE);
+	if (dma_mapping_error(master->dev, xfer->wpaddr)) {
+		kfree(xfer->msg_buf_w);
+		return -ENOMEM;
+	}
+
+	reg_4g_mode = mtk_i3c_set_4g_mode(xfer->wpaddr);
+	writel(reg_4g_mode, master->dma_regs + DMA_TX_4G_MODE);
+	writel((u32)xfer->wpaddr, master->dma_regs + DMA_TX_MEM_ADDR);
+	writel(cmd->tx_len, master->dma_regs + DMA_TX_LEN);
+
+	return 0;
+}
+
+static int mtk_i3c_master_apdma_rx(struct mtk_i3c_master *master)
+{
+	struct mtk_i3c_xfer *xfer = master->xferqueue.cur;
+	struct mtk_i3c_cmd *cmd = &xfer->cmds[xfer->trans_num];
+	u32 reg_4g_mode;
+
+	xfer->msg_buf_r = kzalloc(cmd->rx_len, GFP_KERNEL);
+	if (!xfer->msg_buf_r)
+		return -ENOMEM;
+
+	writel(DMA_CLR_FLAG, master->dma_regs + DMA_INT_FLAG);
+	writel(DMA_CON_RX, master->dma_regs + DMA_CON);
+
+	xfer->rpaddr = dma_map_single(master->dev, xfer->msg_buf_r,
+				      cmd->rx_len, DMA_FROM_DEVICE);
+	if (dma_mapping_error(master->dev, xfer->rpaddr)) {
+		kfree(xfer->msg_buf_r);
+		return -ENOMEM;
+	}
+
+	reg_4g_mode = mtk_i3c_set_4g_mode(xfer->rpaddr);
+	writel(reg_4g_mode, master->dma_regs + DMA_RX_4G_MODE);
+	writel((u32)xfer->rpaddr, master->dma_regs + DMA_RX_MEM_ADDR);
+	writel(cmd->rx_len, master->dma_regs + DMA_RX_LEN);
+
+	return 0;
+}
+
+static void mtk_i3c_master_apdma_end(struct mtk_i3c_master *master)
+{
+	struct mtk_i3c_xfer *xfer = master->xferqueue.cur;
+	struct mtk_i3c_cmd *cmd = &xfer->cmds[xfer->trans_num];
+	u16 int_reg = 0;
+
+	if (xfer->auto_restart)
+		int_reg = INTR_RS_MULTI;
+
+	int_reg |= INTR_ALL;
+
+	/* Clear interrupt mask */
+	mtk_i3c_writew(master, ~int_reg, INTR_MASK);
+
+	if (cmd->op == MASTER_WR) {
+		dma_unmap_single(master->dev, xfer->wpaddr,
+				 cmd->tx_len, DMA_TO_DEVICE);
+		kfree(xfer->msg_buf_w);
+
+	} else if (cmd->op == MASTER_RD) {
+		dma_unmap_single(master->dev, xfer->rpaddr,
+				 cmd->rx_len, DMA_FROM_DEVICE);
+		memcpy(cmd->rx_buf, xfer->msg_buf_r, cmd->rx_len);
+		kfree(xfer->msg_buf_r);
+	} else if (cmd->op == MASTER_WRRD) {
+		dma_unmap_single(master->dev, xfer->wpaddr, cmd->tx_len,
+				 DMA_TO_DEVICE);
+		dma_unmap_single(master->dev, xfer->rpaddr, cmd->rx_len,
+				 DMA_FROM_DEVICE);
+		memcpy(cmd->rx_buf, xfer->msg_buf_r, cmd->rx_len);
+		kfree(xfer->msg_buf_w);
+		kfree(xfer->msg_buf_r);
+	}
+}
+
+static int mtk_i3c_master_start_transfer(struct mtk_i3c_master *master)
+{
+	struct mtk_i3c_xfer *xfer = master->xferqueue.cur;
+	struct mtk_i3c_cmd *cmd = &xfer->cmds[xfer->trans_num];
+	u16 addr_reg, control_reg, start_reg, tmp_rg_val;
+	u16 int_reg = 0, data_size;
+	int ret = 0;
+	u8 *ptr;
+
+	xfer->irq_stat = 0;
+
+	mtk_i3c_master_init_hw(master);
+
+	control_reg = CONTROL_ACKERR_DET_EN | CONTROL_CLK_EXT_EN | CONTROL_RS;
+	if (cmd->op != MASTER_DAA)
+		control_reg |= CONTROL_DMA_EN | CONTROL_DMAACK_EN |
+			       CONTROL_ASYNC_MODE;
+
+	if (cmd->op == MASTER_WRRD)
+		control_reg |= CONTROL_DIR_CHANGE;
+
+	mtk_i3c_writew(master, control_reg, CONTROL);
+
+	addr_reg = cmd->addr << 1;
+	if (cmd->op == MASTER_RD || cmd->op == MASTER_DAA)
+		addr_reg |= 0x1;
+
+	mtk_i3c_writew(master, addr_reg, SLAVE_ADDR);
+
+	if (xfer->auto_restart)
+		int_reg = INTR_RS_MULTI;
+
+	int_reg |= INTR_ALL;
+	/* Clear interrupt status */
+	mtk_i3c_writew(master, int_reg, INTR_STAT);
+	/* Enable interrupt */
+	mtk_i3c_writew(master, int_reg, INTR_MASK);
+
+	/* Set transfer and transaction len */
+	switch (cmd->op) {
+	case MASTER_WRRD:
+		mtk_i3c_writew(master, cmd->tx_len, TRANSFER_LEN);
+		mtk_i3c_writew(master, cmd->rx_len, TRANSFER_LEN_AUX);
+		mtk_i3c_writew(master, TRANSAC_LEN_WRRD, TRANSAC_LEN);
+		break;
+	case MASTER_WR:
+		mtk_i3c_writew(master, cmd->tx_len, TRANSFER_LEN);
+		mtk_i3c_writew(master, xfer->ncmds, TRANSAC_LEN);
+		break;
+	case MASTER_RD:
+		mtk_i3c_writew(master, cmd->rx_len, TRANSFER_LEN);
+		mtk_i3c_writew(master, xfer->ncmds, TRANSAC_LEN);
+		break;
+	case MASTER_CCC_BROADCAST:
+		mtk_i3c_writew(master, TRANS_ONE_LEN, TRANSFER_LEN);
+		mtk_i3c_writew(master, TRANS_ONE_LEN, TRANSAC_LEN);
+		break;
+	case MASTER_DAA:
+		mtk_i3c_writew(master, cmd->rx_len + cmd->tx_len, TRANSFER_LEN);
+		mtk_i3c_writew(master, MAX_I3C_DEVS, TRANSAC_LEN);
+		break;
+	}
+
+	mtk_i3c_writew(master, master->timing_reg[1], TIMING);
+	mtk_i3c_writew(master, master->ltiming_reg[1], LTIMING);
+	mtk_i3c_writew(master, master->high_speed_reg[1], HS);
+
+	if (xfer->mode == I2C_TRANSFER) {
+		mtk_i3c_writew(master, master->timing_reg[0], TIMING);
+		mtk_i3c_writew(master, master->ltiming_reg[0], LTIMING);
+		mtk_i3c_writew(master, master->high_speed_reg[0], HS);
+		mtk_i3c_writew(master, 0, TRAFFIC);
+		mtk_i3c_writew(master, 0, SHAPE);
+	} else if ((xfer->mode == I3C_TRANSFER) && (!xfer->trans_num)) {
+		mtk_i3c_writew(master, HFIFO_DATA_7E, HFIFO_DATA);
+		mtk_i3c_writew(master, TRAFFIC_HANDOFF | TRAFFIC_TBIT, TRAFFIC);
+		mtk_i3c_writew(master, SHAPE_TBIT_STALL, SHAPE);
+	} else if (xfer->mode == I3C_CCC) {
+		tmp_rg_val = TRAFFIC_HANDOFF | TRAFFIC_TBIT;
+		mtk_i3c_writew(master, HFIFO_DATA_7E, HFIFO_DATA);
+		mtk_i3c_writew(master, HFIFO_HEAD | cmd->ccc_id, HFIFO_DATA);
+
+		if (cmd->op == MASTER_DAA) {
+			addr_reg = mtk_i3c_master_get_free_addr(master);
+			addr_reg |= DEF_DAA_SLV_PARITY;
+			tmp_rg_val |= TRAFFIC_DAA_EN;
+			mtk_i3c_writew(master, addr_reg, DEF_DA);
+		} else if (cmd->op == MASTER_CCC_BROADCAST) {
+			tmp_rg_val |= TRAFFIC_HEAD_ONLY | TRAFFIC_SKIP_SLV_ADDR;
+			data_size = cmd->tx_len;
+			ptr = (u8 *)cmd->tx_buf;
+			while (data_size--)
+				mtk_i3c_writew(master, HFIFO_HEAD | *ptr++,
+					       HFIFO_DATA);
+		}
+
+		mtk_i3c_writew(master, tmp_rg_val, TRAFFIC);
+		mtk_i3c_writew(master, SHAPE_TBIT_STALL, SHAPE);
+	}
+
+	/* Prepare buffer data to start transfer */
+	if (cmd->op == MASTER_RD) {
+		ret = mtk_i3c_master_apdma_rx(master);
+	} else if (cmd->op == MASTER_WR) {
+		ret = mtk_i3c_master_apdma_tx(master);
+	} else if (cmd->op == MASTER_WRRD) {
+		ret = mtk_i3c_master_apdma_rx(master);
+		ret |= mtk_i3c_master_apdma_tx(master);
+	}
+
+	if (ret)
+		return ret;
+
+	if (cmd->op != MASTER_DAA)
+		writel(DMA_EN_START, master->dma_regs + DMA_EN);
+
+	start_reg = START_EN;
+	if (xfer->auto_restart) {
+		start_reg |= START_MUL_TRIG;
+		if ((xfer->ncmds - xfer->trans_num) >= 2 ||
+		    cmd->op == MASTER_DAA)
+			start_reg |= START_MUL_CNFG;
+	}
+
+	mtk_i3c_writew(master, MCU_INTR_EN, MCU_INTR);
+	mtk_i3c_writew(master, start_reg, START);
+
+	return 0;
+}
+
+static struct mtk_i3c_xfer *
+mtk_i3c_master_alloc_xfer(struct mtk_i3c_master *master, unsigned int ncmds)
+{
+	struct mtk_i3c_xfer *xfer;
+
+	xfer = kzalloc(struct_size(xfer, cmds, ncmds), GFP_KERNEL);
+	if (!xfer)
+		return NULL;
+
+	INIT_LIST_HEAD(&xfer->node);
+	xfer->ncmds = ncmds;
+	xfer->ret = -ETIMEDOUT;
+
+	return xfer;
+}
+
+static void mtk_i3c_master_free_xfer(struct mtk_i3c_xfer *xfer)
+{
+	kfree(xfer);
+}
+
+static void mtk_i3c_master_start_xfer_locked(struct mtk_i3c_master *master)
+{
+	struct mtk_i3c_xfer *xfer = master->xferqueue.cur;
+	unsigned int ret = 0;
+
+	if (!xfer)
+		return;
+
+	xfer->trans_num = 0;
+	ret = mtk_i3c_master_start_transfer(master);
+	xfer->ret = ret;
+}
+
+static void mtk_i3c_master_end_xfer_locked(struct mtk_i3c_master *master)
+{
+	struct mtk_i3c_xfer *xfer = master->xferqueue.cur;
+	struct mtk_i3c_cmd *cmd = &xfer->cmds[xfer->trans_num];
+	int slot = 0;
+
+	if (!xfer)
+		return;
+
+	if (xfer->irq_stat & (INTR_ACKERR | INTR_MAS_ERR)) {
+		if (cmd->op == MASTER_DAA) {
+			slot = master->daa_anchor.idx;
+			master->daa_anchor.daa_addr[slot].used = false;
+		}
+
+		dev_err(master->dev, "Addr: %x, device ACK error\n", cmd->addr);
+		xfer->ret = -ENXIO;
+	}
+
+	mtk_i3c_master_apdma_end(master);
+
+	complete(&xfer->complete);
+	xfer = list_first_entry_or_null(&master->xferqueue.list,
+					struct mtk_i3c_xfer, node);
+	if (xfer)
+		list_del_init(&xfer->node);
+
+	master->xferqueue.cur = xfer;
+	mtk_i3c_master_start_xfer_locked(master);
+}
+
+static irqreturn_t mtk_i3c_master_irq(int irqno, void *dev_id)
+{
+	struct mtk_i3c_master *master = dev_id;
+	struct mtk_i3c_xfer *xfer = master->xferqueue.cur;
+	struct mtk_i3c_cmd *cmd = &xfer->cmds[xfer->trans_num];
+	u16 restart_flag = 0, intr_stat, fifo_stat;
+	unsigned long flags;
+	int ret = 0;
+	u8 addr;
+
+	if (cmd->op == MASTER_DAA) {
+		fifo_stat = mtk_i3c_readw(master, FIFO_STAT);
+		intr_stat = mtk_i3c_readw(master, INTR_STAT);
+
+		if (!(fifo_stat & FIFO_DAA) && !(intr_stat & INTR_TRANSAC_COMP))
+			return IRQ_NONE;
+
+		mtk_i3c_writew(master, FIFO_CLR, FIFO_ADDR_CLR);
+	}
+
+	if (xfer->auto_restart)
+		restart_flag = INTR_RS_MULTI;
+
+	intr_stat = mtk_i3c_readw(master, INTR_STAT);
+	mtk_i3c_writew(master, intr_stat, INTR_STAT);
+
+	spin_lock_irqsave(&master->xferqueue.lock, flags);
+	/*
+	 * when occurs ack error, i3c controller generate two interrupts
+	 * first is the ack error interrupt, then the complete interrupt
+	 * i3c->irq_stat need keep the two interrupt value.
+	 */
+	xfer->irq_stat |= intr_stat;
+
+	if (xfer->irq_stat & INTR_TRANSAC_COMP) {
+		mtk_i3c_master_end_xfer_locked(master);
+		goto exit_irq;
+	}
+
+	if (xfer->irq_stat & restart_flag) {
+		xfer->irq_stat = 0;
+
+		if (xfer->ignore_restart_irq) {
+			xfer->ignore_restart_irq = false;
+
+			mtk_i3c_writew(master, START_MUL_CNFG | START_MUL_TRIG |
+					       START_EN, START);
+		} else if (cmd->op == MASTER_DAA) {
+			addr = mtk_i3c_master_get_free_addr(master);
+			mtk_i3c_writew(master, addr, DEF_DA);
+			mtk_i3c_writew(master, START_MUL_CNFG | START_MUL_TRIG |
+					       START_EN, START);
+		} else {
+			mtk_i3c_master_apdma_end(master);
+
+			xfer->trans_num++;
+			ret = mtk_i3c_master_start_transfer(master);
+			xfer->ret = ret;
+		}
+	}
+
+exit_irq:
+	spin_unlock_irqrestore(&master->xferqueue.lock, flags);
+	return IRQ_HANDLED;
+}
+
+static void mtk_i3c_master_queue_xfer(struct mtk_i3c_master *master,
+				      struct mtk_i3c_xfer *xfer)
+{
+	unsigned long flags;
+
+	init_completion(&xfer->complete);
+	spin_lock_irqsave(&master->xferqueue.lock, flags);
+	if (master->xferqueue.cur) {
+		list_add_tail(&xfer->node, &master->xferqueue.list);
+	} else {
+		master->xferqueue.cur = xfer;
+		mtk_i3c_master_start_xfer_locked(master);
+	}
+	spin_unlock_irqrestore(&master->xferqueue.lock, flags);
+}
+
+static void mtk_i3c_master_unqueue_xfer(struct mtk_i3c_master *master,
+					struct mtk_i3c_xfer *xfer)
+{
+	struct mtk_i3c_cmd *ccmd = &xfer->cmds[xfer->trans_num];
+	unsigned long flags;
+
+	dev_err(master->dev, "addr: %x, transfer timeout\n", ccmd->addr);
+	xfer->ret = -ETIMEDOUT;
+
+	spin_lock_irqsave(&master->xferqueue.lock, flags);
+	mtk_i3c_master_apdma_end(master);
+	if (master->xferqueue.cur == xfer)
+		master->xferqueue.cur = NULL;
+	else
+		list_del_init(&xfer->node);
+	spin_unlock_irqrestore(&master->xferqueue.lock, flags);
+}
+
+static bool mtk_i3c_master_supports_ccc_cmd(struct i3c_master_controller *m,
+					    const struct i3c_ccc_cmd *cmd)
+{
+	if (cmd->ndests > 1)
+		return false;
+
+	switch (cmd->id) {
+	case I3C_CCC_ENEC(true):
+	case I3C_CCC_ENEC(false):
+	case I3C_CCC_DISEC(true):
+	case I3C_CCC_DISEC(false):
+	case I3C_CCC_ENTAS(0, true):
+	case I3C_CCC_ENTAS(0, false):
+	case I3C_CCC_RSTDAA(true):
+	case I3C_CCC_RSTDAA(false):
+	/* FALL THROUGH */
+	case I3C_CCC_ENTDAA:
+	case I3C_CCC_SETMWL(true):
+	case I3C_CCC_SETMWL(false):
+	case I3C_CCC_SETMRL(true):
+	case I3C_CCC_SETMRL(false):
+	/* FALL THROUGH */
+	case I3C_CCC_DEFSLVS:
+	case I3C_CCC_ENTHDR(0):
+	case I3C_CCC_SETDASA:
+	case I3C_CCC_SETNEWDA:
+	case I3C_CCC_GETMWL:
+	case I3C_CCC_GETMRL:
+	case I3C_CCC_GETPID:
+	case I3C_CCC_GETBCR:
+	case I3C_CCC_GETDCR:
+	case I3C_CCC_GETSTATUS:
+	case I3C_CCC_GETACCMST:
+	case I3C_CCC_GETMXDS:
+	case I3C_CCC_GETHDRCAP:
+		return true;
+	default:
+		break;
+	}
+
+	return false;
+}
+
+static int mtk_i3c_master_send_ccc_cmd(struct i3c_master_controller *m,
+				       struct i3c_ccc_cmd *cmd)
+{
+	struct mtk_i3c_master *master = to_mtk_i3c_master(m);
+	struct mtk_i3c_xfer *mtk_xfer;
+	struct mtk_i3c_cmd *ccmd;
+	int ret = 0;
+
+	mtk_xfer = mtk_i3c_master_alloc_xfer(master, 1);
+	if (!mtk_xfer)
+		return -ENOMEM;
+
+	mtk_xfer->mode = I3C_CCC;
+	mtk_xfer->ignore_restart_irq = false;
+	mtk_xfer->auto_restart = false;
+
+	ccmd = mtk_xfer->cmds;
+	ccmd->addr = cmd->dests[0].addr;
+	ccmd->ccc_id = cmd->id;
+
+	if (cmd->rnw) {
+		ccmd->op = MASTER_RD;
+		ccmd->rx_len = cmd->dests[0].payload.len;
+		ccmd->rx_buf = cmd->dests[0].payload.data;
+	} else {
+		ccmd->op = MASTER_WR;
+		ccmd->tx_len = cmd->dests[0].payload.len;
+		ccmd->tx_buf = cmd->dests[0].payload.data;
+	}
+
+	if (ccmd->ccc_id < I3C_CCC_DIRECT) {
+		ccmd->op = MASTER_CCC_BROADCAST;
+		if (ccmd->ccc_id == I3C_CCC_ENTDAA) {
+			ccmd->op = MASTER_DAA;
+			ccmd->rx_len = 8;
+			ccmd->tx_len = 1;
+			mtk_xfer->ignore_restart_irq = true;
+			mtk_xfer->auto_restart = true;
+		}
+	}
+
+	mtk_i3c_master_queue_xfer(master, mtk_xfer);
+	if (!wait_for_completion_timeout(&mtk_xfer->complete,
+					 msecs_to_jiffies(2000)))
+		mtk_i3c_master_unqueue_xfer(master, mtk_xfer);
+
+	ret = mtk_xfer->ret;
+
+	mtk_i3c_master_free_xfer(mtk_xfer);
+	if (ret == -ENXIO)
+		return I3C_ERROR_M2;
+
+	return ret;
+}
+
+static int mtk_i3c_master_priv_xfers(struct i3c_dev_desc *dev,
+				     struct i3c_priv_xfer *xfers,
+				     int nxfers)
+{
+	struct i3c_master_controller *m = i3c_dev_get_master(dev);
+	struct mtk_i3c_master *master = to_mtk_i3c_master(m);
+	struct mtk_i3c_xfer *mtk_xfer;
+	int i, ret = 0;
+
+	if (!nxfers)
+		return 0;
+
+	mtk_xfer = mtk_i3c_master_alloc_xfer(master, nxfers);
+	if (!mtk_xfer)
+		return -ENOMEM;
+
+	mtk_xfer->mode = I3C_TRANSFER;
+
+	if (nxfers == 2 && !xfers[0].rnw && xfers[1].rnw)
+		mtk_xfer->auto_restart = false;
+	else
+		mtk_xfer->auto_restart = true;
+
+	if (mtk_xfer->auto_restart && nxfers >= 2)
+		mtk_xfer->ignore_restart_irq = true;
+	else
+		mtk_xfer->ignore_restart_irq = false;
+
+	for (i = 0; i < nxfers; i++) {
+		struct mtk_i3c_cmd *ccmd = &mtk_xfer->cmds[i];
+
+		ccmd->addr = dev->info.dyn_addr;
+		ccmd->ccc_id = 0;
+
+		if (!mtk_xfer->auto_restart) {
+			/* combined two messages into one transaction */
+			ccmd->op = MASTER_WRRD;
+			ccmd->tx_len = xfers[i].len;
+			ccmd->rx_len = xfers[i + 1].len;
+			ccmd->tx_buf = xfers->data.out;
+			ccmd->rx_buf = xfers[i + 1].data.in;
+			break;
+		}
+
+		if (xfers[i].rnw) {
+			ccmd->op = MASTER_RD;
+			ccmd->rx_len = xfers->len;
+			ccmd->rx_buf = xfers->data.in;
+		} else {
+			ccmd->op = MASTER_WR;
+			ccmd->tx_len = xfers->len;
+			ccmd->tx_buf = xfers->data.out;
+		}
+	}
+
+	mtk_i3c_master_queue_xfer(master, mtk_xfer);
+	if (!wait_for_completion_timeout(&mtk_xfer->complete,
+					 msecs_to_jiffies(2000)))
+		mtk_i3c_master_unqueue_xfer(master, mtk_xfer);
+
+	ret = mtk_xfer->ret;
+
+	mtk_i3c_master_free_xfer(mtk_xfer);
+	return ret;
+}
+
+static int mtk_i3c_master_i2c_xfers(struct i2c_dev_desc *dev,
+				    const struct i2c_msg *xfers,
+				    int nxfers)
+{
+	struct i3c_master_controller *m = i2c_dev_get_master(dev);
+	struct mtk_i3c_master *master = to_mtk_i3c_master(m);
+	struct mtk_i3c_xfer *mtk_xfer;
+	int i, ret = 0;
+
+	mtk_xfer = mtk_i3c_master_alloc_xfer(master, nxfers);
+	if (!mtk_xfer)
+		return -ENOMEM;
+
+	mtk_xfer->mode = I2C_TRANSFER;
+
+	if (!(xfers[0].flags & I2C_M_RD) && (xfers[1].flags & I2C_M_RD) &&
+	    xfers[0].addr == xfers[1].addr && nxfers == 2)
+		mtk_xfer->auto_restart = false;
+	else
+		mtk_xfer->auto_restart = true;
+
+	mtk_xfer->ignore_restart_irq = false;
+
+	for (i = 0; i < nxfers; i++) {
+		struct mtk_i3c_cmd *ccmd = &mtk_xfer->cmds[i];
+
+		ccmd->addr = xfers->addr;
+		ccmd->ccc_id = 0;
+
+		if (!mtk_xfer->auto_restart) {
+			/* combined two messages into one transaction */
+			ccmd->op = MASTER_WRRD;
+			ccmd->tx_len = xfers[i].len;
+			ccmd->rx_len = xfers[i + 1].len;
+			ccmd->tx_buf = xfers[i].buf;
+			ccmd->rx_buf = xfers[i + 1].buf;
+			break;
+		}
+
+		if (xfers[i].flags & I2C_M_RD) {
+			ccmd->op = MASTER_RD;
+			ccmd->rx_len = xfers[i].len;
+			ccmd->rx_buf = xfers[i].buf;
+		} else {
+			ccmd->op = MASTER_WR;
+			ccmd->tx_len = xfers[i].len;
+			ccmd->tx_buf = xfers[i].buf;
+		}
+	}
+
+	mtk_i3c_master_queue_xfer(master, mtk_xfer);
+	if (!wait_for_completion_timeout(&mtk_xfer->complete,
+					 msecs_to_jiffies(2000)))
+		mtk_i3c_master_unqueue_xfer(master, mtk_xfer);
+
+	ret = mtk_xfer->ret;
+
+	mtk_i3c_master_free_xfer(mtk_xfer);
+	return ret;
+}
+
+static u32 mtk_i3c_master_i2c_funcs(struct i3c_master_controller *m)
+{
+	return I2C_FUNC_SMBUS_EMUL | I2C_FUNC_I2C;
+}
+
+static int mtk_i3c_master_do_daa(struct i3c_master_controller *m)
+{
+	struct mtk_i3c_master *master = to_mtk_i3c_master(m);
+	int ret = 0, slot;
+	u8 last_addr = 0;
+
+	for (slot = 0; slot < MAX_I3C_DEVS; slot++) {
+		if (master->daa_anchor.daa_addr[slot].used)
+			continue;
+
+		ret = i3c_master_get_free_addr(m, last_addr + 1);
+		if (ret < 0)
+			return -ENOSPC;
+
+		last_addr = ret;
+		master->daa_anchor.daa_addr[slot].addr = last_addr;
+	}
+
+	ret = i3c_master_entdaa_locked(&master->mas_ctrler);
+	if (ret && ret != I3C_ERROR_M2)
+		return ret;
+
+	/*
+	 * Clear all retaining registers filled during DAA. We already
+	 * have the addressed assigned to them in the addrs array.
+	 */
+	for (slot = 1; slot < MAX_I3C_DEVS; slot++) {
+		if (master->daa_anchor.daa_addr[slot].used) {
+			last_addr = master->daa_anchor.daa_addr[slot].addr;
+			i3c_master_add_i3c_dev_locked(m, last_addr);
+		}
+	}
+
+	/*
+	 * Clear slots that ended up not being used. Can be caused by I3C
+	 * device creation failure or when the I3C device was already known
+	 * by the system but with a different address (in this case the device
+	 * already has a slot and does not need a new one).
+	 */
+	i3c_master_defslvs_locked(&master->mas_ctrler);
+
+	/* Unmask Hot-Join and Mastership request interrupts. */
+	i3c_master_enec_locked(m, I3C_BROADCAST_ADDR, I3C_CCC_EVENT_HJ |
+				  I3C_CCC_EVENT_MR);
+
+	return 0;
+}
+
+static int mtk_i3c_master_bus_init(struct i3c_master_controller *m)
+{
+	struct mtk_i3c_master *master = to_mtk_i3c_master(m);
+	struct i3c_device_info info = { };
+	unsigned long source_clk_rate;
+	int ret;
+
+	source_clk_rate = clk_get_rate(master->clk_main) / INTER_CLK_DIV;
+
+	ret = mtk_i3c_set_speed(master, source_clk_rate);
+	if (ret) {
+		dev_err(master->dev, "Failed to set the bus speed.\n");
+		return -EINVAL;
+	}
+
+	/* Get an address for the master. */
+	ret = i3c_master_get_free_addr(m, 0);
+	if (ret < 0)
+		return ret;
+
+	master->daa_anchor.daa_addr[0].addr = (u8)ret;
+	master->daa_anchor.daa_addr[0].used = true;
+	master->daa_anchor.idx = 0;
+
+	/*
+	 * In I3C protocol host controller is also with device role,
+	 * so the driver should provide dcr, bcr, and pid info
+	 * of host controller itself
+	 */
+	memset(&info, 0, sizeof(info));
+	info.dyn_addr = ret;
+	info.dcr = MTK_I3C_DCR;
+	info.bcr = MTK_I3C_BCR;
+	info.pid = MTK_I3C_PID;
+
+	if (info.bcr & I3C_BCR_HDR_CAP)
+		info.hdr_cap = I3C_CCC_HDR_MODE(I3C_HDR_DDR);
+
+	return i3c_master_set_info(&master->mas_ctrler, &info);
+}
+
+static const struct i3c_master_controller_ops mtk_i3c_master_ops = {
+	.bus_init = mtk_i3c_master_bus_init,
+	.do_daa = mtk_i3c_master_do_daa,
+	.supports_ccc_cmd = mtk_i3c_master_supports_ccc_cmd,
+	.send_ccc_cmd = mtk_i3c_master_send_ccc_cmd,
+	.priv_xfers = mtk_i3c_master_priv_xfers,
+	.i2c_xfers = mtk_i3c_master_i2c_xfers,
+	.i2c_funcs = mtk_i3c_master_i2c_funcs,
+};
+
+static int mtk_i3c_master_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtk_i3c_master *master;
+	struct resource *res;
+	int ret, irqnr;
+
+	master = devm_kzalloc(dev, sizeof(*master), GFP_KERNEL);
+	if (!master)
+		return -ENOMEM;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "main");
+	master->regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(master->regs))
+		return PTR_ERR(master->regs);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dma");
+	master->dma_regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(master->dma_regs))
+		return PTR_ERR(master->dma_regs);
+
+	irqnr = platform_get_irq(pdev, 0);
+	if (irqnr < 0)
+		return irqnr;
+
+	ret = devm_request_irq(dev, irqnr, mtk_i3c_master_irq,
+			       IRQF_TRIGGER_NONE, DRV_NAME, master);
+	if (ret < 0) {
+		dev_err(dev, "Request I3C IRQ %d fail\n", irqnr);
+		return ret;
+	}
+
+	ret = of_property_read_u32(pdev->dev.of_node, "clock-div",
+				   &master->clk_src_div);
+	if (ret < 0)
+		return -EINVAL;
+
+	spin_lock_init(&master->xferqueue.lock);
+	INIT_LIST_HEAD(&master->xferqueue.list);
+
+	if (dma_set_mask(dev, DMA_BIT_MASK(33))) {
+		dev_err(dev, "dma_set_mask return error.\n");
+		return -EINVAL;
+	}
+
+	master->clk_main = devm_clk_get(dev, "main");
+	if (IS_ERR(master->clk_main)) {
+		dev_err(dev, "cannot get main clock\n");
+		return PTR_ERR(master->clk_main);
+	}
+	master->clk_dma = devm_clk_get(dev, "dma");
+	if (IS_ERR(master->clk_dma)) {
+		dev_err(dev, "cannot get dma clock\n");
+		return PTR_ERR(master->clk_dma);
+	}
+
+	master->clk_arb = devm_clk_get_optional(dev, "arb");
+	if (IS_ERR(master->clk_arb))
+		return PTR_ERR(master->clk_arb);
+
+	ret = mtk_i3c_master_clock_enable(master);
+	if (ret) {
+		dev_err(dev, "clock enable failed!\n");
+		return ret;
+	}
+
+	master->dev = dev;
+	platform_set_drvdata(pdev, master);
+
+	ret = i3c_master_register(&master->mas_ctrler, dev,
+				  &mtk_i3c_master_ops, false);
+	if (ret) {
+		dev_err(dev, "Failed to add i3c bus to i3c core\n");
+		mtk_i3c_master_clock_disable(master);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int mtk_i3c_master_remove(struct platform_device *pdev)
+{
+	struct mtk_i3c_master *master = platform_get_drvdata(pdev);
+
+	i3c_master_unregister(&master->mas_ctrler);
+	mtk_i3c_master_clock_disable(master);
+
+	return 0;
+}
+
+static const struct of_device_id mtk_i3c_master_of_ids[] = {
+	{ .compatible = "mediatek,i3c-master" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, mtk_i3c_master_of_ids);
+
+static struct platform_driver mtk_i3c_master_driver = {
+	.probe = mtk_i3c_master_probe,
+	.remove = mtk_i3c_master_remove,
+	.driver = {
+		.name = DRV_NAME,
+		.of_match_table = mtk_i3c_master_of_ids,
+	},
+};
+module_platform_driver(mtk_i3c_master_driver);
+
+MODULE_AUTHOR("Qii Wang <qii.wang@mediatek.com>");
+MODULE_DESCRIPTION("MediaTek I3C master driver");
+MODULE_LICENSE("GPL v2");
+MODULE_ALIAS("platform:mtk-i3c-master");
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
