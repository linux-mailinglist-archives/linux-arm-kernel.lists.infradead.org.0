Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080C6142AB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:26:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E5a9Wy5GS7IS6F5xi/UbMqj/dxfqV7Lm5eYXgTeDYVI=; b=N8VSylUHiIWYIp77ZlQAv7qMMf
	sR9ndm6+nyOsXKPdbQYmMFvOSZihs39uXOUY7VNjCGiyMCSls9g4RdGegsq2CJbacSAM684LaVjP9
	c0RvZcBjUQf30h+HMd1fz5ndBx3gO/txHaX1jt6DBbdHb+Z0yk3ujMq+xkqq3bUhdIFcrZ0sGLpH8
	XH7FxoU8euPIG8+Whmas09meaFEEqQfjuF91gzK0t0I3BVJobJssQYQ9zMvfqTFgBgt+0rjBA/8Gs
	FVSyPVzU0SYOO/vjxDjtxfkYpkADqGhqKyCU6A2frwf7lT9lZt1pb+F0dbu8dZU3bUKSxmD36xI6c
	z8iUiU9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itW8J-0003vh-2u; Mon, 20 Jan 2020 12:26:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itW6W-0001UM-92
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:24:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 998071063;
 Mon, 20 Jan 2020 04:24:26 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B08353F68E;
 Mon, 20 Jan 2020 04:24:25 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 02/11] firmware: arm_scmi: Update protocol commands and
 notification list
Date: Mon, 20 Jan 2020 12:23:24 +0000
Message-Id: <20200120122333.46217-3-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200120122333.46217-1-cristian.marussi@arm.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_042428_359109_D91404A5 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
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

Add commands' enumerations and messages definitions for all existing
notify-enable commands across all protocols.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/base.c    | 7 +++++++
 drivers/firmware/arm_scmi/perf.c    | 5 +++++
 drivers/firmware/arm_scmi/power.c   | 6 ++++++
 drivers/firmware/arm_scmi/sensors.c | 4 ++++
 4 files changed, 22 insertions(+)

diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
index f804e8af6521..ce7d9203e41b 100644
--- a/drivers/firmware/arm_scmi/base.c
+++ b/drivers/firmware/arm_scmi/base.c
@@ -14,6 +14,13 @@ enum scmi_base_protocol_cmd {
 	BASE_DISCOVER_LIST_PROTOCOLS = 0x6,
 	BASE_DISCOVER_AGENT = 0x7,
 	BASE_NOTIFY_ERRORS = 0x8,
+	BASE_SET_DEVICE_PERMISSIONS = 0x9,
+	BASE_SET_PROTOCOL_PERMISSIONS = 0xa,
+	BASE_RESET_AGENT_CONFIGURATION = 0xb,
+};
+
+enum scmi_base_protocol_notify {
+	BASE_ERROR_EVENT = 0x0,
 };
 
 struct scmi_msg_resp_base_attributes {
diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index ec81e6f7e7a4..88509ec637d0 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -27,6 +27,11 @@ enum scmi_performance_protocol_cmd {
 	PERF_DESCRIBE_FASTCHANNEL = 0xb,
 };
 
+enum scmi_performance_protocol_notify {
+	PERFORMANCE_LIMITS_CHANGED = 0x0,
+	PERFORMANCE_LEVEL_CHANGED = 0x1,
+};
+
 struct scmi_opp {
 	u32 perf;
 	u32 power;
diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index 214886ce84f1..cf7f0312381b 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -12,6 +12,12 @@ enum scmi_power_protocol_cmd {
 	POWER_STATE_SET = 0x4,
 	POWER_STATE_GET = 0x5,
 	POWER_STATE_NOTIFY = 0x6,
+	POWER_STATE_CHANGE_REQUESTED_NOTIFY = 0x7,
+};
+
+enum scmi_power_protocol_notify {
+	POWER_STATE_CHANGED = 0x0,
+	POWER_STATE_CHANGE_REQUESTED = 0x1,
 };
 
 struct scmi_msg_resp_power_attributes {
diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index eba61b9c1f53..db1b1ab303da 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -14,6 +14,10 @@ enum scmi_sensor_protocol_cmd {
 	SENSOR_READING_GET = 0x6,
 };
 
+enum scmi_sensor_protocol_notify {
+	SENSOR_TRIP_POINT_EVENT = 0x0,
+};
+
 struct scmi_msg_resp_sensor_attributes {
 	__le16 num_sensors;
 	u8 max_requests;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
