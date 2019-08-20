Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5437F95520
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nftTq0BmJXkAvnG4e/WBeHQJazH7PYTfa9JLD9hIAYc=; b=Z5jSRd8Dh6EK+Y
	aSpSnNvZTkX4e7p08fvSjvNISdI+UKyTVfGwGvhlJyaqcN8i86Mk93Dqu8GrVgTNEgYITEn0UGW6+
	KLljt6hZh1cdH4XXw6U9uduo8Unw2yBGernBHzgpkWnI4jFZiyXtZDkvza4AUZU9cqs9Zt0UP/OA4
	AKT1Wj4ZAuvWS1uxFDeKyi90LpM9Up6qo2Dwe86almoo19vJInJ8sYGOCgWLwkZoDJal6g5Ssdhiq
	zq03EeX60bTfNWQ96rKBD2Lslztu22DHvlL/9UU7j0P5EzwBmN7QAFT1KRgBLQ7+fCTp1IHndQ9Fy
	j/jfsgX/Q3iJGb0tevQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzukw-0003mg-L4; Tue, 20 Aug 2019 03:24:22 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzujt-00032B-1c
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id CB86F353C;
 Mon, 19 Aug 2019 23:23:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=NsXxRbZj0+Wiy
 mBbludhcVU5ZXACjk2jJXX+rzhXc40=; b=W5YIMMKOZIw1pl9T6pHMZJqIC3K6u
 sAxHRXf2cgKdj9WYTShXPt8XJcWnOLLi3rBqPmc4nHb0kVKorDC1gjH0ecMyck5n
 e5N5H+5hhHrYXYzgU4Yr/ONo6sf8LBlGherUq27+/09LZ+NUrATkb6ujBqWwnBQF
 t379jNwEYBI3OxHYfTPKKF9ZjHfPDpcEOsqQtYJ/PKQ8/VBcHT0QfxnRCeKGLz5K
 K3RVLCFY/RkwbgKmmooQDvNIgEaBknV0+lNg3quOXZm+BpvkAeZBVYvq4dy2ShF1
 QGGFCS9kTtpgzqcu35uFPOH+YTdDazkwGvbaQVjAGmOe+M2DVhhfVxU3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=NsXxRbZj0+WiymBbludhcVU5ZXACjk2jJXX+rzhXc40=; b=YZRrbPW/
 5ItNRqTLtEnE2XE1hAuJhhxn+kaV19gdbbCI/Mj/Lmqg1tQVUXYAKFRSG1jbKwSq
 fnsESvNv556ozCLj+YsDjHl5WzaKPpoqcPweMrQk4szpZUQkJmYpZPrTboWAM3fj
 1cJZzPvlyKapqeuattffJDGcsDaaz7CWPfpHDT5o5Cl8DG0sWywysGKnqfoN4Y7f
 4LA459RPp7xriEhf1d6yTwtBwog64hkw/9ijKt1n9wr8xWsUzY+/yY9irs93DKef
 6S/zWwo7ph1uZSMegQrlkY5VgcMP1EmCnhk0El6/+Y0GoJ6T4eCe0codi7xkaCbr
 82a4JxAGJDa5eA==
X-ME-Sender: <xms:omdbXWA-hqGzF-wrhUpP0KM-YFyzT1DEC0hdyHYSEKjBeUhROrpn7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:omdbXeKJUnCnxbvCycZkxSUFBSqdH0QSG_4dKTTqbHZqWXVLoGK1Jg>
 <xmx:omdbXQ9TluI76d4l2UU9WJm35sWCWvipkICfKeDpQ7CK4xo6rnKy_A>
 <xmx:omdbXc-jnO4m1yrpRgbAJBVfFXrNHfebEK2MQgd3Y8-gDZGl9T202Q>
 <xmx:omdbXXx6VUaJtMrkB0O1MBZvcYt9jOM1TOkqmVJ7bktmcC9WYwudZg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id AF8BC80059;
 Mon, 19 Aug 2019 23:23:13 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 04/10] mailbox: sunxi-msgbox: Add a new mailbox driver
Date: Mon, 19 Aug 2019 22:23:05 -0500
Message-Id: <20190820032311.6506-5-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202317_224224_3735DDEF 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner sun8i, sun9i, and sun50i SoCs contain a hardware message box
used for communication between the ARM CPUs and the ARISC management
coprocessor. The hardware contains 8 unidirectional 4-message FIFOs.

