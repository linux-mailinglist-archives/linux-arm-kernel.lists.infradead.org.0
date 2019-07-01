Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885EB31057
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U5GdgBusFQQF2Dd2MxcLMUBeZ88LX/bHfJXSYpQxQKM=; b=ZPROAPGFW4PWmFoGMlL9KMwDbb
	Lj2QoWi5/ocFy+5bzzBms7XMqxDbmMgXvAzw5a1QrBErruGKyG4SP3j5xxmQud2gzyIylk52H0tjM
	XOrsR8NClVAMSwUdHlhntlG402HZyXEnrIU/+ycPtjq/8gQwzjZAZO3zN2/aFTxdZxZl94jce2qya
	C79trqzNHrNB9hRJLNgL5T2yWrmPozgN2PGRnuhwlGk0KDS5kdAFvOJ3lxF7EUpZ7SBaplJWWjbzf
	Tj3gLtFcElwuWJwghvZ4Xq2ZIOO+hjd6my1PUzm9tQEwfiXfWMPLsW5oiIVmDfe2Jfg05rSHjqECd
	xOEBsQqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWicS-0008Mu-3S; Fri, 31 May 2019 14:34:56 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWibL-00077r-1G
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:33:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A603215AD;
 Fri, 31 May 2019 07:33:46 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D92713F5AF;
 Fri, 31 May 2019 07:33:44 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 5/6] mailbox: arm_mhu: re-factor data structure to add
 doorbell support
Date: Fri, 31 May 2019 15:33:19 +0100
Message-Id: <20190531143320.8895-6-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531143320.8895-1-sudeep.holla@arm.com>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_073347_144374_F93857F4 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Mark Brown <broonie@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support doorbells, we need a bit of reword around data
structures that are per-channel. Since the number of doorbells are
not fixed though restricted to maximum of 20, the channel assignment
and initialization is move to xlate function.

This patch also adds the platform data for the existing support of one
channel per physical channel.

Cc: Jassi Brar <jaswinder.singh@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/mailbox/arm_mhu.c | 209 ++++++++++++++++++++++++++++++++++----
 1 file changed, 187 insertions(+), 22 deletions(-)

diff --git a/drivers/mailbox/arm_mhu.c b/drivers/mailbox/arm_mhu.c
index 98838d5ae108..c944ca121e9e 100644
--- a/drivers/mailbox/arm_mhu.c
+++ b/drivers/mailbox/arm_mhu.c
@@ -20,6 +20,8 @@
 #include <linux/io.h>
 #include <linux/mailbox_controller.h>
 #include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
 
 #define INTR_STAT_OFS	0x0
 #define INTR_SET_OFS	0x8
@@ -30,7 +32,8 @@
 #define MHU_SEC_OFFSET	0x200
 #define TX_REG_OFFSET	0x100
 
