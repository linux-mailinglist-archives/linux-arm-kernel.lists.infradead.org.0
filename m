Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB8EA1915
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fuJ5qw7s/Ng8MM6H2RLThwE++I0Zf2XQkAV4MgDpcU=; b=XO9WdH8N//gxNn
	NT4f0VGFDzY5nViWauAYFAEGZ4yUlFgEHTFtp2i6fCLBTMBjwUpDxADgvZIC0Tai1VwfomDcg5N8P
	8Hqa7W+mf20yztgg39SoAEYiSHyjxDB8XwiUj+DMoUmDNZlC9wk78wAejeNZ0m0ke9SDWFvWzbF2k
	WJBDiGU33L8f5vudHfWTAGzFCMXuSFFESKe6wq+vxs3u0i4OQ+vToncTtGhTTQPFA52yj6loRQbot
	CE+yUAUY1uLZ/FX47EXr8Q0jDVZt9o+iK0++tqBPeOggx2iSN2c1DYqEQJq48H+2iiwmv0T1yWumZ
	t+BHA2c6caLPzY4kvgxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iow-0004Q4-HB; Thu, 29 Aug 2019 11:42:30 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiY-0006hh-Vg
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so1430448pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cnuqc1YlBQBZ4RWPKzaqy9DfMXgSoNZrvvTdeydR7XY=;
 b=UW0U9Y3OlL4/ZWDPEju46rdxwml8mDN0UxCFmnIFo/YQkV2uhRP0t+uIqodnql6u2V
 1ckHackEhG9hAJ+7fxrL+E3+qKZ1cWunoBaOSO73zrDzNplJi9z8Uva5oNfJLgLi37xT
 w1vBojS/qypOb6b42DMHhTXnZCH6D7NC7PgH6boK0RGUIAmkXxGx6OPCTbSzoGvZdCHy
 4xFvdTRqcPkzaO75GxyUsD/H/jXqhlJFPj5hIh17jr35Usi/2RSdbWdanFaq1HF0MXFI
 orLuybSFG7NaslDzqzAhI+DcEn8FD/ieWNxys3Qms1s58zpH8eNREaBgGplq/JB1LaGs
 DNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cnuqc1YlBQBZ4RWPKzaqy9DfMXgSoNZrvvTdeydR7XY=;
 b=VsmLE9vngTRCdZhPUVuj76AeYPzWbyp6RSd1YNSWOcnXcSlmwL4rf3SNZBGoi0sjJS
 cgA+PiW3yFZ5NBJTdTUeFviNJ4YNU+SocAvrt7CASOD4DscFAEiD6eG8fbpXM+d3hBU8
 ZprLyJbK+66gTdlIBYvlNZAgQvfaewycMIbFL8ZUcZmosCdXG3ja0JBxt4zd1+AuCW8I
 e2o9rF4FuMpcPzJUsfvJxUPlj+0KoLcTXuRKIeistLTuhrc8Vv+iEDtCLblMtMyF1ohb
 9YiA9IX5UfpSgMBC5YdOwIhF1zuaWu+x0HoCFG10cP0F8HXMqGU+WMo14Cg8o45VmkBX
 A4Gg==
X-Gm-Message-State: APjAAAUcw4m33m/zeb14bgKsWC5zuWsicbjX0IJaaMPAiAHnRGe2d81S
 bdwLkBBKZZbZ6Q6MshhjzZwArg==
X-Google-Smtp-Source: APXvYqwwm+m6o5bMoS8vsjkvSeoR040ksprgpPha9EVwKi7nGz6noU/Qktg75x1VMEwAOzj0y+1NYw==
X-Received: by 2002:a63:7e1d:: with SMTP id z29mr7908601pgc.346.1567078554199; 
 Thu, 29 Aug 2019 04:35:54 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id k25sm5873691pgt.53.2019.08.29.04.35.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:53 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 23/44] arm64: Factor out TTBR0_EL1 post-update
 workaround into a specific asm macro
Date: Thu, 29 Aug 2019 17:04:08 +0530
Message-Id: <ed1d80904a0599cdca26d63eb63e89e55bcbf5f4.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043555_060712_B2D13613 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
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
