Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407941DAD08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3gU3Vn5IEKqbol53RMCf9FHtgXKJfOJddqakA1HsX4I=; b=UQ85WX1fnmOkspWHncwVMWCk/o
	gcAtA1kA4BPln0Me51PE+hLZ5Lw9Mb/3y80w87TvA+p1YBFlQM01qUo++lmMOwotiFh0MGCZikADs
	wjm5rEegLf15yYa7qTcg9VftB5c+CIY+1S+EfH8/27+qM/jtu5uyUaLRWEnG0KZflytDvBFUhfVdT
	er/D+jqlCFgqRXXZ/04iP6TYBbgrhtdUzr+zNug7BBJr2pO+2yzG2z4SeSQcq95QDc4Kc2N487ipB
	z5AECYCNH9+4QGsNNVby7PbpjhuCtyYUOIDas/xcbQmhi2tld2+JVqXOYbaDWQiPOtVu3+VwSbBKh
	GWzbwznw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJrL-0007kY-CO; Wed, 20 May 2020 08:13:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJpY-0006TU-NM
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:12:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A75B1142F;
 Wed, 20 May 2020 01:11:59 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8547E3F52E;
 Wed, 20 May 2020 01:11:58 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v8 4/9] firmware: arm_scmi: Enable notification core
Date: Wed, 20 May 2020 09:11:13 +0100
Message-Id: <20200520081118.54897-5-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520081118.54897-1-cristian.marussi@arm.com>
References: <20200520081118.54897-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_011200_856566_D6BA920A 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: sudeep.holla@arm.com, lukasz.luba@arm.com, james.quinlan@broadcom.com,
 Jonathan.Cameron@Huawei.com, dave.martin@arm.com, cristian.marussi@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Initialize and enable SCMI Notifications core support during bus/driver
probe phase, so that protocols can start registering their supported
events during their initialization.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V3 --> V4
- simplified core initialization: protocols events' registrations is now
  disjoint from users' callback registrations, so that events' generation
  can be enabled earlier for registered events and delayed for pending
  ones in order to support deferred (or missing) protocol initialization
V2 --> V3
- reviewed core initialization: all implemented protocols must complete
  their protocol-events registration phases before notifications can be
  enabled as a whole; in the meantime any user's callback registration
  requests possibly issued while the notifications were not enabled
  remain pending: a dedicated worker completes the handlers registration
  once all protocols have been initialized.
  NOTE THAT this can lead to ISSUES with late inserted or missing SCMI
  modules (i.e. for protocols defined in the DT and implemented by the
  platform but lazily loaded or not loaded at all.), since in these
  scenarios notifications dispatching will be enabled later or never.
- reviewed core exit: protocol users (devices) are accounted on probe/
  remove, and protocols' events are unregisteredonce last user go
  (can happen only at shutdown)
V1 --> V2
- added timestamping
- moved notification init/exit and using devres
---
 drivers/firmware/arm_scmi/driver.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index fec308e47b9d..688268ee99cb 100644
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
+	scmi_notify(cinfo->handle, xfer->hdr.protocol_id,
+		    xfer->hdr.id, xfer->rx.buf, xfer->rx.len, ts);
 
 	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
 			   xfer->hdr.protocol_id, xfer->hdr.seq,
@@ -789,6 +794,9 @@ static int scmi_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	if (scmi_notification_init(handle))
+		dev_err(dev, "SCMI Notifications NOT available.\n");
+
 	ret = scmi_base_protocol_init(handle);
 	if (ret) {
 		dev_err(dev, "unable to communicate with SCMI(%d)\n", ret);
@@ -831,6 +839,8 @@ static int scmi_remove(struct platform_device *pdev)
 	struct scmi_info *info = platform_get_drvdata(pdev);
 	struct idr *idr = &info->tx_idr;
 
+	scmi_notification_exit(&info->handle);
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
