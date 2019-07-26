Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB5F76AAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+T3o8Y8ae+AgtWuqqqXkvTQ/FWXAxn68qrm/ZygFLfU=; b=FOEvpGS5Fq9S2oqC1np9i2exyT
	VphQuKYoZQRh9BNP8oIeCA6dkkHC2ddQEJ+40BxvYpeDfXTINm0E+PFVtyQJWZ5zXvXiw/jQDRbuO
	PsWm1B4sj9nEqqE1obC7xfjrLexuyvnNesRoYuBYhma3GSH/a7kzhek0aBBwrAD0cSbxU3/vm41wk
	1q0OV5QL/85Lf02HQbgtUNT0QkcvkYCTZ5Aq2sxcVnXQ6GPfNRcGGyjiuinBjpV7vJybcliZFxx+E
	3K+03cx2d6+kj8WVL7mh2WlOirpbX5LF3lKUq83aEf2mA55Rsqv7JxFa8Ny7xEDlB7cDdtE7Raodm
	rJe4qvZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0m6-0005Vt-7A; Fri, 26 Jul 2019 14:00:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0lV-0005E0-Mb
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:00:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7656152D;
 Fri, 26 Jul 2019 07:00:08 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7DE1D3F694;
 Fri, 26 Jul 2019 07:00:06 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] firmware: arm_scmi: Add discovery of SCMI v2.0
 performance fastchannels
Date: Fri, 26 Jul 2019 14:59:50 +0100
Message-Id: <20190726135954.11078-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135954.11078-1-sudeep.holla@arm.com>
References: <20190726135954.11078-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070009_883469_6F3C826A 
X-CRM114-Status: GOOD (  14.50  )
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
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, wesleys@xilinx.com,
 Ionela Voinescu <Ionela.Voinescu@arm.com>, aidapala@qti.qualcomm.com,
 linux-kernel@vger.kernel.org, Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Quentin Perret <Quentin.Perret@arm.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Felix Burton <fburton@xilinx.com>, Jim Quinlan <james.quinlan@broadcom.com>,
 Sudeep Holla <sudeep.holla@arm.com>, pajay@qti.qualcomm.com,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 Chris Redpath <Chris.Redpath@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCMI v2.0 adds support for "FastChannel", a lightweight unidirectional
channel that is dedicated to a single SCMI message type for controlling
a specific platform resource. They do not use a message header as they
are specialized for a single message.

Only PERFORMANCE_LIMITS_{SET,GET} and PERFORMANCE_LEVEL_{SET,GET}
commands are supported over fastchannels. As they are optional, they
need to be discovered by PERFORMANCE_DESCRIBE_FASTCHANNEL command.
Further {LIMIT,LEVEL}_SET commands can have optional doorbell support.

Add support for discovery of these fastchannels.

Cc: Ionela Voinescu <Ionela.Voinescu@arm.com>
Cc: Chris Redpath <Chris.Redpath@arm.com>
Cc: Quentin Perret <Quentin.Perret@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/perf.c | 153 ++++++++++++++++++++++++++++++-
 1 file changed, 149 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 3c8ae7cc35de..6cce3e82e81e 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -5,7 +5,9 @@
  * Copyright (C) 2018 ARM Ltd.
  */
 
+#include <linux/bits.h>
 #include <linux/of.h>
+#include <linux/io.h>
 #include <linux/platform_device.h>
 #include <linux/pm_opp.h>
 #include <linux/sort.h>
