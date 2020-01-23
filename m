Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54471147120
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 19:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wK0LZ4fqvUMPXSTVWSabzENZyyXHiHwcuXlicVmGlRE=; b=JtHoEphmIagoH1
	tw4juSnDnbkOmEiAFxY8+/Vpp7q2tWXGNEczRgK7K4OKaaX92qEzhIDRHohhkkdBDQINLXjP5MdRN
	OM15/mny8sruN7U7CIkXjqEujL7323Kp5a7HdHVQTVLvBuC2a4QhvLTyUwRaB8C5psrPUSvyB/f+T
	cpH5W2dpGavtVB+CqHsSBwFGw7uZnFpCj/Oxz36cWRoS7x6En/DxTvy9+RB5XjBeEmyfUDjfI73/h
	CuHZYZuFtDY0OV5ADL1LCwKYq8VU7HI1dOtpq4QmGsfU4OvC/4b+ETd5XPuDnK6g01+3Cx0k3FaAd
	NgP9sEotnhF5DkRWEKCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuhY4-000767-0I; Thu, 23 Jan 2020 18:49:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuhXu-00075q-FD
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 18:49:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6BBB71FB;
 Thu, 23 Jan 2020 10:49:37 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2FF13F52E;
 Thu, 23 Jan 2020 10:49:35 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: vdso32: Convert to modern assembler annotations
Date: Thu, 23 Jan 2020 18:49:25 +0000
Message-Id: <20200123184925.11155-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_104938_548102_8B0F9928 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly
functions new macros have been introduced. These replace ENTRY and
ENDPROC with two different annotations for normal functions and those
with unusual calling conventions. Use these for the compat VDSO,
allowing us to drop the custom ARM_ENTRY() and ARM_ENDPROC() macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/vdso32/sigreturn.S | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/kernel/vdso32/sigreturn.S b/arch/arm64/kernel/vdso32/sigreturn.S
index 1a81277c2d09..620524969696 100644
--- a/arch/arm64/kernel/vdso32/sigreturn.S
+++ b/arch/arm64/kernel/vdso32/sigreturn.S
@@ -10,13 +10,6 @@
 #include <asm/asm-offsets.h>
 #include <asm/unistd.h>
 
-#define ARM_ENTRY(name)		\
-	ENTRY(name)
-
-#define ARM_ENDPROC(name)	\
-	.type name, %function;	\
-	END(name)
-
 	.text
 
 	.arm
@@ -24,39 +17,39 @@
 	.save {r0-r15}
 	.pad #COMPAT_SIGFRAME_REGS_OFFSET
 	nop
-ARM_ENTRY(__kernel_sigreturn_arm)
+SYM_FUNC_START(__kernel_sigreturn_arm)
 	mov r7, #__NR_compat_sigreturn
 	svc #0
 	.fnend
-ARM_ENDPROC(__kernel_sigreturn_arm)
+SYM_FUNC_END(__kernel_sigreturn_arm)
 
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_RT_SIGFRAME_REGS_OFFSET
 	nop
-ARM_ENTRY(__kernel_rt_sigreturn_arm)
+SYM_FUNC_START(__kernel_rt_sigreturn_arm)
 	mov r7, #__NR_compat_rt_sigreturn
 	svc #0
 	.fnend
-ARM_ENDPROC(__kernel_rt_sigreturn_arm)
+SYM_FUNC_END(__kernel_rt_sigreturn_arm)
 
 	.thumb
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_SIGFRAME_REGS_OFFSET
 	nop
-ARM_ENTRY(__kernel_sigreturn_thumb)
+SYM_FUNC_START(__kernel_sigreturn_thumb)
 	mov r7, #__NR_compat_sigreturn
 	svc #0
 	.fnend
-ARM_ENDPROC(__kernel_sigreturn_thumb)
+SYM_FUNC_END(__kernel_sigreturn_thumb)
 
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_RT_SIGFRAME_REGS_OFFSET
 	nop
-ARM_ENTRY(__kernel_rt_sigreturn_thumb)
+SYM_FUNC_START(__kernel_rt_sigreturn_thumb)
 	mov r7, #__NR_compat_rt_sigreturn
 	svc #0
 	.fnend
-ARM_ENDPROC(__kernel_rt_sigreturn_thumb)
+SYM_FUNC_END(__kernel_rt_sigreturn_thumb)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
