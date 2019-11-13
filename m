Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB38FB194
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zb52o/rXl4warxoEmAgfkV7Ow/JiNn64Gq1iAa2IxQE=; b=MR6g3Ou3LcHCkFfc9si9Xtvycx
	NG4K79GJUouuK77fyblT+Kab0WFuPdnKnHIRzIcpS8BroxhK9RTGj0amEx/YVOyirCxzz1R6LL5H/
	juZtavj0yIDGmrodnAYGFqdNwm4ZPwkkYESpStTxQeCR3L5O7TRB1E84JU0Vyac+sADZ0416DfyPR
	iyl8iMcSssrg/IXMgFjS1yYRYEm1VPvoO4KstrXwV+YGHvw0tPY4I8R8hBSFpMFk/z4y48EsyLBgy
	7ACzGHklxHi50z7/wBWIdQOA873b5mlHhe+fIlQbhHUC1Xs1lutvXzWsG9RBoG9FungmZj+Ly8IEk
	Y4k6uwsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUstq-0001xT-Fs; Wed, 13 Nov 2019 13:41:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUstN-0001kD-5V
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:41:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id r10so2428409wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g0Reo92qEknJT+JrEapTAi5GfksVulSHB7AHlQhZpQI=;
 b=iakvQVh7cNx5bXD4bxwf7dkBIfVjeJlyqfsMagf2SWHTpbsocpW47MTVX/0M9nNseq
 M38FiXfEaEqR+CvoF6D3U38lBSRI/E3Taov1au7U9pwu6a6p6mNWy3huwbRdGB7JywSQ
 8LTsIyk+zzgs33ptiNzzExcftKdq/nDU0L6prx2DhqQHJlcTOgJ7Fmjf7sjnbyItPmBr
 V3tWr6bNqfXgT/bjY3Zd+UZpRZ0gL+Sw+Qdmg7M0scahrcgkodqX+CcTGn1zR/TWLn6V
 o8qdr+Fr9eGf3P7IgfkNNGLHtUWK0E1RAYfPGA5xOA/7+K4ZFiJCAcHewHrwiNEovxFj
 QhTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g0Reo92qEknJT+JrEapTAi5GfksVulSHB7AHlQhZpQI=;
 b=nmaYXP3Oll86YM6z484yZR+LCbs57N5IIOp6OsMAT9YR86SJZIGpr9xEpiw6Zhb1bz
 avcorcDVLECdLMOAutqN5ccnovlAJ5AD7At6f23/HdJYckHNwKT0EROLRqZ4RJ1flFfd
 7TZAC3x2LTh2pJrI+TTsibdkl+c+3LH69euUZX+UYcUlNMEXVHDPL/vsjq3tiLwX5rUU
 Tvu3FXnMQ+L1poVzNOYin09YDqyL7nJ1RXPBVw0UbDrqqLTfRiksKnFB6S/vyZoPENJA
 g2T3DYb/eG5LpPt5awa0HwMAqS9rmnDRYQaCHD7/ClUkL1npf0tYKMNHJOimwv1Ds+yT
 uwfw==
X-Gm-Message-State: APjAAAWY69PBlIUm1a2jcsCwdb3RyKyMUTGsY1IBoMJ9d9sP1Erjh+Mi
 oSxtMo3X+yam+OVKXyHKVa4=
X-Google-Smtp-Source: APXvYqxtB/tHkCWuTXTACCflWIufqfG0V13c5vDCKObyaNE35kyrkhilP05Y3h7O5l41adByy9fcvQ==
X-Received: by 2002:adf:e94e:: with SMTP id m14mr3002351wrn.233.1573652463766; 
 Wed, 13 Nov 2019 05:41:03 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id r15sm4195831wrc.5.2019.11.13.05.41.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 13 Nov 2019 05:41:03 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Mark Brown <broonie@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 1/4] regulator: da9062: refactor buck modes into header
