Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5671132E97
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkS4EfN/F/7isd14/4nUWqiySU/9IL0WvUGfXpv8JEA=; b=B3G1vs8SL4gNn8
	rlIBybqCf2rFH2fffo5iH7VQ+Cqk8Sgss9E94caJ4xVgv0ZUFrfaTwol6zDIGdTFU80neS6vyTz4v
	6YBq5RnZP68+ehMM42uHHJ5mCSqPwrueJmIYUCJUew982uIYf7aJJwrzuDGOGj71DeAWtRtbtCXy9
	LkPizFfYvEx4w2OYE0nWZl8KKmA66QP776S2oV+FnD8jksQunv3XM3DWc7JFSdYC9Lf1Lb3cQp218
	Uy1rSr/1Mcs5ZZpKhROVqGuKGBnSZ3MkB9X12HME0tHdTVBejqxzZM/KT5fDrmWwe4P0+sc7yM8Wq
	6WGIB0tkcdgVMzndwSFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotkb-0005IR-IZ; Tue, 07 Jan 2020 18:38:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotjw-0004nC-6H
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:38:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D74031B;
 Tue,  7 Jan 2020 10:38:03 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC1B93F534;
 Tue,  7 Jan 2020 10:38:02 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v8 3/3] arm64: Use v8.5-RNG entropy for KASLR seed
Date: Tue,  7 Jan 2020 18:35:40 +0000
Message-Id: <20200107183540.54794-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200107183540.54794-1-broonie@kernel.org>
References: <20200107183540.54794-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_103804_292904_E1EB37A2 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When seeding KALSR on a system where we have architecture level random
number generation make use of that entropy, mixing it in with the seed
passed by the bootloader. Since this is run very early in init before
feature detection is complete we open code rather than use archrandom.h.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/kaslr.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 2a11a962e571..fc38c4c25eb6 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -81,7 +81,8 @@ static __init const u8 *kaslr_get_cmdline(void *fdt)
 u64 __init kaslr_early_init(u64 dt_phys)
 {
 	void *fdt;
-	u64 seed, offset, mask, module_range;
+	u64 seed, offset, mask, module_range, ftr;
+	unsigned long raw;
 	const u8 *cmdline, *str;
 	int size;
 
@@ -120,6 +121,18 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		return 0;
 	}
 
+	/*
+	 * Mix in any entropy obtainable architecturally, open coded
+	 * since this runs extremely early.
+	 */
+	if (IS_ENABLED(CONFIG_ARCH_RANDOM)) {
+		ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
+		if ((ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf) {
+			if (__arm64_rndr(&raw))
+				seed += raw;
+		}
+	}
+
 	if (!seed) {
 		kaslr_status = KASLR_DISABLED_NO_SEED;
 		return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
