Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E0631053
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6D0tPOt6u3pVF6Y1AmuB3tRMEfG6tBGNsla/YXW2XC4=; b=HrncTpXzckzT17pZxcLOz8vjx2
	/FZeqQ7KNAcnaE1FLVAKA9kckHBBKwL2510vL2aGNDPZtBGF86Ac6IovHeZedNvbBWaxMlMgpZzV7
	D+e20HaQLGtu/LStb/Boci66GPIUv40Z8ETQRrITpX1maGbYeFfLd9dOo0KEdKRx0uc9XKE4aicQ6
	hCfYg+M6eKOLt1RS4xfRjYOUOHMTPueNKkhdaYHEElWA2azhcnvpMg+sgP+WlSIuef3jkw/qRmHa5
	wIMMYCWGTuE3gcDLlvi38TYkz/9XsUgM7sZZmNdYfcyUjvH5Up9k3vE7l68i38qu6ACzzoqjqnF3d
	V7ILEsxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWicB-00084K-M6; Fri, 31 May 2019 14:34:39 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWibI-00075U-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:33:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9AE08341;
 Fri, 31 May 2019 07:33:44 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CE21A3F5AF;
 Fri, 31 May 2019 07:33:42 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 4/6] mailbox: arm_mhu: migrate to threaded irq handler
Date: Fri, 31 May 2019 15:33:18 +0100
Message-Id: <20190531143320.8895-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531143320.8895-1-sudeep.holla@arm.com>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_073344_895744_27C00293 
X-CRM114-Status: GOOD (  15.14  )
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

In preparation to introduce support for doorbells which require the
interrupt handlers to be threaded, this patch moves the existing
interrupt handler to threaded handler.

Also it moves out the registering and freeing of the handlers from
the mailbox startup and shutdown methods. This also is required to
support doorbells.

Cc: Jassi Brar <jaswinder.singh@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/mailbox/arm_mhu.c | 46 +++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/mailbox/arm_mhu.c b/drivers/mailbox/arm_mhu.c
index 747cab1090ff..98838d5ae108 100644
--- a/drivers/mailbox/arm_mhu.c
+++ b/drivers/mailbox/arm_mhu.c
@@ -84,33 +84,16 @@ static int mhu_startup(struct mbox_chan *chan)
 {
 	struct mhu_link *mlink = chan->con_priv;
 	u32 val;
-	int ret;
 
 	val = readl_relaxed(mlink->tx_reg + INTR_STAT_OFS);
 	writel_relaxed(val, mlink->tx_reg + INTR_CLR_OFS);
 
-	ret = request_irq(mlink->irq, mhu_rx_interrupt,
-			  IRQF_SHARED, "mhu_link", chan);
-	if (ret) {
-		dev_err(chan->mbox->dev,
-			"Unable to acquire IRQ %d\n", mlink->irq);
-		return ret;
-	}
-
 	return 0;
 }
 
-static void mhu_shutdown(struct mbox_chan *chan)
-{
-	struct mhu_link *mlink = chan->con_priv;
-
-	free_irq(mlink->irq, chan);
-}
-
 static const struct mbox_chan_ops mhu_ops = {
 	.send_data = mhu_send_data,
 	.startup = mhu_startup,
-	.shutdown = mhu_shutdown,
 	.last_tx_done = mhu_last_tx_done,
 };
 
@@ -132,13 +115,6 @@ static int mhu_probe(struct amba_device *adev, const struct amba_id *id)
 		return PTR_ERR(mhu->base);
 	}
 
-	for (i = 0; i < MHU_CHANS; i++) {
-		mhu->chan[i].con_priv = &mhu->mlink[i];
-		mhu->mlink[i].irq = adev->irq[i];
-		mhu->mlink[i].rx_reg = mhu->base + mhu_reg[i];
-		mhu->mlink[i].tx_reg = mhu->mlink[i].rx_reg + TX_REG_OFFSET;
-	}
-
 	mhu->mbox.dev = dev;
 	mhu->mbox.chans = &mhu->chan[0];
 	mhu->mbox.num_chans = MHU_CHANS;
@@ -155,6 +131,28 @@ static int mhu_probe(struct amba_device *adev, const struct amba_id *id)
 		return err;
 	}
 
+	for (i = 0; i < MHU_CHANS; i++) {
+		int irq = mhu->mlink[i].irq = adev->irq[i];
+
+		if (irq <= 0) {
+			dev_dbg(dev, "No IRQ found for Channel %d\n", i);
+			continue;
+		}
+
+		mhu->chan[i].con_priv = &mhu->mlink[i];
+		mhu->mlink[i].rx_reg = mhu->base + mhu_reg[i];
+		mhu->mlink[i].tx_reg = mhu->mlink[i].rx_reg + TX_REG_OFFSET;
+
+		err = devm_request_threaded_irq(dev, irq, NULL,
+						mhu_rx_interrupt, IRQF_ONESHOT,
+						"mhu_link", &mhu->chan[i]);
+		if (err) {
+			dev_err(dev, "Can't claim IRQ %d\n", irq);
+			mbox_controller_unregister(&mhu->mbox);
+			return err;
+		}
+	}
+
 	dev_info(dev, "ARM MHU Mailbox registered\n");
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