Date: Wed, 13 Nov 2019 14:40:13 +0100
Message-Id: <1573652416-9848-2-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_054105_206982_5635D3C4 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch refactors buck modes into a header file so that device trees
can make use of these mode constants.

The new header filename uses da9063 because DA9063 was the earlier chip
and its driver code will want updating at some point in a similar manner.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/regulator/da9062-regulator.c               | 28 ++++++++--------------
 .../dt-bindings/regulator/dlg,da9063-regulator.h   | 16 +++++++++++++
 2 files changed, 26 insertions(+), 18 deletions(-)
 create mode 100644 include/dt-bindings/regulator/dlg,da9063-regulator.h

diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-regulator.c
index 4b24518..601002e 100644
--- a/drivers/regulator/da9062-regulator.c
+++ b/drivers/regulator/da9062-regulator.c
@@ -16,6 +16,7 @@
 #include <linux/regulator/of_regulator.h>
 #include <linux/mfd/da9062/core.h>
 #include <linux/mfd/da9062/registers.h>
+#include <dt-bindings/regulator/dlg,da9063-regulator.h>
 
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
+		val = DA9063_BUCK_MODE_SYNC;
 		break;
 	case REGULATOR_MODE_NORMAL:
-		val = BUCK_MODE_AUTO;
+		val = DA9063_BUCK_MODE_AUTO;
 		break;
 	case REGULATOR_MODE_STANDBY:
-		val = BUCK_MODE_SLEEP;
+		val = DA9063_BUCK_MODE_SLEEP;
 		break;
 	default:
 		return -EINVAL;
@@ -145,14 +138,13 @@ static unsigned da9062_buck_get_mode(struct regulator_dev *rdev)
 
 	switch (val) {
 	default:
-	case BUCK_MODE_MANUAL:
 		/* Sleep flag bit decides the mode */
 		break;
-	case BUCK_MODE_SLEEP:
+	case DA9063_BUCK_MODE_SLEEP:
 		return REGULATOR_MODE_STANDBY;
-	case BUCK_MODE_SYNC:
+	case DA9063_BUCK_MODE_SYNC:
 		return REGULATOR_MODE_FAST;
-	case BUCK_MODE_AUTO:
+	case DA9063_BUCK_MODE_AUTO:
 		return REGULATOR_MODE_NORMAL;
 	}
 
@@ -279,13 +271,13 @@ static int da9062_buck_set_suspend_mode(struct regulator_dev *rdev,
 
 	switch (mode) {
 	case REGULATOR_MODE_FAST:
-		val = BUCK_MODE_SYNC;
+		val = DA9063_BUCK_MODE_SYNC;
 		break;
 	case REGULATOR_MODE_NORMAL:
-		val = BUCK_MODE_AUTO;
+		val = DA9063_BUCK_MODE_AUTO;
 		break;
 	case REGULATOR_MODE_STANDBY:
-		val = BUCK_MODE_SLEEP;
+		val = DA9063_BUCK_MODE_SLEEP;
 		break;
 	default:
 		return -EINVAL;
diff --git a/include/dt-bindings/regulator/dlg,da9063-regulator.h b/include/dt-bindings/regulator/dlg,da9063-regulator.h
new file mode 100644
index 00000000..1de710d
--- /dev/null
+++ b/include/dt-bindings/regulator/dlg,da9063-regulator.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _DT_BINDINGS_REGULATOR_DLG_DA9063_H
+#define _DT_BINDINGS_REGULATOR_DLG_DA9063_H
+
+/*
+ * These buck mode constants may be used to specify values in device tree
+ * properties (e.g. regulator-initial-mode).
+ * A description of the following modes is in the manufacturers datasheet.
+ */
+
+#define DA9063_BUCK_MODE_SLEEP		1
+#define DA9063_BUCK_MODE_SYNC		2
+#define DA9063_BUCK_MODE_AUTO		3
+
+#endif
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
