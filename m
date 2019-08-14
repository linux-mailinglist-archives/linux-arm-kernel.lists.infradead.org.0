Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4B18DD01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zWO3QX8FqplBM0bbNzEPCJ+XzfreGbH0uv3rMgXbec=; b=ubNLItmE/yVFp2
	ZK3g1l9N1Wm4Y5wha1yYJTIOybA2vz2IMzFwysa8BgzgwmOrNOE/XXwGUHJB+QehrKSclZMS54dAb
	QWib6ctoCuK7Md8DB1zvO4S78BftmFpS/kCQt2hLwgZl1AZ8oj/sQeYIojjHWBBi0hfpkkR6g5lC+
	92raJMh3rS+QxnWWeimIBGUNP96MKdeXzk6zDbokIiWfqnKDO9bR7doaRlOU/VEWCndBmaqGWvCRZ
	aPID4rW1ntUgldA/vd7EWGmFTzlNhdWtzJdv7xJ8n0BfoKeGHyiEQe2hNgxNQug+6k9Tp9mv5eWhY
	wLQ+13jTr2MdM7L+AjsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxy46-0005Tl-Lt; Wed, 14 Aug 2019 18:32:06 +0000
Received: from mail-wm1-f99.google.com ([209.85.128.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxy3H-0004og-76
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 18:31:16 +0000
Received: by mail-wm1-f99.google.com with SMTP id m125so129530wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 11:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C8Z/px4E0x+vBgUw28LpEzkISP0/AkNyTTjBeDl/h6g=;
 b=XwX6jTjQOAPVr69+qWMeQbpTt3OvO0izlndN/6AvIPGFOpyUNLA1i4hFXdIWa6e6OL
 Zw3Sis7rdbyDcu1PFDl3bhCS2iPdg7KPPGtdD0VD/wYd4I1Nkzto3t0yOhZoV2dB2e4O
 YRQNgpuQr7V9SwSBuCC99Yu48Ww62UlhfY0xLlQyluTXleeHu5mdeRjBKdgACAvdsGg6
 wfjuKlJrZHvr2IA2oZAq75LK0l/GPT8jYoe215HkON3MdVHHH6FdrOlIuFAbSffiCGF1
 8kpniRNnoPkALKlJb8Qrox5K0J5ad0VsT7pPCvGCOmBwpZQlPVa1Tq85+U4KnvfOnaZO
 Aa8Q==
X-Gm-Message-State: APjAAAU/4PO+wMSjgyv1SfGZlckX7AOpeliZjr52G3Dz8haZDjk0WezO
 U0ueUCJurQnq4eb6U3Y8qhYQgsOtA6DZn9yxwzYC1UCvPUC7/yKlIhKNmIjU2SqGyQ==
X-Google-Smtp-Source: APXvYqywkuPSPLwwnt8BvfoTv95KfMN/lrWY7IdpNtOGzIPTS5pSb1BaQS2LLhJTk46njlGdshrYt6XLiCPS
X-Received: by 2002:a05:600c:da:: with SMTP id u26mr498880wmm.70.1565807470941; 
 Wed, 14 Aug 2019 11:31:10 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id x5sm10160wrr.58.2019.08.14.11.31.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 11:31:10 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxy3C-00070Z-If; Wed, 14 Aug 2019 18:31:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id F2F852742B5E; Wed, 14 Aug 2019 19:31:09 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
Date: Wed, 14 Aug 2019 19:31:03 +0100
Message-Id: <20190814183103.33707-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190814183103.33707-1-broonie@kernel.org>
References: <20190814183103.33707-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_113115_267667_73698A82 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since E0PD is intended to fulfil the same role as KPTI we don't need to
use KPTI on CPUs where E0PD is available, we can rely on E0PD instead.
Change the check that forces KPTI on when KASLR is enabled to check for
E0PD before doing so, CPUs with E0PD are not expected to be affected by
meltdown so should not need to enable KPTI for other reasons.

Since we repeat the KPTI check for all CPUs we will still enable KPTI if
any of the CPUs in the system lacks E0PD. Since KPTI itself is not changed
by this patch once we enable KPTI we will do so for all CPUs. This is safe
but not optimally performant for such systems.

In order to ensure that we don't install any non-global mappings in
cases where we use E0PD for the system instead we add a check for E0PD
to the early checks in arm64_kernel_use_ng_mappings(), not installing NG
mappings if the current CPU has E0PD. This will incur an overhead on
systems where the boot CPU has E0PD but some others do not, however it
is expected that systems with very large memories which benefit most
from this optimization will be symmetric.

KPTI can still be forced on from the command line if required.

Signed-off-by: Mark Brown <broonie@kernel.org>
---

Added a check in arm64_kernel_use_ng_mappings() to suppress non-global
mappings when E0PD is present and KPTI isn't forced on.

 arch/arm64/include/asm/mmu.h   | 13 ++++++++++++-
 arch/arm64/kernel/cpufeature.c |  2 +-
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index fd6161336653..85552f6fceda 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -38,6 +38,7 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
 static inline bool arm64_kernel_use_ng_mappings(void)
 {
 	bool tx1_bug;
+	u64 ftr;
 
 	/* What's a kpti? Use global mappings if we don't know. */
 	if (!IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
@@ -59,7 +60,7 @@ static inline bool arm64_kernel_use_ng_mappings(void)
 	 * KASLR is enabled so we're going to be enabling kpti on non-broken
 	 * CPUs regardless of their susceptibility to Meltdown. Rather
 	 * than force everybody to go through the G -> nG dance later on,
-	 * just put down non-global mappings from the beginning.
+	 * just put down non-global mappings from the beginning...
 	 */
 	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
 		tx1_bug = false;
@@ -74,6 +75,16 @@ static inline bool arm64_kernel_use_ng_mappings(void)
 		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
 	}
 
+	/*
+	 * ...unless we have E0PD in which case we may use that in
+	 * preference to unmapping the kernel.
+	 */
+	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
+		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
+		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
+			return false;
+	}
+
 	return !tx1_bug && kaslr_offset() > 0;
 }
 
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 62b01fc35ef6..6bed144867ad 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1003,7 +1003,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 
 	/* Useful for KASLR robustness */
 	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && kaslr_offset() > 0) {
-		if (!__kpti_forced) {
+		if (!__kpti_forced && !this_cpu_has_cap(ARM64_HAS_E0PD)) {
 			str = "KASLR";
 			__kpti_forced = 1;
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
