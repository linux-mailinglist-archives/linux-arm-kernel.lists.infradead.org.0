Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8613C1C870A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wp9XNsg3fRG7HzPEhB/G1NAN1SeU8lSiDI4lxl8ndls=; b=RDB+cWF3oVmIlO
	C5n6dvnTsSKu1DUMK+29wiEAScxbXnl8OT8+J+PkVzaPlHXplA+R+YN6L+kY96mtjCul5tzJCQPG+
	EYXffr8wsUljKCRrNEKQuuxxtM6DnMbfwaOFMluscMNNnXbGkHEvHraelD3nQL5mlheu/yDxpfvs+
	KkK2BTPmRJxu4wC2uTl3lUBg7JVqetV0JR+6ft6URYBvVjY44oEfWP7nRDRgwAkOP0nQvtRhbE0sI
	8LZKEi9cBFR7Nr6bFMoItG6MTagsOiesMojHLD0KqCaxIpNJ9/Uj75I4EqhZuKZKMGPdGBYZeudN2
	kvjY86gOuNB2nLOBmg5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdxn-0005yx-4i; Thu, 07 May 2020 10:41:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdxg-0005yB-Tl
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:41:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B11DCD6E;
 Thu,  7 May 2020 03:41:02 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB8B73F71F;
 Thu,  7 May 2020 03:41:01 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: vdso: Add --eh-frame-hdr to ldflags
Date: Thu,  7 May 2020 11:40:49 +0100
Message-Id: <20200507104049.47834-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_034105_001739_58E0C822 
X-CRM114-Status: GOOD (  11.76  )
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LLVM's unwinder depends on the .eh_frame_hdr being present for
unwinding. However, when compiling Linux with GCC, the section
is not present in the vdso library object and when compiling
with Clang, it is present, but it has zero length.

With GCC the problem was not spotted because libgcc unwinder does
not require the .eh_frame_hdr section to be present.

Add --eh-frame-hdr to ldflags to correctly generate and populate
the section for both GCC and LLVM.

Fixes: 28b1a824a4f44 ("arm64: vdso: Substitute gettimeofday() with C implementation")
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Reported-by: Tamas Zsoldos <tamas.zsoldos@arm.com>
Tested-by: Tamas Zsoldos <tamas.zsoldos@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 3862cad2410c..54008ec39e3a 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -18,7 +18,7 @@ targets := $(obj-vdso) vdso.so vdso.so.dbg
 obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
 ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
-		--build-id -n -T
+		--eh-frame-hdr --build-id -n -T
 
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
