Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B010215DB25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:38:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LRT+2w9L4yL/1UUSCQP+NlnWMP9nHSolm+O2+lZ0mx8=; b=cZseGOkM6y3lcC8Zlt56jVPBb5
	+Uzd0qVLmHEcpF9SA/vOPMY8lAVTlsuTLLvTQ4jRos7WZWQRXtoff+Bq+CABhOUD+dibJaABuB/Mw
	7Y5RIiEKrhhqIoU4ENiZ/HTXLmZl7GCzSuZgODpJ7nlDXGJrkvJqhM7DB63skwCWtdkwoZdZRVjFm
	NLvATpkZ9RiiU+MExTIvuIiZj/2RY5iw8xoz2JuwMaPutSbDLeS0GahI0NzvhtSNPlNpT0fEtLfcU
	qbwoqSNzxqHn+148fWLyQrNzyd6IjnY3gr7aQcfbpu7oME0MQUrnI/WamQrkJkncmaEC3mq97d7W/
	oZZnk5Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2d2r-0003Ht-Bb; Fri, 14 Feb 2020 15:38:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2d1A-0001iN-Ed
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:36:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6ECF7101E;
 Fri, 14 Feb 2020 07:36:35 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6EAB83F68E;
 Fri, 14 Feb 2020 07:36:34 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 08/13] firmware: arm_scmi: Enable notification core
Date: Fri, 14 Feb 2020 15:35:30 +0000
Message-Id: <20200214153535.32046-9-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200214153535.32046-1-cristian.marussi@arm.com>
References: <20200214153535.32046-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_073636_580946_EC89532C 
X-CRM114-Status: GOOD (  11.06  )
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

Initialize and enable SCMI Notifications core support during bus/driver
init and probe phases, so that protocols can start registering their
supported events during their initialization, and later users can start
enrolling their callbacks for the subset of events their interested in.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V1 --> V2
- added timestamping
- moved notification init/exit and using devres
---
 drivers/firmware/arm_scmi/bus.c    | 11 +++++++++++
 drivers/firmware/arm_scmi/driver.c | 10 ++++++++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index db55c43a2cbd..0761f306982f 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -14,6 +14,7 @@
 #include <linux/device.h>
 
 #include "common.h"
+#include "notify.h"
 
 static DEFINE_IDA(scmi_bus_id);
 static DEFINE_IDR(scmi_protocols);
@@ -90,11 +91,21 @@ static int scmi_dev_probe(struct device *dev)
 	return scmi_drv->probe(scmi_dev);
 }
 
+static inline void scmi_protocol_events_cleanup(struct scmi_device *scmi_dev)
+{
+	if (scmi_stop_and_flush_protocol_events(scmi_dev->protocol_id))
+		scmi_unregister_protocol_events(scmi_dev->handle->dev,
+						scmi_dev->protocol_id);
+}
+
 static int scmi_dev_remove(struct device *dev)
 {
 	struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
 	struct scmi_device *scmi_dev = to_scmi_dev(dev);
 
+	/* Release events resources allocated by scmi_protocol_init() */
+	scmi_protocol_events_cleanup(scmi_dev);
+
 	if (scmi_drv->remove)
 		scmi_drv->remove(scmi_dev);
 
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 868cc36a07c9..dc93d608c43c 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -26,6 +26,7 @@
 #include <linux/slab.h>
 
 #include "common.h"
+#include "notify.h"
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/scmi.h>
@@ -204,11 +205,13 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 
 static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
 {
+	u64 ts;
 	struct scmi_xfer *xfer;
 	struct device *dev = cinfo->dev;
 	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
 	struct scmi_xfers_info *minfo = &info->rx_minfo;
 
+	ts = ktime_get_boottime_ns();
 	xfer = scmi_xfer_get(cinfo->handle, minfo);
 	if (IS_ERR(xfer)) {
 		dev_err(dev, "failed to get free message slot (%ld)\n",
@@ -221,6 +224,8 @@ static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
 	scmi_dump_header_dbg(dev, &xfer->hdr);
 	info->desc->ops->fetch_notification(cinfo, info->desc->max_msg_size,
 					    xfer);
+	scmi_notify(xfer->hdr.protocol_id, xfer->hdr.id, xfer->rx.buf,
+		    xfer->rx.len, ts);
 
 	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
 			   xfer->hdr.protocol_id, xfer->hdr.seq,
@@ -771,6 +776,9 @@ static int scmi_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	if (scmi_notification_init(handle))
+		dev_err(dev, "SCMI Notifications NOT available.\n");
+
 	ret = scmi_base_protocol_init(handle);
 	if (ret) {
 		dev_err(dev, "unable to communicate with SCMI(%d)\n", ret);
@@ -813,6 +821,8 @@ static int scmi_remove(struct platform_device *pdev)
 	struct scmi_info *info = platform_get_drvdata(pdev);
 	struct idr *idr = &info->tx_idr;
 
+	scmi_notification_exit();
+
 	mutex_lock(&scmi_list_mutex);
 	if (info->users)
 		ret = -EBUSY;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
