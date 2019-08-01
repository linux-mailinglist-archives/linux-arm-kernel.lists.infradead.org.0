Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E317D773
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByAGHA+wxBuzKQfHyhx0pEbb03rWtx65anCFcgkOjUI=; b=UPw/ZBZP8/AfS2
	ygUc5UmZ8zv9lgaPCHz4o3uFLif5BJomiIxjz9V9PL6VikCClNKF2NfMN/gfCp44U//czIv/C/cG3
	TBgg4XDiZdc8YFK4OxzZtIw3d/OcGj0G+dwiYBZ29dPLUvH0b5zoN2+H8F5OqG9lGMjK3O5WoXFLL
	vR63DkogpCeSRlOAf9bkYKvgzbASuy7bR8ieSGGUELstCD24uR3pZSBbHZH6SFj/+QAYAn2NLwNaJ
	wAnzLQPmPd2APIB5CKLb5YqTseUMlozn6fk8FUMFTuTvLoYn1hZQ0X0rAvgMwdaJw8a4gOe/MI3Bv
	/o1ZZl9UQUyKp9OOq39w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6NL-0006nB-Bk; Thu, 01 Aug 2019 08:23:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6K6-0002Mu-VE
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id b13so33608445pfo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kLSGaDTr3EMSfGVKyIoCGH7cLmpO8I4it2r2qsg5/0U=;
 b=S4Wz6HsrBZ4tFip1H1Xoh71BhAkngC7SSsG3Z60MGcWvZ1nYmLBFkZTCNc/gGBmYqp
 IvV13zZFKByRQ8qi8CH0XXNBfuFpCJIJLwbTMKFqjgMGKK/Q4D/xvBcx878dgpzncKb2
 I0T8P4TIuMTI9CQMhnwtBZulf8EcnVFJrTMqHvdD90TUaF6WWzyoL6U9mkF7srlQQjFa
 jrrGAfvzswQqiIE12EfSt7xGgA6uDsQhoKBwYmwaCADnasmiqQOzxOV2+9PQBa/QRjk8
 skcU3J2/Dw8xQoAvBxZXQBYWI3VkPxRydxL9jSpqww1lQY8LN2GiMi62LdIm56nUincD
 Senw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kLSGaDTr3EMSfGVKyIoCGH7cLmpO8I4it2r2qsg5/0U=;
 b=HvtzOMI9Td3aHmySQI1q5kVFGwQR8/90mzBXAiZKzyiDqr0dN6uoXepJkuiTNNbxR+
 cyFMDLoIscAubdADYJ+IzsTC5rEC4JrbWVj1IgTKQStw8UXa7jJZ4ffomXLVwW+ZHgo8
 uXwSPPPS0LWVo+igHcy2togaVfUWm5+D++tL4fWeq7x0GStmczixTWYXHbHp6sIL5W/P
 JXdF5H3B7BRAtBsqDuhGP/VOcizk39+tffXu741ykuDoed1fFmGVqyUePxH2sWUSYVLz
 K6ZlDh5UOXD3mhnBIr3Egaw42OcdDH4dj+uPeiUI2rJEdcPiVpqgIV058LZm4uZ8mpZy
 B3lA==
X-Gm-Message-State: APjAAAWqvppx1BPkG5740oJPfBmgX6u8on8/15xmjOdelv/yXD57pEzK
 RgIlmu2pq5FvcA4nw16qw4GM2FfT6Vw=
X-Google-Smtp-Source: APXvYqyE9scLeqfx5PxPM5uNMJWNAFC88KUToiImqlb+NU/VvG6/SwuL9DS//GEOKNt+2/e831kPFA==
X-Received: by 2002:a63:db47:: with SMTP id x7mr117148117pgi.375.1564647630247; 
 Thu, 01 Aug 2019 01:20:30 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id v185sm80565687pfb.14.2019.08.01.01.20.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:29 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 21/47] ARM: spectre-v1: fix syscall entry
Date: Thu,  1 Aug 2019 13:46:05 +0530
Message-Id: <64408fb0ea37930f27bb2135b8c7f11a3d16fe7a.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012031_008164_0688AD6A 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Commit 10573ae547c85b2c61417ff1a106cffbfceada35 upstream.

