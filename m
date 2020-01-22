Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C15714548C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 13:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GIynAK8vr9dkuAiiSK/IB7wssEgo793w8/b894fAfAI=; b=gUP
	ZgV6hsdd3iI4IdsjVgEhdNKm/biuBUUc4wfZOLYkWxRMXvPf68I0LMHDKQdYpEiTu+2dCt1bbFiyk
	guAkLrmz4wCyFeNAF0TIntX+4a3IFg37t8iwatbn07KxzDLIsCoJyTTEOhyhfM0gC9EcSCNrduGg5
	TiVXUdfvaAbdHOLwBnVc67fTE7MmbZCWBIV6xkjgV+wqejD13oVg18UMlRpLxbHO/PD/ZnhiOgE/U
	GfTdM5jZJJqKk43Dwkvy/wZqYbLbeD5C1kESHc3FDotddkxt4P+JL3OGYkeaT28YLkhvcpAE8WnsW
	YL0lD2AgGsp84sIbNKvm3YnZwsDvpCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFOs-0002A8-PB; Wed, 22 Jan 2020 12:46:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFOM-0001sG-4L
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 12:46:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88D93328;
 Wed, 22 Jan 2020 04:45:51 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A3FA33F52E;
 Wed, 22 Jan 2020 04:45:50 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, will@kernel.org,
 catalin.marinas@arm.com
Subject: [PATCH] arm64: acpi: fix DAIF manipulation with pNMI
Date: Wed, 22 Jan 2020 12:45:46 +0000
Message-Id: <20200122124546.25421-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_044554_239308_E62FA03D 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit:

  d44f1b8dd7e66d80 ("arm64: KVM/mm: Move SEA handling behind a single 'claim' interface")

... the top-level APEI SEA handler has the shape:

1. current_flags = arch_local_save_flags()
2. local_daif_restore(DAIF_ERRCTX)
3. <GHES handler>
4. local_daif_restore(current_flags)

However, since commit:

  4a503217ce37e1f4 ("arm64: irqflags: Use ICC_PMR_EL1 for interrupt masking")

... when pMIs are in use, arch_local_save_flags() will save the PMR
value rather than the DAIF flags.

The combination of these two commits means that the APEI SEA handler
will erroneously attempt to restore the PMR value into DAIF. Fix this by
factoring local_daif_save_flags() out of local_daif_save(), so that we
can consistently save DAIF in step #1, regardless of whether pNMIs are
in use.

Both commits were introduced concurrently in v5.0.

Fixes: 4a503217ce37e1f4 ("arm64: irqflags: Use ICC_PMR_EL1 for interrupt masking")
Fixes: d44f1b8dd7e66d80 ("arm64: KVM/mm: Move SEA handling behind a single 'claim' interface")
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/daifflags.h | 11 ++++++++++-
 arch/arm64/kernel/acpi.c           |  2 +-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
index 72acd2db167f..ec213b4a1650 100644
--- a/arch/arm64/include/asm/daifflags.h
+++ b/arch/arm64/include/asm/daifflags.h
@@ -38,7 +38,7 @@ static inline void local_daif_mask(void)
 	trace_hardirqs_off();
 }
 
-static inline unsigned long local_daif_save(void)
+static inline unsigned long local_daif_save_flags(void)
 {
 	unsigned long flags;
 
@@ -50,6 +50,15 @@ static inline unsigned long local_daif_save(void)
 			flags |= PSR_I_BIT;
 	}
 
+	return flags;
+}
+
+static inline unsigned long local_daif_save(void)
+{
+	unsigned long flags;
+
+	flags = local_daif_save_flags();
+
 	local_daif_mask();
 
 	return flags;
diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
index 3a58e9db5cfe..a100483b47c4 100644
--- a/arch/arm64/kernel/acpi.c
+++ b/arch/arm64/kernel/acpi.c
@@ -274,7 +274,7 @@ int apei_claim_sea(struct pt_regs *regs)
 	if (!IS_ENABLED(CONFIG_ACPI_APEI_GHES))
 		return err;
 
-	current_flags = arch_local_save_flags();
+	current_flags = local_daif_save_flags();
 
 	/*
 	 * SEA can interrupt SError, mask it and describe this as an NMI so
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
