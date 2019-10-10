Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7AAD243E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMjzW6HLVkg0LQxM4DuGpHce4xJjtDJNgZVxAUjhbMo=; b=DKdp0oylb0/uVj
	qfmo7Z/tkbBF9vghLr2iOqPjLxp4U0g9y5qf8a1G+mo2zqqmSF4vw4ho9H7DVWrerBFYt87AUK5Lp
	v2ek4d0KFK4/UV2k3yXm+Dlfzdv4SEyrsbLxSQUzZy7hHrdV0a3bKM0I0zb1MhhnLaibVzeZcpBxZ
	THNX+R1+r88LpQ7mLrkMVYpvfquhcwEj1qQXfSLFiYg5P9yes/+8VsuxdKYZOAyiJh5f0TxXbWU97
	27fKRfyr+5DekOhSX8mhxJif5Wn6Tqm0LUfQ1e8WnnnGg8y8xq6zHN4PY30G2EAe6dFULALWnxIOB
	Qkw9LkbNlhP/bJOtM11Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIU9W-0006RR-Qo; Thu, 10 Oct 2019 08:50:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIU7i-000432-UM
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:48:40 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1006D2064A;
 Thu, 10 Oct 2019 08:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570697318;
 bh=FmzEMjZSelSMOSQZgp2rUdO+aFnsDCvFmd1Q5Ugd5d4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Qmy6nPyi3kVlrkk2x0+Jdm8yqPjfJeBHPyLwqoBNtjO4FT/wrtk+4nbPU9dLRyHeo
 ZrYgtCPDGh749AZN2tCAUNougzAlFC+t5j3ibFSS7dDKFSK15ZV7gkF+nPkuFUO99g
 ZBP/6MFO0OPYoVwUJL1cGi0nGO/fuHZ3xbmf7ul0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4.19 099/114] arm64: Always enable spectre-v2 vulnerability
 detection
Date: Thu, 10 Oct 2019 10:36:46 +0200
Message-Id: <20191010083613.410310738@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010083544.711104709@linuxfoundation.org>
References: <20191010083544.711104709@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_014839_048886_ECE237C5 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, stable@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit 8c1e3d2bb44cbb998cb28ff9a18f105fee7f1eb3 ]

Ensure we are always able to detect whether or not the CPU is affected
by Spectre-v2, so that we can later advertise this to userspace.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/cpu_errata.c |   15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -87,7 +87,6 @@ cpu_enable_trap_ctr_access(const struct
 
 atomic_t arm64_el2_vector_last_slot = ATOMIC_INIT(-1);
 
-#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 #include <asm/mmu_context.h>
 #include <asm/cacheflush.h>
 
@@ -225,11 +224,11 @@ static int detect_harden_bp_fw(void)
 	    ((midr & MIDR_CPU_MODEL_MASK) == MIDR_QCOM_FALKOR_V1))
 		cb = qcom_link_stack_sanitization;
 
-	install_bp_hardening_cb(cb, smccc_start, smccc_end);
+	if (IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR))
+		install_bp_hardening_cb(cb, smccc_start, smccc_end);
 
 	return 1;
 }
-#endif	/* CONFIG_HARDEN_BRANCH_PREDICTOR */
 
 DEFINE_PER_CPU_READ_MOSTLY(u64, arm64_ssbd_callback_required);
 
@@ -513,7 +512,6 @@ multi_entry_cap_cpu_enable(const struct
 			caps->cpu_enable(caps);
 }
 
-#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 /*
  * List of CPUs that do not need any Spectre-v2 mitigation at all.
  */
@@ -545,6 +543,12 @@ check_branch_predictor(const struct arm6
 	if (!need_wa)
 		return false;
 
+	if (!IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR)) {
+		pr_warn_once("spectrev2 mitigation disabled by kernel configuration\n");
+		__hardenbp_enab = false;
+		return false;
+	}
+
 	/* forced off */
 	if (__nospectre_v2) {
 		pr_info_once("spectrev2 mitigation disabled by command line option\n");
@@ -556,7 +560,6 @@ check_branch_predictor(const struct arm6
 
 	return (need_wa > 0);
 }
-#endif
 
 #ifdef CONFIG_HARDEN_EL2_VECTORS
 
@@ -715,13 +718,11 @@ const struct arm64_cpu_capabilities arm6
 		ERRATA_MIDR_ALL_VERSIONS(MIDR_CORTEX_A73),
 	},
 #endif
-#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 	{
 		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
 		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = check_branch_predictor,
 	},
-#endif
 #ifdef CONFIG_HARDEN_EL2_VECTORS
 	{
 		.desc = "EL2 vector hardening",



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