Add a driver for it, so it can be used for SCPI or other communication
protocols.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/mailbox/Kconfig        |  10 +
 drivers/mailbox/Makefile       |   2 +
 drivers/mailbox/sunxi-msgbox.c | 323 +++++++++++++++++++++++++++++++++
 3 files changed, 335 insertions(+)
 create mode 100644 drivers/mailbox/sunxi-msgbox.c

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index ab4eb750bbdd..57d12936175e 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -227,4 +227,14 @@ config ZYNQMP_IPI_MBOX
 	  message to the IPI buffer and will access the IPI control
 	  registers to kick the other processor or enquire status.
 
+config SUNXI_MSGBOX
+	tristate "Allwinner sunxi Message Box"
+	depends on ARCH_SUNXI || COMPILE_TEST
+	default ARCH_SUNXI
+	help
+	  Mailbox implementation for the hardware message box present in
+	  Allwinner sun8i, sun9i, and sun50i SoCs. The hardware message box is
+	  used for communication between the application CPUs and the power
+	  management coprocessor.
+
 endif
diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
index c22fad6f696b..bec2d50b0976 100644
--- a/drivers/mailbox/Makefile
+++ b/drivers/mailbox/Makefile
@@ -48,3 +48,5 @@ obj-$(CONFIG_STM32_IPCC) 	+= stm32-ipcc.o
 obj-$(CONFIG_MTK_CMDQ_MBOX)	+= mtk-cmdq-mailbox.o
 
 obj-$(CONFIG_ZYNQMP_IPI_MBOX)	+= zynqmp-ipi-mailbox.o
