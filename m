Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306C3E4F97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtwLUdWMneb+G0+YHKPbUJ/UpjDbOz7pru068Ic2ME0=; b=Sw0pILFGzZZvQ7
	NWkvabrUGHz6EcIvUO+6oBQx4b1pahIqAxZmYhtPdN9ZFfbAIbVXcskYIiru4WTrPzbWFW8tSU6IY
	+8FL4PoNWJzTCJvKuXgDbXM+4YTp/c55RX7ATdMqqd/niNZkw2rVVZYt4j7GxHNB6+dH5ZyFXWZHI
	C4ejACG3hoxXylZjyDorJenn8xZ9QK3YnHOw3hNtA2n7cktTyHTAvaTCy5CEztPczdxXbtRdHoEe/
	opwdpKmcenc55sGuR4ImLosSafCsPGt6YJyWChf8JpF+LQQ+2LbkKwg1R4VkygdsLgyn9Cfhsscgf
	Gei9T9T0Q0BY8lVSpUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0xn-0001P2-0m; Fri, 25 Oct 2019 14:53:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0x2-0000uT-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:52:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F42B492;
 Fri, 25 Oct 2019 07:52:28 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0CE383F71A;
 Fri, 25 Oct 2019 07:52:26 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v1 2/3] KVM: arm64: limit PMU version to ARMv8.4
Date: Fri, 25 Oct 2019 15:52:18 +0100
Message-Id: <20191025145219.28350-3-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025145219.28350-1-andrew.murray@arm.com>
References: <20191025145219.28350-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_075228_899816_3DF8EAB0 
X-CRM114-Status: GOOD (  13.04  )
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMv8.5-PMU introduces 64-bit event counters, however KVM doesn't yet
support this. Let's trap the Debug Feature Registers in order to limit
PMUVer/PerfMon in the Debug Feature Registers to PMUv3 for ARMv8.4.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/include/asm/sysreg.h |  4 ++++
 arch/arm64/kvm/sys_regs.c       | 36 +++++++++++++++++++++++++++++++--
 2 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 972d196c7714..0e82e210e22b 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -672,6 +672,10 @@
 #define ID_AA64DFR0_TRACEVER_SHIFT	4
 #define ID_AA64DFR0_DEBUGVER_SHIFT	0
 
+#define ID_DFR0_PERFMON_SHIFT		24
+
+#define ID_DFR0_EL1_PMUVER_8_4		5
+
 #define ID_ISAR5_RDM_SHIFT		24
 #define ID_ISAR5_CRC32_SHIFT		16
 #define ID_ISAR5_SHA2_SHIFT		12
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 2071260a275b..829838c9af3f 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -666,6 +666,37 @@ static bool pmu_access_event_counter_el0_disabled(struct kvm_vcpu *vcpu)
 	return check_pmu_access_disabled(vcpu, ARMV8_PMU_USERENR_ER | ARMV8_PMU_USERENR_EN);
 }
 
+static bool access_id_aa64dfr0_el1(struct kvm_vcpu *vcpu,
+				   struct sys_reg_params *p,
+				   const struct sys_reg_desc *rd)
+{
+	if (p->is_write)
+		return write_to_read_only(vcpu, p, rd);
+
+	/* Limit guests to PMUv3 for ARMv8.4 */
+	p->regval = read_sanitised_ftr_reg(SYS_ID_AA64DFR0_EL1);
+	p->regval = cpuid_feature_cap_signed_field_width(p->regval,
+						ID_AA64DFR0_PMUVER_SHIFT,
+						4, ID_DFR0_EL1_PMUVER_8_4);
+
+	return p->regval;
+}
+
+static bool access_id_dfr0_el1(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
+			       const struct sys_reg_desc *rd)
+{
+	if (p->is_write)
+		return write_to_read_only(vcpu, p, rd);
+
+	/* Limit guests to PMUv3 for ARMv8.4 */
+	p->regval = read_sanitised_ftr_reg(SYS_ID_DFR0_EL1);
+	p->regval = cpuid_feature_cap_signed_field_width(p->regval,
+						ID_DFR0_PERFMON_SHIFT,
+						4, ID_DFR0_EL1_PMUVER_8_4);
+
+	return p->regval;
+}
+
 static bool access_pmcr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 			const struct sys_reg_desc *r)
 {
@@ -1405,7 +1436,8 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	/* CRm=1 */
 	ID_SANITISED(ID_PFR0_EL1),
 	ID_SANITISED(ID_PFR1_EL1),
-	ID_SANITISED(ID_DFR0_EL1),
+	{ SYS_DESC(SYS_ID_DFR0_EL1), access_id_dfr0_el1 },
+
 	ID_HIDDEN(ID_AFR0_EL1),
 	ID_SANITISED(ID_MMFR0_EL1),
 	ID_SANITISED(ID_MMFR1_EL1),
@@ -1444,7 +1476,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	ID_UNALLOCATED(4,7),
 
 	/* CRm=5 */
-	ID_SANITISED(ID_AA64DFR0_EL1),
+	{ SYS_DESC(SYS_ID_AA64DFR0_EL1), access_id_aa64dfr0_el1 },
 	ID_SANITISED(ID_AA64DFR1_EL1),
 	ID_UNALLOCATED(5,2),
 	ID_UNALLOCATED(5,3),
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
