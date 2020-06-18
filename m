Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 976CD1FF5E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6IYiVWhERii/ckeZE1RFqxaJ3Y5nKefVo8wYb5sflmA=; b=LyHfLLD6xSoazv
	pO/1efAV8PZgaK3FW+B1ae15UP3ibZINaRMaY+RFI3KOXhVd4RryhvsCmt6Auix5Met7jpW4BXYHK
	cx8U48szig2uzRqRlvfvSahHoz2XqBDoD5dZI9nhJyZwXyjGZmKkb8y8QgL/nB5mGLRmOlH4LCNGw
	GQHumSv0GeFN3+3h7Z5aY45nCh3723+f8qs/1GDykuk9EjngLuMjkOc0anyGNM8d+poo0Bkn61XMI
	Gg/HH/VFkJoHX5B+BGK8f4P7HMCJIcPuIJ/F+oekKYTHU0RmMntA9iikkE0dUUPg4/6+54hfL7FrV
	nOP6Ofq/9MOgAyCgk2pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvxt-0007Rx-HQ; Thu, 18 Jun 2020 14:56:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvxG-0007DF-Er
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:55:58 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82B0820885;
 Thu, 18 Jun 2020 14:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592492150;
 bh=RSHL9Iv8s/9IbWe/kozmkDReeuLPo/dElqJoRLMIcOQ=;
 h=From:To:Cc:Subject:Date:From;
 b=nz0w0CiBml8Bd+/3pnnGxgOOVTQFalRFP7VE9nx+hrAs5NO9kuWPdlw1Ql63BeP3O
 1ycgxkTDNEo3/pkJCMEVS0tPZrQjZaeKZqwMAlInlwCwVTQXeBXp3+zfFnrcPLo6qe
 f9rVx3ALzI1FRb8J6R0zVOPLWa2D2MqnKlKxymyM=
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: Depend on newer binutils when building PAC
Date: Thu, 18 Jun 2020 15:55:39 +0100
Message-Id: <20200618145539.53539-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_075550_566775_4AA444EF 
X-CRM114-Status: GOOD (  14.40  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Mark Brown <broonie@kernel.org>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Versions of binutils prior to 2.33.1 don't understand the ELF notes that
are added by modern compilers to indicate the PAC and BTI options used
to build the code. This causes them to emit large numbers of warnings in
the form:

aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

during the kernel build.

In commit 15cd0e675f3f76b (arm64: Kconfig: ptrauth: Add binutils version
check to fix mismatch) we added a dependency on binutils to avoid this
issue when building with versions of GCC that emit the notes but did not
do so for clang as it was believed that the existing check for
.cfi_negate_ra_state was already requiring a new enough binutils.  This
does not appear to be the case for some versions of binutils (eg, the
binutils in Debian 10) so add an explicit binutils version check for
clang too.

Link: https://github.com/ClangBuiltLinux/linux/issues/1054
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..dd9d1bdee32a 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1521,7 +1521,7 @@ config ARM64_PTR_AUTH
 	# GCC 9.1 and later inserts a .note.gnu.property section note for PAC
 	# which is only understood by binutils starting with version 2.33.1.
 	depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
-	depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
+	depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE || LD_VERSION >= 233010000
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
 	  Pointer authentication (part of the ARMv8.3 Extensions) provides
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
