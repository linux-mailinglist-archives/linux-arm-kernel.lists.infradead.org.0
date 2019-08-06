Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B266083792
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 19:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dHJxtbLDaFN2g5KR1AQ7JYiI31J3BROQn0bdtoe37XI=; b=ONqzIpITh76u9vo0ewJNGPIqu/
	We4Xmvi20qnAcNPg/6nzl5J9K3SP2sB4kJ7AxCRjpvM1O343tx519jYIWmbKwkkZxiqNu8g2AbwvY
	qVO0riLGjMes4+vcz41f9BH1j/Soxml+boB8hzt9hRlLt2OwxnLcOWzjGMyrvIGinRDUL8/BJP1Oj
	KMKtc6YVzmQTFbqFl084LDbnpAUDbbO0j2RxukGf3s758qt2AuUIayf1UzAdyT01zuvt+Hita3bax
	0QN/irPXXAvXzEKkxWwmw5AiVEigop9bPN2OIVx+mIwJrijrCw2+4fa3BrF9+EPFUeDDu2H0oT+R8
	zkP0M7qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2rN-0002t8-7q; Tue, 06 Aug 2019 17:02:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2qr-0002PO-CL
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 17:02:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 252A0344;
 Tue,  6 Aug 2019 10:02:21 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E265F3F575;
 Tue,  6 Aug 2019 10:02:18 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/5] firmware: arm_scmi: Make use SCMI v2.0 fastchannel for
 performance protocol
Date: Tue,  6 Aug 2019 18:02:05 +0100
Message-Id: <20190806170208.6787-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806170208.6787-1-sudeep.holla@arm.com>
References: <20190806170208.6787-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_100221_507872_C19C8F65 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

v1->v2:
	- Changed the macro SCMI_PERF_FC_RING_DB to use do {} while(0)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 6cce3e82e81e..fb7f6cab2c11 100644
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
+do {							\
+	u##w val = 0;					\
+	struct scmi_fc_db_info *db = doorbell;		\
+							\
+	if (db->mask)					\
+		val = ioread##w(db->addr) & db->mask;	\
+	iowrite##w((u##w)db->set | val, db->addr);	\
+} while(0)
+
+static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)
+{
+	if (!db || !db->addr)
+		return;
+
+	if (db->width == 1)
+		SCMI_PERF_FC_RING_DB(db, 8);
+	else if (db->width == 2)
+		SCMI_PERF_FC_RING_DB(db, 16);
+	else if (db->width == 4)
+		SCMI_PERF_FC_RING_DB(db, 32);
+	else /* db->width == 8 */
+#ifdef CONFIG_64BIT
+		SCMI_PERF_FC_RING_DB(db, 64);
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
