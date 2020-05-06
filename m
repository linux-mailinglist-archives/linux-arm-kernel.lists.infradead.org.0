Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AECAE1C7AC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yGsUHMT+GnDqASaNvHbVVw5Siw0S8Q/EbJixkMc81o=; b=INu5jbow4DWMAa
	lTO9frpbGteqOcMoSoF1ApUaAxoOdMvGn1C4P/5DUBudHZu/3eB65w1/+tB72NFXFBnvlx1Vbg3lI
	1grNLniu++DU049DOUHxAD5XsAUWZdRzg3OiBlD+sg1JJtyhvprBKlpxmd/JLbhK+yBXIplOBm2ku
	RdzuY6yZ6bbGp3b5D38S2xx0cdMWYDOkZs0cX9K6SXaMRFS5xiMD6Nfn2BCwK759xnZ9Ps/u187nS
	TGwLE0d87uskfpLp2x4PNkiyDP+HDttuxlGr8+KHuLjI5Yv8y9z3qe3BQV4gqncPQUW/bwsFvapz/
	CABZAdRvYH4RRrqOI74A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQ85-0006tm-Ub; Wed, 06 May 2020 19:54:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQ5b-0004JA-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:52:20 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDEB22076D;
 Wed,  6 May 2020 19:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588794738;
 bh=aakVYsllj8JLETFGSJnlgjvy9G3J3P1izYBHonGSEIE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QNAM1b/XqjTeisOx3vc8lW3+yX3fs6x8wFcErqhuwhOlP8S/HseozJAywvvfDwJH2
 UI7BFHjmY5yRz4hbLZFaFoneZUVCqR+Rn5u0l/aZ2vWmLUWqZylfriqSNNb88pXV35
 YCDpJiF7vTnN2YFBEvqVPmQYjhlC8WgjPuw9PRtw=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 09/11] arm64: vdso: Annotate for BTI
Date: Wed,  6 May 2020 20:51:36 +0100
Message-Id: <20200506195138.22086-10-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506195138.22086-1-broonie@kernel.org>
References: <20200506195138.22086-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_125219_444169_9A85ADC7 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Mark Brown <broonie@kernel.org>, Amit Kachhap <amit.kachhap@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Generate BTI annotations for all assembly files included in the 64 bit
vDSO.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
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
