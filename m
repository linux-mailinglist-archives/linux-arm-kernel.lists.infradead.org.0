Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8188C1B9341
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/dhmffpyNALexWu6Vz0ZsigSA36Dmm+AXybjn1Xb0o=; b=Ex8ZD9vXcjMa99
	DOdCxvBC4yLrzI4XT7pq7DHuzhWJzg1Tz9jYKCLw1yV9prdkun8vPLIVnLuMCLI0mxbX6h0AZS435
	eaYaQ0USLmOjOYzkrsOmTlKoffCg/I6fjuP1z+Mhv3po4KW0wQ9AORhIJy/eoIhcFk5h5/NQUws/k
	dsSKwAE+5Lpzb8mkcOgyvMvGY0CEG2k376TUkcvVi313kR6aEKjDikySl2Ik3NT4Pm2FpnZdvjII7
	ovrBwYKcYbObALvURC3uyhzArzJk136FvYlty8YCviBnIBJ3gNsD9tBGJMIKN549Y+axWDCCP66Mv
	KHLryt7+KYFz97/PciVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmUW-0006T3-S8; Sun, 26 Apr 2020 18:59:00 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmTh-0005zk-Bz
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:58:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id x26so7528756pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=noMrbgL1v2kzIBYfD0+OneUE3HearHlx1xTI8N0UkeU=;
 b=gcArO+IbQ1Yfcn/7FcXBVLKjbmyJ5VuBH/upO/eC6zjYuLDLsPIwqrgw/uQm4n9D8J
 hM7YhOGJBsrM5Q6Dkh2na9vKhr6sTp96HDvdrz9okTXc5FbVRReGVGJ0lAlCsAg/qjod
 Rz+HszoxhcEhePkfbqNlsrUvvYk5OiNwpVa6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=noMrbgL1v2kzIBYfD0+OneUE3HearHlx1xTI8N0UkeU=;
 b=onDZRyMnZ1ZnMWLyNri+XwwtrhqDrsO7evHv5U1SaIQ601Vg6CytUV1I8BItgSLcSr
 AwLAd9i4pQ97ms+dY5ueHkcev6V1ozf/oh0t0VrGyAo+9RKfBocad2ZOnW3WbFzlmJgl
 Gy9Y4U/l4zQNDBIeNj8lhc5ZdaBHwWOf7sUqzYUrDG0DqMoX0lMB+Ht34p4iMBbH7Qrx
 CPhScRWPzjQifX141NAjOrW2x7ULbEuteY1Of8hbeEqnHMlwwytUE9xZZQEgm6wbkp4R
 mx+OwyX86MeiF/yX4fw4ZVJWirE4EL1CafOGUGH2S0RAUFNW3sdaWsKj1S+QO0vkDUMb
 GdMQ==
X-Gm-Message-State: AGi0PuZ0xRvqzGox1PepEtVr2pvE8NzMW+H+k1sgW+ICpyans3vW2F2y
 QMIvCiGuKnxRE7d314LKPc3+/g==
X-Google-Smtp-Source: APiQypItWeQCh4VuQPKDIWC8ZjlXOMK1Td48DeJ/E5GZYS7IzEcCDPmQ3cfILg8YZ2ZI69Pu9KJRNw==
X-Received: by 2002:a63:c241:: with SMTP id l1mr3014492pgg.42.1587927488448;
 Sun, 26 Apr 2020 11:58:08 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h27sm9425153pgb.90.2020.04.26.11.58.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 11:58:08 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 2/5] coresight: Mark some functions static
Date: Sun, 26 Apr 2020 11:58:02 -0700
Message-Id: <20200426185805.14923-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200426185805.14923-1-swboyd@chromium.org>
References: <20200426185805.14923-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_115809_404434_74A6BD7C 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These functions aren't used outside the file they're in. Mark them
static to indicate as such and silence tools like sparse.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/hwtracing/coresight/coresight-cti-platform.c | 3 +--
 drivers/hwtracing/coresight/coresight-cti-sysfs.c    | 2 +-
 drivers/hwtracing/coresight/coresight-cti.c          | 6 +++---
 drivers/hwtracing/coresight/coresight-etb10.c        | 2 +-
 drivers/hwtracing/coresight/coresight-platform.c     | 4 ++--
 drivers/hwtracing/coresight/coresight-tmc.c          | 2 +-
 6 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
index 245f16c61af8..ab3bd4ed0910 100644
--- a/drivers/hwtracing/coresight/coresight-cti-platform.c
+++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
@@ -435,8 +435,7 @@ static int cti_plat_create_impdef_connections(struct device *dev,
 }
 
 /* get the hardware configuration & connection data. */
-int cti_plat_get_hw_data(struct device *dev,
-			 struct cti_drvdata *drvdata)
+static int cti_plat_get_hw_data(struct device *dev, struct cti_drvdata *drvdata)
 {
 	int rc = 0;
 	struct cti_device *cti_dev = &drvdata->ctidev;
diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index bed460541f15..7da846a3a829 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -1146,7 +1146,7 @@ static int cti_create_con_attr_set(struct device *dev, int con_idx,
 }
 
 /* create the array of group pointers for the CTI sysfs groups */
-int cti_create_cons_groups(struct device *dev, struct cti_device *ctidev)
+static int cti_create_cons_groups(struct device *dev, struct cti_device *ctidev)
 {
 	int nr_groups;
 
diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index aa6e0249bd70..aac9a0d91e19 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -19,7 +19,7 @@
  */
 
 /* net of CTI devices connected via CTM */
-LIST_HEAD(ect_net);
+static LIST_HEAD(ect_net);
 
 /* protect the list */
 static DEFINE_MUTEX(ect_mutex);
@@ -578,12 +578,12 @@ int cti_disable(struct coresight_device *csdev)
 	return cti_disable_hw(drvdata);
 }
 
-const struct coresight_ops_ect cti_ops_ect = {
+static const struct coresight_ops_ect cti_ops_ect = {
 	.enable = cti_enable,
 	.disable = cti_disable,
 };
 
-const struct coresight_ops cti_ops = {
+static const struct coresight_ops cti_ops = {
 	.ect_ops = &cti_ops_ect,
 };
 
diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 3810290e6d07..03e3f2590191 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -717,7 +717,7 @@ static const struct attribute_group coresight_etb_mgmt_group = {
 	.name = "mgmt",
 };
 
-const struct attribute_group *coresight_etb_groups[] = {
+static const struct attribute_group *coresight_etb_groups[] = {
 	&coresight_etb_group,
 	&coresight_etb_mgmt_group,
 	NULL,
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 43418a2126ff..8639f6981794 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -501,7 +501,7 @@ static inline bool acpi_validate_dsd_graph(const union acpi_object *graph)
 }
 
 /* acpi_get_dsd_graph	- Find the _DSD Graph property for the given device. */
-const union acpi_object *
+static const union acpi_object *
 acpi_get_dsd_graph(struct acpi_device *adev)
 {
 	int i;
@@ -564,7 +564,7 @@ acpi_validate_coresight_graph(const union acpi_object *cs_graph)
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
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
