Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AC5E4B2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2NCtZcmJc32t8FaZAWH+r86fiMMcYt4Vo1f0+kDwb4=; b=OlpRqQ08vnqoFt
	0KrEGHFgp4U6r1gCS0KRshiGDhD/MFovfSFqesAqu5HfjBEdGmPxDhzFIXjMmTouAFn1idcy0bjzw
	ZRQIjJ+z67IQK94Z8m9ODqpa0eUoBdGCg4yiO3gMNVHSbXuERoYZEGvkpEopWG+f3+r0G0YF+M59N
	xh4Q27nZEzLQgOnGvvO0Ks6OpyimXrqSdVrEDnXmx6iw0/g5g4n007PCb3O+9RrYOLAc2DKhR87Cf
	5T6uxj3FJq8LCk1eNiwLmRB6tjJFQtKUJz+y/wBcIZ5zIbmI3S83KvzZz4DMq9FTEOjWpI+f5gbmR
	Ybi7HrSQfsp2OLvXarFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNymk-0002Vp-L6; Fri, 25 Oct 2019 12:33:42 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNymY-0002V8-I6
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:33:33 +0000
Received: from [185.240.52.243] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iNym9-0007oa-U4; Fri, 25 Oct 2019 12:33:05 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: viro@zeniv.linux.org.uk, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, torvalds@linux-foundation.org,
 fweimer@redhat.com
Subject: [REVIEW PATCH v5 2/3] arch: wire-up close_range()
Date: Fri, 25 Oct 2019 14:28:50 +0200
Message-Id: <20191025122851.30182-3-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025122851.30182-1-christian.brauner@ubuntu.com>
References: <20191025122851.30182-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_053330_740251_EB54A9B4 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, ldv@altlinux.org,
 dhowells@redhat.com, sparclinux@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>, shuah@kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, miklos@szeredi.hu,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org, tkjos@android.com,
 arnd@arndb.de, jannh@google.com, linux-m68k@lists.linux-m68k.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org, oleg@redhat.com,
 linux-alpha@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This wires up the close_range() syscall into all arches at once.

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Reviewed-by: Oleg Nesterov <oleg@redhat.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
Cc: Jann Horn <jannh@google.com>
Cc: David Howells <dhowells@redhat.com>
Cc: Dmitry V. Levin <ldv@altlinux.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: linux-api@vger.kernel.org
Cc: linux-alpha@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linux-m68k@lists.linux-m68k.org
Cc: linux-mips@vger.kernel.org
Cc: linux-parisc@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: linux-xtensa@linux-xtensa.org
Cc: linux-arch@vger.kernel.org
Cc: x86@kernel.org
---
/* v2 */
not present

/* v3 */
not present

/* v4 */
introduced
- Arnd Bergmann <arnd@arndb.de>:
  - split into two patches:
    1. add close_range()
    2. add syscall to all arches at once
  - bump __NR_compat_syscalls in arch/arm64/include/asm/unistd.h

/* v5 */
- Christian Brauner <christian.brauner@ubuntu.com>:
---
 arch/alpha/kernel/syscalls/syscall.tbl      | 1 +
 arch/arm/tools/syscall.tbl                  | 1 +
 arch/arm64/include/asm/unistd.h             | 2 +-
 arch/arm64/include/asm/unistd32.h           | 2 ++
 arch/ia64/kernel/syscalls/syscall.tbl       | 1 +
 arch/m68k/kernel/syscalls/syscall.tbl       | 1 +
 arch/microblaze/kernel/syscalls/syscall.tbl | 1 +
 arch/mips/kernel/syscalls/syscall_n32.tbl   | 1 +
 arch/mips/kernel/syscalls/syscall_n64.tbl   | 1 +
 arch/mips/kernel/syscalls/syscall_o32.tbl   | 1 +
 arch/parisc/kernel/syscalls/syscall.tbl     | 1 +
 arch/powerpc/kernel/syscalls/syscall.tbl    | 1 +
 arch/s390/kernel/syscalls/syscall.tbl       | 1 +
 arch/sh/kernel/syscalls/syscall.tbl         | 1 +
 arch/sparc/kernel/syscalls/syscall.tbl      | 1 +
 arch/x86/entry/syscalls/syscall_32.tbl      | 1 +
 arch/x86/entry/syscalls/syscall_64.tbl      | 1 +
 arch/xtensa/kernel/syscalls/syscall.tbl     | 1 +
 include/uapi/asm-generic/unistd.h           | 4 +++-
 19 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/alpha/kernel/syscalls/syscall.tbl b/arch/alpha/kernel/syscalls/syscall.tbl
