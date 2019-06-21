Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7761B4E54A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4s1wfrrsFiazEwbfr7N6Lz/ecAhBXGKkziG+MFJd6Q=; b=mZvoGw1k7sTIgR
	cJNDpG3/FvCRP25X8yMFDr/qlM5xLYyIV36voQ7XBZ45zw40Au3kXeccHghJQ+dojMV6+QidYg45Z
	nGavQ2VV8+MdtWnkDMdS57xTBm33ZwvbgBIRyGqG/VRpdlypCBBONsPYOns3vYyAT6+8RH8ICPgD2
	AM0rY7p4moX4V12ztNrOUSRnemNceF/VNWfS2lRY9Jvt+xxMKMmWxvNyl3q8oouB1StKPFnm8Kufp
	/TY5qZmp6v0VhsYHCD4GVHQdK8PW0WiLEoKZozrSASbsirveI3BI/rK8MUUuNZfJn02PFAi5DQA5n
	FQovwQWYDiC6dPaa9WxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGMO-0004Hm-TT; Fri, 21 Jun 2019 10:01:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1I-0007E2-2b
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:39:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0D1614FF;
 Fri, 21 Jun 2019 02:39:43 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8CAF63F246;
 Fri, 21 Jun 2019 02:39:42 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 20/59] KVM: arm64: nv: Trap CPACR_EL1 access in virtual EL2
Date: Fri, 21 Jun 2019 10:38:04 +0100
Message-Id: <20190621093843.220980-21-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023944_444624_40CF5269 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jintack Lim <jintack.lim@linaro.org>

For the same reason we trap virtual memory register accesses in virtual
EL2, we trap CPACR_EL1 access too; We allow the virtual EL2 mode to
access EL1 system register state instead of the virtual EL2 one.

Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_arm.h | 3 ++-
 arch/arm64/kvm/hyp/switch.c      | 2 ++
 arch/arm64/kvm/sys_regs.c        | 2 +-
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index b2e363ac624d..48e15af2bece 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -278,12 +278,13 @@
 #define CPTR_EL2_TFP_SHIFT 10
 
 /* Hyp Coprocessor Trap Register */
-#define CPTR_EL2_TCPAC	(1 << 31)
+#define CPTR_EL2_TCPAC	(1U << 31)
 #define CPTR_EL2_TTA	(1 << 20)
 #define CPTR_EL2_TFP	(1 << CPTR_EL2_TFP_SHIFT)
 #define CPTR_EL2_TZ	(1 << 8)
 #define CPTR_EL2_RES1	0x000032ff /* known RES1 bits in CPTR_EL2 */
 #define CPTR_EL2_DEFAULT	CPTR_EL2_RES1
+#define CPTR_EL2_E2H_TCPAC	(1U << 31)
 
 /* Hyp Debug Configuration Register bits */
 #define MDCR_EL2_TPMS		(1 << 14)
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 791b26570347..62359c7c3d6b 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -108,6 +108,8 @@ static void activate_traps_vhe(struct kvm_vcpu *vcpu)
 		val &= ~CPACR_EL1_FPEN;
 		__activate_traps_fpsimd32(vcpu);
 	}
+	if (vcpu_mode_el2(vcpu) && !vcpu_el2_e2h_is_set(vcpu))
+		val |= CPTR_EL2_E2H_TCPAC;
 
 	write_sysreg(val, cpacr_el1);
 
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 7fc87657382d..1d1312425cf2 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1773,7 +1773,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	ID_UNALLOCATED(7,7),
 
 	{ SYS_DESC(SYS_SCTLR_EL1), access_vm_reg, reset_val, SCTLR_EL1, 0x00C50078 },
-	{ SYS_DESC(SYS_CPACR_EL1), NULL, reset_val, CPACR_EL1, 0 },
+	{ SYS_DESC(SYS_CPACR_EL1), access_rw, reset_val, CPACR_EL1, 0 },
 	{ SYS_DESC(SYS_ZCR_EL1), NULL, reset_val, ZCR_EL1, 0, .visibility = sve_visibility },
 	{ SYS_DESC(SYS_TTBR0_EL1), access_vm_reg, reset_unknown, TTBR0_EL1 },
 	{ SYS_DESC(SYS_TTBR1_EL1), access_vm_reg, reset_unknown, TTBR1_EL1 },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
