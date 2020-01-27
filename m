Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B1C14A337
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l9/VFMQFYBiEk6ZVEllukPNa2ypD2FF4Cwjm5km5OuU=; b=OFTmoiW//YVdnz8OzJAqyS36cQ
	1FRJw+3xSuE1MLxqk5xywz60jre/hATqDY08s5nH65TIq1EZq+M0SIe7VDWwduNJ9kQmdckIfOHEU
	Nd8lmVsDhNJpbNc9LIWrHpEBaHjJ8gCt+BVfVthCSNcssPM7YAz6fjZ1wzYW5ibl16w/bBC7ioBaX
	Wf+zFXR9xQnrEfprQYl89pljL3yBZqjbqsygpzZhvCB+7N6Nc9mby9ud+4I7r1UO/QMlNmJ/VDe0S
	xyokHvTjtO9bvDX08GTvrH1tBMfHqgp9KoDxXS1g92g0Bm88SLJkf5lxFGNqMmXNFz+RCMkFR9MCr
	0VzLwGVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2pk-0005oN-8N; Mon, 27 Jan 2020 11:45:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2p3-0004E7-Fj
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:44:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E03030E;
 Mon, 27 Jan 2020 03:44:51 -0800 (PST)
Received: from e119976-lin.cambridge.arm.com (e119976-lin.cambridge.arm.com
 [10.1.196.248])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4A263F52E;
 Mon, 27 Jan 2020 03:44:49 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 2/3] KVM: arm64: limit PMU version to PMUv3 for ARMv8.1
Date: Mon, 27 Jan 2020 11:44:28 +0000
Message-Id: <1580125469-23887-3-git-send-email-andrew.murray@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580125469-23887-1-git-send-email-andrew.murray@arm.com>
References: <1580125469-23887-1-git-send-email-andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_034453_580931_213ECD1C 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrew Murray <andrew.murray@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Suzuki.Poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We currently expose the PMU version of the host to the guest via
emulation of the DFR0_EL1 and AA64DFR0_EL1 debug feature registers.
However many of the features offered beyond PMUv3 for 8.1 are not
supported in KVM. Examples of this include support for the PMMIR
registers (added in PMUv3 for ARMv8.4) and 64-bit event counters
added in (PMUv3 for ARMv8.5).

Let's trap the Debug Feature Registers in order to limit
PMUVer/PerfMon in the Debug Feature Registers to PMUv3 for ARMv8.1
to avoid unexpected behaviour.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/include/asm/sysreg.h |  5 +++++
 arch/arm64/kvm/sys_regs.c       | 11 +++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 6e919fa..1009878 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -672,6 +672,11 @@
 #define ID_AA64DFR0_TRACEVER_SHIFT	4
 #define ID_AA64DFR0_DEBUGVER_SHIFT	0
 
+#define ID_DFR0_PERFMON_SHIFT		24
+
+#define ID_DFR0_EL1_PMUVER_8_1		4
+#define ID_AA64DFR0_EL1_PMUVER_8_1	4
+
 #define ID_ISAR5_RDM_SHIFT		24
 #define ID_ISAR5_CRC32_SHIFT		16
 #define ID_ISAR5_SHA2_SHIFT		12
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 9f21659..3f0f3cc 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1085,6 +1085,17 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
 			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
 			 (0xfUL << ID_AA64ISAR1_GPA_SHIFT) |
 			 (0xfUL << ID_AA64ISAR1_GPI_SHIFT));
+	} else if (id == SYS_ID_AA64DFR0_EL1) {
+		/* Limit guests to PMUv3 for ARMv8.1 */
+		val = cpuid_feature_cap_signed_field_width(val,
+						ID_AA64DFR0_PMUVER_SHIFT,
+						4, ID_AA64DFR0_EL1_PMUVER_8_1);
+	} else if (id == SYS_ID_DFR0_EL1) {
+		/* Limit guests to PMUv3 for ARMv8.1 */
+		val = cpuid_feature_cap_signed_field_width(val,
+						ID_DFR0_PERFMON_SHIFT,
+						4, ID_DFR0_EL1_PMUVER_8_1);
+
 	}
 
 	return val;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
