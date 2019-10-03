Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC58BC9CF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:13:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tZlnGkzaopEBH0y2iOiSHVbZQ6Koc2zeCzbtFYXaNmg=; b=czjmDtUNDKBbb+ZqsyPQBvlNAG
	zww5IIxA5WDQ4P/KoF/ASEcf355oBpO7BIuz2w651gk6auFXeF6S5aeuongJ1nB64MBrhSne4U1Gt
	DwLkTyTtnA1nfvp0TUimbh8lji6ewPS+FF9z98U+VTwGHemRPEWSNH/k9z+0QYqj9VbZfIac6xk4Y
	HVPlTSfzDY1LOLZqXI2KiOQIj7/V940hdF4LD64UUyPpcxGylwDJLkXQMxXdZcqXpFwJisM61AVEH
	rqGP1I4WKpxlnTAZ2yCPrHr3uxg47NoQc8GgIodljjMiPhi8/C5Yux/Rut0bpQ2bkwTLQefLnW2m8
	M4mMBVMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFz2p-0007ua-3d; Thu, 03 Oct 2019 11:13:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFz1x-0007B9-0j
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:12:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E7EA1576;
 Thu,  3 Oct 2019 04:12:17 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B2563F706;
 Thu,  3 Oct 2019 04:12:16 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] arm64: cpufeature: Effectively expose FRINT capability to
 userspace
Date: Thu,  3 Oct 2019 12:12:08 +0100
Message-Id: <20191003111211.483-2-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191003111211.483-1-julien.grall@arm.com>
References: <20191003111211.483-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_041221_106304_B94C5A0B 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, Julien Grall <julien.grall@arm.com>,
 will@kernel.org, mark.brown@arm.com, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HWCAP framework will detect a new capability based on the sanitized
version of the ID registers.

Sanitization is based on a whitelist, so any field not described will end
up to be zeroed.

At the moment, ID_AA64ISAR1_EL1.FRINTTS is not described in
ftr_id_aa64isar1. This means the field will be zeroed and therefore the
userspace will not be able to see the HWCAP even if the hardware
supports the feature.

This can be fixed by describing the field in ftr_id_aa64isar1.

Fixes: ca9503fc9e98 ("arm64: Expose FRINT capabilities to userspace")
Signed-off-by: Julien Grall <julien.grall@arm.com>
Cc: mark.brown@arm.com
---
 arch/arm64/kernel/cpufeature.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9323bcc40a58..cabebf1a7976 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -136,6 +136,7 @@ static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
 
 static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_SB_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FRINTTS_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
 		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_GPI_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
