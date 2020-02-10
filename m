Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A01157782
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kp8IRPC3gWVKGlaF77YTEk65xESb0YLkZoJoQU5ga2g=; b=m1MJ2e1zJlXGM0xU4S8gXV+Gg1
	CFlGu+K1C+Ydf9uykIGZrwEJU6wVbtLd94wkexm2jpGAc6SjcPgVusTjljyUBIma2wMV1LX3VwFXi
	EwFWSdSDDrdIl/rIiZIRpjcSWMZvsUJp6BXnencwFCzLlCOl27rfntYGcvcQISr4oVW6qK2OGGa4b
	vwwWwn9175guOSm9zh3WEnYW0pQ4TTpxLumGoLvEiNl2XuqtigBiJ3T0MB+9GAef6n6a4YEF03yj9
	borMpRa69XcQshZAYe0+PbXRuSKeU7ga2x5EL58I1dZhFk83hC7z/BHoGcUri65qEqORuXWAYaI6A
	etyf7Vww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j18gM-0003AR-7a; Mon, 10 Feb 2020 13:00:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18fo-0002hX-Rb
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:00:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 769061FB;
 Mon, 10 Feb 2020 05:00:24 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1AD2F3F68E;
 Mon, 10 Feb 2020 05:00:22 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] random: add arch_get_random_*long_early()
Date: Mon, 10 Feb 2020 13:00:13 +0000
Message-Id: <20200210130015.17664-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200210130015.17664-1-mark.rutland@arm.com>
References: <20200210130015.17664-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_050024_975766_40479BEA 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, tytso@mit.edu, catalin.marinas@arm.com,
 richard.henderson@linaro.org, broonie@kernel.org, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some architectures (e.g. arm64) can have heterogeneous CPUs, and the
boot CPU may be able to provide entropy while secondary CPUs cannot. On
such systems, arch_get_random_long() and arch_get_random_seed_long()
will fail unless support for RNG instructions has been detected on all
CPUs. This prevents the boot CPU from being able to provide
(potentially) trusted entropy when seeding the primary CRNG.

To make it possible to seed the primary CRNG from the boot CPU without
adversely affecting the runtime versions of arch_get_random_long() and
arch_get_random_seed_long(), this patch adds new early versions of the
functions used when initializing the primary CRNG.

Default implementations are provided atop of the existing
arch_get_random_long() and arch_get_random_seed_long() so that only
architectures with such constraints need to provide the new helpers.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Theodore Ts'o <tytso@mit.edu>
---
 drivers/char/random.c  | 20 +++++++++++++++++++-
 include/linux/random.h | 22 ++++++++++++++++++++++
 2 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/char/random.c b/drivers/char/random.c
index 62d32e62f2da..02a85b87b993 100644
--- a/drivers/char/random.c
+++ b/drivers/char/random.c
@@ -799,6 +799,24 @@ static bool crng_init_try_arch(struct crng_state *crng)
 	return arch_init;
 }
 
+static bool __init crng_init_try_arch_early(struct crng_state *crng)
+{
+	int		i;
+	bool		arch_init = true;
+	unsigned long	rv;
+
+	for (i = 4; i < 16; i++) {
+		if (!arch_get_random_seed_long_early(&rv) &&
+		    !arch_get_random_long_early(&rv)) {
+			rv = random_get_entropy();
+			arch_init = false;
+		}
+		crng->state[i] ^= rv;
+	}
+
+	return arch_init;
+}
+
 static void crng_initialize_secondary(struct crng_state *crng)
 {
 	memcpy(&crng->state[0], "expand 32-byte k", 16);
@@ -811,7 +829,7 @@ static void __init crng_initialize_primary(struct crng_state *crng)
 {
 	memcpy(&crng->state[0], "expand 32-byte k", 16);
 	_extract_entropy(&input_pool, &crng->state[4], sizeof(__u32) * 12, 0);
-	if (crng_init_try_arch(crng) && trust_cpu) {
+	if (crng_init_try_arch_early(crng) && trust_cpu) {
 		invalidate_batched_entropy();
 		numa_crng_init();
 		crng_init = 2;
diff --git a/include/linux/random.h b/include/linux/random.h
index d319f9a1e429..45e1f8fa742b 100644
--- a/include/linux/random.h
+++ b/include/linux/random.h
@@ -7,6 +7,8 @@
 #ifndef _LINUX_RANDOM_H
 #define _LINUX_RANDOM_H
 
+#include <linux/bug.h>
+#include <linux/kernel.h>
 #include <linux/list.h>
 #include <linux/once.h>
 
@@ -185,6 +187,26 @@ static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 }
 #endif
 
+/*
+ * Called from the boot CPU during startup; not valid to call once
+ * secondary CPUs are up and preemption is possible.
+ */
+#ifndef arch_get_random_seed_long_early
+static inline bool __init arch_get_random_seed_long_early(unsigned long *v)
+{
+	WARN_ON(system_state != SYSTEM_BOOTING);
+	return arch_get_random_seed_long(v);
+}
+#endif
+
+#ifndef arch_get_random_long_early
+static inline bool __init arch_get_random_long_early(unsigned long *v)
+{
+	WARN_ON(system_state != SYSTEM_BOOTING);
+	return arch_get_random_long(v);
+}
+#endif
+
 /* Pseudo random number generator from numerical recipes. */
 static inline u32 next_pseudo_random32(u32 seed)
 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
