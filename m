Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318D516313B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nLWNgE4K0MvsUumtaCtV58GhUuK58xjEiDr6WrB7mg=; b=VX+iCinum2efyg
	qbMm3EH7Mn9kVNsyPwzM/bXLT/AePP0zHGbCdm0Az78WtGdiVC00KJoCGc4RkXnXUv5AxajxPg34f
	krrA1UmTHHGZJtjjA5PFeJMFaN7CHYI5+j27ySayM8ZsrwEwvRhsWsW3DGsYCEEuTwq7iXTNYjmXN
	U+8JzK3X0OjW3Qu+Ra2lsSsOgtjvRc4F0k6GWVrR9cphTfWw+lal/3WdEGS4eKZn5yveRm3PKDVKJ
	JA9T4z8eDRWqYKNWcSwSp8P5anI/z9svByMMOvpthKT09MFK+L3hGcBY+uTLbzoMTZPwel1dIfVWf
	tVPSUqH9DVMr1pJEjnlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j492y-00081R-B8; Tue, 18 Feb 2020 20:00:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491N-0005YX-IX
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:59:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13FF231B;
 Tue, 18 Feb 2020 11:59:05 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 89F933F68F;
 Tue, 18 Feb 2020 11:59:04 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 05/18] arm64: entry: Additional annotation conversions for
 entry.S
Date: Tue, 18 Feb 2020 19:58:29 +0000
Message-Id: <20200218195842.34156-6-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218195842.34156-1-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115905_695894_81DD334E 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC with separate annotations for standard C callable functions,
data and code with different calling conventions.  Update the
remaining annotations in the entry.S code to the new macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry.S | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index d535cb8a7413..fbf69fe94412 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -832,7 +832,7 @@ alternative_else_nop_endif
 	.endm
 
 	.align	11
-ENTRY(tramp_vectors)
+SYM_CODE_START_NOALIGN(tramp_vectors)
 	.space	0x400
 
 	tramp_ventry
@@ -844,15 +844,15 @@ ENTRY(tramp_vectors)
 	tramp_ventry	32
 	tramp_ventry	32
 	tramp_ventry	32
-END(tramp_vectors)
+SYM_CODE_END(tramp_vectors)
 
-ENTRY(tramp_exit_native)
+SYM_CODE_START(tramp_exit_native)
 	tramp_exit
-END(tramp_exit_native)
+SYM_CODE_END(tramp_exit_native)
 
-ENTRY(tramp_exit_compat)
+SYM_CODE_START(tramp_exit_compat)
 	tramp_exit	32
-END(tramp_exit_compat)
+SYM_CODE_END(tramp_exit_compat)
 
 	.ltorg
 	.popsection				// .entry.tramp.text
@@ -874,7 +874,7 @@ __entry_tramp_data_start:
  * Previous and next are guaranteed not to be the same.
  *
  */
-ENTRY(cpu_switch_to)
+SYM_FUNC_START(cpu_switch_to)
 	mov	x10, #THREAD_CPU_CONTEXT
 	add	x8, x0, x10
 	mov	x9, sp
@@ -896,7 +896,7 @@ ENTRY(cpu_switch_to)
 	mov	sp, x9
 	msr	sp_el0, x1
 	ret
-ENDPROC(cpu_switch_to)
+SYM_FUNC_END(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
