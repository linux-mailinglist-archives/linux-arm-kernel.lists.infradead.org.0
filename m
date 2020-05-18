Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314DB1D83BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/O6HtsU2LQAK3u/02z1GoSADTnFZsy/jmMewTFHl0dA=; b=a8tnxDB8BJCwPm
	u6cGOKc+XC9wLbWyHkpuevy/CDMi1NTvB/sNQYO87t7NZofdEzPPFjg/kceisOScjG52Mr7R48qk6
	zeVhFSFzpNjU9fz4TsUyKBk0pjdjb/ZB1sNBHS8P9hR5FTGEVKdqejmcVWcXetLSPN5bCNmmqHO/l
	qg7qFbIiDjrZOPK1z7Nm1nZUmbgxT+TWb42oOinXETyo/fRgQHWx5V6YkCkF6zTB5BJT6oWld47H5
	gPPqLO6npAzCeHHAE4wt9agDnwlpo0pTs+zD2AJs+1BQgi2yQuPytUTm0KUwREio6KEJYvLy1/yvb
	9Ei7VM04MF0hje+g7xoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakB6-00012i-Av; Mon, 18 May 2020 18:07:52 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6O-0003Qp-Gx
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:02 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 5so194161pjd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lx4SPVIy3wEGxKB9o9K9q2O6lTF76YzRNReGQVYCn8A=;
 b=EokdUeKb6RDPCGpUokxqPIb5waiOeBrFAvAxrJGV7Hy9vRGAT3P1D0RFTrill+mIC9
 +1zQrIBDmVBr6EFoQeaypXh67SrwqRZkuPcDBeo+HDoR5Qf6O3JIpjDtPbgGv4u7WDpA
 p9M/vwoUxCT+Pcc3FB3CWGbawuKPPj6Fi5S0ncwUpTvmMyfC2Pba3p4frljOoknbOAA5
 j/oa+pXTmTMT1PwIf8zg6snFoGcK4JW7Hz0F19Ddzzwi5aYI10akOgmnc/J3RVi/uMRe
 uZbqFMcbt2xBXQAFaiYySrs0d4fD8YjV+RhxeSSat+8RRHA+bCrmMWNw1Dhxs5Igh1HR
 4vfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lx4SPVIy3wEGxKB9o9K9q2O6lTF76YzRNReGQVYCn8A=;
 b=htoZP3RcC0Su1BVL5fLq31jQMWrCScSAgCTUjew6SLWVhwSvHA7KpJgZtvvCNPmtly
 YuF0RZ+l9ndz+PzckBbi8jW8UczP8US6gVRk7WaeolrGiWzTpklHmPzhdJFwuKeOVXFS
 2cYN4xha4U3797Pb9HWB6q6qoITc7BoQV6YKEx/plqVupaGPRV/yB6YpEGP3iUYz59/d
 8Y8ohv83MUxtg/yDa6EAMRW868KeAIiFSQbQ+DmBfSPOh4Sk9B7tsbl7cAmki3cmxRa1
 sNRBkOHcSn4Ryo6fdnqreTwEedc0j9LlZvnS4YL2hoO6lkeRoxL1VXeYv+P2jFnhHhFC
 bmxA==
X-Gm-Message-State: AOAM531f7z/l7CfgtjHNlrRmaPyFf4jq6ZXtm1d1un4f1xwbJi6Lkeki
 SXUZdhEPbwbM0lmYQ8IxIdflpw==
X-Google-Smtp-Source: ABdhPJwoo6GbVktcGMX6mkZaVjtn3E9jkVEs9EFqgQ2IM42msr3Z9V9JW1qWmtaYYYBzuS6FEbSJGA==
X-Received: by 2002:a17:902:988a:: with SMTP id
 s10mr16744100plp.204.1589824979789; 
 Mon, 18 May 2020 11:02:59 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:59 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 16/23] coresight: Mark some functions static
Date: Mon, 18 May 2020 12:02:35 -0600
Message-Id: <20200518180242.7916-17-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110300_672830_2CAF1075 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stephen Boyd <swboyd@chromium.org>

These functions aren't used outside the file they're in. Mark them
static to indicate as such and silence tools like sparse.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
[Dropped changes in coresight-cti.c and coresight-etb10.c]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti-platform.c | 3 +--
 drivers/hwtracing/coresight/coresight-cti-sysfs.c    | 2 +-
 drivers/hwtracing/coresight/coresight-platform.c     | 4 ++--
 drivers/hwtracing/coresight/coresight-tmc.c          | 2 +-
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
index b44d83142b62..c6c0c9b4827e 100644
--- a/drivers/hwtracing/coresight/coresight-cti-platform.c
+++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
@@ -429,8 +429,7 @@ static int cti_plat_create_impdef_connections(struct device *dev,
 }
 
 /* get the hardware configuration & connection data. */
-int cti_plat_get_hw_data(struct device *dev,
-			 struct cti_drvdata *drvdata)
+static int cti_plat_get_hw_data(struct device *dev, struct cti_drvdata *drvdata)
 {
 	int rc = 0;
 	struct cti_device *cti_dev = &drvdata->ctidev;
diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index 1f8fb7c15e80..a095db03d2bc 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -1139,7 +1139,7 @@ static int cti_create_con_attr_set(struct device *dev, int con_idx,
 }
 
 /* create the array of group pointers for the CTI sysfs groups */
-int cti_create_cons_groups(struct device *dev, struct cti_device *ctidev)
+static int cti_create_cons_groups(struct device *dev, struct cti_device *ctidev)
 {
 	int nr_groups;
 
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index d58dcd0ab514..e4912abda3aa 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -511,7 +511,7 @@ static inline bool acpi_validate_dsd_graph(const union acpi_object *graph)
 }
 
 /* acpi_get_dsd_graph	- Find the _DSD Graph property for the given device. */
-const union acpi_object *
+static const union acpi_object *
 acpi_get_dsd_graph(struct acpi_device *adev)
 {
 	int i;
@@ -574,7 +574,7 @@ acpi_validate_coresight_graph(const union acpi_object *cs_graph)
  * Returns the pointer to the CoreSight Graph Package when found. Otherwise
  * returns NULL.
  */
-const union acpi_object *
+static const union acpi_object *
 acpi_get_coresight_graph(struct acpi_device *adev)
 {
 	const union acpi_object *graph_list, *graph;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 1cf82fa58289..39fba1d16e6e 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -361,7 +361,7 @@ static const struct attribute_group coresight_tmc_mgmt_group = {
 	.name = "mgmt",
 };
 
-const struct attribute_group *coresight_tmc_groups[] = {
+static const struct attribute_group *coresight_tmc_groups[] = {
 	&coresight_tmc_group,
 	&coresight_tmc_mgmt_group,
 	NULL,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
