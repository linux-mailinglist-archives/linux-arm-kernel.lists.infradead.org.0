Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DB334E3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 19:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irRJwbJay9rPPTrqcPzgHsHO1sDq0s0+K4GxRly6hYQ=; b=NUnCZTqbP97hHj
	bMmq7IpoSO3UgCdsaxbJHlRGlXVSG2Zi4W6EJTyQ/rUU147vuv86bY+GcpsJ0fUoHz86AenJFliEb
	zChWgQgxx0wNOOX//MR1q2xjjolvrx7JNzgoKatxFXPnv6dH8L/VhcRJcTbULPasy2sscRAqEFVqv
	jholc5WJYWk2BetbV11sJAtYwB2b5Pw5Jsd+LGcykOWQolz4JpERkUX5yoxP1F/cNE4A8/5HrTC50
	3d1joJPv25Tjw5AAftGRoJ07193GaGWvzjvJ6Dz/m5CZSd1J5LgA+G+TlPDZpiVQP2J2AjxqUvfFd
	HU51YaiIB/fZaJmr/nCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCpS-0007Zo-5A; Tue, 04 Jun 2019 17:02:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCp2-0007Bs-6v
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 17:02:11 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54H22tQ084287;
 Tue, 4 Jun 2019 12:02:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559667722;
 bh=Y92ZcFTsqG4IfSLpbfCX6B4yi5Pz5vAA0ir05ui1hkg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=nJ39MIB2iIA5i1S+2jjQGilO9loxCvKnzYiKTVFF36jbp2xHNytY/fuiHCJ+uvPIq
 B5ilsVSNma77c5JXs+AbgVul2XUE8QGTQGIFGtfwjhBUfKQ7/S1/8xbOy39B34vsjh
 fMAm/IT6HufT/FpMzkO7hOJAytX461ScEL9nrwpk=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54H22B3055720
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 12:02:02 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 12:02:00 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 12:02:00 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54H20oe052654;
 Tue, 4 Jun 2019 12:02:00 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x54H1xm17413; 
 Tue, 4 Jun 2019 12:01:59 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] mailbox/omap: Add support for TI K3 SoCs
Date: Tue, 4 Jun 2019 12:01:46 -0500
Message-ID: <20190604170146.12205-3-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604170146.12205-1-s-anna@ti.com>
References: <20190604170146.12205-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_100204_676280_D6C8262A 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TI K3 AM65x and J721E family of SoCs have a new Mailbox IP that
is based on the existing Mailbox IP present in OMAP architecture based
SoCs. Each instance of the legacy OMAP Mailbox IP is now a single cluster
within the newer Mailbox IP instance on K3 architecture based SoCs. A
single K3 Mailbox IP instance has multiple clusters with each cluster
providing the same functionality as the existing OMAP Mailbox IP.

Reuse the existing OMAP Mailbox driver to extend the support for this
newer IP present within the Main NavSS block on K3 SoCs. The K3 family
of SoCs use 64-bit ARMv8 processors for running Linux, so the driver is
also enhanced to deal with the differences between the 32-bit message
payloads and the 64-bit pointers used by the client drivers.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 drivers/mailbox/Kconfig        |  2 +-
 drivers/mailbox/omap-mailbox.c | 43 ++++++++++++++++++++--------------
 include/linux/omap-mailbox.h   |  4 +++-
 3 files changed, 30 insertions(+), 19 deletions(-)

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index 595542bfae85..5f48f371a7d0 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -53,7 +53,7 @@ config ARMADA_37XX_RWTM_MBOX
 
 config OMAP2PLUS_MBOX
 	tristate "OMAP2+ Mailbox framework support"
-	depends on ARCH_OMAP2PLUS
+	depends on ARCH_OMAP2PLUS || ARCH_K3
 	help
 	  Mailbox implementation for OMAP family chips with hardware for
 	  interprocessor communication involving DSP, IVA1.0 and IVA2 in
diff --git a/drivers/mailbox/omap-mailbox.c b/drivers/mailbox/omap-mailbox.c
index ca50177a33f2..a3cd63583cf7 100644
--- a/drivers/mailbox/omap-mailbox.c
+++ b/drivers/mailbox/omap-mailbox.c
@@ -3,7 +3,7 @@
  * OMAP mailbox driver
  *
  * Copyright (C) 2006-2009 Nokia Corporation. All rights reserved.
- * Copyright (C) 2013-2016 Texas Instruments Incorporated - http://www.ti.com
+ * Copyright (C) 2013-2019 Texas Instruments Incorporated - http://www.ti.com
  *
  * Contact: Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
  *          Suman Anna <s-anna@ti.com>
@@ -141,14 +141,14 @@ void mbox_write_reg(struct omap_mbox_device *mdev, u32 val, size_t ofs)
 }
 
 /* Mailbox FIFO handle functions */
-static mbox_msg_t mbox_fifo_read(struct omap_mbox *mbox)
+static u32 mbox_fifo_read(struct omap_mbox *mbox)
 {
 	struct omap_mbox_fifo *fifo = &mbox->rx_fifo;
 
-	return (mbox_msg_t)mbox_read_reg(mbox->parent, fifo->msg);
+	return mbox_read_reg(mbox->parent, fifo->msg);
 }
 
