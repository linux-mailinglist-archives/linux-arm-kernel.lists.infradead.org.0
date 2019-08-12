Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284A88A1D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nP+EMm1nKpN6eT5pWL+Ym/Hto/cOogj2nSeCV/OV0Hs=; b=CHg
	URVALZOXZ8YDDlQ6qhq/yMrWzc3+SupNEYLFxy27c2eJsmowaN12oPH5x7gEUDq9cVZmGzm92pNGV
	hIn/ynO18D09f1D1YwKHJUMU7bVoSzCFn4gxdrEnr1ZCZGJ9FR5iKOZ6ndnRwiLdIQm9K8xJA7qod
	AGi0cXkebJRYiqNQXPoR2kaTWEFgAKStZZfcYQtkz4YlOfs0hDgpmd9jZVBhD4cH+gYCLu5T249cB
	05bQlxtPDLcMLEulko4MPNx3E2asnFLjrQMTBuTPZkNeHcIRYOUflZ5P+GstyW7Z6HPccByMWym9r
	KzENq2TpeB5h6cfXkf/CvkX19dORqQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBqm-0005op-9u; Mon, 12 Aug 2019 15:03:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBqK-0005cw-Pi
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:02:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D3CB15A2;
 Mon, 12 Aug 2019 08:02:39 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 48FA73F718;
 Mon, 12 Aug 2019 08:02:38 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: cpufeature: Don't treat granule sizes as strict
Date: Mon, 12 Aug 2019 16:02:25 +0100
Message-Id: <20190812150225.25386-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_080240_872450_ADE7FCC0 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>, khilman@baylibre.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If a CPU doesn't support the page size for which the kernel is
configured, then we will complain and refuse to bring it online. For
secondary CPUs (and the boot CPU on a system booting with EFI), we will
also print an error identifying the mismatch.

Consequently, the only time that the cpufeature code can detect a
granule size mismatch is for a granule other than the one that is
currently being used. Although we would rather such systems didn't
exist, we've unfortunately lost that battle and Kevin reports that
on his amlogic S922X (odroid-n2 board) we end up warning and taining
with defconfig because 16k pages are not supported by all of the CPUs.

In such a situation, we don't actually care about the feature mismatch,
particularly now that KVM only exposes the sanitised view of the CPU
registers. Treat the granule fields as non-strict and let Kevin run
without a tainted kernel.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Reported-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/cpufeature.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index d19d14ba9ae4..b1fdc486aed8 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -184,9 +184,17 @@ static const struct arm64_ftr_bits ftr_id_aa64zfr0[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
-	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN4_SHIFT, 4, ID_AA64MMFR0_TGRAN4_NI),
-	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN64_SHIFT, 4, ID_AA64MMFR0_TGRAN64_NI),
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN16_SHIFT, 4, ID_AA64MMFR0_TGRAN16_NI),
+	/*
+	 * We already refuse to boot CPUs that don't support our configured
+	 * page size, so we can only detect mismatches for a page size other
+	 * than the one we're currently using. Unfortunately, SoCs like this
+	 * exist in the wild so, even though we don't like it, we'll have to go
+	 * along with it and treat them as non-strict.
+	 */
+	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN4_SHIFT, 4, ID_AA64MMFR0_TGRAN4_NI),
+	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN64_SHIFT, 4, ID_AA64MMFR0_TGRAN64_NI),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN16_SHIFT, 4, ID_AA64MMFR0_TGRAN16_NI),
+
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_BIGENDEL0_SHIFT, 4, 0),
 	/* Linux shouldn't care about secure memory */
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_SNSMEM_SHIFT, 4, 0),
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
