Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4329C59B33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 14:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4wgSvrq7Mjqe8bo4qLm8qApmvakXPYdNa9yrEv00a8=; b=CKE8IUgYaQBsBz
	6TMUKu+d3q+OBLJSeQPs0vFT+ix5NvRoYSKjbN8/qlWgaEPqR4VzrSZrc754KsMA/5/p1kF4mlvc2
	b2LLKCExERrKnSHpOJjOLgQVfpAtJTMTBBKZLG6ZdopPWlc4cQ/XL4WdXIrAWJpaoJBp7PfTqe1Kp
	uZmozAfbcBbqb3jVF54yIlLa0LVecqJrZ/EplAn+mbf36b4GonqXKj2VHOBU4WGGGSHleYzMvtR34
	bu0Dp2E3N1acvJmP7cnOtPhfVz8IpvQ2NIEXp5wROZXL7JZaNpHaD2WnH0vOJ9tdBhZYH0fp+ZR8p
	WVb4pgkvswJ829HKQYjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgq2c-0005nj-Lu; Fri, 28 Jun 2019 12:31:46 +0000
Received: from [186.213.242.156] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hgq1T-00054t-US; Fri, 28 Jun 2019 12:30:36 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hgq1S-0005R9-0z; Fri, 28 Jun 2019 09:30:34 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 03/39] docs: perf: move to the admin-guide
Date: Fri, 28 Jun 2019 09:29:56 -0300
Message-Id: <cf054e7044bbba8d73ad032a0a1c9790afbfd510.1561724493.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561724493.git.mchehab+samsung@kernel.org>
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Khuong Dinh <khuong@os.amperecomputing.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, Andy Gross <agross@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The perf infrastructure is used for userspace to track issues.
At least a good part of what's described here is related to
it.

So, add it to the admin-guide.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 Documentation/admin-guide/index.rst                    | 1 +
 Documentation/{ => admin-guide}/perf/arm-ccn.rst       | 0
 Documentation/{ => admin-guide}/perf/arm_dsu_pmu.rst   | 0
 Documentation/{ => admin-guide}/perf/hisi-pmu.rst      | 0
 Documentation/{ => admin-guide}/perf/index.rst         | 2 --
 Documentation/{ => admin-guide}/perf/qcom_l2_pmu.rst   | 0
 Documentation/{ => admin-guide}/perf/qcom_l3_pmu.rst   | 0
 Documentation/{ => admin-guide}/perf/thunderx2-pmu.rst | 0
 Documentation/{ => admin-guide}/perf/xgene-pmu.rst     | 0
 MAINTAINERS                                            | 4 ++--
 drivers/perf/qcom_l3_pmu.c                             | 2 +-
 11 files changed, 4 insertions(+), 5 deletions(-)
 rename Documentation/{ => admin-guide}/perf/arm-ccn.rst (100%)
 rename Documentation/{ => admin-guide}/perf/arm_dsu_pmu.rst (100%)
 rename Documentation/{ => admin-guide}/perf/hisi-pmu.rst (100%)
 rename Documentation/{ => admin-guide}/perf/index.rst (95%)
 rename Documentation/{ => admin-guide}/perf/qcom_l2_pmu.rst (100%)
 rename Documentation/{ => admin-guide}/perf/qcom_l3_pmu.rst (100%)
 rename Documentation/{ => admin-guide}/perf/thunderx2-pmu.rst (100%)
 rename Documentation/{ => admin-guide}/perf/xgene-pmu.rst (100%)

diff --git a/Documentation/admin-guide/index.rst b/Documentation/admin-guide/index.rst
index 0066b198cad4..b7e6d18f80ca 100644
--- a/Documentation/admin-guide/index.rst
+++ b/Documentation/admin-guide/index.rst
@@ -38,6 +38,7 @@ problems and bugs in particular.
    ramoops
    dynamic-debug-howto
    init
+   perf/index
 
 This is the beginning of a section with information of interest to
 application developers.  Documents covering various aspects of the kernel
