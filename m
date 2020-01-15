Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF4613C600
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ty1f0x+69WCZVuQs0S6xHvbZGXWcxBP003NkyU1C4Wo=; b=q4/siAbTGgrATp
	KDDvCnwC/pjEjsuuCovWyaDyJuMyPUCFdyD4juzwYKR4LoMtX7zAkDU6/rTrVfuk3qV/RmgX1U4XT
	GbjfxUu+0h9IxgGbWP/BeOgsih25/CGgT6KoDXJm9prTrBpxZobUjBD342UgvNKPzNN3pWPwyaKog
	a+HnZGD5V7uFivd98NyjsZZ2bAOId3ayKqc/ecFY0cKVeVBOBvfHNXDNsexBCUUB8iKmnvX/hujKS
	5NFwwMu8z/YxzVwZDOXyc75Rp5ikB87op/AItztBwj8c3EvbglRbrlL8/NZ974I/oeEbTf6VbUDOs
	fqCwYWoPLmFF1DcwECUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjfq-0007hw-H5; Wed, 15 Jan 2020 14:29:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjfR-0007XH-94
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:29:10 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC3822467A;
 Wed, 15 Jan 2020 14:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579098549;
 bh=NS+WkmkBqm1jKci5W7p0yqlGhR7MP0lFDwITqyj1vGg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O8eX09fyKL8fleo5NiMVXHEfcQF5aMiCXeyoO71YuRAuiJoA6DVIVyyWTI0VIXOw4
 B3PRt0nuNOU/W7xj9saE7uzwi08pgAT7qV05zebkihfwdf0uWnn0x0qePLViBSpMm5
 RosTy+zhIpaDyQzXhrVNofOKm2YlwrkfnlxbW0VQ=
From: Will Deacon <will@kernel.org>
To: broonie@kernel.org
Subject: [PATCH 1/2] arm64: Simplify early check for broken TX1 when KASLR is
 enabled
Date: Wed, 15 Jan 2020 14:28:59 +0000
Message-Id: <20200115142900.28976-2-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200115142900.28976-1-will@kernel.org>
References: <20200115142900.28976-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_062909_333890_5D431DCA 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-team@android.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the decision to use non-global mappings is stored in a variable,
the check to avoid enabling them for the terminally broken ThunderX1
platform can be simplified so that it is only keyed off the MIDR value.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/cpufeature.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 4a031111ceb5..d5242b44dc5a 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -980,9 +980,7 @@ has_useable_cnp(const struct arm64_cpu_capabilities *entry, int scope)
  */
 bool kaslr_requires_kpti(void)
 {
-	bool tx1_bug;
 	u64 ftr;
-
 	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
 		return false;
 
@@ -1000,18 +998,13 @@ bool kaslr_requires_kpti(void)
 	 * Systems affected by Cavium erratum 24756 are incompatible
 	 * with KPTI.
 	 */
-	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
-		tx1_bug = false;
-	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
+	if (IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
 		extern const struct midr_range cavium_erratum_27456_cpus[];
 
-		tx1_bug = is_midr_in_range_list(read_cpuid_id(),
-						cavium_erratum_27456_cpus);
-	} else {
-		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
+		if (is_midr_in_range_list(read_cpuid_id(),
+					  cavium_erratum_27456_cpus))
+			return false;
 	}
-	if (tx1_bug)
-		return false;
 
 	return kaslr_offset() > 0;
 }
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
