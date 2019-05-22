Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497EA2621A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Pofq9ccYn/v8JbtCvSc68iYHI69B7SzdAvkDafK/g4=; b=nu49CJyYUeyqkc6md3h/HRhWhR
	Lfja6vjUoTjOWo0JUdJBACsoRHqRk1Q8kQeJGEBlvca2T3fKhH9v1PoCmRwkHcLUo/2CNf0p9LTAN
	VYxEy4QQo6VfrUIU+fJ8D3VX9Q5t/AlC6eCgKvEYZDlQ5NEsvKEd4ZAhyBfmOPUFlVA74qL6OaVTd
	9WRCQXSPRLG7kdPEInV9QgUnx0opUZad/PuJW2zrywSVF+xPMxjexK6fKs0fwQ1ff36w5kyDNkc+T
	qzaCOckQ0qH5dy2zQ01eepLf6rX3/yPHm/pjnDG5CMaYi4VfqS6MTM6HIFwlH8DpKktbOEn9Odr2n
	tSjNSZyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOfz-0003k4-NI; Wed, 22 May 2019 10:40:51 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOar-0004nv-R0
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:35:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2E43341;
 Wed, 22 May 2019 03:35:33 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 B32B73F575; Wed, 22 May 2019 03:35:32 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 12/30] coresight: stm: Rearrange probing the stimulus area
Date: Wed, 22 May 2019 11:34:45 +0100
Message-Id: <1558521304-27469-13-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033533_958524_0D00FA87 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we are about to refactor the platform specific handling
re-arrange some of the DT specific property handling.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-stm.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index 8f50484..3992a35 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -683,14 +683,15 @@ static const struct attribute_group *coresight_stm_groups[] = {
 	NULL,
 };
 
-static int stm_get_resource_byname(struct device_node *np,
-				   char *ch_base, struct resource *res)
+#ifdef CONFIG_OF
+static int of_stm_get_stimulus_area(struct device *dev, struct resource *res)
 {
 	const char *name = NULL;
 	int index = 0, found = 0;
+	struct device_node *np = dev->of_node;
 
 	while (!of_property_read_string_index(np, "reg-names", index, &name)) {
-		if (strcmp(ch_base, name)) {
+		if (strcmp("stm-stimulus-base", name)) {
 			index++;
 			continue;
 		}
@@ -705,6 +706,20 @@ static int stm_get_resource_byname(struct device_node *np,
 
 	return of_address_to_resource(np, index, res);
 }
+#else
+static inline int of_stm_get_stimulus_area(struct device *dev,
+					   struct resource *res)
+{
+	return -ENOENT;
+}
+#endif
+
+static int stm_get_stimulus_area(struct device *dev, struct resource *res)
+{
+	if (is_of_node(dev_fwnode(dev)))
+		return of_stm_get_stimulus_area(dev, res);
+	return -ENOENT;
+}
 
 static u32 stm_fundamental_data_size(struct stm_drvdata *drvdata)
 {
@@ -819,7 +834,7 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 		return PTR_ERR(base);
 	drvdata->base = base;
 
-	ret = stm_get_resource_byname(np, "stm-stimulus-base", &ch_res);
+	ret = stm_get_stimulus_area(dev, &ch_res);
 	if (ret)
 		return ret;
 	drvdata->chs.phys = ch_res.start;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