diff --git a/Documentation/perf/arm-ccn.rst b/Documentation/admin-guide/perf/arm-ccn.rst
similarity index 100%
rename from Documentation/perf/arm-ccn.rst
rename to Documentation/admin-guide/perf/arm-ccn.rst
diff --git a/Documentation/perf/arm_dsu_pmu.rst b/Documentation/admin-guide/perf/arm_dsu_pmu.rst
similarity index 100%
rename from Documentation/perf/arm_dsu_pmu.rst
rename to Documentation/admin-guide/perf/arm_dsu_pmu.rst
diff --git a/Documentation/perf/hisi-pmu.rst b/Documentation/admin-guide/perf/hisi-pmu.rst
similarity index 100%
rename from Documentation/perf/hisi-pmu.rst
rename to Documentation/admin-guide/perf/hisi-pmu.rst
diff --git a/Documentation/perf/index.rst b/Documentation/admin-guide/perf/index.rst
similarity index 95%
rename from Documentation/perf/index.rst
rename to Documentation/admin-guide/perf/index.rst
index 4bf848e27f26..9d445451ea18 100644
--- a/Documentation/perf/index.rst
+++ b/Documentation/admin-guide/perf/index.rst
@@ -1,5 +1,3 @@
-:orphan:
-
 ===========================
 Performance monitor support
 ===========================
diff --git a/Documentation/perf/qcom_l2_pmu.rst b/Documentation/admin-guide/perf/qcom_l2_pmu.rst
similarity index 100%
rename from Documentation/perf/qcom_l2_pmu.rst
rename to Documentation/admin-guide/perf/qcom_l2_pmu.rst
diff --git a/Documentation/perf/qcom_l3_pmu.rst b/Documentation/admin-guide/perf/qcom_l3_pmu.rst
similarity index 100%
rename from Documentation/perf/qcom_l3_pmu.rst
rename to Documentation/admin-guide/perf/qcom_l3_pmu.rst
diff --git a/Documentation/perf/thunderx2-pmu.rst b/Documentation/admin-guide/perf/thunderx2-pmu.rst
similarity index 100%
rename from Documentation/perf/thunderx2-pmu.rst
rename to Documentation/admin-guide/perf/thunderx2-pmu.rst
diff --git a/Documentation/perf/xgene-pmu.rst b/Documentation/admin-guide/perf/xgene-pmu.rst
similarity index 100%
rename from Documentation/perf/xgene-pmu.rst
rename to Documentation/admin-guide/perf/xgene-pmu.rst
diff --git a/MAINTAINERS b/MAINTAINERS
index 9d3a408f5ce1..55996c9f2e0a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1139,7 +1139,7 @@ APPLIED MICRO (APM) X-GENE SOC PMU
 M:	Khuong Dinh <khuong@os.amperecomputing.com>
 S:	Supported
 F:	drivers/perf/xgene_pmu.c
-F:	Documentation/perf/xgene-pmu.rst
+F:	Documentation/admin-guide/perf/xgene-pmu.rst
 F:	Documentation/devicetree/bindings/perf/apm-xgene-pmu.txt
 
 APTINA CAMERA SENSOR PLL
@@ -7207,7 +7207,7 @@ M:	Shaokun Zhang <zhangshaokun@hisilicon.com>
 W:	http://www.hisilicon.com
 S:	Supported
 F:	drivers/perf/hisilicon
-F:	Documentation/perf/hisi-pmu.rst
+F:	Documentation/admin-guide/perf/hisi-pmu.rst
 
 HISILICON ROCE DRIVER
 M:	Lijun Ou <oulijun@huawei.com>
diff --git a/drivers/perf/qcom_l3_pmu.c b/drivers/perf/qcom_l3_pmu.c
index 90f88ce5192b..656e830798d9 100644
--- a/drivers/perf/qcom_l3_pmu.c
+++ b/drivers/perf/qcom_l3_pmu.c
@@ -8,7 +8,7 @@
  * the slices. User space needs to aggregate to individual counts to provide
  * a global picture.
  *
- * See Documentation/perf/qcom_l3_pmu.rst for more details.
+ * See Documentation/admin-guide/perf/qcom_l3_pmu.rst for more details.
  *
  * Copyright (c) 2015-2017, The Linux Foundation. All rights reserved.
  */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
