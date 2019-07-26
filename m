Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67037698B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0xtntPwmOoKlHEjpF5IHU15nJ80g2mB8lJqTWfrTNwE=; b=U9xyO1HR0gKtINX8sTwFPE5dIL
	HTSOU4CNgWsqteis1f1Wgx8TyqLI0fjtdr5jDd6nrmXE5ZthVO0Qz9JGjmNWY6CmDrT4ELs25g/mJ
	V+n70R7KB3z/ci6/ntVPYe2tjXcsP/PJglWbUf2xKPJkQoSDd/4a6BhUDlgBR0jjdLKMzv77hxkNT
	ytPA5oFVCwqk1CSobb0ILx/O1SivixxlDINRXFftvWVkLxTWIaKd+4ZPMCXchNFG6vvSux/qMZCsG
	sieaMhaISbl5E6EnG1mVHHBqgSj7cpZ8+mSQbAiM/i5Ptm9UwVGzMyUY7IkiBPkjv3xOyE/2rIs5M
	PiHnF+FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0ec-0008KR-0r; Fri, 26 Jul 2019 13:53:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0dU-0007Zo-1t
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:51:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53AB1337;
 Fri, 26 Jul 2019 06:51:51 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 19ABE3F694;
 Fri, 26 Jul 2019 06:51:49 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 03/10] firmware: arm_scmi: Add receive channel support for
 notifications
Date: Fri, 26 Jul 2019 14:51:31 +0100
Message-Id: <20190726135138.9858-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135138.9858-1-sudeep.holla@arm.com>
References: <20190726135138.9858-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_065152_217325_85681B29 
X-CRM114-Status: GOOD (  12.76  )
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 linux-kernel@vger.kernel.org, Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
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
index 336673afd6ef..5a8c015bf233 100644
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
@@ -655,13 +657,17 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	struct device_node *shmem, *np = dev->of_node;
 	struct scmi_chan_info *cinfo;
 	struct mbox_client *cl;
+	struct idr *idr;
 	const char *desc = tx ? "Tx" : "Rx";
 
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
 
@@ -703,7 +709,7 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	}
 
 idr_alloc:
-	ret = idr_alloc(&info->tx_idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
+	ret = idr_alloc(idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
 	if (ret != prot_id) {
 		dev_err(dev, "unable to allocate SCMI idr slot err %d\n", ret);
 		return ret;
@@ -713,6 +719,17 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
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
@@ -726,7 +743,7 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 		return;
 	}
 
-	if (scmi_mbox_chan_setup(info, &sdev->dev, prot_id, true)) {
+	if (scmi_mbox_txrx_setup(info, &sdev->dev, prot_id)) {
 		dev_err(&sdev->dev, "failed to setup transport\n");
 		scmi_device_destroy(sdev);
 		return;
@@ -769,12 +786,13 @@ static int scmi_probe(struct platform_device *pdev)
 
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
 
@@ -844,6 +862,10 @@ static int scmi_remove(struct platform_device *pdev)
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
