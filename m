Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA16195E8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 20:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMqDkZ5v7VfPyjA21pxMLJSxo2bsUBRqRoM/SAkijFo=; b=MK/6Z5cH90yBoj
	WpuS4GAtqYFIWLALL2WFOueMaszKfTxqzNuiswuB8GnZ5xtDbg3rcWte64n7QXoZvePVhOPPY13v6
	6se9ywgneq1t64txQuAyCL8dYkpH9ySDhos8FVfuvrbGz565lzb85jIapeB2xR1i9XhJ6hP65EHU/
	KMOWMZj0GfndhaZ/VaPzvLPn7YPd8DCTnpi0/jUFtpznAu6e6LBHGNESnt8WjWynepykwBaQbBWqr
	eXpP4R+Kbb8i2QEzkwnr9v/6EZCc/FKCF2vx87j/itoR+NwQVbcP6P33fioWfFitS5GW+bfH6sxlg
	W4yXlJHzjjLVdS93ut2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHuYq-0002kV-Jw; Fri, 27 Mar 2020 19:22:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHuXq-0001p0-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 19:21:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DE4D30E;
 Fri, 27 Mar 2020 12:21:28 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E37DA3F71E;
 Fri, 27 Mar 2020 12:21:27 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 5/5] arm64: bti: Provide Kconfig for kernel mode BTI
Date: Fri, 27 Mar 2020 19:21:07 +0000
Message-Id: <20200327192107.18394-6-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327192107.18394-1-broonie@kernel.org>
References: <20200327192107.18394-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_122130_229294_0C7F9300 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all the code is in place provide a Kconfig option allowing users
to enable BTI for the kernel if their toolchain supports it, defaulting it
on since this has security benefits. This is a separate configuration
option since we currently don't support secondary CPUs that lack BTI if
the boot CPU supports it.

Current testing appears to show an issue with GCC which causes it to
emit unsuitable landing pads for function entries in some cases, until
this issue is understood and either our usage fixed or a suitable
version of GCC is identified the feature is marked as incompatible with
GCC.  No issues have been identified with clang.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/Kconfig | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 00cb4db4beab..25bb0931b2ba 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1607,6 +1607,24 @@ config ARM64_BTI
 	  BTI, such binaries can still run, but you get no additional
 	  enforcement of branch destinations.
 
+config ARM64_BTI_KERNEL
+	bool "Use Branch Target Identification for kernel"
+	default y
+	depends on ARM64_BTI
+	depends on ARM64_PTR_AUTH
+	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
+	depends on !CC_IS_GCC
+	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
+	help
+	  Build the kernel with Branch Target Identification annotations
+	  and enable enforcement of this for kernel code. When this option
+	  is enabled and the system supports BTI all kernel code including
+	  modular code must have BTI enabled.
+
+config CC_HAS_BRANCH_PROT_PAC_RET_BTI
+	# GCC 9 or later, clang 8 or later
+	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf+bti)
+
 config ARM64_E0PD
 	bool "Enable support for E0PD"
 	default y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
