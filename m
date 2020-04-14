Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BB61A8DC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 23:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBof0fNkMOI51L7LRsOV1V7nGt4CgfzKvkDlelm7zA4=; b=cM5ics3byyLMzz
	5jbRdUJPFEsXRcIOM45y+0ImxCD+SPlV8qdudxHaMQSFbzbG4ZnDfNGmMyB+E1rc5HM35lcXT1hg0
	2Z23swZDLGL56npPDk/OeBcZy9d8CBKeyJGqaUHAtg30rxZThqh9/w7eKgWA/NB+Bri4p+/CGMJw1
	66uHDVpJQG+hyna1xuHa3Zsay/K4QpsNtWoh+bN7GVIjA4Syw2auAaERkn/rd8O19XXmLTL3KFvSw
	EIhrv9Qj5ST4etnwMcikBzEyUkw5WjFCBrZiPsk3L58MVwlgwYkvbxlyVQwqWayW+emZUKKYZYiRk
	VlnMnakoSV2qze6MXbcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTBd-0003py-Lg; Tue, 14 Apr 2020 21:33:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOT9i-0002EH-KP
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 21:31:44 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 548AD2074D;
 Tue, 14 Apr 2020 21:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586899901;
 bh=7PFsi1xvzYVZoaCa9uiNYX672sFrV56eIDLTk1BtspU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Xx7GmJBT4ZOUEVA+T9roxrH0h7NnqUqVJz7MSHrqgrYTR5P5mfTORJHvNPHo7CsTT
 xVkpRQq5NiOEiJCoJwWXlmo04MW3La1H7oAVSkTx8U+1Sc/Zih2FC9B9zOX2ZViOHU
 fVNQhywIJO1UOW+0gxqwbwuQdInNzZ0938DXIeqQ=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH 7/8] arm64: cpufeature: Relax checks for AArch32 support at
 EL[0-2]
Date: Tue, 14 Apr 2020 22:31:13 +0100
Message-Id: <20200414213114.2378-8-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414213114.2378-1-will@kernel.org>
References: <20200414213114.2378-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_143142_782599_430117E6 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, kernel-team@android.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't need to be quite as strict about mismatched AArch32 support,
which is good because the friendly hardware folks have been busy
mismatching this to their hearts' content.

  * We don't care about EL2 or EL3 (there are silly comments concerning
    the latter, so remove those)

  * EL1 support is gated by the ARM64_HAS_32BIT_EL1 capability and handled
    gracefully when a mismatch occurs

  * EL1 support is gated by the ARM64_HAS_32BIT_EL0 capability and handled
    gracefully when a mismatch occurs

Relax the AArch32 checks to FTR_NONSTRICT.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/cpufeature.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9e0321e3e581..680a453ca8c4 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -172,11 +172,10 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_GIC_SHIFT, 4, 0),
 	S_ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_ASIMD_SHIFT, 4, ID_AA64PFR0_ASIMD_NI),
 	S_ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_FP_SHIFT, 4, ID_AA64PFR0_FP_NI),
-	/* Linux doesn't care about the EL3 */
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_EL3_SHIFT, 4, 0),
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_EL2_SHIFT, 4, 0),
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_EL1_SHIFT, 4, ID_AA64PFR0_EL1_64BIT_ONLY),
-	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_EL0_SHIFT, 4, ID_AA64PFR0_EL0_64BIT_ONLY),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_EL2_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_EL1_SHIFT, 4, ID_AA64PFR0_EL1_64BIT_ONLY),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_EL0_SHIFT, 4, ID_AA64PFR0_EL0_64BIT_ONLY),
 	ARM64_FTR_END,
 };
 
@@ -867,9 +866,6 @@ void update_cpu_features(int cpu,
 	taint |= check_update_ftr_reg(SYS_ID_AA64MMFR2_EL1, cpu,
 				      info->reg_id_aa64mmfr2, boot->reg_id_aa64mmfr2);
 
-	/*
-	 * EL3 is not our concern.
-	 */
 	taint |= check_update_ftr_reg(SYS_ID_AA64PFR0_EL1, cpu,
 				      info->reg_id_aa64pfr0, boot->reg_id_aa64pfr0);
 	taint |= check_update_ftr_reg(SYS_ID_AA64PFR1_EL1, cpu,
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
