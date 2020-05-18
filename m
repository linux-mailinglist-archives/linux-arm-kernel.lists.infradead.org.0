Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8051D7399
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8oC62TW3BC4XtlSEylLqOWa9U1Xz9Fl+RDpT4dJPEbA=; b=Zm6ucsBH/mGsaUTjB0tYr7fGb/
	Fg9XUPzPPr8Br+MmJBVyI2dC2qmXB26Wf3mTCvuH050Z20rlb379QhzOnhQAnWTenjWnqHt6jTJgv
	n6OCxmyGFfIE+RNyJLxchyNQs/mAaG0g+KOSYJSmrgENC6PhOwTevtNlo2pbMcOcKQANg54uAjCsh
	VZ+m76El+kXs1paN9Regs6Y/rjHIwGHaB3rwxmKet9Ya0GhsE1eeIxOVUhVtauAY/ZYA9hwsjB2zt
	MPDQURoR1MIjySM0iD9G/gVA6sMjaIo9SHYYD1jv5MFDun8yYkMidmY7EniqtkOpL+yUd/+qET3Gd
	weFfvcWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabpz-0006mX-6A; Mon, 18 May 2020 09:13:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabp2-0005nF-UK
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:12:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 616AA106F;
 Mon, 18 May 2020 02:12:32 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 130043F68F;
 Mon, 18 May 2020 02:12:30 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/7] firmware: smccc: Add the definition for SMCCCv1.2
 version/error codes
Date: Mon, 18 May 2020 10:12:18 +0100
Message-Id: <20200518091222.27467-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200518091222.27467-1-sudeep.holla@arm.com>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_021233_094141_30F364E8 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the definition for SMCCC v1.2 version and new error code added.
While at it, also add a note that ARM DEN 0070A is deprecated and is
now merged into the main SMCCC specification(ARM DEN 0028C).

Tested-by: Etienne Carriere <etienne.carriere@st.com>
Reviewed-by: Steven Price <steven.price@arm.com>
Reviewed-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 include/linux/arm-smccc.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 31b15db9685d..c3784ba8e2a4 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -12,7 +12,7 @@
  * specified in
  * https://developer.arm.com/docs/den0028/latest
  *
- * This code is up-to-date with version DEN 0028 B
+ * This code is up-to-date with version DEN 0028 C
  */
 
 #define ARM_SMCCC_STD_CALL	        _AC(0,U)
@@ -58,6 +58,7 @@
 
 #define ARM_SMCCC_VERSION_1_0		0x10000
 #define ARM_SMCCC_VERSION_1_1		0x10001
+#define ARM_SMCCC_VERSION_1_2		0x10002
 
 #define ARM_SMCCC_VERSION_FUNC_ID					\
 	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
@@ -316,10 +317,14 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
  */
 #define arm_smccc_1_1_hvc(...)	__arm_smccc_1_1(SMCCC_HVC_INST, __VA_ARGS__)
 
-/* Return codes defined in ARM DEN 0070A */
+/*
+ * Return codes defined in ARM DEN 0070A
+ * ARM DEN 0070A is now merged/consolidated into ARM DEN 0028 C
+ */
 #define SMCCC_RET_SUCCESS			0
 #define SMCCC_RET_NOT_SUPPORTED			-1
 #define SMCCC_RET_NOT_REQUIRED			-2
+#define SMCCC_RET_INVALID_PARAMETER		-3
 
 /*
  * Like arm_smccc_1_1* but always returns SMCCC_RET_NOT_SUPPORTED.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