index 728fe028c02c..f08906efa5ff 100644
--- a/arch/alpha/kernel/syscalls/syscall.tbl
+++ b/arch/alpha/kernel/syscalls/syscall.tbl
@@ -475,3 +475,4 @@
 543	common	fspick				sys_fspick
 544	common	pidfd_open			sys_pidfd_open
 # 545 reserved for clone3
+546	common	close_range			sys_close_range
diff --git a/arch/arm/tools/syscall.tbl b/arch/arm/tools/syscall.tbl
index 6da7dc4d79cc..f25716576d13 100644
--- a/arch/arm/tools/syscall.tbl
+++ b/arch/arm/tools/syscall.tbl
@@ -449,3 +449,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+436	common	close_range			sys_close_range
diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
index 2629a68b8724..368761302768 100644
--- a/arch/arm64/include/asm/unistd.h
+++ b/arch/arm64/include/asm/unistd.h
@@ -38,7 +38,7 @@
 #define __ARM_NR_compat_set_tls		(__ARM_NR_COMPAT_BASE + 5)
 #define __ARM_NR_COMPAT_END		(__ARM_NR_COMPAT_BASE + 0x800)
 
-#define __NR_compat_syscalls		436
+#define __NR_compat_syscalls		437
 #endif
 
 #define __ARCH_WANT_SYS_CLONE
diff --git a/arch/arm64/include/asm/unistd32.h b/arch/arm64/include/asm/unistd32.h
index 94ab29cf4f00..c1309f52c8ac 100644
--- a/arch/arm64/include/asm/unistd32.h
+++ b/arch/arm64/include/asm/unistd32.h
@@ -879,6 +879,8 @@ __SYSCALL(__NR_fspick, sys_fspick)
 __SYSCALL(__NR_pidfd_open, sys_pidfd_open)
 #define __NR_clone3 435
 __SYSCALL(__NR_clone3, sys_clone3)
