Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AC5C4ACC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtH91Im9Bscr+Bik4eNbCuuj89v0O93ChR9T81JEt7s=; b=IlnG8sy7vAR3D2
	I1o34My6XwrLnIoHOP1puuOSNY2TrjGfNr4cgnZzLFiHWk8sEtTl64ZTA8LeQtnDubTsGBUQYcN8A
	cM88ousuFy9Xn9FGX0YqAcAPxz1vV+SUGUALk7q962sSUYq6gilTAw0H4zDRzJ09lju3XHBgBSUgP
	J5LIlgrp/zwr500tmUQIyVnLp0XP7LWwU/OQCoiqkDUuVatuqeqnNd9dv01o96lndxwiUvOuWoaSa
	lO4acVrzq5IfbnKt43GEnVOirsMWsT09ypr25o5c+Ymg3nnjsHQN7Kdd49rXdzzUn6m1yvbl+qHSM
	Kr3m5PC12F1+IZ/DPRLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbHI-0003l3-2B; Wed, 02 Oct 2019 09:50:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbGb-0003Nl-7W
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 09:49:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B46BD15A1;
 Wed,  2 Oct 2019 02:49:52 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A1CA3F739;
 Wed,  2 Oct 2019 02:49:52 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] arm64: Fake the IminLine size on systems affected by
 Neoverse-N1 #1542419
Date: Wed,  2 Oct 2019 10:49:33 +0100
Message-Id: <20191002094935.48848-3-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191002094935.48848-1-james.morse@arm.com>
References: <20191002094935.48848-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_024953_309881_ABD36B1B 
X-CRM114-Status: GOOD (  13.05  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Systems affected by Neoverse-N1 #1542419 support DIC so do not need to
perform icache maintenance once new instructions are cleaned to the PoU.
For the errata workaround, the kernel hides DIC from user-space, so that
the unnecessary cache maintenance can be trapped by firmware.

To reduce the number of traps, produce a fake IminLine value based on
PAGE_SIZE.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/cache.h | 3 ++-
 arch/arm64/kernel/traps.c      | 6 +++++-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 43da6dd29592..806e9dc2a852 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -11,6 +11,7 @@
 #define CTR_L1IP_MASK		3
 #define CTR_DMINLINE_SHIFT	16
 #define CTR_IMINLINE_SHIFT	0
+#define CTR_IMINLINE_MASK	0xf
 #define CTR_ERG_SHIFT		20
 #define CTR_CWG_SHIFT		24
 #define CTR_CWG_MASK		15
@@ -18,7 +19,7 @@
 #define CTR_DIC_SHIFT		29
 
 #define CTR_CACHE_MINLINE_MASK	\
-	(0xf << CTR_DMINLINE_SHIFT | 0xf << CTR_IMINLINE_SHIFT)
+	(0xf << CTR_DMINLINE_SHIFT | CTR_IMINLINE_MASK << CTR_IMINLINE_SHIFT)
 
 #define CTR_L1IP(ctr)		(((ctr) >> CTR_L1IP_SHIFT) & CTR_L1IP_MASK)
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 465f0a0f8f0a..991647a65fe8 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -470,9 +470,13 @@ static void ctr_read_handler(unsigned int esr, struct pt_regs *regs)
 	int rt = ESR_ELx_SYS64_ISS_RT(esr);
 	unsigned long val = arm64_ftr_reg_user_value(&arm64_ftr_reg_ctrel0);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1542419))
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1542419)) {
 		val &= ~BIT(CTR_DIC_SHIFT);
 
+		val &= ~CTR_IMINLINE_MASK;
+		val |= PAGE_SHIFT - 2;
+	}
+
 	pt_regs_write_reg(regs, rt, val);
 
 	arm64_skip_faulting_instruction(regs, AARCH64_INSN_SIZE);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
