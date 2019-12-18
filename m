Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B663124595
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oKlAkPBQGKy9ecg65gw7o7Q2H15P0e+/PZlz59A6pCI=; b=Rm6GpPW0g2CpFi+OAn36h6/sHS
	YMDB6V2qf4cAsALf+cK4kKJorBB9HWLFdBYmjnaXlwF6lubL4/Ol1K2FbP5+kZuepyw8v8g73ggC4
	SjB1b7Ejx5yO2Go4Z7KKI775D64dDTqQ966CSvVg0uLDr1vdK2ZCkamXC2E8sqNg9nnNU+7nD3asG
	GJLfepJC7YtdIMpa6h7SYYwBUDnxlSGLw2hWKb4gnuVHcwCWwScsjJzNINa7NpIfVq1y8HqoEWUJa
	FBlUTx+N1Q+lW4o9A5hW/Kj8uTgQx/j7+Vvg3oOMdMwIruB1GizdQIqiyhAabuZbZoBJJ9aPNgGb3
	ZuArQf2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXMm-0004QZ-9P; Wed, 18 Dec 2019 11:19:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXL0-00031e-I3
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:17:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D947711B3;
 Wed, 18 Dec 2019 03:17:53 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 362D23F6CF;
 Wed, 18 Dec 2019 03:17:53 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/11] firmware: arm_scmi: Skip protocol initialisation for
 additional devices
Date: Wed, 18 Dec 2019 11:17:38 +0000
Message-Id: <20191218111742.29731-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218111742.29731-1-sudeep.holla@arm.com>
References: <20191218111742.29731-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_031754_688112_09D7E35B 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The scmi bus now supports adding multiple devices per protocol,
and since scmi_protocol_init is called for each scmi device created,
we must avoid allocating protocol private data and initialising the
protocol itself if it is already initialised.

In order to achieve the same, we can simple replace the idr pointer
from protocol initialisation function to a dummy function.

Suggested-by: Cristian Marussi <cristian.marussi@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/bus.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 3714e6307b05..db55c43a2cbd 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -60,6 +60,11 @@ static int scmi_protocol_init(int protocol_id, struct scmi_handle *handle)
 	return fn(handle);
 }
 
+static int scmi_protocol_dummy_init(struct scmi_handle *handle)
+{
+	return 0;
+}
+
 static int scmi_dev_probe(struct device *dev)
 {
 	struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
@@ -78,6 +83,10 @@ static int scmi_dev_probe(struct device *dev)
 	if (ret)
 		return ret;
 
+	/* Skip protocol initialisation for additional devices */
+	idr_replace(&scmi_protocols, &scmi_protocol_dummy_init,
+		    scmi_dev->protocol_id);
+
 	return scmi_drv->probe(scmi_dev);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
