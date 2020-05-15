Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7991D57E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:30:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQI0ls6U702JVR865ZRSTebeOBbdaT6zrN4WMRr7RCE=; b=MlClhZbfj0aTN5
	txac06pqcFAjZFNjypu59d4uQdClsqaDXuvrJ0QY0qH//8mWzAgzjsw6jr5dmR6u5Hu/CsYRY4Db4
	G6YrzeHGU2UaHYPrq9otGQRpZAmYFvEszwokw5a645WJVV5N4bnGUNF13G2MQpmFkyuP1FGZAfL/u
	9ffPtY2TBMmP44KGG38l4sljmvSgQYKzKR5xo234mPrr0l/Av7Ltm8qmYpHWxU5RrqMKWIeqsh/Q8
	tp49B/DUl5QvVCMAl44iq+ma8einyqWbxFEBPWPI9YEsUk0HLIDTa+QZh5mlsSc109zIFWeU+YePE
	j9r5dMtx4fvGR8dsyMtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe9m-0001W4-LP; Fri, 15 May 2020 17:29:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe8C-0000H5-FY
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:28:21 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 226DA20758;
 Fri, 15 May 2020 17:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563699;
 bh=JS2Jcbe+j41/8PgSBe5ih0CI/gZxqJJ8SvDSb97vzwU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AhbWjB9Y7n2sMM0P5UzxQKHLsz8tKpwzCNGStKJaSVGYMfbcKjAvx90oglmyJbBI4
 A4n2ySKaJBRmk8qXEId9xSsNu+yiLfWMP1PnoB1eNPC5WH5E1dwfYuMFp1C7R+Xjtz
 xB4ZBLlaXVLMzIx2O1CtaijJWKVy9G+GskKy6s0o=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] scs: Move DEFINE_SCS macro into core code
Date: Fri, 15 May 2020 18:27:56 +0100
Message-Id: <20200515172756.27185-7-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515172756.27185-1-will@kernel.org>
References: <20200515172756.27185-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102820_588570_25F5FAE8 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel-team@android.com, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@am.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Defining static shadow call stacks is not architecture-specific, so move
the DEFINE_SCS() macro into the core header file.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/scs.c | 4 ----
 include/linux/scs.h     | 4 ++++
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
index 955875dff9e1..e8f7ff45dd8f 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -8,10 +8,6 @@
 #include <linux/percpu.h>
 #include <linux/scs.h>
 
-/* Allocate a static per-CPU shadow stack */
-#define DEFINE_SCS(name)						\
-	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
-
 DEFINE_SCS(irq_shadow_call_stack);
 
 #ifdef CONFIG_ARM_SDE_INTERFACE
diff --git a/include/linux/scs.h b/include/linux/scs.h
index 2fd3df50e93e..6dec390cf154 100644
--- a/include/linux/scs.h
+++ b/include/linux/scs.h
@@ -26,6 +26,10 @@
 /* An illegal pointer value to mark the end of the shadow stack. */
 #define SCS_END_MAGIC		(0x5f6UL + POISON_POINTER_DELTA)
 
+/* Allocate a static per-CPU shadow stack */
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
+
 #define task_scs(tsk)		(task_thread_info(tsk)->scs_base)
 #define task_scs_sp(tsk)	(task_thread_info(tsk)->scs_sp)
 
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
