Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7F57D760
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgSQUTL743sF1vPHkgqYn0ScdVxPTuszdDkPUoA/eoc=; b=sicwlGqgMeEGw6
	T1zmIG7BWqeb5k/hSk5RwLdmZOa6IXMW8r9UvWIAv+FpDv+vBtplJni+BSRZhyadIJ91A6ieBoV/6
	qmdSgIFol981VRFH6RwUz9A5RB2al1aUbOB/W4/ghe1f8+qYqr3k/v/WEN5egY8iBl7fcG+KdQYjE
	EF9oeDc52/PV82NIVI6sGh++cWjkcjrPStmT8ziZKoVwdDn9hypgxVGuebjTqn3ECieep1KwkV6y2
	z1SHMGLrms0TflbWhiXhD6tYDhaWFC2nJWft7zBT2pH7s5rMZNl9e7rAHX6R3yaOjK1hgys5ro7XH
	AmoovvOdMqRpQAqwH9Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6LG-0003mx-20; Thu, 01 Aug 2019 08:21:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Je-0000dI-P6
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:06 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so31739336pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2ThYg/2PcaE2XPc0i5Ecb1/dXdxeDGNU8nmJ2xJHUWI=;
 b=qgyOciaZcnLJ+ScinWgYbGi83v03wFAdwHmCXOCF3q0l+t90McwWECzJNQCizBct0B
 InVe2nVLoCD9H0AnZ/kurROlNkLnrqZihINvdtTgq+jfMdHAUnuDVUAiZ3afxOI4dPC6
 ylEeHV6fkGaTE+dmiReo1opsGMKACSLNHUF+kT6wWe4VB3YKMGXo1CaKyR4hTD5izZYm
 xGoZBt+jJuG7OOJfsUpSANOWnaHZw7qFL1R1VybKfR4mnst6IwhzLyCNhEbavZBguJPM
 GZR8M7SHdrjtWcLdpEqNImqQBPZXnTSxFQKwzZ7LoZi+FD9QrMGi6RuvxJeUk9BFFQLz
 /Ppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2ThYg/2PcaE2XPc0i5Ecb1/dXdxeDGNU8nmJ2xJHUWI=;
 b=ivk+M3ON6UDD6RM1w/HNhuJ50a7lKcdCmc1fjGEoGYpZqg3mJ9YcmyIzoFMsFnFNKI
 25Z5asWycex99ezFHH9QqUWra4P4ulyptEXM6zukYDKPhUyit2yvFVrgEyEFxpHEYiaP
 U1h7Af5lF4+ShjXSqhj/XkPooMkrKkNNDW/E0HVw5UVmZ4wiDOoJbGHZC83+wNpitnkR
 SnDLN1W2aa58WVfOS6aFd8mMgEBE3/LrJ6RPkmfmUQKSvrj7d9skOBhyXrLGBfgtHkNA
 IyVY4oosa9EFnssYPfqpVeszLCk0lMUGgbsPX8zYDbiEmDjudupcUqmx28QNYbmRv3/b
 WsGw==
X-Gm-Message-State: APjAAAUO4yRIPlsojZmh3LdDrjl5emsvP0Pow98+KHkhsxkCgwIkQu8x
 kqrsdRIhtC2XECQPL+SJZXORCg==
X-Google-Smtp-Source: APXvYqx1QQ7xXlLGULtzj9QyhS4Rr6IH3S1/6j0ENAHznJBWvqCZRhX84aieeJqPGOpKRufRa0gQkg==
X-Received: by 2002:a17:902:2a27:: with SMTP id
 i36mr122339377plb.161.1564647601352; 
 Thu, 01 Aug 2019 01:20:01 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id cx22sm3895076pjb.25.2019.08.01.01.20.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:00 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 10/47] ARM: bugs: prepare processor bug
 infrastructure
Date: Thu,  1 Aug 2019 13:45:54 +0530
Message-Id: <31d400e2535e6502cfa192169c054a02c3385185.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012003_099333_6639C141 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit a5b9177f69329314721aa7022b7e69dab23fa1f0 upstream.

Prepare the processor bug infrastructure so that it can be expanded to
check for per-processor bugs.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/bugs.h | 4 ++--
 arch/arm/kernel/Makefile    | 1 +
 arch/arm/kernel/bugs.c      | 9 +++++++++
 3 files changed, 12 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/kernel/bugs.c

diff --git a/arch/arm/include/asm/bugs.h b/arch/arm/include/asm/bugs.h
index a97f1ea708d1..ed122d294f3f 100644
--- a/arch/arm/include/asm/bugs.h
+++ b/arch/arm/include/asm/bugs.h
@@ -10,10 +10,10 @@
 #ifndef __ASM_BUGS_H
 #define __ASM_BUGS_H
 
-#ifdef CONFIG_MMU
 extern void check_writebuffer_bugs(void);
 
-#define check_bugs() check_writebuffer_bugs()
+#ifdef CONFIG_MMU
+extern void check_bugs(void);
 #else
 #define check_bugs() do { } while (0)
 #endif
diff --git a/arch/arm/kernel/Makefile b/arch/arm/kernel/Makefile
index 3c789496297f..f936cec24f72 100644
--- a/arch/arm/kernel/Makefile
+++ b/arch/arm/kernel/Makefile
@@ -30,6 +30,7 @@ else
 obj-y		+= entry-armv.o
 endif
 
+obj-$(CONFIG_MMU)		+= bugs.o
 obj-$(CONFIG_CPU_IDLE)		+= cpuidle.o
 obj-$(CONFIG_ISA_DMA_API)	+= dma.o
 obj-$(CONFIG_FIQ)		+= fiq.o fiqasm.o
diff --git a/arch/arm/kernel/bugs.c b/arch/arm/kernel/bugs.c
new file mode 100644
index 000000000000..88024028bb70
--- /dev/null
+++ b/arch/arm/kernel/bugs.c
@@ -0,0 +1,9 @@
+// SPDX-Identifier: GPL-2.0
+#include <linux/init.h>
+#include <asm/bugs.h>
+#include <asm/proc-fns.h>
+
+void __init check_bugs(void)
+{
+	check_writebuffer_bugs();
+}
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
