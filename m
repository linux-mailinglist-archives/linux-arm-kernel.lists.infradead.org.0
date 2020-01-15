Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F9E13C601
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:29:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09PSP5V/VbxxuKcx2XaZDgJg5GXjHN304od3QO8bPiQ=; b=pAgtTpvBqvXzFn
	nE2DLh/nc1IStl42ojiQ6AhGjxIK2+ocsMa6g9/jL6REYWL7I5uM7FTachctW+N16C7SPYcmqkh+F
	sKCpyM2qvIumN/455YpSU3KNbfRDRF1tutqewdbQ1sGv8NDHH/J5/cF7k9ycwczc4j+RCnC97T9rr
	RV0EDSGbFllk0HUnO3Uo0uvMDEIYYKPc0QVP37j2hVMi/eSYE2LmWwdRq7/KMusPTpdotqgiC7obA
	0dYlLl+1c/vNJTEbocYesYTLFaKuTxC040SUgUmLpemc4+oDe/QUI/QO0Ez3qI11FyNsJ1LXxdhMn
	7IbQmnE1xZpA7q3NkFxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjg4-0007vn-MT; Wed, 15 Jan 2020 14:29:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjfS-0007Xi-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:29:15 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6973F2467E;
 Wed, 15 Jan 2020 14:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579098550;
 bh=1cOnVqau+V6XqIPtoRyiCW27AG7oqpfHDA6sa8PXs+c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vGbyjeeU1f42rrsR4NuEBfCbyEYqWoEQCe183f9rk0I5kOAmm+xgcgjskh1C21IXz
 yDGN9ftq61RAEjj7Xi65FianBy7er8/MeXSvDUzOiWlwlBbJkE48ljJPknSYqCz6AV
 kjWf9nYYojRpkGfrYViI8qsBZX3gxtWkkIzKfGC4=
From: Will Deacon <will@kernel.org>
To: broonie@kernel.org
Subject: [PATCH 2/2] arm64: Use register field helper in kaslr_requires_kpti()
Date: Wed, 15 Jan 2020 14:29:00 +0000
Message-Id: <20200115142900.28976-3-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200115142900.28976-1-will@kernel.org>
References: <20200115142900.28976-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_062910_994900_E0AFC25D 
X-CRM114-Status: GOOD (  12.68  )
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

Rather than open-code the extraction of the E0PD field from the MMFR2
register, we can use the cpuid_feature_extract_unsigned_field() helper
instead.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/cpufeature.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index d5242b44dc5a..1ebeb5bc17d2 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -980,7 +980,6 @@ has_useable_cnp(const struct arm64_cpu_capabilities *entry, int scope)
  */
 bool kaslr_requires_kpti(void)
 {
-	u64 ftr;
 	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
 		return false;
 
@@ -989,8 +988,9 @@ bool kaslr_requires_kpti(void)
 	 * where available.
 	 */
 	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
-		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
-		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
+		u64 mmfr2 = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
+		if (cpuid_feature_extract_unsigned_field(mmfr2,
+						ID_AA64MMFR2_E0PD_SHIFT))
 			return false;
 	}
 
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