@@ -21,6 +23,7 @@ enum scmi_performance_protocol_cmd {
 	PERF_LEVEL_GET = 0x8,
 	PERF_NOTIFY_LIMITS = 0x9,
 	PERF_NOTIFY_LEVEL = 0xa,
+	PERF_DESCRIBE_FASTCHANNEL = 0xb,
 };
 
 struct scmi_opp {
@@ -44,6 +47,7 @@ struct scmi_msg_resp_perf_domain_attributes {
 #define SUPPORTS_SET_PERF_LVL(x)	((x) & BIT(30))
 #define SUPPORTS_PERF_LIMIT_NOTIFY(x)	((x) & BIT(29))
 #define SUPPORTS_PERF_LEVEL_NOTIFY(x)	((x) & BIT(28))
+#define SUPPORTS_PERF_FASTCHANNELS(x)	((x) & BIT(27))
 	__le32 rate_limit_us;
 	__le32 sustained_freq_khz;
 	__le32 sustained_perf_level;
@@ -87,17 +91,56 @@ struct scmi_msg_resp_perf_describe_levels {
 	} opp[0];
 };
 
+struct scmi_perf_get_fc_info {
+	__le32 domain;
+	__le32 message_id;
+};
+
+struct scmi_msg_resp_perf_desc_fc {
+	__le32 attr;
+#define SUPPORTS_DOORBELL(x)		((x) & BIT(0))
+#define DOORBELL_REG_WIDTH(x)		FIELD_GET(GENMASK(2, 1), (x))
+	__le32 rate_limit;
+	__le32 chan_addr_low;
+	__le32 chan_addr_high;
+	__le32 chan_size;
+	__le32 db_addr_low;
+	__le32 db_addr_high;
+	__le32 db_set_lmask;
+	__le32 db_set_hmask;
+	__le32 db_preserve_lmask;
+	__le32 db_preserve_hmask;
+};
+
+struct scmi_fc_db_info {
+	int width;
+	u64 set;
+	u64 mask;
+	void __iomem *addr;
+};
+
+struct scmi_fc_info {
+	void __iomem *level_set_addr;
+	void __iomem *limit_set_addr;
+	void __iomem *level_get_addr;
+	void __iomem *limit_get_addr;
+	struct scmi_fc_db_info *level_set_db;
+	struct scmi_fc_db_info *limit_set_db;
+};
+
 struct perf_dom_info {
 	bool set_limits;
 	bool set_perf;
 	bool perf_limit_notify;
 	bool perf_level_notify;
+	bool perf_fastchannels;
 	u32 opp_count;
 	u32 sustained_freq_khz;
 	u32 sustained_perf_level;
 	u32 mult_factor;
 	char name[SCMI_MAX_STR_SIZE];
 	struct scmi_opp opp[MAX_OPPS];
+	struct scmi_fc_info *fc_info;
 };
 
 struct scmi_perf_info {
@@ -162,6 +205,7 @@ scmi_perf_domain_attributes_get(const struct scmi_handle *handle, u32 domain,
 		dom_info->set_perf = SUPPORTS_SET_PERF_LVL(flags);
 		dom_info->perf_limit_notify = SUPPORTS_PERF_LIMIT_NOTIFY(flags);
 		dom_info->perf_level_notify = SUPPORTS_PERF_LEVEL_NOTIFY(flags);
+		dom_info->perf_fastchannels = SUPPORTS_PERF_FASTCHANNELS(flags);
 		dom_info->sustained_freq_khz =
 					le32_to_cpu(attr->sustained_freq_khz);
 		dom_info->sustained_perf_level =
@@ -250,7 +294,7 @@ scmi_perf_describe_levels_get(const struct scmi_handle *handle, u32 domain,
 }
 
 static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
-				u32 max_perf, u32 min_perf)
+				   u32 max_perf, u32 min_perf)
 {
 	int ret;
 	struct scmi_xfer *t;
@@ -273,7 +317,7 @@ static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
 }
 
 static int scmi_perf_limits_get(const struct scmi_handle *handle, u32 domain,
-				u32 *max_perf, u32 *min_perf)
+				   u32 *max_perf, u32 *min_perf)
 {
 	int ret;
 	struct scmi_xfer *t;
@@ -299,7 +343,7 @@ static int scmi_perf_limits_get(const struct scmi_handle *handle, u32 domain,
 }
 
 static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
-			       u32 level, bool poll)
+				  u32 level, bool poll)
 {
 	int ret;
 	struct scmi_xfer *t;
@@ -322,7 +366,7 @@ static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
 }
 
 static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
