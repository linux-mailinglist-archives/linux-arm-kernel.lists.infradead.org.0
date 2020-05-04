Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BEE1C35B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 11:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zO2WHGy1ldtdOXITHJZCmzphc2ola0dCIrzx22lbX9I=; b=FYBpB7s3xvfSOUptQ61njsdBof
	Newf08uvIwlvINcL+DkXLI7JWcw48ycytu+FlBK3oxid/5JSj96CaWBbOX3LUzE5A9QicYM+i9O3O
	VC449u7TQm4lzWqTyyawES0vL4WPhLvF7e0vvvP1J7MgMFFvXPS/yMmWKEEkp/kQTKAPskPKQ4BhQ
	gEgKGzYio41xwGXuoK9hMbzMBvrYB6wjqTRL8aKKOM3xbokuzq7oQENUk9KII0JU29A1G5tBDDSW0
	B1cvP757uN2+IHhZWbu/ghg1VcMs7J/Rr+kaTMyqy5bmS2T00J/OjEL8ETzlF1Ju3tjbxZAu3tKHL
	ccxwhLPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXQM-0002OO-S9; Mon, 04 May 2020 09:30:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXPa-0001sn-5F
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 09:29:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8487D1063;
 Mon,  4 May 2020 02:29:15 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 509A43F305;
 Mon,  4 May 2020 02:29:14 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/5] arm/arm64: smccc: Add the definition for SMCCCv1.2
 version/error codes
Date: Mon,  4 May 2020 10:29:02 +0100
Message-Id: <20200504092905.10580-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504092905.10580-1-sudeep.holla@arm.com>
References: <20200504092905.10580-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_022918_248621_4427B293 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
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

Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 include/linux/arm-smccc.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 6c1d1eda3be4..9d9a2e42e919 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -56,6 +56,7 @@
 
 #define ARM_SMCCC_VERSION_1_0		0x10000
 #define ARM_SMCCC_VERSION_1_1		0x10001
+#define ARM_SMCCC_VERSION_1_2		0x10002
 
 #define ARM_SMCCC_VERSION_FUNC_ID					\
 	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
@@ -314,10 +315,14 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
  */
 #define arm_smccc_1_1_hvc(...)	__arm_smccc_1_1(SMCCC_HVC_INST, __VA_ARGS__)
 
-/* Return codes defined in ARM DEN 0070A */
+/*
+ * Return codes defined in ARM DEN 0070A
+ * ARM DEN 0070A is now merged/consolidated into ARM DEN 0028C
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
