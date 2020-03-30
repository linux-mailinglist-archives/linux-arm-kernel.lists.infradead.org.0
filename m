Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88E7197B00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M6y8GOeniizyrr3RtxsbKhvL9Yp8bSFJcUMILVIKVu4=; b=c5L88nx1SI/98Av/wnodAsIHbB
	CbhpP4pk0cKqyIQyrCNlJXK7HqGV2SKk4GZii3/Q3dgcxKEMlSu21D4dR1gkI1Rvimc4Z33Udy8kj
	xSHin460ez/5rdOfu32M9gIPy5ddYE+NOmc5dQRo/ElTkzLUli1ALBtaf/V/zOuLi7kPRWSZm72yW
	I7gFgo1gVK3RD2pce+ZPtT+iQ6tRP18kXbCRTz1tiDxYwusFKoznmud45FE2gLRMfDcnM/KebRb7Y
	EVr4eOePWPtNzZAJRed4L7zAPl5J9xzZbi0APPCrBVdGsl0Pb3lTYmwKk+xFxSr4bMhMVmvmOWscq
	w5Hdr5AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsoI-0004fB-3J; Mon, 30 Mar 2020 11:42:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsnr-0004Ss-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:42:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CA73101E;
 Mon, 30 Mar 2020 04:42:02 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B84253F52E;
 Mon, 30 Mar 2020 04:42:00 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: Kconfig: ptrauth: Add binutils version check to
 fix mismatch
Date: Mon, 30 Mar 2020 17:11:39 +0530
Message-Id: <1585568499-21585-2-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585568499-21585-1-git-send-email-amit.kachhap@arm.com>
References: <1585568499-21585-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_044203_208088_1DC392A5 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent addition of ARM64_PTR_AUTH exposed a mismatch issue with binutils.
9.1+ versions of gcc inserts a section note .note.gnu.property but this
can be used properly by binutils version greater than 2.33.1. If older
binutils are used then the following warnings are generated,

aarch64-linux-ld: warning: arch/arm64/kernel/vdso/vgettimeofday.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
aarch64-linux-objdump: warning: arch/arm64/lib/csum.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
aarch64-linux-nm: warning: .tmp_vmlinux1: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

This patch enables ARM64_PTR_AUTH when gcc and binutils versions are
compatible with each other. Older gcc which do not insert such section
continue to work as before.

This scenario may not occur with clang as a recent commit 3b446c7d27ddd06
("arm64: Kconfig: verify binutils support for ARM64_PTR_AUTH") masks
binutils version lesser then 2.34.

Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since v1[1]:
 * Separated GCC and CLANG checks as suggested by Catalin.
 * Added comments in Kconfig entry.

[1]: https://lkml.org/lkml/2020/3/26/626 

 arch/arm64/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e6712b6..4391a4f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1503,7 +1503,10 @@ config ARM64_PTR_AUTH
 	default y
 	depends on !KVM || ARM64_VHE
 	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
-	depends on CC_IS_GCC || (CC_IS_CLANG && AS_HAS_CFI_NEGATE_RA_STATE)
+	# GCC 9.1 version inserts a section note .note.gnu.property for PAC
+	# which can be used properly by binutils version 2.33.1 and higher.
+	depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
+	depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
 	  Pointer authentication (part of the ARMv8.3 Extensions) provides
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
