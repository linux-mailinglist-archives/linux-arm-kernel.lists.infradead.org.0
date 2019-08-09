Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE8F87B07
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 15:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ufOSBLi0wumkPgkjT4o27YYCy80iNNgHIGlenD9dtOg=; b=h+MqbwOK//dIWys2Qco7wpS+Zz
	lo+stuwOmjVz9TAaZwHdvJdSEJynAw5zol7M6PUa3xZ53ijtlD4NK6xJAcv8oos9nMVasqjJS7ZEy
	QDzA0Vd/90IjOphUT/FV67lxdHp+/2LFHlLnpnTJM2bJ578Ls9bUnsAT5+BRLlrm8/fr9RaUPhbG6
	3DpviBfMh2L1Ea1VqQ5PfqQZYJ62pqS9DjOD9wsCef5aPpuFvsiKYoIwyLW1BvY2nrDTUm4GChqtS
	h80OaaYvo0ehm+3eZgZKTVcdJbCZ6RarAAmgoYrUrl6UJBwi44PoBTPReAAECIb6uvRjleCQ9Wm7I
	KR6O8EuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4s5-0001iO-VI; Fri, 09 Aug 2019 13:23:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4rE-00010f-MJ
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 13:23:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC2AD1596;
 Fri,  9 Aug 2019 06:22:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 65F303F706;
 Fri,  9 Aug 2019 06:22:58 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 3/6] arm: spectre-v2: use arm_smccc_1_1_get_conduit()
Date: Fri,  9 Aug 2019 14:22:42 +0100
Message-Id: <20190809132245.43505-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190809132245.43505-1-mark.rutland@arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_062300_802905_EC49A584 
X-CRM114-Status: GOOD (  11.23  )
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

Now that we have arm_smccc_1_1_get_conduit(), we can hide the PSCI
implementation details from the arm spectre-v2 code, so let's do so.

As arm_smccc_1_1_get_conduit() implicitly checks that the SMCCC version
is at least SMCCC_VERSION_1_1, we no longer need to check this
explicitly where switch statements have a default case.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Russell King <linux@armlinux.org.uk>
---
 arch/arm/mm/proc-v7-bugs.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
index 9a07916af8dd..54d87506d3b5 100644
--- a/arch/arm/mm/proc-v7-bugs.c
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/arm-smccc.h>
 #include <linux/kernel.h>
-#include <linux/psci.h>
 #include <linux/smp.h>
 
 #include <asm/cp15.h>
@@ -75,11 +74,8 @@ static void cpu_v7_spectre_init(void)
 	case ARM_CPU_PART_CORTEX_A72: {
 		struct arm_smccc_res res;
 
-		if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
-			break;
-
-		switch (psci_ops.conduit) {
-		case PSCI_CONDUIT_HVC:
+		switch (arm_smccc_1_1_get_conduit()) {
+		case SMCCC_CONDUIT_HVC:
 			arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
 					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 			if ((int)res.a0 != 0)
@@ -90,7 +86,7 @@ static void cpu_v7_spectre_init(void)
 			spectre_v2_method = "hypervisor";
 			break;
 
-		case PSCI_CONDUIT_SMC:
+		case SMCCC_CONDUIT_SMC:
 			arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
 					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 			if ((int)res.a0 != 0)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
