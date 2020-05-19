Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E7A1D9CAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8NQTuSaZX9/x9TThRZjE60T0biOqSzRR/6q5fDeEkY=; b=FPKaoENe2GTkNA
	8zlXVXNKe8fVhv6EZNIY8Qt4Aspg4y/XQlq0Ct34XH3J2u7Ri12labEridsMEO10B+6E1YP+QE4rX
	vWKK9Kbrp56vBhduX1b53QezfLCU8BBwOCN1DmuEwI6vU4Ao9kC8xzkdjdXNJglfVRUJ9ivH1uN2A
	9yymSsozcLgO38Bq9aGShfFk5VNXvy7RKbelrmp5vy9GeAeNln3Cw6QC2qTDM03tc0tfXkwaFXx8g
	AuEl4GtRTv0CIkNq5vrTqOeL2zUzhnuTZLwk8FpC/v7mZsSnGB3VnFXIog8sDluf01AjPwyoZ3o7r
	+UyxmK5pxR+GwmJMKRlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb57n-0006Ku-7w; Tue, 19 May 2020 16:29:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb56X-0005Kj-0L
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:28:35 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CDFB20823;
 Tue, 19 May 2020 16:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905712;
 bh=j4A3t0pCmverH6aGXvri0NjPo8TRZCpBNuitavzar+M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lGoM62+j3ra5du1kgl9iVcPx0UK7iaLMBD5KTHoOuoqb7nKbZpjgsRW+f9W4A6JsU
 oyCSQaI5L51/DNV1WNTTVIDk3HJmiKCNOuneiT6AwY8qXY4H6qpjUjM5LOXq1LO88z
 3FQLEEaHwxV3b1kn9PQNroVNQNXyPYpmBIf81BJ4=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] arm64: vdso: Don't prefix sigreturn trampoline with a
 BTI C instruction
Date: Tue, 19 May 2020 17:28:20 +0100
Message-Id: <20200519162821.16857-2-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519162821.16857-1-will@kernel.org>
References: <20200519162821.16857-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092833_155360_F8D6C8DE 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For better or worse, GDB relies on the exact instruction sequence in the
VDSO sigreturn trampoline in order to unwind from signals correctly.
Commit c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
unfortunately added a BTI C instruction to the start of __kernel_rt_sigreturn,
which breaks this check. Thankfully, it's also not required, since the
trampoline is called from a RET instruction when returning from the signal
handler

Remove the unnecessary BTI C instruction from __kernel_rt_sigreturn,
and do the same for the 32-bit VDSO as well for good measure.

Cc: Dave Martin <dave.martin@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Daniel Kiss <daniel.kiss@arm.com>
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>
Fixes: c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/sigreturn.S   | 11 +++++++++--
 arch/arm64/kernel/vdso32/sigreturn.S | 16 ++++++++--------
 2 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
index 3fb13b81f780..0c921130002a 100644
--- a/arch/arm64/kernel/vdso/sigreturn.S
+++ b/arch/arm64/kernel/vdso/sigreturn.S
@@ -15,7 +15,14 @@
 	.text
 
 	nop
-SYM_FUNC_START(__kernel_rt_sigreturn)
+/*
+ * GDB relies on being able to identify the sigreturn instruction sequence to
+ * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
+ * here, as it will emit a BTI C instruction and break the unwinder. Thankfully,
+ * this function is only ever called from a RET and so omitting the landing pad
+ * is perfectly fine.
+ */
+SYM_CODE_START(__kernel_rt_sigreturn)
 	.cfi_startproc
 	.cfi_signal_frame
 	.cfi_def_cfa	x29, 0
@@ -24,6 +31,6 @@ SYM_FUNC_START(__kernel_rt_sigreturn)
 	mov	x8, #__NR_rt_sigreturn
 	svc	#0
 	.cfi_endproc
-SYM_FUNC_END(__kernel_rt_sigreturn)
+SYM_CODE_END(__kernel_rt_sigreturn)
 
 emit_aarch64_feature_1_and
diff --git a/arch/arm64/kernel/vdso32/sigreturn.S b/arch/arm64/kernel/vdso32/sigreturn.S
index 620524969696..b36d4e2267a3 100644
--- a/arch/arm64/kernel/vdso32/sigreturn.S
+++ b/arch/arm64/kernel/vdso32/sigreturn.S
@@ -17,39 +17,39 @@
 	.save {r0-r15}
 	.pad #COMPAT_SIGFRAME_REGS_OFFSET
 	nop
-SYM_FUNC_START(__kernel_sigreturn_arm)
+SYM_CODE_START(__kernel_sigreturn_arm)
 	mov r7, #__NR_compat_sigreturn
 	svc #0
 	.fnend
-SYM_FUNC_END(__kernel_sigreturn_arm)
+SYM_CODE_END(__kernel_sigreturn_arm)
 
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_RT_SIGFRAME_REGS_OFFSET
 	nop
-SYM_FUNC_START(__kernel_rt_sigreturn_arm)
+SYM_CODE_START(__kernel_rt_sigreturn_arm)
 	mov r7, #__NR_compat_rt_sigreturn
 	svc #0
 	.fnend
-SYM_FUNC_END(__kernel_rt_sigreturn_arm)
+SYM_CODE_END(__kernel_rt_sigreturn_arm)
 
 	.thumb
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_SIGFRAME_REGS_OFFSET
 	nop
-SYM_FUNC_START(__kernel_sigreturn_thumb)
+SYM_CODE_START(__kernel_sigreturn_thumb)
 	mov r7, #__NR_compat_sigreturn
 	svc #0
 	.fnend
-SYM_FUNC_END(__kernel_sigreturn_thumb)
+SYM_CODE_END(__kernel_sigreturn_thumb)
 
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_RT_SIGFRAME_REGS_OFFSET
 	nop
-SYM_FUNC_START(__kernel_rt_sigreturn_thumb)
+SYM_CODE_START(__kernel_rt_sigreturn_thumb)
 	mov r7, #__NR_compat_rt_sigreturn
 	svc #0
 	.fnend
-SYM_FUNC_END(__kernel_rt_sigreturn_thumb)
+SYM_CODE_END(__kernel_rt_sigreturn_thumb)
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
