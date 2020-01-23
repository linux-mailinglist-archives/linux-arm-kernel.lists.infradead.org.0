Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58391470A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 19:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTYJ+n9ts650kpOaLymZhs8r2qZce56Sni5eWPr2Cpg=; b=ncW9PDEXJTk9w6
	vnXqDtPqbwo0Jqc7ZsNmzbTs73wOuM6mppclDfzMEySJOnB6efPUCEbNZm24koYQhj3OH79Rfrlgm
	q980tqWDs2YRUQKuKc2+VjWN8SMVTNsjUhkHqATOSCR+uonHAXCoeH4Oq+31RkhSwyJvMm3Y+HhM5
	keEJQDg7MvbpnrmZ5rzEG8R6hQlBz5zTMt4+izT6IHicuAVOzM/ajtDhMmyc45137D+M6eRC8fN1k
	mxTGVg3Tu6Mc1AX14WJ0fdR4J6IRhSHmYguTMIrT/uFi37CrH6YBI8FkNtCsOJhUkmSV7TyzQYHTN
	n4zLeR3zMN4OwWH64s3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuh7f-00072e-7z; Thu, 23 Jan 2020 18:22:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuh7R-00072G-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 18:22:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 932B01FB;
 Thu, 23 Jan 2020 10:22:16 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1125E3F52E;
 Thu, 23 Jan 2020 10:22:15 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: vdso: Convert to modern assembler annotations
Date: Thu, 23 Jan 2020 18:22:01 +0000
Message-Id: <20200123182201.10555-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_102217_844932_3C01E395 
X-CRM114-Status: UNSURE (   9.08  )
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
with unusual calling conventions. Convert the assembly function in the
arm64 VDSO to the new macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/vdso/sigreturn.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
index 0723aa398d6e..12324863d5c2 100644
--- a/arch/arm64/kernel/vdso/sigreturn.S
+++ b/arch/arm64/kernel/vdso/sigreturn.S
@@ -14,7 +14,7 @@
 	.text
 
 	nop
-ENTRY(__kernel_rt_sigreturn)
+SYM_FUNC_START(__kernel_rt_sigreturn)
 	.cfi_startproc
 	.cfi_signal_frame
 	.cfi_def_cfa	x29, 0
@@ -23,4 +23,4 @@ ENTRY(__kernel_rt_sigreturn)
 	mov	x8, #__NR_rt_sigreturn
 	svc	#0
 	.cfi_endproc
-ENDPROC(__kernel_rt_sigreturn)
+SYM_FUNC_END(__kernel_rt_sigreturn)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
