Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC5DD0919
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=c9QFmxz/uZa+iifhLets7FwCmSrxRnBO8i1vn8hJPM0=; b=AxBIFg7CENYHVn
	M1pztSQjt2RzwTkyVXePMqliJ7efQDt/h0ELMeuPEQ5c1uF1vSWkR/8t4dhCPgysKqhAlJcMiPiKA
	N0Yg4Bw0EnSxKRGeXbojjAsjm3G3vX5GjNMETIYbpZYI1SbJkV1KM9nKig2k+DZK2jvTJGE3L4M8M
	EAhHDAyweoClbn/lLnd8JUfUp4/dVXcMZRJZX8W/Lvq0mejDk8/tt9kTQPpou45mjdb5YSRqa5gO2
	8IM97e/3pTwdM7Qv1i7yn4ZnrdyABtM/mAZyLb3CCc+AHYPwxfB8CdAJ2K4BzepiIOwriqHpLQ98Y
	WgFD3jaP9aD+VOeD36cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6yL-0005e6-KN; Wed, 09 Oct 2019 08:05:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6xF-0003nB-In
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:04:19 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BED46206B6;
 Wed,  9 Oct 2019 08:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570608257;
 bh=9N4wjsNwWy5pxA3tMcpNOJ7L31TOL9xMfahEfdOjPOs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=vcZqrWYR4azgl+pt5tWUj92Iq8c0OzDzmBPI89+IxYvRY1TinxGbO9Epldt2CQZ1f
 fGvZlI/IALuDJaxfpHbFwSNe5AHgprIv43FXWu1tIIq0gvWBUMwS/2TDBPxeXl4Rs1
 WdFr9JuqNQ5x6q/ZPJ4LH3F9GiBSprUiHzdtnBSI=
Subject: Patch "arm64: add sysfs vulnerability show for speculative store
 bypass" has been added to the 4.19-stable tree
To: ard.biesheuvel@linaro.org, gregkh@linuxfoundation.org,
 jeremy.linton@arm.com, linux-arm-kernel@lists.infradead.org,
 stefan.wahren@i2se.com, will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Wed, 09 Oct 2019 10:04:01 +0200
In-Reply-To: <20191008153930.15386-15-ard.biesheuvel@linaro.org>
Message-ID: <157060824188249@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010417_682370_3971013A 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    arm64: add sysfs vulnerability show for speculative store bypass

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm64-add-sysfs-vulnerability-show-for-speculative-store-bypass.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Wed 09 Oct 2019 10:02:11 AM CEST
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue,  8 Oct 2019 17:39:28 +0200
Subject: arm64: add sysfs vulnerability show for speculative store bypass
To: linux-arm-kernel@lists.infradead.org
Cc: stable@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>, Will Deacon <will.deacon@arm.com>
Message-ID: <20191008153930.15386-15-ard.biesheuvel@linaro.org>

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit 526e065dbca6df0b5a130b84b836b8b3c9f54e21 ]

Return status based on ssbd_state and __ssb_safe. If the
mitigation is disabled, or the firmware isn't responding then
return the expected machine state based on a whitelist of known
good cores.

Given a heterogeneous machine, the overall machine vulnerability
defaults to safe but is reset to unsafe when we miss the whitelist
and the firmware doesn't explicitly tell us the core is safe.
In order to make that work we delay transitioning to vulnerable
until we know the firmware isn't responding to avoid a case
where we miss the whitelist, but the firmware goes ahead and
reports the core is not vulnerable. If all the cores in the
machine have SSBS, then __ssb_safe will remain true.

Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/cpu_errata.c |   42 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -233,6 +233,7 @@ static int detect_harden_bp_fw(void)
 DEFINE_PER_CPU_READ_MOSTLY(u64, arm64_ssbd_callback_required);
 
 int ssbd_state __read_mostly = ARM64_SSBD_KERNEL;
