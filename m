Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED73A142AA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xOVI/dIe+7VeSb7EdNPKg5Pc42aTXkro+LZAhdCPLp0=; b=kZejK2d8T5usJku5zgzx2qMXHd
	JSylDYOoC8v8VRGYt8uJTv0YEk/JAYTPTAvRFR8gS0kH3E9/0+ZEmIbm3Nud5Hbl+LQs58fxiDnLj
	PRloLefpZxqmq+x1tqbxnPL2EK/a3CctuC/XBz4uFFjdoVHQDUqWJWlPM/t39YbCLazFMhPtZc+is
	qTX7hATnCZG7evy5SzMg0zMr84n5gmqlLSR/zB6NoN4gGijBWv61nef15A3S7Yfdz4F7e9wenFSxc
	AILAi++flvRQ6S/gMQwh6q+iKfrcqCLxExjfllBGmdkoyZDP4XYBqF8yhzlRFZXYbQSm5L2THTzsf
	2M4lqSsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itW7G-0001ix-Vw; Mon, 20 Jan 2020 12:25:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itW6V-0001Ti-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CFF1FEC;
 Mon, 20 Jan 2020 04:24:25 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 974623F68E;
 Mon, 20 Jan 2020 04:24:24 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 01/11] firmware: arm_scmi: Add receive buffer support for
 notifications
Date: Mon, 20 Jan 2020 12:23:23 +0000
Message-Id: <20200120122333.46217-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200120122333.46217-1-cristian.marussi@arm.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_042427_890396_BC246A42 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cristian.marussi@arm.com, james.quinlan@broadcom.com, lukasz.luba@arm.com,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

With all the plumbing in place, let's just add the separate dedicated
receive buffers to handle notifications that can arrive asynchronously
from the platform firmware to OS.

Also add check to see if the platform supports any receive channels
before allocating the receive buffers.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 2c96f6b5a7d8..9611e8037d77 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -123,6 +123,7 @@ struct scmi_chan_info {
  * @version: SCMI revision information containing protocol version,
  *	implementation version and (sub-)vendor identification.
  * @tx_minfo: Universal Transmit Message management info
+ * @rx_minfo: Universal Receive Message management info
  * @tx_idr: IDR object to map protocol id to Tx channel info pointer
  * @rx_idr: IDR object to map protocol id to Rx channel info pointer
  * @protocols_imp: List of protocols implemented, currently maximum of
@@ -136,6 +137,7 @@ struct scmi_info {
 	struct scmi_revision_info version;
 	struct scmi_handle handle;
 	struct scmi_xfers_info tx_minfo;
+	struct scmi_xfers_info rx_minfo;
 	struct idr tx_idr;
 	struct idr rx_idr;
 	u8 *protocols_imp;
@@ -690,13 +692,13 @@ int scmi_handle_put(const struct scmi_handle *handle)
 	return 0;
 }
 
-static int scmi_xfer_info_init(struct scmi_info *sinfo)
+static int __scmi_xfer_info_init(struct scmi_info *sinfo, bool tx)
 {
 	int i;
 	struct scmi_xfer *xfer;
 	struct device *dev = sinfo->dev;
 	const struct scmi_desc *desc = sinfo->desc;
-	struct scmi_xfers_info *info = &sinfo->tx_minfo;
+	struct scmi_xfers_info *info = tx ? &sinfo->tx_minfo : &sinfo->rx_minfo;
 
 	/* Pre-allocated messages, no more than what hdr.seq can support */
 	if (WARN_ON(desc->max_msg >= MSG_TOKEN_MAX)) {
@@ -731,6 +733,16 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
 	return 0;
 }
 
+static int scmi_xfer_info_init(struct scmi_info *sinfo)
+{
+	int ret = __scmi_xfer_info_init(sinfo, true);
+
+	if (!ret && idr_find(&sinfo->rx_idr, SCMI_PROTOCOL_BASE))
+		ret = __scmi_xfer_info_init(sinfo, false);
+
+	return ret;
+}
+
 static int scmi_mailbox_check(struct device_node *np, int idx)
 {
 	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
@@ -908,10 +920,6 @@ static int scmi_probe(struct platform_device *pdev)
 	info->desc = desc;
 	INIT_LIST_HEAD(&info->node);
 
-	ret = scmi_xfer_info_init(info);
-	if (ret)
-		return ret;
-
 	platform_set_drvdata(pdev, info);
 	idr_init(&info->tx_idr);
 	idr_init(&info->rx_idr);
@@ -924,6 +932,10 @@ static int scmi_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = scmi_xfer_info_init(info);
+	if (ret)
+		return ret;
+
 	ret = scmi_base_protocol_init(handle);
 	if (ret) {
 		dev_err(dev, "unable to communicate with SCMI(%d)\n", ret);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
