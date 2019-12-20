Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2CD127CDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iZ3JXv8eB0egl9zIza0JM/V7sx/I/R+vaFoJYk/roo=; b=mfiAwc6TRhnP+R
	CKJtk1I6Z5mzWUmG0VLI5iLN5TtcOoTtD+vAME+zLlVkKTLJ6ytsI2F4DwFJgE2jtMI8X2PHmYBUq
	ySXMtCVxa2xXjoh5FCsPyoL+CpL7WTq0ZWnjG9ZBoozT41qxmILNrtFTCl1iQ24JfrWGI4ledWqkL
	0f4i6EktrXnitL02bPG99GNce1H2q2NTNPDkI7ll+Tl8O6bz8IRNbKe9m2X8acWddEoDH02h7GAPZ
	JQStN898aVLv5y9iA0t5vFZjUkW8L6P6DMONAkJjy2+j04XEw6/okNOupPQGCmhWrKKFWzPbk5XaD
	DinV3c2GZMYVemZvTTEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJK8-000379-3O; Fri, 20 Dec 2019 14:32:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJIh-0001zn-C0
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:30:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1304311FB;
 Fri, 20 Dec 2019 06:30:41 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39E3A3F718;
 Fri, 20 Dec 2019 06:30:39 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 04/18] arm64: KVM: add SPE system registers to sys_reg_descs
Date: Fri, 20 Dec 2019 14:30:11 +0000
Message-Id: <20191220143025.33853-5-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_063043_491481_8C95896B 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

Add the Statistical Profiling Extension(SPE) Profiling Buffer controls
registers such that we can provide initial register values and use the
sys_regs structure as a store for our SPE context.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
[ Reword commit, remove access/reset handlers, defer kvm_arm_support_spe_v1 ]
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/include/asm/kvm_host.h | 12 ++++++++++++
 arch/arm64/kvm/sys_regs.c         | 11 +++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index f5dcff912645..9eb85f14df90 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -145,6 +145,18 @@ enum vcpu_sysreg {
 	MDCCINT_EL1,	/* Monitor Debug Comms Channel Interrupt Enable Reg */
 	DISR_EL1,	/* Deferred Interrupt Status Register */
 
+	/* Statistical Profiling Extension Registers */
+	PMSCR_EL1,
+	PMSICR_EL1,
+	PMSIRR_EL1,
+	PMSFCR_EL1,
+	PMSEVFR_EL1,
+	PMSLATFR_EL1,
+	PMSIDR_EL1,
+	PMBLIMITR_EL1,
+	PMBPTR_EL1,
+	PMBSR_EL1,
+
 	/* Performance Monitors Registers */
 	PMCR_EL0,	/* Control Register */
 	PMSELR_EL0,	/* Event Counter Selection Register */
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 46822afc57e0..955b157f9cc5 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1506,6 +1506,17 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_FAR_EL1), access_vm_reg, reset_unknown, FAR_EL1 },
 	{ SYS_DESC(SYS_PAR_EL1), NULL, reset_unknown, PAR_EL1 },
 
+	{ SYS_DESC(SYS_PMSCR_EL1), NULL, reset_val, PMSCR_EL1, 0 },
+	{ SYS_DESC(SYS_PMSICR_EL1), NULL, reset_val, PMSICR_EL1, 0 },
+	{ SYS_DESC(SYS_PMSIRR_EL1), NULL, reset_val, PMSIRR_EL1, 0 },
+	{ SYS_DESC(SYS_PMSFCR_EL1), NULL, reset_val, PMSFCR_EL1, 0 },
+	{ SYS_DESC(SYS_PMSEVFR_EL1), NULL, reset_val, PMSEVFR_EL1, 0 },
+	{ SYS_DESC(SYS_PMSLATFR_EL1), NULL, reset_val, PMSLATFR_EL1, 0 },
+	{ SYS_DESC(SYS_PMSIDR_EL1), NULL, reset_val, PMSIDR_EL1, 0 },
+	{ SYS_DESC(SYS_PMBLIMITR_EL1), NULL, reset_val, PMBLIMITR_EL1, 0 },
+	{ SYS_DESC(SYS_PMBPTR_EL1), NULL, reset_val, PMBPTR_EL1, 0 },
+	{ SYS_DESC(SYS_PMBSR_EL1), NULL, reset_val, PMBSR_EL1, 0 },
+
 	{ SYS_DESC(SYS_PMINTENSET_EL1), access_pminten, reset_unknown, PMINTENSET_EL1 },
 	{ SYS_DESC(SYS_PMINTENCLR_EL1), access_pminten, NULL, PMINTENSET_EL1 },
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
