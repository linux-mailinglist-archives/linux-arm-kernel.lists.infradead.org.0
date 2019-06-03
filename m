Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EC03339F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZMw6aSTZLFbFBrisvZE/NLX8ydzPrGE854E+oQESu10=; b=jUn
	026E/0rXC6k2bLmZ0vmoBOchsm6ZLHLyRu2LaX/xRq+UyAGFRR/sh/4ksEumvTVKEmH7+r6rSbsE4
	c6ScxO6GGdylPk0sjTMEkkKPLw1GnHE2mTNplUJda6ItJAb4VwU35MBomVelKCQzriv+k9vTITz4s
	JKBRTuPJggZDo4U7QDHmtYxfZ5X6/3gdGW7GCl3Kc1iNo9O1plmdQdHyeWtoclb/WIVS9bUg3vKfx
	ZM7E9Z7FiNyKPKNbVYMAGDiqTwTWxIVdrIN3csDajDhBRAAlnVc5VnSwCoNBvpvCUKcd81eKSTCsu
	015CpfbUHCFGeuuqfWL4rNR2H+GnsQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXozU-0001AC-Bx; Mon, 03 Jun 2019 15:35:16 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXozN-00019t-SF
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:35:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2153780D;
 Mon,  3 Jun 2019 08:35:09 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 341FD3F246;
 Mon,  3 Jun 2019 08:35:08 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: cpufeature: Fix missing ZFR0 in
 __read_sysreg_by_encoding()
Date: Mon,  3 Jun 2019 16:35:02 +0100
Message-Id: <1559576102-12156-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_083509_917469_96783724 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Suzuki Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit 06a916feca2b ("arm64: Expose SVE2 features for
userspace"), new hwcaps are added that are detected via fields in
the SVE-specific ID register ID_AA64ZFR0_EL1.

In order to check compatibility of secondary cpus with the hwcaps
established at boot, the cpufeatures code uses
__read_sysreg_by_encoding() to read this ID register based on the
sys_reg field of the arm64_elf_hwcaps[] table.

This leads to a kernel splat if an hwcap uses an ID register that
__read_sysreg_by_encoding() doesn't explicitly handle, as now
happens when exercising cpu hotplug on an SVE2-capable platform.

So fix it by adding the required case in there.

Fixes: 06a916feca2b ("arm64: Expose SVE2 features for userspace")
Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

There is a broader question about how to avoid this happening again, but
I couldn't see an obvious solution so far.
---
 arch/arm64/kernel/cpufeature.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index ca27e08..80babf4 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -830,6 +830,7 @@ static u64 __read_sysreg_by_encoding(u32 sys_id)
 
 	read_sysreg_case(SYS_ID_AA64PFR0_EL1);
 	read_sysreg_case(SYS_ID_AA64PFR1_EL1);
+	read_sysreg_case(SYS_ID_AA64ZFR0_EL1);
 	read_sysreg_case(SYS_ID_AA64DFR0_EL1);
 	read_sysreg_case(SYS_ID_AA64DFR1_EL1);
 	read_sysreg_case(SYS_ID_AA64MMFR0_EL1);
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
