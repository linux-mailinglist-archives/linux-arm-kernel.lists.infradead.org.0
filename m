Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B718276ABC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Euq1Zi8IVGzWNs/+uhLQeoOy9hVQGjfUpc13pzjeJTY=; b=YbH6qWlWRxNSbjIx5cya9tGFLN
	JK9frR+YHWZeAkwuzL6DnfCPvFin+ShOTBbHpSGG6/X0Kihm8aKwO3If2Wnom6Ke2OtkEfcLyjjyH
	h9PoGYtgJbnj4fNucRy1cDhPlDmDq9eKoFQtlUSb08PKQWUPRh2ektKb36TyJREDLVXr3f1aIeaj1
	5/QyhsiEzWx5rAsYcVL5PROx4D22bEU6Az7x/T11XbOIJbaqB+urc3COP1p1cT4ErYjzbacAdajAD
	Q5AuZjNXB4M5jfTghbOXLlISl7Vvd+HxNON4VmGJ8WpeJ5E8u3YNAcaonlDv3i7T4zsQUDzLoqexS
	czTRPGXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0mQ-0005nC-TB; Fri, 26 Jul 2019 14:01:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0lX-0005KI-Lx
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:00:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30A35337;
 Fri, 26 Jul 2019 07:00:11 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id ED9A23F694;
 Fri, 26 Jul 2019 07:00:08 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] firmware: arm_scmi: Make use SCMI v2.0 fastchannel for
 performance protocol
Date: Fri, 26 Jul 2019 14:59:51 +0100
Message-Id: <20190726135954.11078-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135954.11078-1-sudeep.holla@arm.com>
References: <20190726135954.11078-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070011_875603_5DF6D95A 
X-CRM114-Status: GOOD (  13.48  )
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

SCMI v2.0 adds support for "FastChannel" which do not use a message
header as they are specialized for a single message.

Only PERFORMANCE_LIMITS_{SET,GET} and PERFORMANCE_LEVEL_{SET,GET}
commands are supported over fastchannels. As they are optional, they
need to be discovered by PERFORMANCE_DESCRIBE_FASTCHANNEL command.
Further {LIMIT,LEVEL}_SET commands can have optional doorbell support.

Add support for making use of these fastchannels.

Cc: Ionela Voinescu <Ionela.Voinescu@arm.com>
Cc: Chris Redpath <Chris.Redpath@arm.com>
Cc: Quentin Perret <Quentin.Perret@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/perf.c | 104 +++++++++++++++++++++++++++++--
 1 file changed, 100 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 6cce3e82e81e..b9144efbd6fb 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -8,6 +8,7 @@
 #include <linux/bits.h>
 #include <linux/of.h>
 #include <linux/io.h>
+#include <linux/io-64-nonatomic-hi-lo.h>
 #include <linux/platform_device.h>
 #include <linux/pm_opp.h>
 #include <linux/sort.h>
@@ -293,7 +294,42 @@ scmi_perf_describe_levels_get(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
-static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
+#define SCMI_PERF_FC_RING_DB(doorbell, w)		\
+{							\
+	u##w val = 0;					\
+	struct scmi_fc_db_info *db = doorbell;		\
+							\
+	if ((db)->mask)					\
+		val = ioread##w(db->addr) & db->mask;	\
+	iowrite##w((u##w)db->set | val, db->addr);	\
+}
+
+static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)
+{
+	if (!db || !db->addr)
+		return;
+
+	if (db->width == 1)
+		SCMI_PERF_FC_RING_DB(db, 8)
+	else if (db->width == 2)
+		SCMI_PERF_FC_RING_DB(db, 16)
+	else if (db->width == 4)
+		SCMI_PERF_FC_RING_DB(db, 32)
+	else /* db->width == 8 */
+#ifdef CONFIG_64BIT
+		SCMI_PERF_FC_RING_DB(db, 64)
+#else
+	{
+		u64 val = 0;
+
+		if (db->mask)
+			val = ioread64_hi_lo(db->addr) & db->mask;
+		iowrite64_hi_lo(db->set, db->addr);
+	}
+#endif
+}
+
+static int scmi_perf_mb_limits_set(const struct scmi_handle *handle, u32 domain,
 				   u32 max_perf, u32 min_perf)
 {
 	int ret;
@@ -316,7 +352,23 @@ static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
-static int scmi_perf_limits_get(const struct scmi_handle *handle, u32 domain,
+static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
+				u32 max_perf, u32 min_perf)
+{
+	struct scmi_perf_info *pi = handle->perf_priv;
+	struct perf_dom_info *dom = pi->dom_info + domain;
+
+	if (dom->fc_info && dom->fc_info->limit_set_addr) {
+		iowrite32(max_perf, dom->fc_info->limit_set_addr);
+		iowrite32(min_perf, dom->fc_info->limit_set_addr + 4);
+		scmi_perf_fc_ring_db(dom->fc_info->limit_set_db);
+		return 0;
+	}
+
+	return scmi_perf_mb_limits_set(handle, domain, max_perf, min_perf);
+}
+
+static int scmi_perf_mb_limits_get(const struct scmi_handle *handle, u32 domain,
 				   u32 *max_perf, u32 *min_perf)
 {
 	int ret;
@@ -342,7 +394,22 @@ static int scmi_perf_limits_get(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
-static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
+static int scmi_perf_limits_get(const struct scmi_handle *handle, u32 domain,
+				u32 *max_perf, u32 *min_perf)
+{
+	struct scmi_perf_info *pi = handle->perf_priv;
+	struct perf_dom_info *dom = pi->dom_info + domain;
+
+	if (dom->fc_info && dom->fc_info->limit_get_addr) {
+		*max_perf = ioread32(dom->fc_info->limit_get_addr);
+		*min_perf = ioread32(dom->fc_info->limit_get_addr + 4);
+		return 0;
+	}
+
+	return scmi_perf_mb_limits_get(handle, domain, max_perf, min_perf);
+}
+
+static int scmi_perf_mb_level_set(const struct scmi_handle *handle, u32 domain,
 				  u32 level, bool poll)
 {
 	int ret;
@@ -365,7 +432,22 @@ static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
-static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
+static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
+			       u32 level, bool poll)
+{
+	struct scmi_perf_info *pi = handle->perf_priv;
+	struct perf_dom_info *dom = pi->dom_info + domain;
+
+	if (dom->fc_info && dom->fc_info->level_set_addr) {
+		iowrite32(level, dom->fc_info->level_set_addr);
+		scmi_perf_fc_ring_db(dom->fc_info->level_set_db);
+		return 0;
+	}
+
+	return scmi_perf_mb_level_set(handle, domain, level, poll);
+}
+
+static int scmi_perf_mb_level_get(const struct scmi_handle *handle, u32 domain,
 				  u32 *level, bool poll)
 {
 	int ret;
@@ -387,6 +469,20 @@ static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
+static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
+			       u32 *level, bool poll)
+{
+	struct scmi_perf_info *pi = handle->perf_priv;
+	struct perf_dom_info *dom = pi->dom_info + domain;
+
+	if (dom->fc_info && dom->fc_info->level_get_addr) {
+		*level = ioread32(dom->fc_info->level_get_addr);
+		return 0;
+	}
+
+	return scmi_perf_mb_level_get(handle, domain, level, poll);
+}
+
 static bool scmi_perf_fc_size_is_valid(u32 msg, u32 size)
 {
 	if ((msg == PERF_LEVEL_GET || msg == PERF_LEVEL_SET) && size == 4)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
