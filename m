Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF66AF301
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 00:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pWTwo6fFxyPlVIFlTDcXdhObSAh01oU7WVBQZKk2Fpg=; b=N2/+38S+Fnl+ek
	KCVjyG471zkrem17hRZYKxZ2RLLrs672K+JLnDYaqC8wYc2z2I4TJL8e65nAy+i2DAVxeMqhMYJzU
	RITj5qty7UFzfgISQ7HAhgv6583rA72rG4uTkOWzwQUMICE49xx1Q4CSYfL04oSb4ww8Q93jnehGA
	t9+ZFByX0VhHH2gN8F4W4ZwYI7q1Ed+wUdhmw/EX1xysCMQatDRGqSUcG83Ff+TxYKDbS/ApJVdOw
	Bnb6I2mjPGe1BcVDtI9Li11n0ZontZ3e6AD1husqM/9XY52Y7mpUr18Tl3tRSchAXrS0Ybe1Rl5mK
	LuQN1YvPLMYp3dmM73kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7oov-0006IP-4r; Tue, 10 Sep 2019 22:41:09 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7oob-0006Hx-Te
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 22:40:51 +0000
Received: by mail-pf1-x44a.google.com with SMTP id b204so14157909pfb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 15:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=2pIcY54aZVcxnukBJ46BATE4hoyCKzJFkedwo8F5Do8=;
 b=quvf91+gy+qQudoEQnGJdOp9ILAM9BjdzkhgnM1NMwD+dj6Ps2obMvgjSwGZ1P7MUE
 0KZC/FrodtPG6HP0pzjwzawLjOx8EEXMHZhkv8cAGu0r11W4wxyKLRzNERDTgBJ3YE/b
 s1d9/iJWYjkrV4SLX1lQoPFcozr9F8CNEjHZrGlCJRtbPjx/xcCFK0wufxyzc6JKMimO
 3Tt+jLQ+qJ5tOsarxWhraFubXpNa6fEvqGAYaRKfNB92sDKcpLww0TR/XsU/6mGONOVb
 IjfRYnaQsgH1cMtWYbeUtMWF/klidZ8wUW3HL906oosy8IkvxJBc+NOFx9LghuhmpK26
 j6eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=2pIcY54aZVcxnukBJ46BATE4hoyCKzJFkedwo8F5Do8=;
 b=CseOuBBd9yHcyxi9/3zt8CDBwDDrmW/Ixg3SXVCPJyOZLY5BvbZV85peCcLTruEsv7
 Q8QaAvB/aVZCsHD/cvL4k3NNjUMSK6ovhAg5V3jEHgyzKbu6LEL39DAmA2JpZc8CUBo9
 xCNmIcrpWCNaor1C8FboxfQL1NufWfo0yTDdxKFU8oWwoCrwmq9GDX3XQ3/gjyy7ibMq
 uZ8aTLxMa2DDbw+B2xn+mrHrMIViCtNp7sJYYibXfvCKbLDfKPNKUVngXp36o4p3csrZ
 K/WeiMdl9uRmI2ayUCml7EDiILA9DZQy3Ebt+Fr0uVORfhh59uuHl4jwYbcUSWdTi8fH
 rtvA==
X-Gm-Message-State: APjAAAXsjUz82rdh8rsEZKJ5MzK0VY8LC0MVwlHn56bxGWNlUN18zXsA
 cVxBdVhpTSnZBq1Gb8LfocTbaWnEeFOuWMaxHis=
X-Google-Smtp-Source: APXvYqyi/q1T9aPtkQ+hhOEDXxFp9zEfOxsPG9hxYklRJaTu2ZdU3PQFRjmIaA1ntnDElXtrrsHpVPy6p8kWez+qHrE=
X-Received: by 2002:a63:e306:: with SMTP id f6mr29494408pgh.39.1568155247722; 
 Tue, 10 Sep 2019 15:40:47 -0700 (PDT)
Date: Tue, 10 Sep 2019 15:40:44 -0700
Message-Id: <20190910224044.100388-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
Subject: [PATCH] arm64: fix function types in COND_SYSCALL
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_154049_985221_B3136D28 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define a weak function in COND_SYSCALL instead of a weak alias to
sys_ni_syscall, which has an incompatible type. This fixes indirect
call mismatches with Control-Flow Integrity (CFI) checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/syscall_wrapper.h | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/syscall_wrapper.h b/arch/arm64/include/asm/syscall_wrapper.h
index 507d0ee6bc69..06d880b3526c 100644
--- a/arch/arm64/include/asm/syscall_wrapper.h
+++ b/arch/arm64/include/asm/syscall_wrapper.h
@@ -8,6 +8,8 @@
 #ifndef __ASM_SYSCALL_WRAPPER_H
 #define __ASM_SYSCALL_WRAPPER_H
 
+struct pt_regs;
+
 #define SC_ARM64_REGS_TO_ARGS(x, ...)				\
 	__MAP(x,__SC_ARGS					\
 	      ,,regs->regs[0],,regs->regs[1],,regs->regs[2]	\
@@ -35,8 +37,11 @@
 	ALLOW_ERROR_INJECTION(__arm64_compat_sys_##sname, ERRNO);			\
 	asmlinkage long __arm64_compat_sys_##sname(const struct pt_regs *__unused)
 
-#define COND_SYSCALL_COMPAT(name) \
-	cond_syscall(__arm64_compat_sys_##name);
+#define COND_SYSCALL_COMPAT(name) 							\
+	asmlinkage long __weak __arm64_compat_sys_##name(const struct pt_regs *regs)	\
+	{										\
+		return sys_ni_syscall();						\
+	}
 
 #define COMPAT_SYS_NI(name) \
 	SYSCALL_ALIAS(__arm64_compat_sys_##name, sys_ni_posix_timers);
@@ -70,7 +75,11 @@
 #endif
 
 #ifndef COND_SYSCALL
-#define COND_SYSCALL(name) cond_syscall(__arm64_sys_##name)
+#define COND_SYSCALL(name)							\
+	asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)	\
+	{									\
+		return sys_ni_syscall();					\
+	}
 #endif
 
 #ifndef SYS_NI
-- 
2.23.0.162.g0b9fbb3734-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
