Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A081B1BC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TYnTa8n5gZbPPP/iyVILt2QiQ6YiLDhMkb4d2xp5Go=; b=R6GVwbAAYfoXy1
	jYUyYLdKakWttrzFOA2gb8IjMp963DvBNxKQU5T33YBjkeProl29KKj055lcPhHEtnynUi3rmnNRm
	Rpj7hObGbNel8DhDKv54pfeJdNnAj0cSyJ7gXNzutTZfctRHfrWLhe6xJU8SH0sYVnuASnBmg3osX
	dv7c9lZhN98fhQewZW35NULY56uuFYN2JZyJvCogVZtierUm8Er9JqfcqP3oRsZq73Ah9sSMkNfpl
	rMVjTy9LiEH+CBuvaemN+L7YW3HTsNkIjUrmT4f0aSY7wiwEGffPYZxKBtXpcNmf5oiUVEyy2J/Xa
	D3HIYcuooOEcgw8Uuzlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiUn-0004kU-Cq; Tue, 21 Apr 2020 02:18:45 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRa-0001Gw-5H
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:27 +0000
Received: by mail-pl1-x649.google.com with SMTP id y12so10381826plk.23
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=fmDIIvZxhD4Qz7j+wQz+cg0h7Uav/MFkAMZG+HSiNhc=;
 b=Q3Znj2JKTQDjJ9AtVQa9SlDWVy67S5Os3GkR86PFUbKNay/M9+Tf6sl6w+fw+XIwk6
 Ioheosds6Jmo5t0P7WNRlTpO2ptSqHlo3eIJw8OCnjYMQ23Yd5B7siAepCbDRYFrahJ+
 BztZcJusaVR5p/k1SeS9/pX+F8y7qErPvLWbWiADXCzX9beJCFfGlv5BMt1AZCRmwnPY
 ZCmw4JN4e8Nv5jj0xbxDWtwow9lsc6LRX0BxN+cXZdRYUyiQUmW3Xt4kEvyMZzFPEfWH
 JYhyGcgXXCG+xyF/Okyi+vt2zkCaUkp/YchRv4JGn0VZbGlUv8YY/0qjSUdgKrsZKZC+
 qkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=fmDIIvZxhD4Qz7j+wQz+cg0h7Uav/MFkAMZG+HSiNhc=;
 b=evEbquZCk12CIDkc7GV+f5l6jWn1Gi5Cs+0LaQkuambdiCizueWHgAExNinrSOSBrc
 Au8Qho+sr1QVe2265nNfSaQl58/keAPQEMC81Ijd0kR9WRbZMBDDKnsV5Wkhspsfn3eK
 G9OaUHWnbIyn+0d70TNuotMDHhXC5oy1KhcgeceQGgluJD1xHNpWA6doOyKS3ysxGXf2
 gKPtrBevo8Q7esRCvK0CPTsBX+Z7IlPJ6R7sqwIVsnjSb09Kiu537Lm7cZnefe3uULGu
 VkVkRJz8JT4SRsYUGtO24S9jLmsy4utP7fx3jhfoOhwMUWzrZGk0IFX+TXwswOF3wWGj
 64JQ==
X-Gm-Message-State: AGi0PubN92Ne7mtFMupk39S31lQAf2/WEaUqum8grSP9kjK7UwfLx2ao
 aov8qrGy9CGfKxKm1yW+eZ1P+C1Jvn2Ltq+8JQE=
X-Google-Smtp-Source: APiQypKP0rnpkpovisrv5VEIou1w3/73lQO+VReT/uCmoOssza/QtX3Z0Kia4pqf4dQTquCPQ6LCYUDifPUCspPK5Pw=
X-Received: by 2002:a65:6859:: with SMTP id q25mr13037367pgt.437.1587435324149; 
 Mon, 20 Apr 2020 19:15:24 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:52 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 11/12] arm64: scs: add shadow stacks for SDEI
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_191526_203350_4EC1B068 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change adds per-CPU shadow call stacks for the SDEI handler.
Similarly to how the kernel stacks are handled, we add separate shadow
stacks for normal and critical events.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/entry.S | 14 +++++++++++++-
 arch/arm64/kernel/scs.c   |  5 +++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 14f0ff763b39..9f7be489d26d 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1058,13 +1058,16 @@ SYM_CODE_START(__sdei_asm_handler)
 
 	mov	x19, x1
 
+#if defined(CONFIG_VMAP_STACK) || defined(CONFIG_SHADOW_CALL_STACK)
+	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
+#endif
+
 #ifdef CONFIG_VMAP_STACK
 	/*
 	 * entry.S may have been using sp as a scratch register, find whether
 	 * this is a normal or critical event and switch to the appropriate
 	 * stack for this CPU.
 	 */
-	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
 	cbnz	w4, 1f
 	ldr_this_cpu dst=x5, sym=sdei_stack_normal_ptr, tmp=x6
 	b	2f
@@ -1074,6 +1077,15 @@ SYM_CODE_START(__sdei_asm_handler)
 	mov	sp, x5
 #endif
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Use a separate shadow call stack for normal and critical events */
+	cbnz	w4, 3f
+	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal, tmp=x6
+	b	4f
+3:	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical, tmp=x6
+4:
+#endif
+
 	/*
 	 * We may have interrupted userspace, or a guest, or exit-from or
 	 * return-to either of these. We can't trust sp_el0, restore it.
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
index 086ad97bba86..656262736eca 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -14,3 +14,8 @@
 		__aligned(SCS_SIZE)
 
 DEFINE_SCS(irq_shadow_call_stack);
+
+#ifdef CONFIG_ARM_SDE_INTERFACE
+DEFINE_SCS(sdei_shadow_call_stack_normal);
+DEFINE_SCS(sdei_shadow_call_stack_critical);
+#endif
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
