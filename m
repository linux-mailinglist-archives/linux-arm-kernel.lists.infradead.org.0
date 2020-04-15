Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFF71AA39F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KT3ckbse/WW673tbd25BF2ELHvAOM4NdYvgb5LCsVo=; b=pjFGCLScAA71Hm
	RZ1+3VljMvlOqzZ2M4TU7X2eakZfZzZXwLlqUKyoPRDtm3DG2qQMvlLZCPeZI7ECvsCTpR04r30jw
	ZlmKb8Wlr4wBBnUy68eGXrH2/JBPbRztkPKRy3ymj0RDUwKjLW1GyXTIWWU4CNytWGXtz04aGBoNj
	z5vfD337/gKL41ITmbXP8XlNtjWRGkZe930I+Aj8HYM8tymAZj+15fLiYSLlKFwAj5i1vqgDKXoOm
	Rz31nwYi/Voi2A2S8mJkXyMV0uBkGsYU9SMKUmS7q86513/C6J0Aqf/ZGp3Pe8Tda02wbDkickM8s
	RCgJrDgA379mhXOSJ5jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhru-0002sB-2l; Wed, 15 Apr 2020 13:14:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpv-0001DS-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:12:17 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F82520775;
 Wed, 15 Apr 2020 13:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956335;
 bh=6lLfq2egNbp7pgI+QdnbiDq68OVaxTRy5X5WVhqmcVs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D+vPxzgYxVQGp9QAUsXUYbyWCaF9F8+lszbfMRxslCy5/IssB2oytgNC20GbMob12
 9ff2UqhiFzEXymPTWKP1ihblIpS3qsbRTIgw65gTyKjfU0SGXBJXE/wgbBmbBe2UsY
 fk/65iNiinS7QDOapGSc5cZhnUtezZ1hGdxtMkP8=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 08/10] arm64: vdso: Annotate for BTI
Date: Wed, 15 Apr 2020 14:07:47 +0100
Message-Id: <20200415130750.18645-9-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061215_738720_F86327E8 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Generate BTI annotations for all assembly files included in the 64 bit
vDSO.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/vdso/note.S      | 3 +++
 arch/arm64/kernel/vdso/sigreturn.S | 3 +++
 arch/arm64/kernel/vdso/vdso.S      | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/arch/arm64/kernel/vdso/note.S b/arch/arm64/kernel/vdso/note.S
index 0ce6ec75a525..3d4e82290c80 100644
--- a/arch/arm64/kernel/vdso/note.S
+++ b/arch/arm64/kernel/vdso/note.S
@@ -12,9 +12,12 @@
 #include <linux/version.h>
 #include <linux/elfnote.h>
 #include <linux/build-salt.h>
+#include <asm/assembler.h>
 
 ELFNOTE_START(Linux, 0, "a")
 	.long LINUX_VERSION_CODE
 ELFNOTE_END
 
 BUILD_SALT
+
+emit_aarch64_feature_1_and
diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
index 12324863d5c2..3fb13b81f780 100644
--- a/arch/arm64/kernel/vdso/sigreturn.S
+++ b/arch/arm64/kernel/vdso/sigreturn.S
@@ -9,6 +9,7 @@
  */
 
 #include <linux/linkage.h>
+#include <asm/assembler.h>
 #include <asm/unistd.h>
 
 	.text
@@ -24,3 +25,5 @@ SYM_FUNC_START(__kernel_rt_sigreturn)
 	svc	#0
 	.cfi_endproc
 SYM_FUNC_END(__kernel_rt_sigreturn)
+
+emit_aarch64_feature_1_and
diff --git a/arch/arm64/kernel/vdso/vdso.S b/arch/arm64/kernel/vdso/vdso.S
index d1414fee5274..c4b1990bf2be 100644
--- a/arch/arm64/kernel/vdso/vdso.S
+++ b/arch/arm64/kernel/vdso/vdso.S
@@ -8,6 +8,7 @@
 #include <linux/init.h>
 #include <linux/linkage.h>
 #include <linux/const.h>
+#include <asm/assembler.h>
 #include <asm/page.h>
 
 	.globl vdso_start, vdso_end
@@ -19,3 +20,5 @@ vdso_start:
 vdso_end:
 
 	.previous
+
+emit_aarch64_feature_1_and
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
