Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF284D0918
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=bUz2qCh7yU8rwUG7ay2B8xYcloLCR5ZQ8VsXLQ0/UGM=; b=WCo+daA0WQYvDp
	irx1Tx1WFnnnC/Ft/7MLp7TGhqvrkV5Ehb3JhNY1UiwIT6ASC0bKkwWP3dhh+vqTNVzWXFlzoT6qm
	itjt9vcK8FIuX4jwSROZjcpw8pJ8uanunRv77hE19k3sJbQCZ0sTTLG/M98K1tk03IKa+uASpsFqF
	ZkXHKAPwpGNCqIgze1vknQngwSFGH1lbHzqvY6QqcEtYFxIkoNUraOSSo9a7ab0SPFjqHeFjSmReE
	4tJnsh59Ai0OQWJueo/YWR3LBTh3GarQbbsu7M/BnmWqK4npdczO7n9zkQL7XZQhvphqH/Peeu+V+
	/2LXerMjW0l7o9cjtJRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6y7-0004CC-SM; Wed, 09 Oct 2019 08:05:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6xC-0003ki-VN
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:04:17 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A6BE218AC;
 Wed,  9 Oct 2019 08:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570608254;
 bh=iDejDXklFCkseFBgBSSBSggr7rV9oawFCDwYLtWR9KQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=aLvoRJ/A4nfywc3Js+JCJq5HtaFmLiws6bb9ZlmNYxWcg9oQpzcLpbplcb+jF425L
 ZgqTmVr3ORU57IUWWouA1fSRYvX6Zvr1E7vKOekF2AB6qzSJrfGnIbj+qBeimne9VD
 +76jk8M/QxmQ9MjM817MmOdO3Vy08PktvCEx/Exs=
Subject: Patch "arm64: add sysfs vulnerability show for spectre-v2" has been
 added to the 4.19-stable tree
To: andre.przywara@arm.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 gregkh@linuxfoundation.org, jeremy.linton@arm.com,
 linux-arm-kernel@lists.infradead.org, stefan.wahren@i2se.com,
 will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Wed, 09 Oct 2019 10:04:01 +0200
In-Reply-To: <20191008153930.15386-14-ard.biesheuvel@linaro.org>
Message-ID: <157060824113142@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010415_078691_7B85192E 
X-CRM114-Status: GOOD (  15.17  )
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

    arm64: add sysfs vulnerability show for spectre-v2

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm64-add-sysfs-vulnerability-show-for-spectre-v2.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Wed 09 Oct 2019 10:02:11 AM CEST
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue,  8 Oct 2019 17:39:27 +0200
Subject: arm64: add sysfs vulnerability show for spectre-v2
To: linux-arm-kernel@lists.infradead.org
Cc: stable@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>, Will Deacon <will.deacon@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Message-ID: <20191008153930.15386-14-ard.biesheuvel@linaro.org>

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit d2532e27b5638bb2e2dd52b80b7ea2ec65135377 ]

Track whether all the cores in the machine are vulnerable to Spectre-v2,
and whether all the vulnerable cores have been mitigated. We then expose
this information to userspace via sysfs.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/cpu_errata.c |   27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -480,6 +480,10 @@ has_cortex_a76_erratum_1463225(const str
 	.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,			\
 	CAP_MIDR_RANGE_LIST(midr_list)
 
+/* Track overall mitigation state. We are only mitigated if all cores are ok */
+static bool __hardenbp_enab = true;
+static bool __spectrev2_safe = true;
+
 /*
  * Generic helper for handling capabilties with multiple (match,enable) pairs
  * of call backs, sharing the same capability bit.
@@ -522,6 +526,10 @@ static const struct midr_range spectre_v
 	{ /* sentinel */ }
 };
 
+/*
+ * Track overall bp hardening for all heterogeneous cores in the machine.
+ * We are only considered "safe" if all booted cores are known safe.
+ */
 static bool __maybe_unused
 check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 {
@@ -543,6 +551,8 @@ check_branch_predictor(const struct arm6
 	if (!need_wa)
 		return false;
 
+	__spectrev2_safe = false;
+
 	if (!IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR)) {
 		pr_warn_once("spectrev2 mitigation disabled by kernel configuration\n");
 		__hardenbp_enab = false;
@@ -552,11 +562,14 @@ check_branch_predictor(const struct arm6
 	/* forced off */
 	if (__nospectre_v2) {
 		pr_info_once("spectrev2 mitigation disabled by command line option\n");
+		__hardenbp_enab = false;
 		return false;
 	}
 
-	if (need_wa < 0)
+	if (need_wa < 0) {
 		pr_warn_once("ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware\n");
+		__hardenbp_enab = false;
+	}
 
 	return (need_wa > 0);
 }
@@ -753,3 +766,15 @@ ssize_t cpu_show_spectre_v1(struct devic
 {
 	return sprintf(buf, "Mitigation: __user pointer sanitization\n");
 }
+
+ssize_t cpu_show_spectre_v2(struct device *dev, struct device_attribute *attr,
+		char *buf)
+{
+	if (__spectrev2_safe)
+		return sprintf(buf, "Not affected\n");
+
+	if (__hardenbp_enab)
+		return sprintf(buf, "Mitigation: Branch predictor hardening\n");
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
