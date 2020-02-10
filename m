Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E901157784
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G0MXD7KAlz9suxokxrmLeVEYXq90k93PZNXsKx+f4SY=; b=aR8gvLASosZLld3PPYf3GlI/0U
	sszDGHXgz5Qawbpp2cgNqrl74FDqVCKJTLWDS97Tz1U5/eEwmXnPp1a5+5+ShSu/ltlyMAKUj8arg
	tCNxeUAGEjjkDtlL9bkAkeWhVx3snTyab64qz0iF5w2NAXeKWNtG0CDka4up+PUNK9JyQBjQ9CK9f
	iioOTbOpMiEEJiE53QmDx2yXyYPXYcgNDEKiNA7CLCTI5Bz4qL3V9IwaYXXFwHOrBaipkmkgtqGI4
	4lQLsBagcl7tpq3YHmS8+aguvzyXXy8dOcm8l42AOZRVJtko4cFZT/xthtVWUesma+WlEJ9GLvqgE
	w8wSAA6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j18gi-0003gA-Th; Mon, 10 Feb 2020 13:01:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18fr-0002hX-T6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:00:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34AC831B;
 Mon, 10 Feb 2020 05:00:26 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1B1063F68E;
 Mon, 10 Feb 2020 05:00:25 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: add credited/trusted RNG support
Date: Mon, 10 Feb 2020 13:00:14 +0000
Message-Id: <20200210130015.17664-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200210130015.17664-1-mark.rutland@arm.com>
References: <20200210130015.17664-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_050027_989697_37AC42C4 
X-CRM114-Status: GOOD (  10.69  )
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

Currently arm64 doesn't initialize the primary CRNG in a (potentially)
trusted manner as we only detect the presence of the RNG once secondary
CPUs are up.

Now that the core RNG code distinguishes the early initialization of the
primary CRNG, we can implement arch_get_random_seed_long_early() to
support this.

This patch does so.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Theodore Ts'o <tytso@mit.edu>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/archrandom.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
index 3fe02da70004..fc1594a0710e 100644
--- a/arch/arm64/include/asm/archrandom.h
+++ b/arch/arm64/include/asm/archrandom.h
@@ -4,6 +4,8 @@
 
 #ifdef CONFIG_ARCH_RANDOM
 
+#include <linux/bug.h>
+#include <linux/kernel.h>
 #include <linux/random.h>
 #include <asm/cpufeature.h>
 
@@ -66,6 +68,18 @@ static inline bool __init __early_cpu_has_rndr(void)
 	return (ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf;
 }
 
+static inline bool __init __must_check
+arch_get_random_seed_long_early(unsigned long *v)
+{
+	WARN_ON(system_state != SYSTEM_BOOTING);
+
+	if (!__early_cpu_has_rndr())
+		return false;
+
+	return __arm64_rndr(v);
+}
+#define arch_get_random_seed_long_early arch_get_random_seed_long_early
+
 #else
 
 static inline bool __arm64_rndr(unsigned long *v) { return false; }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
