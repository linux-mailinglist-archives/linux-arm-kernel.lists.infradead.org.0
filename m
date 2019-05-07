Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0344716265
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GonHNvSx6Hs7V/SX2fYSLsr0Zut2whi+Zbk1tO6IzWA=; b=uSUd4Zx5emzzpcKRHCCe3VovKs
	QkQoYju0q2u1wsQluHzLx2bQ/pbizZ03sdEzt9FviFYVNZw62pU8t/G6r65JRC6njjtGoAzz1/iHA
	6eEEE91fT9TOije8oGWn0JNjvlIWY5uEkXRguvyYXJ+TCzbSzRgwvFLJXv7VQd+QofHSrjjNAABxD
	JGrpStMs2obfg137nqvqdwJ90u7SMfXgt3Zum+6ghh4PtX3nFZJ3asRuE+Co2LFZP7W2LkOEEPUoB
	TsxByYI40iC4sPbQyPgb7V3u/YtwOxlDmg9R8lN/abJxN4lIPRcMl013bjZvr5bltYAirsQR/xtN2
	jfP7jT+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxlx-00017P-7S; Tue, 07 May 2019 10:56:33 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjX-0005Gk-26
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D54B21688;
 Tue,  7 May 2019 03:54:02 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 7DAAA3F5AF; Tue,  7 May 2019 03:54:01 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 15/30] coresight: Make sure device uses DT for obsolete
 compatible check
Date: Tue,  7 May 2019 11:52:42 +0100
Message-Id: <1557226378-10131-16-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035403_581650_571B6BDF 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we prepare to add support for ACPI bindings, let us make sure we do
the compatible check only if we are sure we are dealing with a DT based
system.

Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-funnel.c     | 3 ++-
 drivers/hwtracing/coresight/coresight-replicator.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 6236a84..3423042 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -196,7 +196,8 @@ static int funnel_probe(struct device *dev, struct resource *res)
 		dev->platform_data = pdata;
 	}
 
-	if (of_device_is_compatible(np, "arm,coresight-funnel"))
+	if (is_of_node(dev_fwnode(dev)) &&
+	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
 		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index ee6ad34..7e05145 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -187,7 +187,8 @@ static int replicator_probe(struct device *dev, struct resource *res)
 		dev->platform_data = pdata;
 	}
 
-	if (of_device_is_compatible(np, "arm,coresight-replicator"))
+	if (is_of_node(dev_fwnode(dev)) &&
+	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
 		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
