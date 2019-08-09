Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F09987B04
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 15:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S2N+JwKTbenQXkoBPNNgB4MzMKmWkUlbdAsWUqmyecM=; b=FCRKI2Ao2b9ACG4quupFH2ODsy
	dpVSEZ3H3NQu8HNfgRfgMF5t0i3DaypABsTzIIu71MFB3yvfcOYjjHnfcOdXYVH6N9Qf6zc1kp3la
	7G+JNOXhXVleX4m4z1WHe8Ad79YHCpGUisB3DGdCDm8zG0+A6pGQZ+xyGyrhfSXakuugO9dpSUAZk
	pp62vxZudDfpk1ZRhhca58XsamG/9tsJW6CglPD/Ve2Mx7jnP3qKRTGHF/w6NDz+F4O5Tw0rO6Q2E
	gQAAtKwb7nc74QNER7QBJXKA/lDEWpy6l/Zbc31nxV0P6j9tUO0MC7Ytk6UJMG3YenIK7Wa0SbzYo
	BEaKv2LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4rM-0000zy-Aw; Fri, 09 Aug 2019 13:23:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4rB-0000yz-3B
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 13:22:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3ACC15AB;
 Fri,  9 Aug 2019 06:22:55 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6EA673F706;
 Fri,  9 Aug 2019 06:22:54 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 1/6] arm/arm64: smccc/psci: add arm_smccc_1_1_get_conduit()
Date: Fri,  9 Aug 2019 14:22:40 +0100
Message-Id: <20190809132245.43505-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190809132245.43505-1-mark.rutland@arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_062257_182335_30F6B592 
X-CRM114-Status: GOOD (  11.10  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, robin.murphy@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SMCCC callers are currently amassing a collection of enums for the SMCCC
conduit, and are having to dig into the PSCI driver's internals in order
to figure out what to do.

Let's clean this up, with common SMCCC_CONDUIT_* definitions, and an
arm_smccc_1_1_get_conduit() helper that abstracts the PSCI driver's
internal state.

We can kill off the PSCI_CONDUIT_* definitions once we've migrated users
over to the new interface.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
---
 drivers/firmware/psci/psci.c | 15 +++++++++++++++
 include/linux/arm-smccc.h    | 16 ++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index f82ccd39a913..5f31f1bea1af 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -57,6 +57,21 @@ struct psci_operations psci_ops = {
 	.smccc_version = SMCCC_VERSION_1_0,
 };
 
+enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
+{
+	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
+		return SMCCC_CONDUIT_NONE;
+
+	switch (psci_ops.conduit) {
+	case PSCI_CONDUIT_SMC:
+		return SMCCC_CONDUIT_SMC;
+	case PSCI_CONDUIT_HVC:
+		return SMCCC_CONDUIT_HVC;
+	default:
+		return SMCCC_CONDUIT_NONE;
+	}
+}
+
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
 				unsigned long, unsigned long);
 static psci_fn *invoke_psci_fn;
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 080012a6f025..df01a8579034 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -80,6 +80,22 @@
 
 #include <linux/linkage.h>
 #include <linux/types.h>
+
+enum arm_smccc_conduit {
+	SMCCC_CONDUIT_NONE,
+	SMCCC_CONDUIT_SMC,
+	SMCCC_CONDUIT_HVC,
+};
+
+/**
+ * arm_smccc_1_1_get_conduit()
+ *
+ * Returns the conduit to be used for SMCCCv1.1 or later.
+ *
+ * When SMCCCv1.1 is not present, returns SMCCC_CONDUIT_NONE.
+ */
+enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void);
+
 /**
  * struct arm_smccc_res - Result from SMC/HVC call
  * @a0-a3 result values from registers 0 to 3
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