-			       u32 *level, bool poll)
+				  u32 *level, bool poll)
 {
 	int ret;
 	struct scmi_xfer *t;
@@ -343,6 +387,104 @@ static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
+static bool scmi_perf_fc_size_is_valid(u32 msg, u32 size)
+{
+	if ((msg == PERF_LEVEL_GET || msg == PERF_LEVEL_SET) && size == 4)
+		return true;
+	if ((msg == PERF_LIMITS_GET || msg == PERF_LIMITS_SET) && size == 8)
+		return true;
+	return false;
+}
+
+static void
+scmi_perf_domain_desc_fc(const struct scmi_handle *handle, u32 domain,
+			 u32 message_id, void __iomem **p_addr,
+			 struct scmi_fc_db_info **p_db)
+{
+	int ret;
+	u32 flags;
+	u64 phys_addr;
+	u8 size;
+	void __iomem *addr;
+	struct scmi_xfer *t;
+	struct scmi_fc_db_info *db;
+	struct scmi_perf_get_fc_info *info;
+	struct scmi_msg_resp_perf_desc_fc *resp;
+
+	if (!p_addr)
+		return;
+
+	ret = scmi_xfer_get_init(handle, PERF_DESCRIBE_FASTCHANNEL,
+				 SCMI_PROTOCOL_PERF,
+				 sizeof(*info), sizeof(*resp), &t);
+	if (ret)
+		return;
+
+	info = t->tx.buf;
+	info->domain = cpu_to_le32(domain);
+	info->message_id = cpu_to_le32(message_id);
+
+	ret = scmi_do_xfer(handle, t);
+	if (ret)
+		goto err_xfer;
+
+	resp = t->rx.buf;
+	flags = le32_to_cpu(resp->attr);
+	size = le32_to_cpu(resp->chan_size);
+	if (!scmi_perf_fc_size_is_valid(message_id, size))
+		goto err_xfer;
+
+	phys_addr = le32_to_cpu(resp->chan_addr_low);
+	phys_addr |= (u64)le32_to_cpu(resp->chan_addr_high) << 32;
+	addr = devm_ioremap(handle->dev, phys_addr, size);
+	if (!addr)
+		goto err_xfer;
+	*p_addr = addr;
+
+	if (p_db && SUPPORTS_DOORBELL(flags)) {
+		db = devm_kzalloc(handle->dev, sizeof(*db), GFP_KERNEL);
+		if (!db)
+			goto err_xfer;
+
+		size = 1 << DOORBELL_REG_WIDTH(flags);
+		phys_addr = le32_to_cpu(resp->db_addr_low);
+		phys_addr |= (u64)le32_to_cpu(resp->db_addr_high) << 32;
+		addr = devm_ioremap(handle->dev, phys_addr, size);
+		if (!addr)
+			goto err_xfer;
+
+		db->addr = addr;
+		db->width = size;
+		db->set = le32_to_cpu(resp->db_set_lmask);
+		db->set |= (u64)le32_to_cpu(resp->db_set_hmask) << 32;
+		db->mask = le32_to_cpu(resp->db_preserve_lmask);
+		db->mask |= (u64)le32_to_cpu(resp->db_preserve_hmask) << 32;
+		*p_db = db;
+	}
+err_xfer:
+	scmi_xfer_put(handle, t);
+}
+
+static void scmi_perf_domain_init_fc(const struct scmi_handle *handle,
+				     u32 domain, struct scmi_fc_info **p_fc)
+{
+	struct scmi_fc_info *fc;
+
+	fc = devm_kzalloc(handle->dev, sizeof(*fc), GFP_KERNEL);
+	if (!fc)
+		return;
+
+	scmi_perf_domain_desc_fc(handle, domain, PERF_LEVEL_SET,
+				 &fc->level_set_addr, &fc->level_set_db);
+	scmi_perf_domain_desc_fc(handle, domain, PERF_LEVEL_GET,
+				 &fc->level_get_addr, NULL);
+	scmi_perf_domain_desc_fc(handle, domain, PERF_LIMITS_SET,
+				 &fc->limit_set_addr, &fc->limit_set_db);
+	scmi_perf_domain_desc_fc(handle, domain, PERF_LIMITS_GET,
+				 &fc->limit_get_addr, NULL);
+	*p_fc = fc;
+}
+
 /* Device specific ops */
 static int scmi_dev_domain_id(struct device *dev)
 {
@@ -494,6 +636,9 @@ static int scmi_perf_protocol_init(struct scmi_handle *handle)
 
 		scmi_perf_domain_attributes_get(handle, domain, dom);
 		scmi_perf_describe_levels_get(handle, domain, dom);
+
+		if (dom->perf_fastchannels)
+			scmi_perf_domain_init_fc(handle, domain, &dom->fc_info);
 	}
 
 	handle->perf_ops = &perf_ops;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
