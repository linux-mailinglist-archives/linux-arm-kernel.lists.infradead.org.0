Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7613617625B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oaSzRyvK19InGFw6/Kll1wE1c+o+C8i4eodgEyLByXQ=; b=ot7oWXwscua/ASe42olM3LHjhw
	hA8nJmeJIvhtpdofgeWqQNkA76k0Wk/qsuq6ssZoSQB/yL16lYJ9VMWPyRSideOEZmzBNdU0aCwgv
	u1qEHRVmSyn4e8ZHW37xPt0XMEblX3en8Ty5rRzZ9qqXdRtrQaNZxITFEsHYe39S3du88OBblGgQE
	vfOxjAlj8LUNiyp1IY8aIuMElcBqB5EHA6WaxlsOr55106uMfRSDYsdoxk78BMtLep16tced/iv8+
	a8Eb1cJfgn7bfkiE2VrEyxwdZB5seIAXP1iUvhfRt1gLs7TEt0DJy28EaPdxJn0hQ4DrECMFaPxYm
	gdAAc7AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pgN-00089Y-OB; Mon, 02 Mar 2020 18:20:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pdi-0004ve-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 18:18:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 637F91045;
 Mon,  2 Mar 2020 10:18:01 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7F1D53F6C4;
 Mon,  2 Mar 2020 10:18:00 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv6 2/3] KVM: arm64: limit PMU version to PMUv3 for ARMv8.1
Date: Mon,  2 Mar 2020 18:17:51 +0000
Message-Id: <20200302181752.14251-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200302181752.14251-1-mark.rutland@arm.com>
References: <20200302181752.14251-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_101802_646861_EB1A2530 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 maz@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

We currently expose the PMU version of the host to the guest via
emulation of the DFR0_EL1 and AA64DFR0_EL1 debug feature registers.
However many of the features offered beyond PMUv3 for 8.1 are not
supported in KVM. Examples of this include support for the PMMIR
registers (added in PMUv3 for ARMv8.4) and 64-bit event counters
added in (PMUv3 for ARMv8.5).

Let's trap the Debug Feature Registers in order to limit
PMUVer/PerfMon in the Debug Feature Registers to PMUv3 for ARMv8.1
to avoid unexpected behaviour.

Both ID_AA64DFR0.PMUVer and ID_DFR0.PerfMon follow the "Alternative ID
scheme used for the Performance Monitors Extension version" where 0xF
means an IMPLEMENTATION DEFINED PMU is implemented, and values 0x0-0xE
are treated as with an unsigned field (with 0x0 meaning no PMU is
present). As we don't expect to expose an IMPLEMENTATION DEFINED PMU,
and our cap is below 0xF, we can treat these fields as unsigned when
applying the cap.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Mark: make field names consistent, use perfmon cap]
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/sysreg.h |  6 ++++++
 arch/arm64/kvm/sys_regs.c       | 10 ++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index b91570ff9db1..d8f1eed070f0 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -702,6 +702,12 @@
 #define ID_AA64DFR0_TRACEVER_SHIFT	4
 #define ID_AA64DFR0_DEBUGVER_SHIFT	0
 
+#define ID_AA64DFR0_PMUVER_8_1		0x4
+
+#define ID_DFR0_PERFMON_SHIFT		24
+
+#define ID_DFR0_PERFMON_8_1		0x4
+
 #define ID_ISAR5_RDM_SHIFT		24
 #define ID_ISAR5_CRC32_SHIFT		16
 #define ID_ISAR5_SHA2_SHIFT		12
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 3e909b117f0c..b0a3e8976b90 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1085,6 +1085,16 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
 			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
 			 (0xfUL << ID_AA64ISAR1_GPA_SHIFT) |
 			 (0xfUL << ID_AA64ISAR1_GPI_SHIFT));
+	} else if (id == SYS_ID_AA64DFR0_EL1) {
+		/* Limit guests to PMUv3 for ARMv8.1 */
+		val = cpuid_feature_cap_perfmon_field(val,
+						ID_AA64DFR0_PMUVER_SHIFT,
+						ID_AA64DFR0_PMUVER_8_1);
+	} else if (id == SYS_ID_DFR0_EL1) {
+		/* Limit guests to PMUv3 for ARMv8.1 */
+		val = cpuid_feature_cap_perfmon_field(val,
+						ID_DFR0_PERFMON_SHIFT,
+						ID_DFR0_PERFMON_8_1);
 	}
 
 	return val;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
