Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0EBF2BCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:05:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CnMmzaoK3ZwhHxZKv43BYIdX7CBCTf6o4vIpeJG7j5Q=; b=QX8fYrcAZD5plb/FMWhwdrFQcL
	1OYA5gpvXr3oj13ogssxQoypuk/8CnZtcs6xNtPzQhGsmLOCAFH8iWHYnMD4TWItpyIgNjevDhjm+
	6B2sBvcvs6pBZ6uKgEmNtmLjhDyjS3Ce4tUSar87tXs7F+TmNMR14gek+5uZsYteXZ2VfMdclsWl7
	/vkGQTdTGUS79Zh/rCKdvcuEawl8uidVLeImmfSnMIW3jxcXXvKIhW6cvAriThFNrvsfEwTUJ3y2f
	/UThl1TjvgX9vkAaa+9QIQpfr+LgKmMNW9P9iNixbo414k1gXBjKJ2kuvUD1IR1VrqsoyF2fzoGwo
	DoFWIaag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSefP-0000Yt-OG; Thu, 07 Nov 2019 10:05:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeez-0000Q0-81
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:05:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id z26so1771185wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 02:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1NFQx4M7emlsOeIvgOTsRMLDiElPASaNlDD1uGqCI9o=;
 b=diJNUb/iqjOHP2Xj1cSylihQV+7/r7MfJilAJ2oLrT8dh5354m1aWr0Fr3aSFuBHNY
 WFejV8e7dFIohZvEYGtLW3cW1dkGlurSFdnehO/gWkehDw7aWCOd3H1qbqd3Obx5HrOR
 gX9fSNqC9fNamh+pBS557hFiD32qre1Wr1+zFU5DehEUoDWCUO0wAfJ8Wg0r6RWa0iPI
 5n3QvfI9OFzmRDqmWSMKgHKnB1Tr9GStM5EnFrU1fCnlrthkgjsed+ZIgJ0oVmonzG+R
 HxcBS8SVEcfnLq2MYd1rN9jDjoHY5hzM5OCfn6kI3yU6pWeaFObEOVqC/Y87KpfR6BiB
 Zogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1NFQx4M7emlsOeIvgOTsRMLDiElPASaNlDD1uGqCI9o=;
 b=JcAA30A+I73km3LN/aNHjxedztArI7ulXiHJNoT1HL3yBXcXsFmfoaFGrHf+1Udx0m
 qtz67JXlPqJa3ACOKSruV0h16fFGJ2rbHP7LbCO4I0U/uMFU43iGhltx3/j6N+Uxzi3O
 8PCx2bwmj80XRtM8YxUI3F6IBd7rB/zICsdZfBWQ7932pX87fkn88u0mqVZNcd4UCZAO
 iLRbttPgANU1c3udjGrDevOGxmUQXtZZxFW0Mg1ARNhTu1V+MvX2SvxmLV1Tf8io/n5o
 s/Ff/stRgdHUo3nWkvpWc1SeuRHdbIExiZm6TLjwLVxft8/FAeYIb8fnWtv6gX9B13Vk
 5NKQ==
X-Gm-Message-State: APjAAAV8kUVRZdDSfoqmuwMRcuqyX0L7sFXiIC33ndhyyzxnxBfa6alo
 fQJwA1VpY01qt4RKLlgZRIk=
X-Google-Smtp-Source: APXvYqw3uqt19gFI7raXLutn/B4OZcKPgyz5jJ1h81dP5ShmDytquJGh634QWG6In8rf3PzvJ9gfaQ==
X-Received: by 2002:a1c:9d4a:: with SMTP id g71mr2146692wme.66.1573121099896; 
 Thu, 07 Nov 2019 02:04:59 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id v184sm2225860wme.31.2019.11.07.02.04.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 07 Nov 2019 02:04:59 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Fabio Estevam <festevam@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/4] regulator: da9062: refactor buck modes into header
Date: Thu,  7 Nov 2019 11:04:07 +0100
Message-Id: <1573121050-4728-2-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_020501_330550_C69584FB 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch refactors buck modes into a header so that device trees
can make use of these mode constants.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/regulator/da9062-regulator.c               | 28 ++++++++--------------
 .../dt-bindings/regulator/dlg,da906x-regulator.h   | 16 +++++++++++++
 2 files changed, 26 insertions(+), 18 deletions(-)
 create mode 100644 include/dt-bindings/regulator/dlg,da906x-regulator.h

diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-regulator.c
index 710e670..1a95982 100644
--- a/drivers/regulator/da9062-regulator.c
+++ b/drivers/regulator/da9062-regulator.c
@@ -16,6 +16,7 @@
 #include <linux/regulator/of_regulator.h>
 #include <linux/mfd/da9062/core.h>
 #include <linux/mfd/da9062/registers.h>
+#include <dt-bindings/regulator/dlg,da906x-regulator.h>
 
 /* Regulator IDs */
 enum {
@@ -75,14 +76,6 @@ struct da9062_regulators {
 	struct da9062_regulator			regulator[0];
 };
 
-/* BUCK modes */
-enum {
-	BUCK_MODE_MANUAL,	/* 0 */
-	BUCK_MODE_SLEEP,	/* 1 */
-	BUCK_MODE_SYNC,		/* 2 */
-	BUCK_MODE_AUTO		/* 3 */
-};
-
 /* Regulator operations */
 
 /* Current limits array (in uA)
@@ -112,13 +105,13 @@ static int da9062_buck_set_mode(struct regulator_dev *rdev, unsigned mode)
 
 	switch (mode) {
 	case REGULATOR_MODE_FAST:
-		val = BUCK_MODE_SYNC;
+		val = DA906X_BUCK_MODE_SYNC;
 		break;
 	case REGULATOR_MODE_NORMAL:
-		val = BUCK_MODE_AUTO;
+		val = DA906X_BUCK_MODE_AUTO;
 		break;
 	case REGULATOR_MODE_STANDBY:
-		val = BUCK_MODE_SLEEP;
+		val = DA906X_BUCK_MODE_SLEEP;
 		break;
 	default:
 		return -EINVAL;
@@ -145,15 +138,14 @@ static unsigned da9062_buck_get_mode(struct regulator_dev *rdev)
 
 	switch (val) {
 	default:
-	case BUCK_MODE_MANUAL:
 		mode = REGULATOR_MODE_FAST | REGULATOR_MODE_STANDBY;
 		/* Sleep flag bit decides the mode */
 		break;
-	case BUCK_MODE_SLEEP:
+	case DA906X_BUCK_MODE_SLEEP:
 		return REGULATOR_MODE_STANDBY;
-	case BUCK_MODE_SYNC:
+	case DA906X_BUCK_MODE_SYNC:
 		return REGULATOR_MODE_FAST;
-	case BUCK_MODE_AUTO:
+	case DA906X_BUCK_MODE_AUTO:
 		return REGULATOR_MODE_NORMAL;
 	}
 
@@ -282,13 +274,13 @@ static int da9062_buck_set_suspend_mode(struct regulator_dev *rdev,
 
 	switch (mode) {
 	case REGULATOR_MODE_FAST:
-		val = BUCK_MODE_SYNC;
+		val = DA906X_BUCK_MODE_SYNC;
 		break;
 	case REGULATOR_MODE_NORMAL:
-		val = BUCK_MODE_AUTO;
+		val = DA906X_BUCK_MODE_AUTO;
 		break;
 	case REGULATOR_MODE_STANDBY:
-		val = BUCK_MODE_SLEEP;
+		val = DA906X_BUCK_MODE_SLEEP;
 		break;
 	default:
 		return -EINVAL;
diff --git a/include/dt-bindings/regulator/dlg,da906x-regulator.h b/include/dt-bindings/regulator/dlg,da906x-regulator.h
new file mode 100644
index 00000000..848a4df
--- /dev/null
+++ b/include/dt-bindings/regulator/dlg,da906x-regulator.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __DLG_DA906X_REGULATOR_H
+#define __DLG_DA906X_REGULATOR_H
+
+/*
+ * These buck mode constants may be used to specify values in device tree
+ * properties (e.g. regulator-initial-mode).
+ * A description of the following modes is in the manufacturers datasheet.
+ */
+
+#define DA906X_BUCK_MODE_SLEEP		1
+#define DA906X_BUCK_MODE_SYNC		2
+#define DA906X_BUCK_MODE_AUTO		3
+
+#endif
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
