Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C0C1BC24B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GZAlQnsB9wrP8cN+X93MvE6tB+WY759MajPcNjCpg28=; b=nIYLY1oVBB6ERA
	fAguELZIXaYD//ip3mfL37qvjwHXTFNatiBWWrbSrttgbmHH+ywNdaZ9RMdN+toMGjASym1MTXAvo
	xYhLukRKRpc0SWARUIXsgcyMl/Kwz6r7M/+L44brsxBIiahVO4NysVWq4b+k4Vk1DgzsoLGJJ+wAE
	7NOeHou818JD4QQ5pJCzS+9Kx+EiSFor2efKXOqc4Nc4svK9r+NPQ1+60OR44/VkI0C2CDmpaLT5U
	UWZU/XqOorT05xbg9bGJPeJdfD8+cFvyPv3svmRg5vVC+lFQPq1nKr+4ol+G4FbuOFHwqRwJEgfBX
	+QtCY8rOzU0ER0GoJPhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRrM-00010L-LU; Tue, 28 Apr 2020 15:09:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRrD-0000za-LR
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:09:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD46530E;
 Tue, 28 Apr 2020 08:09:09 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D78393F305;
 Tue, 28 Apr 2020 08:09:08 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: vdso: Fix ldflags for -Bsymbolic
Date: Tue, 28 Apr 2020 16:08:54 +0100
Message-Id: <20200428150854.33130-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_080911_744729_67A7D88B 
X-CRM114-Status: GOOD (  10.26  )
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
Cc: Geoff Levand <geoff@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vDSO library adds -Bsymbolic to the ldflags because when the shared
library is built it adds a flag in the dynamic section of the binary
called DT_SYMBOLIC which alters the dynamic linker's symbol resolution
algorithm to search for references for a symbol inside the library first
and then into the executable.

In the current implementation of the library for arm64 the flag has been
wrongly added to VDSO_LDFLAGS which is never used.

Restore the correct behavior adding the flag to ldflags.

Note: -Bsymbolic has been added for consistency with arm and future
proof.

Fixes: 28b1a824a4f44 ("arm64: vdso: Substitute gettimeofday() with C implementation")
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ardb@kernel.org>
Reported-by: Geoff Levand <geoff@infradead.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso/Makefile | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index abb3347a925b..6ba222ad8cc2 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -17,14 +17,17 @@ obj-vdso := vgettimeofday.o note.o sigreturn.o
 targets := $(obj-vdso) vdso.so vdso.so.dbg
 obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
+# -Bsymbolic has been added for consistency with arm and future proof.
+# It adds a flag in the dynamic section of the binary called DT_SYMBOLIC
+# which alters the dynamic linker's symbol resolution algorithm to search
+# for references for a symbol inside the library first and then into the
+# executable.
 ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
-		--build-id -n -T
+		-Bsymbolic --build-id -n -T
 
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-VDSO_LDFLAGS := -Bsymbolic
-
 CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
