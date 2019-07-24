Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BF472DFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqcs0UlgbcZMzewKCqgkMP1/FY29LsGIk6Ykb8MoYM0=; b=Gs38rBp7oCKf/0
	DriSG73VtRZAZtAUfLNKIGR+pR3Q4Op+9qGqxh7DIAS76yPRMLWKwcVEThMb2voWsFfW/IbRJQ9Xc
	AulsjUMQoBl1MYJtq+7gaHNjB6SXYemZnAUVsCDZclCazMSNUkg6hnsDpYWp1SqT3QpCecpZxSbii
	X90Unchbb9Ta7vkq7URER1xxQelDL7lA4kGxgblzhFRfShuz7SrFZRmS98FKB2IAhgcaGlSWKfIvo
	f5qiZYfHsfjPKTjEO5Ysx9L9U35hp6Mi0vFFh9NleV2WuoXKYZcNGmmwH9TE7uhvCAdGlcyjdTGz9
	aYV9zuYbm9aDfzybXGWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFhS-0006f3-GO; Wed, 24 Jul 2019 11:44:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFgC-0005NQ-6T
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:43:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D51091509;
 Wed, 24 Jul 2019 04:43:31 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2EB5B3F71A;
 Wed, 24 Jul 2019 04:43:31 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] coresight: tmc-etr: Check if non-secure access is enabled
Date: Wed, 24 Jul 2019 12:43:12 +0100
Message-Id: <20190724114312.1024-6-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724114312.1024-1-suzuki.poulose@arm.com>
References: <20190724114312.1024-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044332_319357_3C5E9AD3 
X-CRM114-Status: GOOD (  11.48  )
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
Cc: coresight@lists.linaro.org, mathieu.poirier@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CoreSight TMC-ETR must have the non-secure invasive debug access
enabled for use by self-hosted tracing. Without it, there is no
point in enabling the ETR. So, let us check it in the TMC_AUTHSTATUS
register and fail the probe if it is disabled.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-tmc.c | 12 ++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h |  3 +++
 2 files changed, 15 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index be37aff573b4..3055bf8e2236 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -236,6 +236,7 @@ coresight_tmc_reg(ffcr, TMC_FFCR);
 coresight_tmc_reg(mode, TMC_MODE);
 coresight_tmc_reg(pscr, TMC_PSCR);
 coresight_tmc_reg(axictl, TMC_AXICTL);
+coresight_tmc_reg(authstatus, TMC_AUTHSTATUS);
 coresight_tmc_reg(devid, CORESIGHT_DEVID);
 coresight_tmc_reg64(rrp, TMC_RRP, TMC_RRPHI);
 coresight_tmc_reg64(rwp, TMC_RWP, TMC_RWPHI);
@@ -255,6 +256,7 @@ static struct attribute *coresight_tmc_mgmt_attrs[] = {
 	&dev_attr_devid.attr,
 	&dev_attr_dba.attr,
 	&dev_attr_axictl.attr,
+	&dev_attr_authstatus.attr,
 	NULL,
 };
 
@@ -342,6 +344,13 @@ static inline bool tmc_etr_can_use_sg(struct device *dev)
 	return fwnode_property_present(dev->fwnode, "arm,scatter-gather");
 }
 
+static inline bool tmc_etr_has_non_secure_access(struct tmc_drvdata *drvdata)
+{
+	u32 auth = readl_relaxed(drvdata->base + TMC_AUTHSTATUS);
+
+	return (auth & TMC_AUTH_NSID_MASK) == 0x3;
+}
+
 /* Detect and initialise the capabilities of a TMC ETR */
 static int tmc_etr_setup_caps(struct device *parent, u32 devid, void *dev_caps)
 {
@@ -349,6 +358,9 @@ static int tmc_etr_setup_caps(struct device *parent, u32 devid, void *dev_caps)
 	u32 dma_mask = 0;
 	struct tmc_drvdata *drvdata = dev_get_drvdata(parent);
 
+	if (!tmc_etr_has_non_secure_access(drvdata))
+		return -EACCES;
+
 	/* Set the unadvertised capabilities */
 	tmc_etr_init_caps(drvdata, (u32)(unsigned long)dev_caps);
 
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 95d2e2747970..4c59f2a4ad0e 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -39,6 +39,7 @@
 #define TMC_ITATBCTR2		0xef0
 #define TMC_ITATBCTR1		0xef4
 #define TMC_ITATBCTR0		0xef8
+#define TMC_AUTHSTATUS		0xfb8
 
 /* register description */
 /* TMC_CTL - 0x020 */
@@ -90,6 +91,8 @@
 #define TMC_DEVID_AXIAW_SHIFT	17
 #define TMC_DEVID_AXIAW_MASK	0x7f
 
+#define TMC_AUTH_NSID_MASK	GENMASK(1, 0)
+
 enum tmc_config_type {
 	TMC_CONFIG_TYPE_ETB,
 	TMC_CONFIG_TYPE_ETR,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
