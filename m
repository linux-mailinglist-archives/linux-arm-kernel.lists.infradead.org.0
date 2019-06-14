Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6252C4529D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fuJ5qw7s/Ng8MM6H2RLThwE++I0Zf2XQkAV4MgDpcU=; b=f6sy+AZCus3Ub3
	gWIz58zE/+H9qjP4lhVYSmgeX9KJJnrRcTo1TKBUm0+8yGJSH9ZgHQhKZaRX5E0NqCDp/oeDVkyfe
	xFZEUc7U+QhNFlcQYcutOimxtNjQALyzOpVUncvNPhatXUh2VtmCz+npdg3+R8zrMJH1Jw+i6UnYs
	Pm6XAe6wfTDNfg/8ozEWMKqZUahfkMOpZqJq8UAC+S8ym55vM0p1yhr7KAj/qBuG5tmvQYqQvoX/S
	dM9CEzrCWBjVUJls3pPB6o5VaarBCr2MREdm3yWBz7Mydf5n86VgD1NfkmKqlH2V4BQWgLwYllaTu
	01EbxuqUJJ5gg11Y8nrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcj3-000673-Hq; Fri, 14 Jun 2019 03:18:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdn-0000Pk-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id t7so365695plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cnuqc1YlBQBZ4RWPKzaqy9DfMXgSoNZrvvTdeydR7XY=;
 b=bCx056PQTrtu4bcBdGQja4CHWdjoDe+5H+fLVBYU88hpCO0mdINyMFmiKguyS9D9RA
 ME26/gyKidKHOT6sc2fheDDmaUJ0eWshUQVYcqitEEOshB0SeFtS/fpdh0VOETgQSUrE
 furCIjr9M9DUKfdzkgNQVVHORPVTjYraCnjBkAm5yNTA8mes84LCT7IpFkgDSD4SpROE
 fMYNjTQ9OonP/wgTkKipTtd21c24O2/kCzcFzEdw5dKeswwnJYuIlKf8QLudP8C1WKyQ
 Oj5KaXiQ5v9trrdDY0ftykarsxdOhpRb4VZqVabajO83FiVDvAnSavu1yR+F0apB6hzm
 YW6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cnuqc1YlBQBZ4RWPKzaqy9DfMXgSoNZrvvTdeydR7XY=;
 b=a2X6OS7BBBATfEeI5c1GKcAq2shQOBd/8OFxsB2oho8dBfY8kpIocX48JHXeNZ/PzG
 g+UD3PvW+ki6QNqPuu2aW37i0Rx7Ol6fBTza3BazNmYsEhwT3yhnvboZ55r0M52uIZLh
 yf5S3yf4QPQoOuKMMZl51taEt8bj/cqGN+jKAhSnxlAoUq1Hjwt3JpvwNjA9OfKYYGDt
 lHhRqgoGWT1Fjmyak8HKRdnVbbfHSWfKId8fLT5kj99XERrFAvPWX5b1vslR4mY6OIyt
 S1QewBe0YFZGjB2YznnbZvIvJvYSRDI8PeBFBdW21yrm9LPlymgNNfT6584xAcSFU9yk
 727Q==
X-Gm-Message-State: APjAAAVy0dGJB0N5HhUisITcIExp66/EKqd6YxIkT0EXq7VbCRUb8s5w
 aWQhURktpsu2wTXi/TKT3445eXu2SzU=
X-Google-Smtp-Source: APXvYqwWAvX5hAkv6sKgzGxrT1ixp/vTxnWhHkBaxn79v8H4S+J+iySVgfapTP4cZ7Tj264F6GLcSg==
X-Received: by 2002:a17:902:8203:: with SMTP id
 x3mr7315832pln.304.1560481953855; 
 Thu, 13 Jun 2019 20:12:33 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id d9sm1097756pgj.34.2019.06.13.20.12.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:33 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 15/45] arm64: Factor out TTBR0_EL1 post-update workaround
 into a specific asm macro
Date: Fri, 14 Jun 2019 08:37:58 +0530
Message-Id: <75c8ebf74edaebb1a62190c9ae1f39c609963f06.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201235_955188_E0D3672B 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
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