Prevent speculation at the syscall table decoding by clamping the index
used to zero on invalid system call numbers, and using the csdb
speculative barrier.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kernel/entry-common.S | 18 +++++++-----------
 arch/arm/kernel/entry-header.S | 25 +++++++++++++++++++++++++
 2 files changed, 32 insertions(+), 11 deletions(-)

diff --git a/arch/arm/kernel/entry-common.S b/arch/arm/kernel/entry-common.S
index 30a7228eaceb..e969b18d9ff9 100644
--- a/arch/arm/kernel/entry-common.S
+++ b/arch/arm/kernel/entry-common.S
@@ -223,9 +223,7 @@ ENTRY(vector_swi)
 	tst	r10, #_TIF_SYSCALL_WORK		@ are we tracing syscalls?
 	bne	__sys_trace
 
-	cmp	scno, #NR_syscalls		@ check upper syscall limit
-	badr	lr, ret_fast_syscall		@ return address
-	ldrcc	pc, [tbl, scno, lsl #2]		@ call sys_* routine
+	invoke_syscall tbl, scno, r10, ret_fast_syscall
 
 	add	r1, sp, #S_OFF
 2:	cmp	scno, #(__ARM_NR_BASE - __NR_SYSCALL_BASE)
@@ -258,14 +256,8 @@ ENDPROC(vector_swi)
 	mov	r1, scno
 	add	r0, sp, #S_OFF
 	bl	syscall_trace_enter
-
-	badr	lr, __sys_trace_return		@ return address
-	mov	scno, r0			@ syscall number (possibly new)
-	add	r1, sp, #S_R0 + S_OFF		@ pointer to regs
-	cmp	scno, #NR_syscalls		@ check upper syscall limit
-	ldmccia	r1, {r0 - r6}			@ have to reload r0 - r6
-	stmccia	sp, {r4, r5}			@ and update the stack args
-	ldrcc	pc, [tbl, scno, lsl #2]		@ call sys_* routine
+	mov	scno, r0
+	invoke_syscall tbl, scno, r10, __sys_trace_return, reload=1
 	cmp	scno, #-1			@ skip the syscall?
 	bne	2b
 	add	sp, sp, #S_OFF			@ restore stack
@@ -317,6 +309,10 @@ ENTRY(sys_call_table)
 		bic	scno, r0, #__NR_OABI_SYSCALL_BASE
 		cmp	scno, #__NR_syscall - __NR_SYSCALL_BASE
 		cmpne	scno, #NR_syscalls	@ check range
+#ifdef CONFIG_CPU_SPECTRE
+		movhs	scno, #0
+		csdb
+#endif
 		stmloia	sp, {r5, r6}		@ shuffle args
 		movlo	r0, r1
 		movlo	r1, r2
diff --git a/arch/arm/kernel/entry-header.S b/arch/arm/kernel/entry-header.S
index 6d243e830516..86dfee487e24 100644
--- a/arch/arm/kernel/entry-header.S
+++ b/arch/arm/kernel/entry-header.S
@@ -373,6 +373,31 @@
 #endif
 	.endm
 
+	.macro	invoke_syscall, table, nr, tmp, ret, reload=0
+#ifdef CONFIG_CPU_SPECTRE
+	mov	\tmp, \nr
+	cmp	\tmp, #NR_syscalls		@ check upper syscall limit
+	movcs	\tmp, #0
+	csdb
+	badr	lr, \ret			@ return address
+	.if	\reload
+	add	r1, sp, #S_R0 + S_OFF		@ pointer to regs
+	ldmccia	r1, {r0 - r6}			@ reload r0-r6
+	stmccia	sp, {r4, r5}			@ update stack arguments
+	.endif
+	ldrcc	pc, [\table, \tmp, lsl #2]	@ call sys_* routine
+#else
+	cmp	\nr, #NR_syscalls		@ check upper syscall limit
+	badr	lr, \ret			@ return address
+	.if	\reload
+	add	r1, sp, #S_R0 + S_OFF		@ pointer to regs
+	ldmccia	r1, {r0 - r6}			@ reload r0-r6
+	stmccia	sp, {r4, r5}			@ update stack arguments
+	.endif
+	ldrcc	pc, [\table, \nr, lsl #2]	@ call sys_* routine
+#endif
+	.endm
+
 /*
  * These are the registers used in the syscall handler, and allow us to
  * have in theory up to 7 arguments to a function - r0 to r6.
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
