Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEF9134B98
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+t5ybQU+xqNkYlIYrPBhtcf1qOtRbFfpeLxgZOJ9I0=; b=CYlyX5zauETc7H
	09G0x448Oqp59ugYrYrprH3X9TWkNKlC5BOs9DfelqxUjZ6yNAsBOpRHupWPl/fMnesC2lRlPgUSa
	k/+olp2k5nfxj77nZbg6hxuSt9TOjC5AKdicG+pL8957UzMMD5npE7R/0lDlEN+E/ngMMgW7XgQ02
	leYqHTDkcWMNn7ldqdztMAAVKzd9bPvdgT/ZFFXkmv0e8NEW2DbR71PWYJdljh0dWlijDwhMSWIjg
	WnNqkCTO97iErgcKrv0J5xr+PFtIdw248Avd0FrAnWjcTqoMywEA8/6hQfj7qLTtD0f2jFnjk3RhZ
	1UJeT1LBMYoETzYFBc3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHDe-0005ee-Sy; Wed, 08 Jan 2020 19:42:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHD3-0005H0-BW
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:41:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C52251FB;
 Wed,  8 Jan 2020 11:41:40 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4F3DB3F534;
 Wed,  8 Jan 2020 11:41:40 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v9 2/3] arm64: random: Add data to pool from setup_arch()
Date: Wed,  8 Jan 2020 19:41:32 +0000
Message-Id: <20200108194133.44110-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108194133.44110-1-broonie@kernel.org>
References: <20200108194133.44110-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_114141_439427_62F829F4 
X-CRM114-Status: GOOD (  15.94  )
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

Since the arm64 ARCH_RANDOM implementation is not available until
cpufeature has determined the system capabilities it can't be used by
the generic random code to initialize the entropy pool for early use.
Instead explicitly add some data to the pool from setup_arch() if the
boot CPU supports v8.5-RNG, this is the point recommended by the generic
code.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/archrandom.h | 30 +++++++++++++++++++++++++++++
 arch/arm64/kernel/setup.c           |  2 ++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
index 5ea5a1ce5a5f..2eb1db1f0bdf 100644
--- a/arch/arm64/include/asm/archrandom.h
+++ b/arch/arm64/include/asm/archrandom.h
@@ -59,9 +59,39 @@ static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 	return ok;
 }
 
+static inline bool __init __early_cpu_has_rndr(void)
+{
+	/* Open code as we run prior to the first call to cpufeature. */
+	unsigned long ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
+	return (ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf;
+}
+
+/*
+ * Our ARCH_RANDOM implementation does not function until relatively
+ * late in the boot when cpufeature has detertmined system
+ * capabilities so the core code can't use arch_get_random*() to
+ * initialize, instead we call this function to inject data from
+ * setup_arch() if the boot CPU supports v8.5-RNG.
+ */
+static inline void __init arm64_add_early_rndr_entropy(void)
+{
+	unsigned long val;
+	int i;
+
+	if (!__early_cpu_has_rndr())
+		return;
+
+	/* Add multiple values to mirror the generic code. */
+	for (i = 0; i < 16; i++)
+		if (__arm64_rndr(&val))
+			add_device_randomness(&val, sizeof(val));
+}
+
 #else
 
 static inline bool __arm64_rndr(unsigned long *v) { return false; }
+static inline bool __init __early_cpu_has_rndr(void) { return false; }
+static inline void __init arm64_add_early_rndr_entropy(void) { }
 
 #endif /* CONFIG_ARCH_RANDOM */
 #endif /* _ASM_ARCHRANDOM_H */
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 56f664561754..170842965a32 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -344,6 +344,8 @@ void __init setup_arch(char **cmdline_p)
 	/* Init percpu seeds for random tags after cpus are set up. */
 	kasan_init_tags();
 
+	arm64_add_early_rndr_entropy();
+
 #ifdef CONFIG_ARM64_SW_TTBR0_PAN
 	/*
 	 * Make sure init_thread_info.ttbr0 always generates translation
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
