Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57A5F0792
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SOj5mao7uY27LDUrz6X3+H1wWGVRVV5K2nJv4SV4nik=; b=enXPoCKl3Qq/1Mxwlnp78jpaIy
	vFQhVGHz6ztgYw1wFDu11rvdXdRhIgTWUJg8fwhLIpiMxh292r/Ak6PnULFGxewMfQVxrX6j726l3
	SJ9sfZuaPzavntaq9+XXP/ahtpm2kp0Spya9yd05FXICG5aUGwpZSA3IwR6xaCg2YANHL/N7LzvjF
	Lf2voUKlBeEKhljksfs4hP35/y4DYjmy54UoLMpBAUiRoujwh2sNucblhJhqkHZQLpZ+9achQ5Zze
	m8+YbeYk5p7IAm1vK1ho+9G1QcZRKbFymCyailH45BkGUy2ulQN19gX9HSKx4E4P6QgcNCqOGrfmf
	LzEHm4yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5xt-0000XC-1u; Tue, 05 Nov 2019 21:02:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5vB-0005Lq-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:30 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B06D222C4;
 Tue,  5 Nov 2019 20:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987564;
 bh=/yceU+hIl0bH9C7nQWmK7euXoyeU9eG6jatmNh1g0UE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g/bYaAILqFLvtmtWiuWfo7czLaKpFqp0dL2n4FdFKa/f0oIy7Q7NBmVGKgY9qt5aE
 /nhHCAJih5szjaLpslns4P0sr5eS+WrWPZddAGT2f4r7J0y27DbkllHJYC/IUdx9Js
 soin9KE+3Z0h28FVMBcZr8X0M7vAZMWl0oAhTzM4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 09/53] firmware: qcom: scm: Fix interrupted
 SCM calls
Date: Tue,  5 Nov 2019 21:58:02 +0100
Message-Id: <20191105205846.1394-10-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125925_392457_9AD8BF65 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sasha Levin <alexander.levin@verizon.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andy Gross <andy.gross@linaro.org>

[ Upstream commit 82bcd087029f6056506ea929f11af02622230901 ]

This patch adds a Qualcomm specific quirk to the arm_smccc_smc call.

On Qualcomm ARM64 platforms, the SMC call can return before it has
completed.  If this occurs, the call can be restarted, but it requires
using the returned session ID value from the interrupted SMC call.

The quirk stores off the session ID from the interrupted call in the
quirk structure so that it can be used by the caller.

This patch folds in a fix given by Sricharan R:
https://lkml.org/lkml/2016/9/28/272

Signed-off-by: Andy Gross <andy.gross@linaro.org>
Reviewed-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <alexander.levin@verizon.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
[ardb: restrict to arch pieces since qcom was 32-bit only in v4.4]
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/kernel/smccc-call.S |  9 ++++++++-
 include/linux/arm-smccc.h      | 11 ++++++++---
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index ba60a8cb07d2..62522342e1e4 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -12,6 +12,7 @@
  *
  */
 #include <linux/linkage.h>
+#include <linux/arm-smccc.h>
 #include <asm/asm-offsets.h>
 
 	.macro SMCCC instr
@@ -20,7 +21,13 @@
 	ldr	x4, [sp]
 	stp	x0, x1, [x4, #ARM_SMCCC_RES_X0_OFFS]
 	stp	x2, x3, [x4, #ARM_SMCCC_RES_X2_OFFS]
-	ret
+	ldr	x4, [sp, #8]
+	cbz	x4, 1f /* no quirk structure */
+	ldr	x9, [x4, #ARM_SMCCC_QUIRK_ID_OFFS]
+	cmp	x9, #ARM_SMCCC_QUIRK_QCOM_A6
+	b.ne	1f
+	str	x6, [x4, ARM_SMCCC_QUIRK_STATE_OFFS]
+1:	ret
 	.cfi_endproc
 	.endm
 
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index c66f8ae94b5a..b67934164401 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -14,9 +14,6 @@
 #ifndef __LINUX_ARM_SMCCC_H
 #define __LINUX_ARM_SMCCC_H
 
-#include <linux/linkage.h>
-#include <linux/types.h>
-
 /*
  * This file provides common defines for ARM SMC Calling Convention as
  * specified in
@@ -60,6 +57,13 @@
 #define ARM_SMCCC_OWNER_TRUSTED_OS	50
 #define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
 
+#define ARM_SMCCC_QUIRK_NONE		0
+#define ARM_SMCCC_QUIRK_QCOM_A6		1 /* Save/restore register a6 */
+
+#ifndef __ASSEMBLY__
+
+#include <linux/linkage.h>
+#include <linux/types.h>
 /**
  * struct arm_smccc_res - Result from SMC/HVC call
  * @a0-a3 result values from registers 0 to 3
@@ -125,4 +129,5 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 
 #define arm_smccc_hvc_quirk(...) __arm_smccc_hvc(__VA_ARGS__)
 
+#endif /*__ASSEMBLY__*/
 #endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
