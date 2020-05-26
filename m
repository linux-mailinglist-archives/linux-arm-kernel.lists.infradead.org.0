Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48401E26C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUrRNmjjQwgfRcvWnZLEmaf0D0ixPyAlBMiVUcwywHE=; b=XhPOt5OsZVQCZO
	eBOLjWKVdEEy4QH1yzR0PE4U6MWXHa6RGsAElONBXccQf2dELnzkPiEBJXL0N2ek2cEo/ocp7gQrs
	Ju6bKtc+upOr53iU1lKgYqwEc9RdzXTRKXWgPtpuecOeblYctAfX6hmWHbfyvqXkHWSx48YPevx1o
	Hdi8Gm9eA9xEqXOVxn181oXbiJHkjG1vDgshXTfFC+iM1LppMiRBzNidKrwUys0qxPfJYpBvI6qPM
	oZrzk/P4iwGZMeNDy3155LP7isvYyg56YRCrh61xiNu/SAMolvUqd1fBR1fbM8nY8h6CFWLZLjrzu
	5jOdzQZhSihKmJnmkktA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdcJD-0000Mn-83; Tue, 26 May 2020 16:20:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcIO-0008NS-9Q
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:19:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 559F730E;
 Tue, 26 May 2020 09:19:15 -0700 (PDT)
Received: from merodach.members.linode.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 674C83F52E;
 Tue, 26 May 2020 09:19:14 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] KVM: arm64: Add emulation for 32bit guests accessing
 ACTLR2
Date: Tue, 26 May 2020 16:18:34 +0000
Message-Id: <20200526161834.29165-4-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526161834.29165-1-james.morse@arm.com>
References: <20200526161834.29165-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_091916_387094_C2376946 
X-CRM114-Status: GOOD (  12.50  )
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
Cc: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACTLR_EL1 is a 64bit register while the 32bit ACTLR is obviously 32bit.
For 32bit software, the extra bits are accessible via ACTLR2... which
KVM doesn't emulate.

Signed-off-by: James Morse <james.morse@arm.com>
---
I'm not convinced this is endian safe, but it does match what
kvm_inject_undef32() do.

The alternative would be to always read the 64bit value, and generate
the 32bit offets like access_vm_reg() does.

 arch/arm64/include/asm/kvm_host.h    |  1 +
 arch/arm64/kvm/sys_regs_generic_v8.c | 16 +++++++++++++++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 32c8a675e5a4..5b7538663a8e 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -185,6 +185,7 @@ enum vcpu_sysreg {
 #define c0_CSSELR	(CSSELR_EL1 * 2)/* Cache Size Selection Register */
 #define c1_SCTLR	(SCTLR_EL1 * 2)	/* System Control Register */
 #define c1_ACTLR	(ACTLR_EL1 * 2)	/* Auxiliary Control Register */
+#define c1_ACTLR2	(c1_ACTLR + 1)	/* ACTLR top 32 bits */
 #define c1_CPACR	(CPACR_EL1 * 2)	/* Coprocessor Access Control */
 #define c2_TTBR0	(TTBR0_EL1 * 2)	/* Translation Table Base Register 0 */
 #define c2_TTBR0_high	(c2_TTBR0 + 1)	/* TTBR0 top 32 bits */
diff --git a/arch/arm64/kvm/sys_regs_generic_v8.c b/arch/arm64/kvm/sys_regs_generic_v8.c
index 9cb6b4c8355a..ed77bbb48e64 100644
--- a/arch/arm64/kvm/sys_regs_generic_v8.c
+++ b/arch/arm64/kvm/sys_regs_generic_v8.c
@@ -30,6 +30,18 @@ static bool access_actlr(struct kvm_vcpu *vcpu,
 	return true;
 }
 
+static bool access_cp15_actlr(struct kvm_vcpu *vcpu,
+			      struct sys_reg_params *p,
+			      const struct sys_reg_desc *r)
+{
+	if (p->is_write)
+		return ignore_write(vcpu, p);
+
+	p->regval = vcpu_cp15(vcpu, r->reg);
+	return true;
+
+}
+
 static void reset_actlr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
 {
 	__vcpu_sys_reg(vcpu, ACTLR_EL1) = read_sysreg(actlr_el1);
@@ -46,7 +58,9 @@ static const struct sys_reg_desc genericv8_sys_regs[] = {
 static const struct sys_reg_desc genericv8_cp15_regs[] = {
 	/* ACTLR */
 	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b001),
-	  access_actlr },
+	  access_cp15_actlr, NULL, c1_ACTLR },
+	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b011),
+	  access_cp15_actlr, NULL, c1_ACTLR2 },
 };
 
 static struct kvm_sys_reg_target_table genericv8_target_table = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
