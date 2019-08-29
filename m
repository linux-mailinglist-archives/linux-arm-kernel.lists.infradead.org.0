Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01593A1FD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vs8p8iuatpTiDdVptdDoRJxEN2BKgZhSP0FlrE5iMq8=; b=m1xsf9qunOWwBNfPL4fqg9y+Hg
	9rv3xynZmwg3zb8v/DFE/GuppzqopEZElVUca9ETOxa88Tufy4VtOvQ9UnKsUXIAGogIFeJMmvlWt
	9fFbQC+1apWBaPWfjU9RI/WsV4r1xbq4UMx8qK5qBmucGWJzdXqsStH/DKtkN6up8pFI+jhog83yS
	egwMO+0sLrd86fuyBuealPlVjTjq0sKipyDAvo+3zZBlZmwDVT3tZIvfQo3GYt+6fc+aPQp2iPAuQ
	GgPJmMiIcAPSt2h0x9B9YxVhz330q98fX/rNmNUvpO1BMdWK0a2eU+DWdsKP6hR826Fmzf9ZzLwHr
	Vpazls/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mhj-00045Y-P5; Thu, 29 Aug 2019 15:51:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfL-0001Yg-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3822B165C;
 Thu, 29 Aug 2019 08:48:51 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CE01C3F718;
 Thu, 29 Aug 2019 08:48:49 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 06/10] arm64: lse: Remove unused 'alt_lse' assembly macro
Date: Thu, 29 Aug 2019 16:48:30 +0100
Message-Id: <20190829154834.26547-7-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084851_718379_C69329C3 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, robin.murphy@arm.com, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, natechancellor@gmail.com, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'alt_lse' assembly macro has been unused since 7c8fc35dfc32
("locking/atomics/arm64: Replace our atomic/lock bitop implementations
with asm-generic").

Remove it.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/lse.h | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 52b80846d1b7..08e818e53ed7 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -10,37 +10,15 @@
 #include <asm/alternative.h>
 #include <asm/cpucaps.h>
 
-#ifdef __ASSEMBLER__
-
-.arch_extension	lse
-
-.macro alt_lse, llsc, lse
-	alternative_insn "\llsc", "\lse", ARM64_HAS_LSE_ATOMICS
-.endm
-
-#else	/* __ASSEMBLER__ */
-
 __asm__(".arch_extension	lse");
 
-
 /* In-line patching at runtime */
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
 	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
 
-#endif	/* __ASSEMBLER__ */
 #else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
 
-#ifdef __ASSEMBLER__
-
-.macro alt_lse, llsc, lse
-	\llsc
-.endm
-
-#else	/* __ASSEMBLER__ */
-
-
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)	llsc
 
-#endif	/* __ASSEMBLER__ */
 #endif	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
 #endif	/* __ASM_LSE_H */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
