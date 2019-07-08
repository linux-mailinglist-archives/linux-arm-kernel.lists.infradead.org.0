Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EA762516
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M2cn9YSZfCSJbXURrxA4fJlGKdo7slMnQh0kZ8PVTMU=; b=p+Pdhzv2olouwiWO3aP8VI0eu3
	hfaZohLycCHnFU6PLGDOlKXmFQevrdEwD4Bq15RPYQwkSPrXbxffhPJsPxnxv+mhn7iZtXE42sfHe
	dM+IhjbJgJNeRAWI4o7373/L18pJVkMlV/5IMIFdxbcfxpk4HomTGJnZWFG8iV5F3Sew3F3lW5hfM
	zrGJ/BOu73IgSfqbbmjvh7x88uyUbNkhuV2SQRPvwqvp9IgTGjNUgN6C5c2FFqnywV3B9KzPu+6Kr
	bBQmIDwAvV9Pqg/khbwrXxKLhk8Qozqj/ryFVcTFdyKKJVSuyf5cg8E3zLSr3C4FqRkT7IES9pz+D
	m6NatEIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVsW-0004bR-12; Mon, 08 Jul 2019 15:48:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVrk-00046Y-Kh
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:47:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C62471509;
 Mon,  8 Jul 2019 08:47:43 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C2DDF3F59C;
 Mon,  8 Jul 2019 08:47:42 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 02/11] firmware: arm_scmi: Segregate tx channel handling and
 prepare to add rx
Date: Mon,  8 Jul 2019 16:47:21 +0100
Message-Id: <20190708154730.16643-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708154730.16643-1-sudeep.holla@arm.com>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084744_783865_46252793 
X-CRM114-Status: GOOD (  14.74  )
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

The transmit(Tx) channels are specified as the first entry and the
receive(Rx) channels are the second entry as per the device tree
bindings. Since we currently just support Tx, index 0 is hardcoded at
all required callsites.

In order to prepare for adding Rx support, let's remove those hardcoded
index and add boolean parameter to identify Tx/Rx channels when setting
them up.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 33 ++++++++++++++++--------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 0bd2af0a008f..f7fb6d5bfc64 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -112,7 +112,7 @@ struct scmi_chan_info {
  * @version: SCMI revision information containing protocol version,
  *	implementation version and (sub-)vendor identification.
  * @minfo: Message info
- * @tx_idr: IDR object to map protocol id to channel info pointer
+ * @tx_idr: IDR object to map protocol id to Tx channel info pointer
  * @protocols_imp: List of protocols implemented, currently maximum of
  *	MAX_PROTOCOLS_IMP elements allocated by the base protocol
  * @node: List head
@@ -640,22 +640,26 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
 	return 0;
 }
 
-static int scmi_mailbox_check(struct device_node *np)
+static int scmi_mailbox_check(struct device_node *np, int idx)
 {
-	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells", 0, NULL);
+	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
+					  idx, NULL);
 }
 
-static inline int
-scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
+static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
+				int prot_id, bool tx)
 {
-	int ret;
+	int ret, idx;
 	struct resource res;
 	resource_size_t size;
 	struct device_node *shmem, *np = dev->of_node;
 	struct scmi_chan_info *cinfo;
 	struct mbox_client *cl;
 
-	if (scmi_mailbox_check(np)) {
+	/* Transmit channel is first entry i.e. index 0 */
+	idx = tx ? 0 : 1;
+
+	if (scmi_mailbox_check(np, idx)) {
 		cinfo = idr_find(&info->tx_idr, SCMI_PROTOCOL_BASE);
 		goto idr_alloc;
 	}
@@ -669,11 +673,11 @@ scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
 	cl = &cinfo->cl;
 	cl->dev = dev;
 	cl->rx_callback = scmi_rx_callback;
-	cl->tx_prepare = scmi_tx_prepare;
+	cl->tx_prepare = tx ? scmi_tx_prepare : NULL;
 	cl->tx_block = false;
-	cl->knows_txdone = true;
+	cl->knows_txdone = tx;
 
-	shmem = of_parse_phandle(np, "shmem", 0);
+	shmem = of_parse_phandle(np, "shmem", idx);
 	ret = of_address_to_resource(shmem, 0, &res);
 	of_node_put(shmem);
 	if (ret) {
@@ -688,8 +692,7 @@ scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
 		return -EADDRNOTAVAIL;
 	}
 
-	/* Transmit channel is first entry i.e. index 0 */
-	cinfo->chan = mbox_request_channel(cl, 0);
+	cinfo->chan = mbox_request_channel(cl, idx);
 	if (IS_ERR(cinfo->chan)) {
 		ret = PTR_ERR(cinfo->chan);
 		if (ret != -EPROBE_DEFER)
@@ -721,7 +724,7 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 		return;
 	}
 
-	if (scmi_mbox_chan_setup(info, &sdev->dev, prot_id)) {
+	if (scmi_mbox_chan_setup(info, &sdev->dev, prot_id, true)) {
 		dev_err(&sdev->dev, "failed to setup transport\n");
 		scmi_device_destroy(sdev);
 		return;
@@ -741,7 +744,7 @@ static int scmi_probe(struct platform_device *pdev)
 	struct device_node *child, *np = dev->of_node;
 
 	/* Only mailbox method supported, check for the presence of one */
-	if (scmi_mailbox_check(np)) {
+	if (scmi_mailbox_check(np, 0)) {
 		dev_err(dev, "no mailbox found in %pOF\n", np);
 		return -EINVAL;
 	}
@@ -769,7 +772,7 @@ static int scmi_probe(struct platform_device *pdev)
 	handle->dev = info->dev;
 	handle->version = &info->version;
 
-	ret = scmi_mbox_chan_setup(info, dev, SCMI_PROTOCOL_BASE);
+	ret = scmi_mbox_chan_setup(info, dev, SCMI_PROTOCOL_BASE, true);
 	if (ret)
 		return ret;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
