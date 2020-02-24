Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871D916A8A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S+IVo1sgMM3nUvqpjeDNuM844dnWH0Ab5aI7NBI5ogM=; b=kX0t9SHZkLI6aFO8pap7Dy/u60
	F1JwBn2KTJaNFkBCBzIr51s99fHcyf5yz0mw2lddlmXwU3SPby8f52zqLIeLGEeJHJeqPmC5biziI
	duv3HbT2UyTjGkbvVWXSEXCq8haBstiUM3e7fy0Zh2f8kldMNOSkAB0irZ2VlVa9XRk/5GPE/NHhi
	XklZyIniO0L9Tp11gAXHv/EcJcsR+JHl1ckR7qPBztVWuD/NnL2bpF+XdK4WFesJxFAHAYWoCYEUI
	3c9qS2k/oAA7dJb+EnxIHxQnnCndCW3LIE5k1ADQACZUpO2mRbRl3XhJAD8hDEfsLFvc22ydmMGr+
	peYyooEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6EwW-0003Nq-PL; Mon, 24 Feb 2020 14:42:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Evv-00036A-VF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:42:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8939D31B;
 Mon, 24 Feb 2020 06:42:07 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8A6323F534;
 Mon, 24 Feb 2020 06:42:06 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v3 01/13] firmware: arm_scmi: Add receive buffer support
 for notifications
Date: Mon, 24 Feb 2020 14:41:12 +0000
Message-Id: <20200224144124.2008-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224144124.2008-1-cristian.marussi@arm.com>
References: <20200224144124.2008-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_064208_088828_1C998C0B 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

With all the plumbing in place, let's just add the separate dedicated
receive buffers to handle notifications that can arrive asynchronously
from the platform firmware to OS.

Also add one check to see if the platform supports any receive channels
before allocating the receive buffers: since those buffers are optionally
supported though, the whole xfer initialization is also postponed to be
able to check for their existence in advance.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
[Changed parameters in __scmi_xfer_info_init()]
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V1 --> V2:
- reviewed commit message
- reviewed parameters of __scmi_xfer_info_init()
---
 drivers/firmware/arm_scmi/driver.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index dbec767222e9..efb660c34b57 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -76,6 +76,7 @@ struct scmi_xfers_info {
  *	implementation version and (sub-)vendor identification.
  * @handle: Instance of SCMI handle to send to clients
  * @tx_minfo: Universal Transmit Message management info
+ * @rx_minfo: Universal Receive Message management info
  * @tx_idr: IDR object to map protocol id to Tx channel info pointer
  * @rx_idr: IDR object to map protocol id to Rx channel info pointer
  * @protocols_imp: List of protocols implemented, currently maximum of
@@ -89,6 +90,7 @@ struct scmi_info {
 	struct scmi_revision_info version;
 	struct scmi_handle handle;
 	struct scmi_xfers_info tx_minfo;
+	struct scmi_xfers_info rx_minfo;
 	struct idr tx_idr;
 	struct idr rx_idr;
 	u8 *protocols_imp;
@@ -525,13 +527,13 @@ int scmi_handle_put(const struct scmi_handle *handle)
 	return 0;
 }
 
-static int scmi_xfer_info_init(struct scmi_info *sinfo)
+static int __scmi_xfer_info_init(struct scmi_info *sinfo,
+				 struct scmi_xfers_info *info)
 {
 	int i;
 	struct scmi_xfer *xfer;
 	struct device *dev = sinfo->dev;
 	const struct scmi_desc *desc = sinfo->desc;
-	struct scmi_xfers_info *info = &sinfo->tx_minfo;
 
 	/* Pre-allocated messages, no more than what hdr.seq can support */
 	if (WARN_ON(desc->max_msg >= MSG_TOKEN_MAX)) {
@@ -566,6 +568,16 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
 	return 0;
 }
 
+static int scmi_xfer_info_init(struct scmi_info *sinfo)
+{
+	int ret = __scmi_xfer_info_init(sinfo, &sinfo->tx_minfo);
+
+	if (!ret && idr_find(&sinfo->rx_idr, SCMI_PROTOCOL_BASE))
+		ret = __scmi_xfer_info_init(sinfo, &sinfo->rx_minfo);
+
+	return ret;
+}
+
 static int scmi_chan_setup(struct scmi_info *info, struct device *dev,
 			   int prot_id, bool tx)
 {
@@ -699,10 +711,6 @@ static int scmi_probe(struct platform_device *pdev)
 	info->desc = desc;
 	INIT_LIST_HEAD(&info->node);
 
-	ret = scmi_xfer_info_init(info);
-	if (ret)
-		return ret;
-
 	platform_set_drvdata(pdev, info);
 	idr_init(&info->tx_idr);
 	idr_init(&info->rx_idr);
@@ -715,6 +723,10 @@ static int scmi_probe(struct platform_device *pdev)
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