+
+obj-$(CONFIG_SUNXI_MSGBOX)	+= sunxi-msgbox.o
diff --git a/drivers/mailbox/sunxi-msgbox.c b/drivers/mailbox/sunxi-msgbox.c
new file mode 100644
index 000000000000..29a5101a5390
--- /dev/null
+++ b/drivers/mailbox/sunxi-msgbox.c
@@ -0,0 +1,323 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2017-2019 Samuel Holland <samuel@sholland.org>
+
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/mailbox_controller.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+#include <linux/spinlock.h>
+
+#define NUM_CHANS		8
+
+#define CTRL_REG(n)		(0x0000 + 0x4 * ((n) / 4))
+#define CTRL_RX(n)		BIT(0 + 8 * ((n) % 4))
+#define CTRL_TX(n)		BIT(4 + 8 * ((n) % 4))
+
+#define REMOTE_IRQ_EN_REG	0x0040
+#define REMOTE_IRQ_STAT_REG	0x0050
+#define LOCAL_IRQ_EN_REG	0x0060
+#define LOCAL_IRQ_STAT_REG	0x0070
+
+#define RX_IRQ(n)		BIT(0 + 2 * (n))
+#define RX_IRQ_MASK		0x5555
+#define TX_IRQ(n)		BIT(1 + 2 * (n))
+#define TX_IRQ_MASK		0xaaaa
+
+#define FIFO_STAT_REG(n)	(0x0100 + 0x4 * (n))
+#define FIFO_STAT_MASK		GENMASK(0, 0)
+
+#define MSG_STAT_REG(n)		(0x0140 + 0x4 * (n))
+#define MSG_STAT_MASK		GENMASK(2, 0)
+
+#define MSG_DATA_REG(n)		(0x0180 + 0x4 * (n))
+
+#define mbox_dbg(mbox, ...)	dev_dbg((mbox)->controller.dev, __VA_ARGS__)
+
+struct sunxi_msgbox {
+	struct mbox_controller controller;
+	struct clk *clk;
+	spinlock_t lock;
+	void __iomem *regs;
+};
+
+static bool sunxi_msgbox_last_tx_done(struct mbox_chan *chan);
+static bool sunxi_msgbox_peek_data(struct mbox_chan *chan);
+
+static inline int channel_number(struct mbox_chan *chan)
+{
+	return chan - chan->mbox->chans;
+}
+
+static inline struct sunxi_msgbox *channel_to_msgbox(struct mbox_chan *chan)
+{
+	return chan->con_priv;
+}
+
+static irqreturn_t sunxi_msgbox_irq(int irq, void *dev_id)
+{
+	struct sunxi_msgbox *mbox = dev_id;
+	uint32_t status;
+	int n;
+
+	/* Only examine channels that are currently enabled. */
+	status = readl(mbox->regs + LOCAL_IRQ_EN_REG) &
+		 readl(mbox->regs + LOCAL_IRQ_STAT_REG);
+
+	if (!(status & RX_IRQ_MASK))
+		return IRQ_NONE;
+
+	for (n = 0; n < NUM_CHANS; ++n) {
+		struct mbox_chan *chan = &mbox->controller.chans[n];
+
+		if (!(status & RX_IRQ(n)))
+			continue;
+
+		while (sunxi_msgbox_peek_data(chan)) {
+			uint32_t msg = readl(mbox->regs + MSG_DATA_REG(n));
+
+			mbox_dbg(mbox, "Channel %d received 0x%08x\n", n, msg);
+			mbox_chan_received_data(chan, &msg);
+		}
+
+		/* The IRQ can be cleared only once the FIFO is empty. */
+		writel(RX_IRQ(n), mbox->regs + LOCAL_IRQ_STAT_REG);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int sunxi_msgbox_send_data(struct mbox_chan *chan, void *data)
+{
+	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
+	int n = channel_number(chan);
+	uint32_t msg = *(uint32_t *)data;
+
+	/* Using a channel backwards gets the hardware into a bad state. */
+	if (WARN_ON_ONCE(!(readl(mbox->regs + CTRL_REG(n)) & CTRL_TX(n))))
+		return 0;
+
+	/* We cannot post a new message if the FIFO is full. */
+	if (readl(mbox->regs + FIFO_STAT_REG(n)) & FIFO_STAT_MASK) {
+		mbox_dbg(mbox, "Channel %d busy sending 0x%08x\n", n, msg);
+		return -EBUSY;
+	}
+
+	writel(msg, mbox->regs + MSG_DATA_REG(n));
+	mbox_dbg(mbox, "Channel %d sent 0x%08x\n", n, msg);
+
+	return 0;
+}
+
+static int sunxi_msgbox_startup(struct mbox_chan *chan)
+{
+	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
+	int n = channel_number(chan);
+
+	/* The coprocessor is responsible for setting channel directions. */
+	if (readl(mbox->regs + CTRL_REG(n)) & CTRL_RX(n)) {
+		/* Flush the receive FIFO. */
+		while (sunxi_msgbox_peek_data(chan))
+			readl(mbox->regs + MSG_DATA_REG(n));
+		writel(RX_IRQ(n), mbox->regs + LOCAL_IRQ_STAT_REG);
+
+		/* Enable the receive IRQ. */
+		spin_lock(&mbox->lock);
+		writel(readl(mbox->regs + LOCAL_IRQ_EN_REG) | RX_IRQ(n),
+		       mbox->regs + LOCAL_IRQ_EN_REG);
+		spin_unlock(&mbox->lock);
+	}
+
+	mbox_dbg(mbox, "Channel %d startup complete\n", n);
+
+	return 0;
+}
+
+static void sunxi_msgbox_shutdown(struct mbox_chan *chan)
+{
+	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
+	int n = channel_number(chan);
+
+	if (readl(mbox->regs + CTRL_REG(n)) & CTRL_RX(n)) {
+		/* Disable the receive IRQ. */
+		spin_lock(&mbox->lock);
+		writel(readl(mbox->regs + LOCAL_IRQ_EN_REG) & ~RX_IRQ(n),
+		       mbox->regs + LOCAL_IRQ_EN_REG);
+		spin_unlock(&mbox->lock);
+
+		/* Attempt to flush the FIFO until the IRQ is cleared. */
+		do {
+			while (sunxi_msgbox_peek_data(chan))
+				readl(mbox->regs + MSG_DATA_REG(n));
+			writel(RX_IRQ(n), mbox->regs + LOCAL_IRQ_STAT_REG);
+		} while (readl(mbox->regs + LOCAL_IRQ_STAT_REG) & RX_IRQ(n));
+	}
+
+	mbox_dbg(mbox, "Channel %d shutdown complete\n", n);
+}
+
+static bool sunxi_msgbox_last_tx_done(struct mbox_chan *chan)
+{
+	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
+	int n = channel_number(chan);
+
+	/*
+	 * The hardware allows snooping on the remote user's IRQ statuses.
+	 * We consider a message to be acknowledged only once the receive IRQ
+	 * for that channel is cleared. Since the receive IRQ for a channel
+	 * cannot be cleared until the FIFO for that channel is empty, this
+	 * ensures that the message has actually been read. It also gives the
+	 * recipient an opportunity to perform minimal processing before
+	 * acknowledging the message.
+	 */
+	return !(readl(mbox->regs + REMOTE_IRQ_STAT_REG) & RX_IRQ(n));
+}
+
+static bool sunxi_msgbox_peek_data(struct mbox_chan *chan)
+{
+	struct sunxi_msgbox *mbox = channel_to_msgbox(chan);
+	int n = channel_number(chan);
+
+	return readl(mbox->regs + MSG_STAT_REG(n)) & MSG_STAT_MASK;
+}
+
+static const struct mbox_chan_ops sunxi_msgbox_chan_ops = {
+	.send_data    = sunxi_msgbox_send_data,
+	.startup      = sunxi_msgbox_startup,
+	.shutdown     = sunxi_msgbox_shutdown,
+	.last_tx_done = sunxi_msgbox_last_tx_done,
+	.peek_data    = sunxi_msgbox_peek_data,
+};
+
+static int sunxi_msgbox_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mbox_chan *chans;
+	struct reset_control *reset;
+	struct resource *res;
+	struct sunxi_msgbox *mbox;
+	int i, ret;
+
+	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
+	if (!mbox)
+		return -ENOMEM;
+
+	chans = devm_kcalloc(dev, NUM_CHANS, sizeof(*chans), GFP_KERNEL);
+	if (!chans)
+		return -ENOMEM;
+
+	for (i = 0; i < NUM_CHANS; ++i)
+		chans[i].con_priv = mbox;
+
+	mbox->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(mbox->clk)) {
+		ret = PTR_ERR(mbox->clk);
+		dev_err(dev, "Failed to get clock: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(mbox->clk);
+	if (ret) {
+		dev_err(dev, "Failed to enable clock: %d\n", ret);
+		return ret;
+	}
+
+	reset = devm_reset_control_get(dev, NULL);
+	if (IS_ERR(reset)) {
+		ret = PTR_ERR(reset);
+		dev_err(dev, "Failed to get reset control: %d\n", ret);
+		goto err_disable_unprepare;
+	}
+
+	ret = reset_control_deassert(reset);
+	if (ret) {
+		dev_err(dev, "Failed to deassert reset: %d\n", ret);
+		goto err_disable_unprepare;
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		ret = -ENODEV;
+		goto err_disable_unprepare;
+	}
+
+	mbox->regs = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(mbox->regs)) {
+		ret = PTR_ERR(mbox->regs);
+		dev_err(dev, "Failed to map MMIO resource: %d\n", ret);
+		goto err_disable_unprepare;
+	}
+
+	/* Disable all IRQs for this end of the msgbox. */
+	writel(0, mbox->regs + LOCAL_IRQ_EN_REG);
+
+	ret = devm_request_irq(dev, irq_of_parse_and_map(dev->of_node, 0),
+			       sunxi_msgbox_irq, 0, dev_name(dev), mbox);
+	if (ret) {
+		dev_err(dev, "Failed to register IRQ handler: %d\n", ret);
+		goto err_disable_unprepare;
+	}
+
+	mbox->controller.dev           = dev;
+	mbox->controller.ops           = &sunxi_msgbox_chan_ops;
+	mbox->controller.chans         = chans;
+	mbox->controller.num_chans     = NUM_CHANS;
+	mbox->controller.txdone_irq    = false;
+	mbox->controller.txdone_poll   = true;
+	mbox->controller.txpoll_period = 5;
+
+	spin_lock_init(&mbox->lock);
+	platform_set_drvdata(pdev, mbox);
+
+	ret = mbox_controller_register(&mbox->controller);
+	if (ret) {
+		dev_err(dev, "Failed to register controller: %d\n", ret);
+		goto err_disable_unprepare;
+	}
+
+	return 0;
+
+err_disable_unprepare:
+	clk_disable_unprepare(mbox->clk);
+
+	return ret;
+}
+
+static int sunxi_msgbox_remove(struct platform_device *pdev)
+{
+	struct sunxi_msgbox *mbox = platform_get_drvdata(pdev);
+
+	mbox_controller_unregister(&mbox->controller);
+	clk_disable_unprepare(mbox->clk);
+
+	return 0;
+}
+
+static const struct of_device_id sunxi_msgbox_of_match[] = {
+	{ .compatible = "allwinner,sun6i-a31-msgbox", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sunxi_msgbox_of_match);
+
+static struct platform_driver sunxi_msgbox_driver = {
+	.driver = {
+		.name = "sunxi-msgbox",
+		.of_match_table = sunxi_msgbox_of_match,
+	},
+	.probe  = sunxi_msgbox_probe,
+	.remove = sunxi_msgbox_remove,
+};
+module_platform_driver(sunxi_msgbox_driver);
+
+MODULE_AUTHOR("Samuel Holland <samuel@sholland.org>");
+MODULE_DESCRIPTION("Allwinner sunxi Message Box");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