-static void mbox_fifo_write(struct omap_mbox *mbox, mbox_msg_t msg)
+static void mbox_fifo_write(struct omap_mbox *mbox, u32 msg)
 {
 	struct omap_mbox_fifo *fifo = &mbox->tx_fifo;
 
@@ -256,14 +256,16 @@ static void mbox_rx_work(struct work_struct *work)
 {
 	struct omap_mbox_queue *mq =
 			container_of(work, struct omap_mbox_queue, work);
-	mbox_msg_t msg;
+	mbox_msg_t data;
+	u32 msg;
 	int len;
 
 	while (kfifo_len(&mq->fifo) >= sizeof(msg)) {
 		len = kfifo_out(&mq->fifo, (unsigned char *)&msg, sizeof(msg));
 		WARN_ON(len != sizeof(msg));
+		data = msg;
 
-		mbox_chan_received_data(mq->mbox->chan, (void *)msg);
+		mbox_chan_received_data(mq->mbox->chan, (void *)data);
 		spin_lock_irq(&mq->lock);
 		if (mq->full) {
 			mq->full = false;
@@ -286,7 +288,7 @@ static void __mbox_tx_interrupt(struct omap_mbox *mbox)
 static void __mbox_rx_interrupt(struct omap_mbox *mbox)
 {
 	struct omap_mbox_queue *mq = mbox->rxq;
-	mbox_msg_t msg;
+	u32 msg;
 	int len;
 
 	while (!mbox_fifo_empty(mbox)) {
@@ -540,13 +542,13 @@ static void omap_mbox_chan_shutdown(struct mbox_chan *chan)
 	mutex_unlock(&mdev->cfg_lock);
 }
 
-static int omap_mbox_chan_send_noirq(struct omap_mbox *mbox, void *data)
+static int omap_mbox_chan_send_noirq(struct omap_mbox *mbox, u32 msg)
 {
 	int ret = -EBUSY;
 
 	if (!mbox_fifo_full(mbox)) {
 		_omap_mbox_enable_irq(mbox, IRQ_RX);
-		mbox_fifo_write(mbox, (mbox_msg_t)data);
+		mbox_fifo_write(mbox, msg);
 		ret = 0;
 		_omap_mbox_disable_irq(mbox, IRQ_RX);
 
@@ -558,12 +560,12 @@ static int omap_mbox_chan_send_noirq(struct omap_mbox *mbox, void *data)
 	return ret;
 }
 
-static int omap_mbox_chan_send(struct omap_mbox *mbox, void *data)
+static int omap_mbox_chan_send(struct omap_mbox *mbox, u32 msg)
 {
 	int ret = -EBUSY;
 
 	if (!mbox_fifo_full(mbox)) {
-		mbox_fifo_write(mbox, (mbox_msg_t)data);
+		mbox_fifo_write(mbox, msg);
 		ret = 0;
 	}
 
@@ -576,14 +578,15 @@ static int omap_mbox_chan_send_data(struct mbox_chan *chan, void *data)
 {
 	struct omap_mbox *mbox = mbox_chan_to_omap_mbox(chan);
 	int ret;
+	u32 msg = omap_mbox_message(data);
 
 	if (!mbox)
 		return -EINVAL;
 
 	if (mbox->send_no_irq)
-		ret = omap_mbox_chan_send_noirq(mbox, data);
+		ret = omap_mbox_chan_send_noirq(mbox, msg);
 	else
-		ret = omap_mbox_chan_send(mbox, data);
+		ret = omap_mbox_chan_send(mbox, msg);
 
 	return ret;
 }
@@ -656,6 +659,10 @@ static const struct of_device_id omap_mailbox_of_match[] = {
 		.compatible	= "ti,omap4-mailbox",
 		.data		= &omap4_data,
 	},
+	{
+		.compatible	= "ti,am654-mailbox",
+		.data		= &omap4_data,
+	},
 	{
 		/* end */
 	},
@@ -830,7 +837,10 @@ static int omap_mbox_probe(struct platform_device *pdev)
 	mdev->intr_type = intr_type;
 	mdev->mboxes = list;
 
-	/* OMAP does not have a Tx-Done IRQ, but rather a Tx-Ready IRQ */
+	/*
+	 * OMAP/K3 Mailbox IP does not have a Tx-Done IRQ, but rather a Tx-Ready
+	 * IRQ and is needed to run the Tx state machine
+	 */
 	mdev->controller.txdone_irq = true;
 	mdev->controller.dev = mdev->dev;
 	mdev->controller.ops = &omap_mbox_chan_ops;
@@ -899,9 +909,8 @@ static int __init omap_mbox_init(void)
 		return err;
 
 	/* kfifo size sanity check: alignment and minimal size */
-	mbox_kfifo_size = ALIGN(mbox_kfifo_size, sizeof(mbox_msg_t));
-	mbox_kfifo_size = max_t(unsigned int, mbox_kfifo_size,
-							sizeof(mbox_msg_t));
+	mbox_kfifo_size = ALIGN(mbox_kfifo_size, sizeof(u32));
+	mbox_kfifo_size = max_t(unsigned int, mbox_kfifo_size, sizeof(u32));
 
 	err = platform_driver_register(&omap_mbox_driver);
 	if (err)
diff --git a/include/linux/omap-mailbox.h b/include/linux/omap-mailbox.h
index 6dbcd2da0332..8aa984ec1f38 100644
--- a/include/linux/omap-mailbox.h
+++ b/include/linux/omap-mailbox.h
@@ -6,7 +6,9 @@
 #ifndef OMAP_MAILBOX_H
 #define OMAP_MAILBOX_H
 
-typedef u32 mbox_msg_t;
+typedef uintptr_t mbox_msg_t;
+
+#define omap_mbox_message(data) (u32)(mbox_msg_t)(data)
 
 typedef int __bitwise omap_mbox_irq_t;
 #define IRQ_TX ((__force omap_mbox_irq_t) 1)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