-#define MHU_CHANS	3
+#define MHU_NUM_PCHANS	3	/* Secure, Non-Secure High and Low Priority */
+#define MHU_CHAN_MAX	20	/* Max channels to save on unused RAM */
 
 struct mhu_link {
 	unsigned irq;
@@ -40,53 +43,175 @@ struct mhu_link {
 
 struct arm_mhu {
 	void __iomem *base;
-	struct mhu_link mlink[MHU_CHANS];
-	struct mbox_chan chan[MHU_CHANS];
+	struct mhu_link mlink[MHU_NUM_PCHANS];
 	struct mbox_controller mbox;
+	struct device *dev;
 };
 
+/**
+ * ARM MHU Mailbox platform specific configuration
+ *
+ * @num_pchans: Maximum number of physical channels
+ * @num_doorbells: Maximum number of doorbells per physical channel
+ */
+struct mhu_mbox_pdata {
+	unsigned int num_pchans;
+	unsigned int num_doorbells;
+	bool support_doorbells;
+};
+
+/**
+ * ARM MHU Mailbox allocated channel information
+ *
+ * @mhu: Pointer to parent mailbox device
+ * @pchan: Physical channel within which this doorbell resides in
+ * @doorbell: doorbell number pertaining to this channel
+ */
+struct mhu_channel {
+	struct arm_mhu *mhu;
+	unsigned int pchan;
+	unsigned int doorbell;
+};
+
+static inline struct mbox_chan *
+mhu_mbox_to_channel(struct mbox_controller *mbox,
+		    unsigned int pchan, unsigned int doorbell)
+{
+	int i;
+	struct mhu_channel *chan_info;
+
+	for (i = 0; i < mbox->num_chans; i++) {
+		chan_info = mbox->chans[i].con_priv;
+		if (chan_info && chan_info->pchan == pchan &&
+		    chan_info->doorbell == doorbell)
+			return &mbox->chans[i];
+	}
+
+	dev_err(mbox->dev,
+		"Channel not registered: physical channel: %d doorbell: %d\n",
+		pchan, doorbell);
+
+	return NULL;
+}
+
+static unsigned int mhu_mbox_irq_to_pchan_num(struct arm_mhu *mhu, int irq)
+{
+	unsigned int pchan;
+	struct mhu_mbox_pdata *pdata = dev_get_platdata(mhu->dev);
+
+	for (pchan = 0; pchan < pdata->num_pchans; pchan++)
+		if (mhu->mlink[pchan].irq == irq)
+			break;
+	return pchan;
+}
+
+static struct mbox_chan *mhu_mbox_xlate(struct mbox_controller *mbox,
+					const struct of_phandle_args *spec)
+{
+	struct arm_mhu *mhu = dev_get_drvdata(mbox->dev);
+	struct mhu_mbox_pdata *pdata = dev_get_platdata(mhu->dev);
+	struct mhu_channel *chan_info;
+	struct mbox_chan *chan = NULL;
+	unsigned int pchan = spec->args[0];
+	unsigned int doorbell = pdata->support_doorbells ? spec->args[1] : 0;
+	int i;
+
+	/* Bounds checking */
+	if (pchan >= pdata->num_pchans || doorbell >= pdata->num_doorbells) {
+		dev_err(mbox->dev,
+			"Invalid channel requested pchan: %d doorbell: %d\n",
+			pchan, doorbell);
+		return ERR_PTR(-EINVAL);
+	}
+
+	for (i = 0; i < mbox->num_chans; i++) {
+		chan_info = mbox->chans[i].con_priv;
+
+		/* Is requested channel free? */
+		if (chan_info &&
+		    mbox->dev == chan_info->mhu->dev &&
+		    pchan == chan_info->pchan &&
+		    doorbell == chan_info->doorbell) {
+			dev_err(mbox->dev, "Channel in use\n");
+			return ERR_PTR(-EBUSY);
+		}
+
+		/*
+		 * Find the first free slot, then continue checking
+		 * to see if requested channel is in use
+		 */
+		if (!chan && !chan_info)
+			chan = &mbox->chans[i];
+	}
+
+	if (!chan) {
+		dev_err(mbox->dev, "No free channels left\n");
+		return ERR_PTR(-EBUSY);
+	}
+
+	chan_info = devm_kzalloc(mbox->dev, sizeof(*chan_info), GFP_KERNEL);
+	if (!chan_info)
+		return ERR_PTR(-ENOMEM);
+
+	chan_info->mhu = mhu;
+	chan_info->pchan = pchan;
+	chan_info->doorbell = doorbell;
+
+	chan->con_priv = chan_info;
+
+	dev_dbg(mbox->dev, "mbox: created channel phys: %d doorbell: %d\n",
+		pchan, doorbell);
+
+	return chan;
+}
+
 static irqreturn_t mhu_rx_interrupt(int irq, void *p)
 {
-	struct mbox_chan *chan = p;
-	struct mhu_link *mlink = chan->con_priv;
+	struct arm_mhu *mhu = p;
+	unsigned int pchan = mhu_mbox_irq_to_pchan_num(mhu, irq);
+	struct mbox_chan *chan = mhu_mbox_to_channel(&mhu->mbox, pchan, 0);
+	void __iomem *base = mhu->mlink[pchan].rx_reg;
 	u32 val;
 
-	val = readl_relaxed(mlink->rx_reg + INTR_STAT_OFS);
+	val = readl_relaxed(base + INTR_STAT_OFS);
 	if (!val)
 		return IRQ_NONE;
 
 	mbox_chan_received_data(chan, (void *)&val);
 
-	writel_relaxed(val, mlink->rx_reg + INTR_CLR_OFS);
+	writel_relaxed(val, base + INTR_CLR_OFS);
 
 	return IRQ_HANDLED;
 }
 
 static bool mhu_last_tx_done(struct mbox_chan *chan)
 {
-	struct mhu_link *mlink = chan->con_priv;
-	u32 val = readl_relaxed(mlink->tx_reg + INTR_STAT_OFS);
+	struct mhu_channel *chan_info = chan->con_priv;
+	void __iomem *base = chan_info->mhu->mlink[chan_info->pchan].tx_reg;
+	u32 val = readl_relaxed(base + INTR_STAT_OFS);
 
 	return (val == 0);
 }
 
 static int mhu_send_data(struct mbox_chan *chan, void *data)
 {
-	struct mhu_link *mlink = chan->con_priv;
+	struct mhu_channel *chan_info = chan->con_priv;
+	void __iomem *base = chan_info->mhu->mlink[chan_info->pchan].tx_reg;
 	u32 *arg = data;
 
-	writel_relaxed(*arg, mlink->tx_reg + INTR_SET_OFS);
+	writel_relaxed(*arg, base + INTR_SET_OFS);
 
 	return 0;
 }
 
 static int mhu_startup(struct mbox_chan *chan)
 {
-	struct mhu_link *mlink = chan->con_priv;
+	struct mhu_channel *chan_info = chan->con_priv;
+	void __iomem *base = chan_info->mhu->mlink[chan_info->pchan].tx_reg;
 	u32 val;
 
-	val = readl_relaxed(mlink->tx_reg + INTR_STAT_OFS);
-	writel_relaxed(val, mlink->tx_reg + INTR_CLR_OFS);
+	val = readl_relaxed(base + INTR_STAT_OFS);
+	writel_relaxed(val, base + INTR_CLR_OFS);
 
 	return 0;
 }
@@ -97,14 +222,47 @@ static const struct mbox_chan_ops mhu_ops = {
 	.last_tx_done = mhu_last_tx_done,
 };
 
+static const struct mhu_mbox_pdata arm_mhu_pdata = {
+	.num_pchans = 3,
+	.num_doorbells = 1,
+	.support_doorbells = false,
+};
+
 static int mhu_probe(struct amba_device *adev, const struct amba_id *id)
 {
-	int i, err;
+	u32 cell_count;
+	int i, err, max_chans;
 	struct arm_mhu *mhu;
+	struct mbox_chan *chans;
+	struct mhu_mbox_pdata *pdata;
 	struct device *dev = &adev->dev;
-	int mhu_reg[MHU_CHANS] = {MHU_LP_OFFSET, MHU_HP_OFFSET, MHU_SEC_OFFSET};
+	struct device_node *np = dev->of_node;
+	int mhu_reg[MHU_NUM_PCHANS] = {
+		MHU_LP_OFFSET, MHU_HP_OFFSET, MHU_SEC_OFFSET,
+	};
+
+	err = of_property_read_u32(np, "#mbox-cells", &cell_count);
+	if (err) {
+		dev_err(dev, "failed to read #mbox-cells in %s\n",
+			np->full_name);
+		return err;
+	}
+
+	if (cell_count == 1) {
+		max_chans = MHU_NUM_PCHANS;
+		pdata = (struct mhu_mbox_pdata *)&arm_mhu_pdata;
+	} else {
+		dev_err(dev, "incorrect value of #mbox-cells in %s\n",
+			np->full_name);
+		return -EINVAL;
+	}
+
+	if (pdata->num_pchans > MHU_NUM_PCHANS) {
+		dev_err(dev, "Number of physical channel can't exceed %d\n",
+			MHU_NUM_PCHANS);
+		return -EINVAL;
+	}
 
-	/* Allocate memory for device */
 	mhu = devm_kzalloc(dev, sizeof(*mhu), GFP_KERNEL);
 	if (!mhu)
 		return -ENOMEM;
@@ -115,14 +273,22 @@ static int mhu_probe(struct amba_device *adev, const struct amba_id *id)
 		return PTR_ERR(mhu->base);
 	}
 
+	chans = devm_kcalloc(dev, max_chans, sizeof(*chans), GFP_KERNEL);
+	if (!chans)
+		return -ENOMEM;
+
+	dev->platform_data = pdata;
+
+	mhu->dev = dev;
 	mhu->mbox.dev = dev;
-	mhu->mbox.chans = &mhu->chan[0];
-	mhu->mbox.num_chans = MHU_CHANS;
+	mhu->mbox.chans = chans;
+	mhu->mbox.num_chans = max_chans;
 	mhu->mbox.ops = &mhu_ops;
 	mhu->mbox.txdone_irq = false;
 	mhu->mbox.txdone_poll = true;
 	mhu->mbox.txpoll_period = 1;
 
+	mhu->mbox.of_xlate = mhu_mbox_xlate;
 	amba_set_drvdata(adev, mhu);
 
 	err = devm_mbox_controller_register(dev, &mhu->mbox);
@@ -131,7 +297,7 @@ static int mhu_probe(struct amba_device *adev, const struct amba_id *id)
 		return err;
 	}
 
-	for (i = 0; i < MHU_CHANS; i++) {
+	for (i = 0; i < pdata->num_pchans; i++) {
 		int irq = mhu->mlink[i].irq = adev->irq[i];
 
 		if (irq <= 0) {
@@ -139,13 +305,12 @@ static int mhu_probe(struct amba_device *adev, const struct amba_id *id)
 			continue;
 		}
 
-		mhu->chan[i].con_priv = &mhu->mlink[i];
 		mhu->mlink[i].rx_reg = mhu->base + mhu_reg[i];
 		mhu->mlink[i].tx_reg = mhu->mlink[i].rx_reg + TX_REG_OFFSET;
 
 		err = devm_request_threaded_irq(dev, irq, NULL,
 						mhu_rx_interrupt, IRQF_ONESHOT,
-						"mhu_link", &mhu->chan[i]);
+						"mhu_link", mhu);
 		if (err) {
 			dev_err(dev, "Can't claim IRQ %d\n", irq);
 			mbox_controller_unregister(&mhu->mbox);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
