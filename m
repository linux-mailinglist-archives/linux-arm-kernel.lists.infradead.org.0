Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C594D941
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=StTI4+xQd1ZEbtovM48Bvx8Vnmzd1MtYG/fZiJtFPIA=; b=QT58xEPQrJuiy+
	CXKe9IqMNE54G5akveo4cW+O6UeOO4y6fIymQwPmjP2xJcBFIi+Hz9vnAIHa3B4qfYDiFKMKI6EEw
	l4CfksPKwaEANd9mJBZVPr2bL1hUCQWtdCtRlL9fn+QmuW/+Qo56WHGERno/HP8IO+toyyj45NeNX
	BjT2s/WACCCvYtnwvAy/SdOlGgtQDKprHNwU8p3vuV97LzPk0KFYwm9xXjfJ+O0Uj2B/k96m4yZsI
	FMPYnCo0pcqAQXtclMQxRhprX6VZxRDbbeRNeSqDsHNWiKnfW1Wj5YADT5t3k8H4j7pLuW9G/UZA6
	Iln7/L8D6m/Oe36ZmWlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1rf-0007CI-8P; Thu, 20 Jun 2019 18:32:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1r7-0006yG-ER
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:32:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BA64960DB3; Thu, 20 Jun 2019 18:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561055536;
 bh=Yd54+qUf89qOF87CitVUCGaXIbQK4BoasqCeVuWeJik=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bhINcgFQmSP0r2XBbgbJhmxCMJOKm7bgNjFWkaLafMNVd6wSfWmbMl91DQnFfGNoI
 N3vhKUF/NxNllfJUp084sUZpa4fnhrmmfk5PeMA9Lvl6WAB6ENdDVfOXyePCNPi/YC
 TJ6yCTWu3JPyoqUpZ0HuIYZ3/jrorchAicjoERyM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DC15D6090F;
 Thu, 20 Jun 2019 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561055532;
 bh=Yd54+qUf89qOF87CitVUCGaXIbQK4BoasqCeVuWeJik=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VtSqWPulOzdfF6hjpLIwlv7r/EnTnL/9N7eTlHVqqbNKJ/NwsufyIV+GXDENw5pCx
 OCbuGP+9/yyM5ZnI5GM8m239XXJ4VtvUZfIT7o/Iaf05RwxUXUQ8mKB5lx6bJRrafH
 SzczKGg+8/EHLSdhhyo9OlYP8IRkKWeUXTfqhvys=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DC15D6090F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <andy.gross@linaro.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCHv2 1/2] coresight: Do not default to CPU0 for missing CPU
 phandle
Date: Fri, 21 Jun 2019 00:01:51 +0530
Message-Id: <92a33fa58c77206b338220427e92dabbd1d197f7.1561054498.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113217_710028_722C06A8 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Coresight platform support assumes that a missing "cpu" phandle
defaults to CPU0. This could be problematic and unnecessarily binds
components to CPU0, where they may not be. Let us make the DT binding
rules a bit stricter by not defaulting to CPU0 for missing "cpu"
affinity information.

Also in coresight etm and cpu-debug drivers, abort the probe
for such cases.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 Documentation/devicetree/bindings/arm/coresight.txt |  2 +-
 drivers/hwtracing/coresight/coresight-cpu-debug.c   |  3 +++
 drivers/hwtracing/coresight/coresight-etm3x.c       |  3 +++
 drivers/hwtracing/coresight/coresight-etm4x.c       |  3 +++
 drivers/hwtracing/coresight/coresight-platform.c    | 10 +++++-----
 5 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index 8a88ddebc1a2..c4659ba9457d 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -88,7 +88,7 @@ its hardware characteristcs.
 	  registers via co-processor 14.
 
 	* cpu: the cpu phandle this ETM/PTM is affined to. When omitted the
-	  source is considered to belong to CPU0.
+	  affinity is set to invalid.
 
 * Optional property for TMC:
 
diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
index 07a1367c733f..58bfd6319f65 100644
--- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
+++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
@@ -579,6 +579,9 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
 		return -ENOMEM;
 
 	drvdata->cpu = coresight_get_cpu(dev);
+	if (drvdata->cpu < 0)
+		return drvdata->cpu;
+
 	if (per_cpu(debug_drvdata, drvdata->cpu)) {
 		dev_err(dev, "CPU%d drvdata has already been initialized\n",
 			drvdata->cpu);
diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index 225c2982e4fe..e2cb6873c3f2 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -816,6 +816,9 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 	}
 
 	drvdata->cpu = coresight_get_cpu(dev);
+	if (drvdata->cpu < 0)
+		return drvdata->cpu;
+
 	desc.name  = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
 	if (!desc.name)
 		return -ENOMEM;
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 7fe266194ab5..7bcac8896fc1 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1101,6 +1101,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	spin_lock_init(&drvdata->spinlock);
 
 	drvdata->cpu = coresight_get_cpu(dev);
+	if (drvdata->cpu < 0)
+		return drvdata->cpu;
+
 	desc.name = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
 	if (!desc.name)
 		return -ENOMEM;
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 3c5ceda8db24..8b03fa573684 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -159,16 +159,16 @@ static int of_coresight_get_cpu(struct device *dev)
 	struct device_node *dn;
 
 	if (!dev->of_node)
-		return 0;
+		return -ENODEV;
+
 	dn = of_parse_phandle(dev->of_node, "cpu", 0);
-	/* Affinity defaults to CPU0 */
 	if (!dn)
-		return 0;
+		return -ENODEV;
+
 	cpu = of_cpu_node_to_id(dn);
 	of_node_put(dn);
 
-	/* Affinity to CPU0 if no cpu nodes are found */
-	return (cpu < 0) ? 0 : cpu;
+	return cpu;
 }
 
 /*
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
