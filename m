Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3026E1BD763
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YUZHf0IB/cGpVsF7febVmw4FD1ACqNdueow4Lv8vsCw=; b=hPm
	V1V28OatG47Uf+PKAOLoGPMGOFFv4hImCKpf8cH9dG/Q7eWj812g0IXXn055RdqodNVXEz1bYvcwV
	b2KGsspxZBr4pAv87bekiMUU1A7rvZ4X+JDKpz1U8Z7stAkM2Qe46tkv+O7LGSVXOaLZqWVAVl3/O
	2zFA5pgmPGAewtjffdQf8tiv2qYNlPc5XvnylvRBPMSV/l6lg5rWmNm5UxpIUIDROoQ7zS/EnD2xH
	T84RUKTOohgqaRLmr3m/bBDcj6YQ0qJBH+J8S40EGrlzsukGcFAMrOf4csDxLCcZ4bMkasrWdkAvo
	4M21bfAhxTFdZCLkUTw66heq2GRQUhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTiCs-0003p1-8c; Wed, 29 Apr 2020 08:36:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiCg-0003lE-Qu
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:36:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EB94C14;
 Wed, 29 Apr 2020 01:36:23 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DDE0D3F305;
 Wed, 29 Apr 2020 01:36:20 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Date: Wed, 29 Apr 2020 14:06:10 +0530
Message-Id: <1588149371-20310-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_013626_913534_AEA72811 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Daniel Kiss <daniel.kiss@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compilers are optimized to not create the frame record for the leaf
function and hence lr is not signed and stored in the stack. Thus the leaf
functions cannot be used for ROP gadget attack.

This patch selects pointer authentication only for non-leaf function
and the compiler option is modified to -mbranch-protection=pac-ret and
-msign-return-address=non-leaf.

As there are no PAC instructions(PACIASP and AUTIASP) inserted in the leaf
functions so the kernel code size reduces by ~0.01%.

Note, As PACIASP instruction is also used for Armv8.5 BTI branching so the
compiler may insert BTI instructions in case of leaf functions which are
candidate of JOP gadget for the upcoming BTI in-kernel support.

Reported-by: Daniel Kiss <daniel.kiss@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since v1:
* Updated the commit logs as per the comments from Will and Mark[1].

[1]: https://www.spinics.net/lists/arm-kernel/msg798518.html


 arch/arm64/Kconfig  | 4 ++--
 arch/arm64/Makefile | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d..29cfe05 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1541,11 +1541,11 @@ config ARM64_PTR_AUTH
 
 config CC_HAS_BRANCH_PROT_PAC_RET
 	# GCC 9 or later, clang 8 or later
-	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
+	def_bool $(cc-option,-mbranch-protection=pac-ret)
 
 config CC_HAS_SIGN_RETURN_ADDRESS
 	# GCC 7, 8
-	def_bool $(cc-option,-msign-return-address=all)
+	def_bool $(cc-option,-msign-return-address=non-leaf)
 
 config AS_HAS_PAC
 	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149..895f506 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -70,8 +70,8 @@ endif
 branch-prot-flags-y += $(call cc-option,-mbranch-protection=none)
 
 ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
-branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
-branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
+branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=non-leaf
+branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret
 # -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
 # compiler to generate them and consequently to break the single image contract
 # we pass it only to the assembler. This option is utilized only in case of non
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
