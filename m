Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381066666D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fuJ5qw7s/Ng8MM6H2RLThwE++I0Zf2XQkAV4MgDpcU=; b=iER1E2nkUNNJWH
	/GMG4Ayo3IJmi1t6ogWgw+XP7SR4jabAgE4I3AMKbynIhChE5flZkk8HM6tVlRyjj7VkxxeuqskGt
	heOsx8TiGz85kRIxqnixbAU2s3i4hDzB/4DcK9w3v37a9ciXOvv8K8W6SN42fMEL9JjgIfil1hhFe
	GZbGC3f8QWBx+yxNvNPCijqBonXPJa5cxwENqvmNahwa7u5ZfkFtBWW2LhGBOh8/jqRXojHna52na
	xlglDwCQ9QQR4ueXfaKL8E4/UAfuu/WO7LhLDyWRL8mmWt+Y3rNduMTlhcstCD7B6KjK8XeWDk9hZ
	ThHQVevnHuwpUiGaBFWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloHL-0000Cr-K5; Fri, 12 Jul 2019 05:39:31 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo87-0000zm-AZ
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id c2so4182622plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cnuqc1YlBQBZ4RWPKzaqy9DfMXgSoNZrvvTdeydR7XY=;
 b=yfJJZ5buvkmMxNQR8vV5XtYVAp78VJYpxY9LCA4BC0JX7qdiJGXiskkfSUdBKHgQNq
 vXk/0Y2e38/I+NRmjwK9hTspNKbFoLzWqjbMZfohY9NRYCWONWD5kiYrpywmqmgOQYDv
 1LX4/1UXNBHentpM174OM7D9rwYA9/poH1MBnQYP/wnomcRqcRWidXhXy3ycxIWj5zBC
 ujv/YYcgk+KwRO9p8TAVkUAvENH7TxlO0GeXwqJvw3P5TgpHNfEPrPPiLsIbu8vIkDSH
 j4YmH97tDcSmGb5iF2zvItrav5N2ypf9WfYTVoSGSNGoJWjxpIQBXdurDPDcEJ5XALFT
 h9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cnuqc1YlBQBZ4RWPKzaqy9DfMXgSoNZrvvTdeydR7XY=;
 b=KOC6km7T6J4T3vwf4BQmmzeJaXheNzoNhsXOZBKg0UvRZOhDYhan3IECJ2F/zdgedH
 /O8FE340QAcF1oroABFnYA2Fue8m9LghlOMKksXPyR91NjTbg/W/ml1CCv9a3991TeeZ
 Sf0Ba6nMoq97HEzlLu8jPXhEcnbb4N+jNaO5LildvmTAZ7SmmhzgCIGtIv3ZOMF5t7x/
 EyK87or/G4I7uKFdby6EcQ3GNcF348i3DQ4kmC+6Q6T6oab72/gRgMFNv6hF8EBW/a7b
 DxKlyTebU1l6aEDmqcahNi6bSC6DU/5+/UgMvrqQziP2FpMarkZqmOaNrHZfA/QswD52
 lh1w==
X-Gm-Message-State: APjAAAXnJWKNVsq0u3Z66vFjBSQGouCgeqfFdAlbmq1V9pCAxiZC7CZd
 yd8mNPPXC7XXSQqWbGABw3sn5A==
X-Google-Smtp-Source: APXvYqwG8zVFxbIjXDZcH9hRfAsIwwLPqouNSchzDdRL3GGGnQYd9Wgl4RfzdqNu4PpfU5dU7rhlxw==
X-Received: by 2002:a17:902:145:: with SMTP id 63mr9439855plb.55.1562909398590; 
 Thu, 11 Jul 2019 22:29:58 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 81sm2308137pfa.86.2019.07.11.22.29.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:58 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 22/43] arm64: Factor out TTBR0_EL1 post-update
 workaround into a specific asm macro
Date: Fri, 12 Jul 2019 10:58:10 +0530
Message-Id: <d7674d901fb2fd7fc29fe94a6fac6230b4ad84f9.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222959_410261_74896478 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Catalin Marinas <catalin.marinas@arm.com>

commit f33bcf03e6079668da6bf4eec4a7dcf9289131d0 upstream.

This patch takes the errata workaround code out of cpu_do_switch_mm into
a dedicated post_ttbr0_update_workaround macro which will be reused in a
subsequent patch.

Cc: Will Deacon <will.deacon@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Included cpufeature.h and adapted to use alternative_if_not ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/assembler.h | 18 ++++++++++++++++++
 arch/arm64/mm/proc.S               | 11 +----------
 2 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 2b30363a3a89..8ab46508e836 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -23,6 +23,7 @@
 #ifndef __ASM_ASSEMBLER_H
 #define __ASM_ASSEMBLER_H
 
+#include <asm/cpufeature.h>
 #include <asm/cputype.h>
 #include <asm/ptrace.h>
 #include <asm/thread_info.h>
@@ -282,4 +283,21 @@ lr	.req	x30		// link register
 .Ldone\@:
 	.endm
 
+/*
+ * Errata workaround post TTBR0_EL1 update.
+ */
+	.macro	post_ttbr0_update_workaround
+#ifdef CONFIG_CAVIUM_ERRATUM_27456
+alternative_if_not ARM64_WORKAROUND_CAVIUM_27456
+       ret
+       nop
+       nop
+       nop
+alternative_else
+       ic      iallu
+       dsb     nsh
+       isb
+#endif
+	.endm
+
 #endif	/* __ASM_ASSEMBLER_H */
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index f09636738007..4eb1084e203a 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -139,17 +139,8 @@ ENTRY(cpu_do_switch_mm)
 	bfi	x0, x1, #48, #16		// set the ASID
 	msr	ttbr0_el1, x0			// set TTBR0
 	isb
-alternative_if_not ARM64_WORKAROUND_CAVIUM_27456
+	post_ttbr0_update_workaround
 	ret
-	nop
-	nop
-	nop
-alternative_else
-	ic	iallu
-	dsb	nsh
-	isb
-	ret
-alternative_endif
 ENDPROC(cpu_do_switch_mm)
 
 	.section ".text.init", #alloc, #execinstr
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