+static bool __ssb_safe = true;
 
 static const struct ssbd_options {
 	const char	*str;
@@ -336,6 +337,7 @@ static bool has_ssbd_mitigation(const st
 	struct arm_smccc_res res;
 	bool required = true;
 	s32 val;
+	bool this_cpu_safe = false;
 
 	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
 
@@ -344,8 +346,14 @@ static bool has_ssbd_mitigation(const st
 		goto out_printmsg;
 	}
 
+	/* delay setting __ssb_safe until we get a firmware response */
+	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
+		this_cpu_safe = true;
+
 	if (psci_ops.smccc_version == SMCCC_VERSION_1_0) {
 		ssbd_state = ARM64_SSBD_UNKNOWN;
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		return false;
 	}
 
@@ -362,6 +370,8 @@ static bool has_ssbd_mitigation(const st
 
 	default:
 		ssbd_state = ARM64_SSBD_UNKNOWN;
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		return false;
 	}
 
@@ -370,14 +380,18 @@ static bool has_ssbd_mitigation(const st
 	switch (val) {
 	case SMCCC_RET_NOT_SUPPORTED:
 		ssbd_state = ARM64_SSBD_UNKNOWN;
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		return false;
 
+	/* machines with mixed mitigation requirements must not return this */
 	case SMCCC_RET_NOT_REQUIRED:
 		pr_info_once("%s mitigation not required\n", entry->desc);
 		ssbd_state = ARM64_SSBD_MITIGATED;
 		return false;
 
 	case SMCCC_RET_SUCCESS:
+		__ssb_safe = false;
 		required = true;
 		break;
 
@@ -387,6 +401,8 @@ static bool has_ssbd_mitigation(const st
 
 	default:
 		WARN_ON(1);
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		return false;
 	}
 
@@ -427,6 +443,14 @@ out_printmsg:
 	return required;
 }
 
+/* known invulnerable cores */
+static const struct midr_range arm64_ssb_cpus[] = {
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A35),
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
+	{},
+};
+
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 DEFINE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
 
@@ -748,6 +772,7 @@ const struct arm64_cpu_capabilities arm6
 		.capability = ARM64_SSBD,
 		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = has_ssbd_mitigation,
+		.midr_range_list = arm64_ssb_cpus,
 	},
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 	{
@@ -778,3 +803,20 @@ ssize_t cpu_show_spectre_v2(struct devic
 
 	return sprintf(buf, "Vulnerable\n");
 }
+
+ssize_t cpu_show_spec_store_bypass(struct device *dev,
+		struct device_attribute *attr, char *buf)
+{
+	if (__ssb_safe)
+		return sprintf(buf, "Not affected\n");
+
+	switch (ssbd_state) {
+	case ARM64_SSBD_KERNEL:
+	case ARM64_SSBD_FORCE_ENABLE:
+		if (IS_ENABLED(CONFIG_ARM64_SSBD))
+			return sprintf(buf,
+			    "Mitigation: Speculative Store Bypass disabled via prctl\n");
+	}
+
+	return sprintf(buf, "Vulnerable\n");
+}


Patches currently in stable-queue which might be from ard.biesheuvel@linaro.org are

queue-4.19/arm64-add-sysfs-vulnerability-show-for-meltdown.patch
queue-4.19/arm64-force-ssbs-on-context-switch.patch
queue-4.19/arm64-enable-generic-cpu-vulnerabilites-support.patch
queue-4.19/arm64-provide-a-command-line-to-disable-spectre_v2-mitigation.patch
queue-4.19/arm64-always-enable-spectre-v2-vulnerability-detection.patch
queue-4.19/arm64-docs-document-ssbs-hwcap.patch
queue-4.19/arm64-add-sysfs-vulnerability-show-for-spectre-v1.patch
queue-4.19/arm64-add-sysfs-vulnerability-show-for-speculative-store-bypass.patch
queue-4.19/kvm-arm64-set-sctlr_el2.dssbs-if-ssbd-is-forcefully-disabled-and-vhe.patch
queue-4.19/arm64-always-enable-ssb-vulnerability-detection.patch
queue-4.19/arm64-advertise-mitigation-of-spectre-v2-or-lack-thereof.patch
queue-4.19/arm64-ssbs-don-t-treat-cpus-with-ssbs-as-unaffected-by-ssb.patch
queue-4.19/crypto-skcipher-unmap-pages-after-an-external-error.patch
queue-4.19/arm64-cpufeature-detect-ssbs-and-advertise-to-userspace.patch
queue-4.19/arm64-ssbd-add-support-for-pstate.ssbs-rather-than-trapping-to-el3.patch
queue-4.19/arm64-fix-ssbs-sanitization.patch
queue-4.19/arm64-add-sysfs-vulnerability-show-for-spectre-v2.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