+#define __NR_close_range 436
+__SYSCALL(__NR_close_range, sys_close_range)
 
 /*
  * Please add new compat syscalls above this comment and update
diff --git a/arch/ia64/kernel/syscalls/syscall.tbl b/arch/ia64/kernel/syscalls/syscall.tbl
index 36d5faf4c86c..151f4fd234be 100644
--- a/arch/ia64/kernel/syscalls/syscall.tbl
+++ b/arch/ia64/kernel/syscalls/syscall.tbl
@@ -356,3 +356,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+436	common	close_range			sys_close_range
diff --git a/arch/m68k/kernel/syscalls/syscall.tbl b/arch/m68k/kernel/syscalls/syscall.tbl
index a88a285a0e5f..adff06c08d2f 100644
--- a/arch/m68k/kernel/syscalls/syscall.tbl
+++ b/arch/m68k/kernel/syscalls/syscall.tbl
@@ -435,3 +435,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+436	common	close_range			sys_close_range
diff --git a/arch/microblaze/kernel/syscalls/syscall.tbl b/arch/microblaze/kernel/syscalls/syscall.tbl
index 09b0cd7dab0a..84aa70453704 100644
--- a/arch/microblaze/kernel/syscalls/syscall.tbl
+++ b/arch/microblaze/kernel/syscalls/syscall.tbl
@@ -441,3 +441,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+436	common	close_range			sys_close_range
diff --git a/arch/mips/kernel/syscalls/syscall_n32.tbl b/arch/mips/kernel/syscalls/syscall_n32.tbl
index e7c5ab38e403..0c1fdfc01ebb 100644
--- a/arch/mips/kernel/syscalls/syscall_n32.tbl
+++ b/arch/mips/kernel/syscalls/syscall_n32.tbl
@@ -374,3 +374,4 @@
 433	n32	fspick				sys_fspick
 434	n32	pidfd_open			sys_pidfd_open
 435	n32	clone3				__sys_clone3
+436	n32	close_range			sys_close_range
diff --git a/arch/mips/kernel/syscalls/syscall_n64.tbl b/arch/mips/kernel/syscalls/syscall_n64.tbl
index 13cd66581f3b..d1284f1ce329 100644
--- a/arch/mips/kernel/syscalls/syscall_n64.tbl
+++ b/arch/mips/kernel/syscalls/syscall_n64.tbl
@@ -350,3 +350,4 @@
 433	n64	fspick				sys_fspick
 434	n64	pidfd_open			sys_pidfd_open
 435	n64	clone3				__sys_clone3
+436	n64	close_range			sys_close_range
diff --git a/arch/mips/kernel/syscalls/syscall_o32.tbl b/arch/mips/kernel/syscalls/syscall_o32.tbl
index 353539ea4140..7e4118d8d2ca 100644
--- a/arch/mips/kernel/syscalls/syscall_o32.tbl
+++ b/arch/mips/kernel/syscalls/syscall_o32.tbl
@@ -423,3 +423,4 @@
 433	o32	fspick				sys_fspick
 434	o32	pidfd_open			sys_pidfd_open
 435	o32	clone3				__sys_clone3
+436	o32	close_range			sys_close_range
diff --git a/arch/parisc/kernel/syscalls/syscall.tbl b/arch/parisc/kernel/syscalls/syscall.tbl
index 285ff516150c..d07f75996382 100644
--- a/arch/parisc/kernel/syscalls/syscall.tbl
+++ b/arch/parisc/kernel/syscalls/syscall.tbl
@@ -433,3 +433,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3_wrapper
+436	common	close_range			sys_close_range
diff --git a/arch/powerpc/kernel/syscalls/syscall.tbl b/arch/powerpc/kernel/syscalls/syscall.tbl
index 43f736ed47f2..093d91114ea8 100644
--- a/arch/powerpc/kernel/syscalls/syscall.tbl
+++ b/arch/powerpc/kernel/syscalls/syscall.tbl
@@ -517,3 +517,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	nospu	clone3				ppc_clone3
+436	common	close_range			sys_close_range
diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
index 3054e9c035a3..74565cf327ce 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -438,3 +438,4 @@
 433  common	fspick			sys_fspick			sys_fspick
 434  common	pidfd_open		sys_pidfd_open			sys_pidfd_open
 435  common	clone3			sys_clone3			sys_clone3
+436  common	close_range		sys_close_range			sys_close_range
diff --git a/arch/sh/kernel/syscalls/syscall.tbl b/arch/sh/kernel/syscalls/syscall.tbl
index b5ed26c4c005..11c9e5626fdd 100644
--- a/arch/sh/kernel/syscalls/syscall.tbl
+++ b/arch/sh/kernel/syscalls/syscall.tbl
@@ -438,3 +438,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+436	common	close_range			sys_close_range
diff --git a/arch/sparc/kernel/syscalls/syscall.tbl b/arch/sparc/kernel/syscalls/syscall.tbl
index 8c8cc7537fb2..7928240b3966 100644
--- a/arch/sparc/kernel/syscalls/syscall.tbl
+++ b/arch/sparc/kernel/syscalls/syscall.tbl
@@ -481,3 +481,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+436	common	close_range			sys_close_range
diff --git a/arch/x86/entry/syscalls/syscall_32.tbl b/arch/x86/entry/syscalls/syscall_32.tbl
index 3fe02546aed3..cb56003ccf2d 100644
--- a/arch/x86/entry/syscalls/syscall_32.tbl
+++ b/arch/x86/entry/syscalls/syscall_32.tbl
@@ -440,3 +440,4 @@
 433	i386	fspick			sys_fspick			__ia32_sys_fspick
 434	i386	pidfd_open		sys_pidfd_open			__ia32_sys_pidfd_open
 435	i386	clone3			sys_clone3			__ia32_sys_clone3
+436	i386	close_range		sys_close_range			__ia32_sys_close_range
diff --git a/arch/x86/entry/syscalls/syscall_64.tbl b/arch/x86/entry/syscalls/syscall_64.tbl
index c29976eca4a8..0c8be7197ca2 100644
--- a/arch/x86/entry/syscalls/syscall_64.tbl
+++ b/arch/x86/entry/syscalls/syscall_64.tbl
@@ -357,6 +357,7 @@
 433	common	fspick			__x64_sys_fspick
 434	common	pidfd_open		__x64_sys_pidfd_open
 435	common	clone3			__x64_sys_clone3/ptregs
+436	common	close_range		__x64_sys_close_range
 
 #
 # x32-specific system call numbers start at 512 to avoid cache impact
diff --git a/arch/xtensa/kernel/syscalls/syscall.tbl b/arch/xtensa/kernel/syscalls/syscall.tbl
index 25f4de729a6d..2526f37a6cac 100644
--- a/arch/xtensa/kernel/syscalls/syscall.tbl
+++ b/arch/xtensa/kernel/syscalls/syscall.tbl
@@ -406,3 +406,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+436	common	close_range			sys_close_range
diff --git a/include/uapi/asm-generic/unistd.h b/include/uapi/asm-generic/unistd.h
index 1fc8faa6e973..53c57ffb3bd6 100644
--- a/include/uapi/asm-generic/unistd.h
+++ b/include/uapi/asm-generic/unistd.h
@@ -850,9 +850,11 @@ __SYSCALL(__NR_pidfd_open, sys_pidfd_open)
 #define __NR_clone3 435
 __SYSCALL(__NR_clone3, sys_clone3)
 #endif
+#define __NR_close_range 436
+__SYSCALL(__NR_close_range, sys_close_range)
 
 #undef __NR_syscalls
-#define __NR_syscalls 436
+#define __NR_syscalls 437
 
 /*
  * 32 bit systems traditionally used different
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
