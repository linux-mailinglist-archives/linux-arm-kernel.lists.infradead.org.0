Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D2E2008C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tFS9GhtEYr1Cx7560LVn7ILbHIjVGx5qPfFDfLLMuT8=; b=cyGPCp5L6ui0gF
	Tc2K7U00NM8Za23yBDzIYHB6DQoCe8YzTFY5IkrxM0/1HcStUz/Y+/Gwb8BvZAIYf3hhQ/Z0vMqux
	8q9gD9mwDIO3icmGfojWjkfHRYTbaTa6BJLbthlrle33NgpI1PEJTCn8jWcPYIlqbMHvszbaMVIux
	Ch1DsV5sK6QDFzqnMPzKple6jukcPmquXpDIaxdsUi+ScrCL5h2IZbBP4rmYPT70co+ERW0BGXHwC
	NKT4mlMDOKHywViiOQO8MM+AdbMJ7DnBlNCNTx9/S1dcuNmfZVhAPIg4hP0/XwQJmfYIRwSmqs2oF
	yN0X8wVYZI2Rxzj3puvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGFW-0002lQ-8v; Fri, 19 Jun 2020 12:36:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGFN-0002ku-G0
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:35:54 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6F17207E8;
 Fri, 19 Jun 2020 12:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592570153;
 bh=paJq+ai7NpjXZNFpO+/EvH9DO88Wbjn3vwO79KvIvbY=;
 h=From:To:Cc:Subject:Date:From;
 b=xAcFCPPV62SQzj6Lb4zJcjtjLp9lBfaxAx3niklKprYjJwmj5sdyaaM0H7zwLNIQE
 GVZJUEEm+ROe90+cmmeTQtXLh7LJtk4jQhYLs8ILMHh3Sg6bdaZC5Vg2UEE1tdogCk
 6/bS36g6kZPlcI1gJS2lwAmVdu6J6pCUGwW0rGSU=
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: Depend on newer binutils when building PAC
Date: Fri, 19 Jun 2020 13:35:50 +0100
Message-Id: <20200619123550.48098-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_053553_575613_ACAF43AE 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: KernelCI <bot@kernelci.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Mark Brown <broonie@kernel.org>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
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

during the kernel build which is currently causing quite a bit of
disruption for automated build testing using clang.

In commit 15cd0e675f3f76b (arm64: Kconfig: ptrauth: Add binutils version
check to fix mismatch) we added a dependency on binutils to avoid this
issue when building with versions of GCC that emit the notes but did not
do so for clang as it was believed that the existing check for
.cfi_negate_ra_state was already requiring a new enough binutils. This
does not appear to be the case for some versions of binutils (eg, the
binutils in Debian 10) so instead refactor so we require a new enough
GNU binutils in all cases other than when we are using an old GCC
version that does not emit notes.

Other, more exotic, combinations of tools are possible such as using
clang, lld and gas together are possible and may have further problems
but rather than adding further version checks it looks like the most
robust thing will be to just test that we can build cleanly with the
configured tools but that will require more review and discussion so do
this for now to address the immediate problem disrupting build testing.

Link: https://github.com/ClangBuiltLinux/linux/issues/1054
Reported-by: KernelCI <bot@kernelci.org>
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
v2: Update comment and change to check binutils version except when
    we specifically know that the compiler doesn't emit notes.

 arch/arm64/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a4a094bedcb2..66dc41fd49f2 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1518,9 +1518,9 @@ config ARM64_PTR_AUTH
 	default y
 	depends on !KVM || ARM64_VHE
 	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
-	# GCC 9.1 and later inserts a .note.gnu.property section note for PAC
+	# Modern compilers insert a .note.gnu.property section note for PAC
 	# which is only understood by binutils starting with version 2.33.1.
-	depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
+	depends on LD_IS_LLD || LD_VERSION >= 233010000 || (CC_IS_GCC && GCC_VERSION < 90100)
 	depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
