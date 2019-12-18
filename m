Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F7E124588
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:18:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MHSXxG1fdzD9qBpyc+sWPEIwYbOnnNoH8WpRK7D4aBA=; b=RVX1R4ZF4K1MFeak/0S4+T+o0H
	3IL1RJZhkTj7iBb0XyAlF6V4NosEyCcTi6eeQzyqlxhIdPaYfsfmAGj+UVRNsZs0DRJgxdyKzX8+i
	YA3OB0vOWeKLB28dQxZv72obBfoEk7QPKuIvU+esvtdnOcHpQAu8apsFwRZRYs+bQ/PmzI6DZ8m/2
	YIhbzUAxNiKvRiJl+zeRT9MCKo5xL6KBotMrhdKY0LclfV+LDYwn3y/xp+RyrmQLLyyUNuYgdhprp
	oXZJ5hliijNxenQFUBL5E1W7K9UhjlrvGFtPbyjHFP7zbGPJ4pJK/ONZoRGEs9gViesLjTjhhsR++
	77p6p7Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXLW-0003BT-2p; Wed, 18 Dec 2019 11:18:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXKv-0002y3-BI
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:17:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 826A731B;
 Wed, 18 Dec 2019 03:17:48 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D3A443F6CF;
 Wed, 18 Dec 2019 03:17:47 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/11] firmware: arm_scmi: Add support for multiple device
 per protocol
Date: Wed, 18 Dec 2019 11:17:32 +0000
Message-Id: <20191218111742.29731-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218111742.29731-1-sudeep.holla@arm.com>
References: <20191218111742.29731-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_031749_470389_80CDCB02 
X-CRM114-Status: GOOD (  14.57  )
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

Currently only one scmi device is created for each protocol enumerated.
However, there is requirement to make use of some procotols by multiple
kernel subsystems/frameworks. One such example is SCMI PERFORMANCE
protocol which can be used by both cpufreq and devfreq drivers.
Similarly, SENSOR protocol may be used by hwmon and iio subsystems,
and POWER protocol may be used by genpd and regulator drivers.

In order to achieve that, let us extend the scmi bus to match based
not only protocol id but also the scmi device name if one is available.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/bus.c    | 20 +++++++++++++++++---
 drivers/firmware/arm_scmi/driver.c |  6 +++---
 include/linux/scmi_protocol.h      |  5 ++++-
 3 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 7a30952b463d..3714e6307b05 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -28,8 +28,12 @@ scmi_dev_match_id(struct scmi_device *scmi_dev, struct scmi_driver *scmi_drv)
 		return NULL;
 
 	for (; id->protocol_id; id++)
-		if (id->protocol_id == scmi_dev->protocol_id)
-			return id;
+		if (id->protocol_id == scmi_dev->protocol_id) {
+			if (!id->name)
+				return id;
+			else if (!strcmp(id->name, scmi_dev->name))
+				return id;
+		}
 
 	return NULL;
 }
@@ -125,7 +129,8 @@ static void scmi_device_release(struct device *dev)
 }
 
 struct scmi_device *
-scmi_device_create(struct device_node *np, struct device *parent, int protocol)
+scmi_device_create(struct device_node *np, struct device *parent, int protocol,
+		   const char *name)
 {
 	int id, retval;
 	struct scmi_device *scmi_dev;
@@ -134,8 +139,15 @@ scmi_device_create(struct device_node *np, struct device *parent, int protocol)
 	if (!scmi_dev)
 		return NULL;
 
+	scmi_dev->name = kstrdup_const(name ?: "unknown", GFP_KERNEL);
+	if (!scmi_dev->name) {
+		kfree(scmi_dev);
+		return NULL;
+	}
+
 	id = ida_simple_get(&scmi_bus_id, 1, 0, GFP_KERNEL);
 	if (id < 0) {
+		kfree_const(scmi_dev->name);
 		kfree(scmi_dev);
 		return NULL;
 	}
@@ -154,6 +166,7 @@ scmi_device_create(struct device_node *np, struct device *parent, int protocol)
 
 	return scmi_dev;
 put_dev:
+	kfree_const(scmi_dev->name);
 	put_device(&scmi_dev->dev);
 	ida_simple_remove(&scmi_bus_id, id);
 	return NULL;
@@ -161,6 +174,7 @@ scmi_device_create(struct device_node *np, struct device *parent, int protocol)
 
 void scmi_device_destroy(struct scmi_device *scmi_dev)
 {
+	kfree_const(scmi_dev->name);
 	scmi_handle_put(scmi_dev->handle);
 	ida_simple_remove(&scmi_bus_id, scmi_dev->id);
 	device_unregister(&scmi_dev->dev);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 3eb0382491ce..dee7ce3bd815 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -803,11 +803,11 @@ scmi_mbox_txrx_setup(struct scmi_info *info, struct device *dev, int prot_id)
 
 static inline void
 scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
-			    int prot_id)
+			    int prot_id, const char *name)
 {
 	struct scmi_device *sdev;
 
-	sdev = scmi_device_create(np, info->dev, prot_id);
+	sdev = scmi_device_create(np, info->dev, prot_id, name);
 	if (!sdev) {
 		dev_err(info->dev, "failed to create %d protocol device\n",
 			prot_id);
@@ -892,7 +892,7 @@ static int scmi_probe(struct platform_device *pdev)
 			continue;
 		}
 
-		scmi_create_protocol_device(child, info, prot_id);
+		scmi_create_protocol_device(child, info, prot_id, NULL);
 	}
 
 	return 0;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 881fea47c83d..5c873a59b387 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -257,6 +257,7 @@ enum scmi_std_protocol {
 struct scmi_device {
 	u32 id;
 	u8 protocol_id;
+	const char *name;
 	struct device dev;
 	struct scmi_handle *handle;
 };
@@ -264,11 +265,13 @@ struct scmi_device {
 #define to_scmi_dev(d) container_of(d, struct scmi_device, dev)
 
 struct scmi_device *
-scmi_device_create(struct device_node *np, struct device *parent, int protocol);
+scmi_device_create(struct device_node *np, struct device *parent, int protocol,
+		   const char *name);
 void scmi_device_destroy(struct scmi_device *scmi_dev);
 
 struct scmi_device_id {
 	u8 protocol_id;
+	const char *name;
 };
 
 struct scmi_driver {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
