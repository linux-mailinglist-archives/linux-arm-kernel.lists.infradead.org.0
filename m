Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79BECADA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JU+HAoQ0q4k414lDDm0NDIqbz4hF1ipOsKOceBqMqRQ=; b=Um3C3eJ6A+UpHQ
	Awf7pwfbF7ALyhh5FxSDTVLhtyeieDGttCHXPyokNrpAigf5wp2AELArKK7dDM940FTk4qeEv5X1Y
	qabz5nfg5HUpgLJRzPyWqQS3NCMdbGC0VFXDzgsgNHb7OHKYT9UeXDtlq2T9d1os+Ql2SFs0NrKPP
	YgcWg6GMi5SoCy21LQ62/Df7Z5tYRFHcmOlRVt3/9/OWBzCKjW1v+DmBx+y873dZuT9npt0TKQhjB
	Cnonv1W9dzQfbNQVfSCDS4i0csA2er8c3SOmKNvIfrWWPLMRZh+eNiSIrICY7fB2P3J9gcCIpLQLO
	kXB6vKSHI2B5pA9dSHVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5Fu-0000cl-P7; Thu, 03 Oct 2019 17:51:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5Dk-0007q3-DH
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:48:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF69415AD;
 Thu,  3 Oct 2019 10:48:55 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B53FA3F739;
 Thu,  3 Oct 2019 10:48:54 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 5/6] arm64: Remove vdso_datapage.h
Date: Thu,  3 Oct 2019 18:48:37 +0100
Message-Id: <20191003174838.8872-6-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003174838.8872-1-vincenzo.frascino@arm.com>
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_104856_509978_FE54F6CF 
X-CRM114-Status: GOOD (  10.22  )
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 luto@kernel.org, tglx@linutronix.de, vincenzo.frascino@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vdso_datapage.h  was originally removed with the introduction of the
support for Unified vDSOs in arm64 and replaced with the C
implementation.

The file seems again present in the repository due to a side effect of
rebase.

Remove the file again.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso_datapage.h | 33 --------------------------
 1 file changed, 33 deletions(-)
 delete mode 100644 arch/arm64/include/asm/vdso_datapage.h

diff --git a/arch/arm64/include/asm/vdso_datapage.h b/arch/arm64/include/asm/vdso_datapage.h
deleted file mode 100644
index 1f38bf330a6e..000000000000
--- a/arch/arm64/include/asm/vdso_datapage.h
+++ /dev/null
@@ -1,33 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2012 ARM Limited
- */
-#ifndef __ASM_VDSO_DATAPAGE_H
-#define __ASM_VDSO_DATAPAGE_H
-
-#ifndef __ASSEMBLY__
-
-struct vdso_data {
-	__u64 cs_cycle_last;	/* Timebase at clocksource init */
-	__u64 raw_time_sec;	/* Raw time */
-	__u64 raw_time_nsec;
-	__u64 xtime_clock_sec;	/* Kernel time */
-	__u64 xtime_clock_nsec;
-	__u64 xtime_coarse_sec;	/* Coarse time */
-	__u64 xtime_coarse_nsec;
-	__u64 wtm_clock_sec;	/* Wall to monotonic time */
-	__u64 wtm_clock_nsec;
-	__u32 tb_seq_count;	/* Timebase sequence counter */
-	/* cs_* members must be adjacent and in this order (ldp accesses) */
-	__u32 cs_mono_mult;	/* NTP-adjusted clocksource multiplier */
-	__u32 cs_shift;		/* Clocksource shift (mono = raw) */
-	__u32 cs_raw_mult;	/* Raw clocksource multiplier */
-	__u32 tz_minuteswest;	/* Whacky timezone stuff */
-	__u32 tz_dsttime;
-	__u32 use_syscall;
-	__u32 hrtimer_res;
-};
-
-#endif /* !__ASSEMBLY__ */
-
-#endif /* __ASM_VDSO_DATAPAGE_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
