Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D256251A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DulqOaVSVzBbcT/wi+zAOmhrRjtzh3jN4CPyeT5T8/w=; b=GEZn3MI3LztDI20ZrlnQRptoop
	xa7GFfoOIawjwjAV8GRwxVMKa+6haNzQcnBDRSHvQqofGWeKyOyYFtpeTdt/2U7AvwrB9UcglE1Qj
	JAytBdJ32hKNfhCW0HjHJ1PmpslueY1vSkGzc9LBQB60zMS5bgduA6IjvE3IXBJER3V51MqfLwVwt
	aB8hZ1q8WnXXSujcS7lX0+AKTHMXYuJ6u1FQ+wdeaPcD2NHYeeiPPVyev8IpVnI6ZrkIqj0ZF8zZj
	dnIMlWbb+hhtCu7uQFOiX4u9rSq/osq0+eVO3QFGnqdoNLP+EYXtl9JMg5RawptlqgNz4d8YtELvz
	Jm43eEYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVsl-0004pu-5e; Mon, 08 Jul 2019 15:48:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVrm-00046Y-R3
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:47:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08E25360;
 Mon,  8 Jul 2019 08:47:45 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 061383F59C;
 Mon,  8 Jul 2019 08:47:43 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/11] firmware: arm_scmi: Add receive channel support for
 notifications
Date: Mon,  8 Jul 2019 16:47:22 +0100
Message-Id: <20190708154730.16643-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708154730.16643-1-sudeep.holla@arm.com>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084747_070041_A4AA48A3 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With scmi_mbox_chan_setup enabled to identify and setup both Tx and Rx,
let's consolidate setting up of both the channels under the function
scmi_mbox_txrx_setup.

Since some platforms may opt not to support notifications or delayed
response, they may not need support for Rx. Hence Rx is optional and
failure of setting one up is not considered fatal.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index f7fb6d5bfc64..e9b762348eff 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -113,6 +113,7 @@ struct scmi_chan_info {
  *	implementation version and (sub-)vendor identification.
  * @minfo: Message info
  * @tx_idr: IDR object to map protocol id to Tx channel info pointer
+ * @rx_idr: IDR object to map protocol id to Rx channel info pointer
  * @protocols_imp: List of protocols implemented, currently maximum of
  *	MAX_PROTOCOLS_IMP elements allocated by the base protocol
  * @node: List head
@@ -125,6 +126,7 @@ struct scmi_info {
 	struct scmi_handle handle;
 	struct scmi_xfers_info minfo;
 	struct idr tx_idr;
+	struct idr rx_idr;
 	u8 *protocols_imp;
 	struct list_head node;
 	int users;
@@ -655,12 +657,16 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	struct device_node *shmem, *np = dev->of_node;
 	struct scmi_chan_info *cinfo;
 	struct mbox_client *cl;
+	struct idr *idr;
 
 	/* Transmit channel is first entry i.e. index 0 */
 	idx = tx ? 0 : 1;
+	idr = tx ? &info->tx_idr : &info->rx_idr;
 
 	if (scmi_mailbox_check(np, idx)) {
-		cinfo = idr_find(&info->tx_idr, SCMI_PROTOCOL_BASE);
+		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
+		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
+			return -EINVAL;
 		goto idr_alloc;
 	}
 
@@ -701,7 +707,7 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	}
 
 idr_alloc:
-	ret = idr_alloc(&info->tx_idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
+	ret = idr_alloc(idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
 	if (ret != prot_id) {
 		dev_err(dev, "unable to allocate SCMI idr slot err %d\n", ret);
 		return ret;
@@ -711,6 +717,17 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	return 0;
 }
 
+static inline int
+scmi_mbox_txrx_setup(struct scmi_info *info, struct device *dev, int prot_id)
+{
+	int ret = scmi_mbox_chan_setup(info, dev, prot_id, true);
+
+	if (!ret) /* Rx is optional, hence no error check */
+		scmi_mbox_chan_setup(info, dev, prot_id, false);
+
+	return ret;
+}
+
 static inline void
 scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 			    int prot_id)
@@ -724,7 +741,7 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 		return;
 	}
 
-	if (scmi_mbox_chan_setup(info, &sdev->dev, prot_id, true)) {
+	if (scmi_mbox_txrx_setup(info, &sdev->dev, prot_id)) {
 		dev_err(&sdev->dev, "failed to setup transport\n");
 		scmi_device_destroy(sdev);
 		return;
@@ -767,12 +784,13 @@ static int scmi_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, info);
 	idr_init(&info->tx_idr);
+	idr_init(&info->rx_idr);
 
 	handle = &info->handle;
 	handle->dev = info->dev;
 	handle->version = &info->version;
 
-	ret = scmi_mbox_chan_setup(info, dev, SCMI_PROTOCOL_BASE, true);
+	ret = scmi_mbox_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
 	if (ret)
 		return ret;
 
@@ -842,6 +860,10 @@ static int scmi_remove(struct platform_device *pdev)
 	ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
 	idr_destroy(&info->tx_idr);
 
+	idr = &info->rx_idr;
+	ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
+	idr_destroy(&info->rx_idr);
+
 	return ret;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
