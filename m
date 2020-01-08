Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640BC134B9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXxeDYuYhU0/xYoP2LD0lj8DQgbSdBqM+qEYAXysRFY=; b=UFgXHoTH300Srq
	5aeDbceNcHozDCKrwGOEKtXP6LYygfNjJx3kgbntoEjm6/1SzyWWJX7DHlWe1Kk4b/TEl7BpzzpmF
	3KAww3YNpY9Od2Hf5pOagCQLd5rtDeTVZLaiyGl3YyYTtRhVvk7gj3rr2bF3TguwEkSNNkEQxHVLJ
	NHzT4HD9PINSBTM3pxLsZjqBceX4nuXUeks/VACnlxQ2PJGWra+kIMy3XUJE7py1qmrOz97ia2L+z
	MU/PHSkNBeZjLq1S4eyIBgDPxQCqh//EhLfhC7MhriVchmeQtKz4/2sWx554WpK4PUKHXborQ1XIS
	qP/lgId+/DhtiVJikq5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHDw-0005vB-E5; Wed, 08 Jan 2020 19:42:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHD5-0005H0-6X
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:41:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1441328;
 Wed,  8 Jan 2020 11:41:42 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AAF33F534;
 Wed,  8 Jan 2020 11:41:42 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v9 3/3] arm64: Use v8.5-RNG entropy for KASLR seed
Date: Wed,  8 Jan 2020 19:41:33 +0000
Message-Id: <20200108194133.44110-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108194133.44110-1-broonie@kernel.org>
References: <20200108194133.44110-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_114143_307733_825B0922 
X-CRM114-Status: GOOD (  10.40  )
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
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
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
 arch/arm64/kernel/kaslr.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 2a11a962e571..53b8a4ee64ff 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -120,6 +120,17 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		return 0;
 	}
 
+	/*
+	 * Mix in any entropy obtainable architecturally, open coded
+	 * since this runs extremely early.
+	 */
+	if (__early_cpu_has_rndr()) {
+		unsigned long raw;
+
+		if (__arm64_rndr(&raw))
+			seed ^= raw;
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
