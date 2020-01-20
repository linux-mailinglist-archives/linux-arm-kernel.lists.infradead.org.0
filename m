Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CF5142AA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JiSZO0RlhFa9Sfrk+JEEqt2h82/xooFLomqkCZdteWE=; b=iNTHu3XCDUYeSptC1mgQxyGU9J
	MQKVTphIWpSGEjiQ479xMFOomaVrHrYOlPIQ0NB6bC0+dOopJH9nepK5Sw9krCE7BPxMQCUjfcSfo
	ANNzLzmanjggym4GWc+M6QduM8eYtD5fXkkc5JrU0dCIeoAtpPqhu7XG8FuVPw9bwMBWs+IPjnGaK
	pDVOmLOU9Rr6Sc2X2VeIofotYYF6BW/UZjs8g3x8DYBr3RudCAVlYNeriQkwA/XfNrWTIQyQiPb7K
	ozpZK/fm9CcxI4Mc+fUUNQ+73TrVS4E6iJcWdhndPz2HCmbsmu4khK/pikMlFBTD99MvVHPXxSW59
	uR+wvg7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itW7a-0003Ed-Gi; Mon, 20 Jan 2020 12:25:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itW6b-0001W5-QK
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:24:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A4E613A1;
 Mon, 20 Jan 2020 04:24:31 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 648423F68E;
 Mon, 20 Jan 2020 04:24:30 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 06/11] firmware: arm_scmi: Enable core notifications
Date: Mon, 20 Jan 2020 12:23:28 +0000
Message-Id: <20200120122333.46217-7-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200120122333.46217-1-cristian.marussi@arm.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_042433_917277_7ACA4994 
X-CRM114-Status: GOOD (  11.87  )
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

Initialize and enable SCMI Notification core support during bus/driver
init and probe phases: protocol can register their supported events
and users can register their callbacks for interested events.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/bus.c    | 3 +++
 drivers/firmware/arm_scmi/driver.c | 7 +++++--
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index db55c43a2cbd..80d5ad29d205 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -14,6 +14,7 @@
 #include <linux/device.h>
 
 #include "common.h"
+#include "notify.h"
 
 static DEFINE_IDA(scmi_bus_id);
 static DEFINE_IDR(scmi_protocols);
@@ -234,6 +235,7 @@ static int __init scmi_bus_init(void)
 {
 	int retval;
 
+	scmi_notification_init();
 	retval = bus_register(&scmi_bus_type);
 	if (retval)
 		pr_err("scmi protocol bus register failed (%d)\n", retval);
@@ -245,6 +247,7 @@ subsys_initcall(scmi_bus_init);
 static void __exit scmi_bus_exit(void)
 {
 	scmi_devices_unregister();
+	scmi_notification_exit();
 	bus_unregister(&scmi_bus_type);
 	ida_destroy(&scmi_bus_id);
 }
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index a43fad29de11..a60559201f2d 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -28,6 +28,7 @@
 #include <linux/slab.h>
 
 #include "common.h"
+#include "notify.h"
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/scmi.h>
@@ -350,14 +351,14 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 
 static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
 {
-	ktime_t ts;
+	u64 ts;
 	struct scmi_xfer *xfer;
 	struct device *dev = cinfo->dev;
 	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
 	struct scmi_xfers_info *minfo = &info->rx_minfo;
 	struct scmi_shared_mem __iomem *mem = cinfo->payload;
 
-	ts = ktime_get_boottime();
+	ts = ktime_get_boottime_ns();
 	xfer = scmi_xfer_get(cinfo->handle, minfo);
 	if (IS_ERR(xfer)) {
 		dev_err(dev, "failed to get free message slot (%ld)\n",
@@ -370,6 +371,8 @@ static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
 	unpack_scmi_header(msg_hdr, &xfer->hdr);
 	scmi_dump_header_dbg(dev, &xfer->hdr);
 	scmi_fetch_notification(xfer, info->desc->max_msg_size, mem);
+	scmi_notify(xfer->hdr.protocol_id, xfer->hdr.id, xfer->rx.buf,
+		    xfer->rx.len, ts);
 	__scmi_xfer_put(minfo, xfer);
 
 	iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE, &mem->channel_status);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
