Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A95FFDDAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=EWXLpetL2zU7/Z2lfj9miClfcOR7PxaId9BwYaFvXQg=; b=VZ8
	XH2wd17jahTZ/cweeTv8FDs5QXvTQRVTHq/caqoJHzelYYWL/skV7g3n/y/VQ7Epe7J5uPoyW/l8Z
	/wdrQVI1+l/6CLDgxZukD4F0/gSb03M6rKysqUA9Q5Bsjjk9KeknzRN57xPgqc+ZDtaaWWg6269Gg
	kT+pTkd5T6kBg2p4cxqn0CrjDSoKiJyW6row+OJb7tdPy9zSn2goLjzf1e0YgC6s9PnrgUlbdKk0b
	NoB1i+GXBiaOE3w5WKw8HAHDWHDtkuyToSCmfTLwUWCV63Myp+Rj3K5qnMOqVPOVQHGuaMcOM72iW
	tpIvp467CloNO0MBi6oG5mET59kkdiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVag9-0003D3-59; Fri, 15 Nov 2019 12:26:21 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVaf5-0002WN-Oh
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=JoonrASRx2bVKGKiyTyFxDhCD4/kPUTpfSsyLooSuVw=; b=bhOpTRTDsFqE
 wrThA70oe2XbTfYLL+50tDAbIAe95yh2B9gMPEgP4hsA5jkDlrV6l+KPyXYgdd1Mh4gof063IdrsY
 LdNsE/da4W3DXjYvpAWO2CWNWC2CfmCZ3a0y21AymxGnsMV9WX9v6N5ef9S9VhwyHMzHubCGGSwb0
 Dq7Cg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iVaey-0000Kp-Af; Fri, 15 Nov 2019 12:25:08 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id BB9EE274162A; Fri, 15 Nov 2019 12:25:07 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Christoph Fritz <chf.fritz@googlemail.com>
Subject: Applied "regulator: da9062: refactor buck modes into header" to the
 regulator tree
In-Reply-To: <1573652416-9848-2-git-send-email-chf.fritz@googlemail.com>
X-Patchwork-Hint: ignore
Message-Id: <20191115122507.BB9EE274162A@ypsilon.sirena.org.uk>
Date: Fri, 15 Nov 2019 12:25:07 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_042515_797749_89E9CFA6 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: da9062: refactor buck modes into header

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.5

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 7d34aec52d292197d6b13395b023c718cac4630f Mon Sep 17 00:00:00 2001
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Wed, 13 Nov 2019 14:40:13 +0100
Subject: [PATCH] regulator: da9062: refactor buck modes into header

This patch refactors buck modes into a header file so that device trees
can make use of these mode constants.

The new header filename uses da9063 because DA9063 was the earlier chip
and its driver code will want updating at some point in a similar manner.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
Link: https://lore.kernel.org/r/1573652416-9848-2-git-send-email-chf.fritz@googlemail.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/da9062-regulator.c          | 28 +++++++------------
 .../regulator/dlg,da9063-regulator.h          | 16 +++++++++++
 2 files changed, 26 insertions(+), 18 deletions(-)
 create mode 100644 include/dt-bindings/regulator/dlg,da9063-regulator.h

diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-regulator.c
index 4b24518f75b5..601002e3e012 100644
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
index 000000000000..1de710dd0899
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
