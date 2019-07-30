Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309D37AB3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rWXbZWnkA7WcqOB+5ASPDlyMJ/VfNdzwS2vnr44ttfM=; b=PF3
	CqT17utOt0RqKeI9PUYt6qKM1keUqbUM25Of2tVEYaGTtqdi2NhqILFRKr9ei3nNEJoinEuNoEep6
	uYaIPJN0euCxVbdaFyONJOHCaIMdP/Bs09iWl4W7ZvhRlhU/8W/DV6XoPsb7sX74lJg3Jk2LBk+VD
	maPEA0dTSM4cocC2a8fhX1PMUAhyXZMk9nb/u4R8e+Yswu5oBI5m8M4SmexkkyNV6+BXQBhI285iw
	KvReHz+UyD8yN/K6q+MCT8nWemNHDbaMpIzx0FGjK4JcW9Ju9tcKXiTGOwn6+cdXxdvZReZClhZ3W
	M6KnwprZ4tBzXy3kRq8UTj0uP2eii5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTKI-0002CN-NO; Tue, 30 Jul 2019 14:42:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTK6-0002Br-8Q
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:41:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88EA228;
 Tue, 30 Jul 2019 07:41:52 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F18C63F694;
 Tue, 30 Jul 2019 07:41:51 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: esr: Add ESR exception class encoding for trapped ERET
Date: Tue, 30 Jul 2019 15:41:47 +0100
Message-Id: <20190730144147.3694-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_074154_337162_F8C0014F 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: marc.zyngier@arm.com, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ESR.EC encoding of 0b011010 (0x1a) describes an exception generated
by an ERET, ERETAA or ERETAB instruction as a result of a nested
virtualisation trap to EL2.

Add an encoding for this EC and a string description so that we identify
it correctly if we take one unexpectedly.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/esr.h | 3 ++-
 arch/arm64/kernel/traps.c    | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
index 65ac18400979..cb29253ae86b 100644
--- a/arch/arm64/include/asm/esr.h
+++ b/arch/arm64/include/asm/esr.h
@@ -34,7 +34,8 @@
 #define ESR_ELx_EC_SMC64	(0x17)	/* EL2 and above */
 #define ESR_ELx_EC_SYS64	(0x18)
 #define ESR_ELx_EC_SVE		(0x19)
-/* Unallocated EC: 0x1A - 0x1E */
+#define ESR_ELx_EC_ERET		(0x1a)	/* EL2 only */
+/* Unallocated EC: 0x1b - 0x1E */
 #define ESR_ELx_EC_IMP_DEF	(0x1f)	/* EL3 only */
 #define ESR_ELx_EC_IABT_LOW	(0x20)
 #define ESR_ELx_EC_IABT_CUR	(0x21)
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index d3313797cca9..42c8422cdf4a 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -743,6 +743,7 @@ static const char *esr_class_str[] = {
 	[ESR_ELx_EC_SMC64]		= "SMC (AArch64)",
 	[ESR_ELx_EC_SYS64]		= "MSR/MRS (AArch64)",
 	[ESR_ELx_EC_SVE]		= "SVE",
+	[ESR_ELx_EC_ERET]		= "ERET/ERETAA/ERETAB",
 	[ESR_ELx_EC_IMP_DEF]		= "EL3 IMP DEF",
 	[ESR_ELx_EC_IABT_LOW]		= "IABT (lower EL)",
 	[ESR_ELx_EC_IABT_CUR]		= "IABT (current EL)",
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
