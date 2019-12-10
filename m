Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBED118BBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JhCizEtVPEMrZS0x9gkNcdblCfMNkcXudPWkTuZWcac=; b=WjjsL/mo5kfdF4LeOWpYXVdsZ1
	rkrqbDuygjPCNi+dA3RWdLHgU8Hti4wwc5RZzXUhpOOLJYODGmdwKtfDPtASA7hKkcf+BCrtpGy+M
	E+EOiaotoIjXGel03GJg/sImxZJnovCHpSsjH/exdIdu0wfqHlZ0s9sY9K5D3cARNhjaGdBEHQ3Gk
	n7zjjNJx9uMqMyk4/IsekGRKD7qsSt5UmvssieOfKY+33vcaES03AE0JRCwtmNaWAb6mdmkecYkKf
	FolcijwmOTpcc1VUWvRa4WX8Jchz27968Z9jGPDdjZZy7Pi4kWRG1zVgB/rGthjlBgGALZrFfs7cd
	+OSHyctw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegw1-0000dr-4p; Tue, 10 Dec 2019 14:56:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtu-00064F-LT
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2668D113E;
 Tue, 10 Dec 2019 06:54:10 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 776E63F67D;
 Tue, 10 Dec 2019 06:54:09 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 06/15] firmware: arm_scmi: Update scmi_prot_init_fn_t to use
 device instead of handle
Date: Tue, 10 Dec 2019 14:53:36 +0000
Message-Id: <20191210145345.11616-7-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210145345.11616-1-sudeep.holla@arm.com>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065410_869475_E0F027C5 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The scmi bus now supports multiple device per protocol. So, in order to
initialise each device and it's attributes, it's better to pass scmi_device
pointer to the protocol initialise function rather than scmi_handle.
scmi_handle can be still fetched from the scmi_device pointer.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/bus.c     | 6 +++---
 drivers/firmware/arm_scmi/clock.c   | 3 ++-
 drivers/firmware/arm_scmi/perf.c    | 3 ++-
 drivers/firmware/arm_scmi/power.c   | 3 ++-
 drivers/firmware/arm_scmi/reset.c   | 3 ++-
 drivers/firmware/arm_scmi/sensors.c | 3 ++-
 include/linux/scmi_protocol.h       | 2 +-
 7 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 3714e6307b05..f619da2634a6 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -51,13 +51,13 @@ static int scmi_dev_match(struct device *dev, struct device_driver *drv)
 	return 0;
 }

-static int scmi_protocol_init(int protocol_id, struct scmi_handle *handle)
+static int scmi_protocol_init(int protocol_id, struct scmi_device *dev)
 {
 	scmi_prot_init_fn_t fn = idr_find(&scmi_protocols, protocol_id);

 	if (unlikely(!fn))
 		return -EINVAL;
-	return fn(handle);
+	return fn(dev);
 }

 static int scmi_dev_probe(struct device *dev)
@@ -74,7 +74,7 @@ static int scmi_dev_probe(struct device *dev)
 	if (!scmi_dev->handle)
 		return -EPROBE_DEFER;

-	ret = scmi_protocol_init(scmi_dev->protocol_id, scmi_dev->handle);
+	ret = scmi_protocol_init(scmi_dev->protocol_id, scmi_dev);
 	if (ret)
 		return ret;

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 922b22aaaf84..6c24eb8a4e68 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -310,11 +310,12 @@ static struct scmi_clk_ops clk_ops = {
 	.disable = scmi_clock_disable,
 };

-static int scmi_clock_protocol_init(struct scmi_handle *handle)
+static int scmi_clock_protocol_init(struct scmi_device *dev)
 {
 	u32 version;
 	int clkid, ret;
 	struct clock_info *cinfo;
+	struct scmi_handle *handle = dev->handle;

 	if (handle->clk_ops && handle->clk_priv)
 		return 0; /* initialised already for the first device */
diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 55c2a4c21ccb..4f02bfba98ba 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -704,11 +704,12 @@ static struct scmi_perf_ops perf_ops = {
 	.est_power_get = scmi_dvfs_est_power_get,
 };

-static int scmi_perf_protocol_init(struct scmi_handle *handle)
+static int scmi_perf_protocol_init(struct scmi_device *dev)
 {
 	int domain;
 	u32 version;
 	struct scmi_perf_info *pinfo;
+	struct scmi_handle *handle = dev->handle;

 	if (handle->perf_ops && handle->perf_priv)
 		return 0; /* initialised already for the first device */
diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index 9a7593238b8f..5a8faa369d82 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -179,11 +179,12 @@ static struct scmi_power_ops power_ops = {
 	.state_get = scmi_power_state_get,
 };

-static int scmi_power_protocol_init(struct scmi_handle *handle)
+static int scmi_power_protocol_init(struct scmi_device *dev)
 {
 	int domain;
 	u32 version;
 	struct scmi_power_info *pinfo;
+	struct scmi_handle *handle = dev->handle;

 	if (handle->power_ops && handle->power_priv)
 		return 0; /* initialised already for the first device */
diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index 809dc8faee1e..438d74a2c80a 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -189,11 +189,12 @@ static struct scmi_reset_ops reset_ops = {
 	.deassert = scmi_reset_domain_deassert,
 };

-static int scmi_reset_protocol_init(struct scmi_handle *handle)
+static int scmi_reset_protocol_init(struct scmi_device *dev)
 {
 	int domain;
 	u32 version;
 	struct scmi_reset_info *pinfo;
+	struct scmi_handle *handle = dev->handle;

 	if (handle->reset_ops && handle->reset_priv)
 		return 0; /* initialised already for the first device */
diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index b7f92c37c8a4..afa51bedfa5d 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -271,10 +271,11 @@ static struct scmi_sensor_ops sensor_ops = {
 	.reading_get = scmi_sensor_reading_get,
 };

-static int scmi_sensors_protocol_init(struct scmi_handle *handle)
+static int scmi_sensors_protocol_init(struct scmi_device *dev)
 {
 	u32 version;
 	struct sensors_info *sinfo;
+	struct scmi_handle *handle = dev->handle;

 	if (handle->sensor_ops && handle->sensor_priv)
 		return 0; /* initialised already for the first device */
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 5c873a59b387..b676825e6eb0 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -316,6 +316,6 @@ static inline void scmi_driver_unregister(struct scmi_driver *driver) {}
 #define module_scmi_driver(__scmi_driver)	\
 	module_driver(__scmi_driver, scmi_register, scmi_unregister)

-typedef int (*scmi_prot_init_fn_t)(struct scmi_handle *);
+typedef int (*scmi_prot_init_fn_t)(struct scmi_device *);
 int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn);
 void scmi_protocol_unregister(int protocol_id);
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
