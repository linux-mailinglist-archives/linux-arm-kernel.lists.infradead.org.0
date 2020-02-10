Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA20C157486
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zbsUpf4rwIJYD3TBEavFk+Io1nuL1rzpmZhpyKNla9M=; b=EEyW1jfMcE6blGCcXyFiJ/tlbD
	oAE/tlCpEJc5bRZHBn7n5JxKFfd16RaGhESBWwB3YDVcVz4ezcNzlNKeC4Pzy4KO3WakL0EWGwtaa
	YOHmWanZ24F3UcgX9ZtHLMviVe/DKMHTICFMuKNDbAPo5GW4Y8YDwR/Bqs35KnlSIu2aPthgTUutP
	y10jvQFIKI5meikVGCLVgImnVDU5HUNtM1U/1BxCsOuCBkcj8/5xCN/KFLtyuKBmWviEceQwMn9rv
	BF1dpVoDVMFFswoPphcZ/LIepOhh3lM0GixLnQlci7fr7iOUVqZ1Z6tCG3SjTAnCLSitcgYT6sRH8
	JtJkNOvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j18AB-00083g-7n; Mon, 10 Feb 2020 12:27:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j189s-0007s0-Vg
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:27:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCC34328;
 Mon, 10 Feb 2020 04:27:23 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 98FBF3F6CF;
 Mon, 10 Feb 2020 04:27:22 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: cpufeature: add cpus_have_final_cap()
Date: Mon, 10 Feb 2020 12:27:07 +0000
Message-Id: <20200210122708.38826-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200210122708.38826-1-mark.rutland@arm.com>
References: <20200210122708.38826-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_042725_117088_A028335B 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When cpus_have_const_cap() was originally introduced it was intended to
be safe in hyp context, where it is not safe to access the cpu_hwcaps
array as cpus_have_cap() did. For more details see commit:

  a4023f682739439b ("arm64: Add hypervisor safe helper for checking constant capabilities")

We then made use of cpus_have_const_cap() throughout the kernel.

Subsequently, we had to defer updating the static_key associated with
each capability in order to avoid lockdep complaints. To avoid breaking
kernel-wide usage of cpus_have_const_cap(), this was updated to fall
back to the cpu_hwcaps array if called before the static_keys were
updated. As the kvm hyp code was only called later than this, the
fallback is redundant but not functionally harmful. For more details,
see commit:

  63a1e1c95e60e798 ("arm64/cpufeature: don't use mutex in bringup path")

Today we have more users of cpus_have_const_cap() which are only called
once the relevant static keys are initialized, and it would be
beneficial to avoid the redundant code.

To that end, this patch adds a new cpus_have_final_cap(), helper which
is intend to be used in code which is only run once capabilities have
been finalized, and will never check the cpus_hwcap array. This helps
the compiler to generate better code as it no longer needs to generate
code to address and test the cpus_hwcap array. To help catch misuse,
cpus_have_final_cap() will BUG() if called before capabilities are
finalized.

In hyp context, BUG() will result in a hyp panic, but the specific BUG()
instance will not be identified in the usual way.

Comments are added to the various cpus_have_*_cap() helpers to describe
the constraints on when they can be used. For clarity cpus_have_cap() is
moved above the other helpers.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/cpufeature.h | 47 +++++++++++++++++++++++++++++++++----
 1 file changed, 42 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 92ef9539874a..bf752282bfc0 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -390,21 +390,42 @@ unsigned long cpu_get_elf_hwcap2(void);
 #define cpu_set_named_feature(name) cpu_set_feature(cpu_feature(name))
 #define cpu_have_named_feature(name) cpu_have_feature(cpu_feature(name))
 
-/* System capability check for constant caps */
-static __always_inline bool __cpus_have_const_cap(int num)
+/*
+ * Test for a capability with a runtime check.
+ *
+ * Before the capability is detected, this returns false.
+ */
+static inline bool cpus_have_cap(unsigned int num)
 {
 	if (num >= ARM64_NCAPS)
 		return false;
-	return static_branch_unlikely(&cpu_hwcap_keys[num]);
+	return test_bit(num, cpu_hwcaps);
 }
 
-static inline bool cpus_have_cap(unsigned int num)
+/*
+ * Test for a capability without a runtime check.
+ *
+ * Before capabilities are finalized, this returns false.
+ * After capabilities are finalized, this is patched to avoid a runtime check.
+ *
+ * @num must be a compile-time constant.
+ */
+static __always_inline bool __cpus_have_const_cap(int num)
 {
 	if (num >= ARM64_NCAPS)
 		return false;
-	return test_bit(num, cpu_hwcaps);
+	return static_branch_unlikely(&cpu_hwcap_keys[num]);
 }
 
+
+/*
+ * Test for a capability, possibly with a runtime check.
+ *
+ * Before capabilities are finalized, this behaves as cpus_have_cap().
+ * After capabilities are finalized, this is patched to avoid a runtime check.
+ *
+ * @num must be a compile-time constant.
+ */
 static __always_inline bool cpus_have_const_cap(int num)
 {
 	if (static_branch_likely(&arm64_const_caps_ready))
@@ -413,6 +434,22 @@ static __always_inline bool cpus_have_const_cap(int num)
 		return cpus_have_cap(num);
 }
 
+/*
+ * Test for a capability without a runtime check.
+ *
+ * Before capabilities are finalized, this will BUG().
+ * After capabilities are finalized, this is patched to avoid a runtime check.
+ *
+ * @num must be a compile-time constant.
+ */
+static __always_inline bool cpus_have_final_cap(int num)
+{
+	if (static_branch_likely(&arm64_const_caps_ready))
+		return __cpus_have_const_cap(num);
+	else
+		BUG();
+}
+
 static inline void cpus_set_cap(unsigned int num)
 {
 	if (num >= ARM64_NCAPS) {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
