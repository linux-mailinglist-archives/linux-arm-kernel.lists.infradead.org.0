Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB67A3EA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 21:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLaC5oFa4INFdWSN30mFE2QTX5wzmUz83Nsu26ybQrI=; b=cCOsNB4vTIjJ6B
	4pOjvT3KiYwWjfmAFChMSHpJMbVn++2WkUwevuoWokE2JGNSvwq8+4XKYDP6y00lDiXq3e+vapxnf
	zFhCnk9v/4opl0Y5jjEfhZ8CJ8T/o4rmKXPlAbmvdAZ9+pA33CO5VhrbKMHD2rrblqJQhiRw+OVz3
	FdeXnZy9p7ysQhuP67VHm8ybID3U+t2adA4H9QPHXFw7NGQ+7LYS1yNXu/nBArJMd/dfQAqqdAsML
	62gbF3GMTx/TJH7DnWFYJKUCAkIKxL+820ZkGKey8+KSTt7ykWONXWSFYKGZGlVoWDICG/m4husTK
	hGjlylxL1jJph/2lJJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3mrb-0004jl-6F; Fri, 30 Aug 2019 19:47:15 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3mrM-0004fG-BQ
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 19:47:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 21F09B03C;
 Fri, 30 Aug 2019 19:46:56 +0000 (UTC)
From: Michal Suchanek <msuchanek@suse.de>
To: linux-arch@vger.kernel.org
Subject: [PATCH] Revert "asm-generic: Remove unneeded __ARCH_WANT_SYS_LLSEEK
 macro"
Date: Fri, 30 Aug 2019 21:46:51 +0200
Message-Id: <20190830194651.31043-1-msuchanek@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <bb6d25c6baae315d05b571d8c508f0e8fa90027c.1567188299.git.msuchanek@suse.de>
References: <bb6d25c6baae315d05b571d8c508f0e8fa90027c.1567188299.git.msuchanek@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_124700_685393_E73FCF7B 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-s390@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Firoz Khan <firoz.khan@linaro.org>, Michal Suchanek <msuchanek@suse.de>,
 linux-xtensa@linux-xtensa.org, Vasily Gorbik <gor@linux.ibm.com>,
 linux-m68k@lists.linux-m68k.org, Borislav Petkov <bp@alien8.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Howells <dhowells@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christian Brauner <christian@brauner.io>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>, linux-fsdevel@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit caf6f9c8a326cffd1d4b3ff3f1cfba75d159d70b.

Maybe it was needed after all.

When CONFIG_COMPAT is disabled on ppc64 the kernel does not build.

There is resistance to both removing the llseek syscall from the 64bit
syscall tables and building the llseek interface unconditionally.

Link: https://lore.kernel.org/lkml/20190828151552.GA16855@infradead.org/
Link: https://lore.kernel.org/lkml/20190829214319.498c7de2@naga/

Signed-off-by: Michal Suchanek <msuchanek@suse.de>
---
 arch/arm/include/asm/unistd.h        |  1 +
 arch/arm64/include/asm/unistd.h      |  1 +
 arch/csky/include/asm/unistd.h       |  2 +-
 arch/m68k/include/asm/unistd.h       |  1 +
 arch/microblaze/include/asm/unistd.h |  1 +
 arch/mips/include/asm/unistd.h       |  1 +
 arch/parisc/include/asm/unistd.h     |  1 +
 arch/powerpc/include/asm/unistd.h    |  1 +
 arch/s390/include/asm/unistd.h       |  1 +
 arch/sh/include/asm/unistd.h         |  1 +
 arch/sparc/include/asm/unistd.h      |  1 +
 arch/x86/include/asm/unistd.h        |  1 +
 arch/xtensa/include/asm/unistd.h     |  1 +
 fs/read_write.c                      |  2 +-
 include/asm-generic/unistd.h         | 12 ++++++++++++
 15 files changed, 26 insertions(+), 2 deletions(-)
 create mode 100644 include/asm-generic/unistd.h

diff --git a/arch/arm/include/asm/unistd.h b/arch/arm/include/asm/unistd.h
index 3676e82cf95c..e35ec8100a21 100644
--- a/arch/arm/include/asm/unistd.h
+++ b/arch/arm/include/asm/unistd.h
@@ -18,6 +18,7 @@
 #define __ARCH_WANT_SYS_GETHOSTNAME
 #define __ARCH_WANT_SYS_PAUSE
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 #define __ARCH_WANT_SYS_SIGPENDING
 #define __ARCH_WANT_SYS_SIGPROCMASK
diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
index 2629a68b8724..2c9d8d91e347 100644
--- a/arch/arm64/include/asm/unistd.h
+++ b/arch/arm64/include/asm/unistd.h
@@ -7,6 +7,7 @@
 #define __ARCH_WANT_SYS_GETHOSTNAME
 #define __ARCH_WANT_SYS_PAUSE
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 #define __ARCH_WANT_SYS_SIGPENDING
 #define __ARCH_WANT_SYS_SIGPROCMASK
diff --git a/arch/csky/include/asm/unistd.h b/arch/csky/include/asm/unistd.h
index da7a18295615..bee8ba8309e7 100644
--- a/arch/csky/include/asm/unistd.h
+++ b/arch/csky/include/asm/unistd.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 // Copyright (C) 2018 Hangzhou C-SKY Microsystems co.,ltd.
 
-#include <uapi/asm/unistd.h>
+#include <asm-generic/unistd.h>
 
 #define NR_syscalls (__NR_syscalls)
diff --git a/arch/m68k/include/asm/unistd.h b/arch/m68k/include/asm/unistd.h
index 2e0047cf86f8..54c04eb4495a 100644
--- a/arch/m68k/include/asm/unistd.h
+++ b/arch/m68k/include/asm/unistd.h
@@ -21,6 +21,7 @@
 #define __ARCH_WANT_SYS_SOCKETCALL
 #define __ARCH_WANT_SYS_FADVISE64
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 #define __ARCH_WANT_SYS_OLD_GETRLIMIT
 #define __ARCH_WANT_SYS_OLD_MMAP
diff --git a/arch/microblaze/include/asm/unistd.h b/arch/microblaze/include/asm/unistd.h
index d79d35ac6253..c5fcbce1f997 100644
--- a/arch/microblaze/include/asm/unistd.h
+++ b/arch/microblaze/include/asm/unistd.h
@@ -27,6 +27,7 @@
 #define __ARCH_WANT_SYS_SOCKETCALL
 #define __ARCH_WANT_SYS_FADVISE64
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 /* #define __ARCH_WANT_SYS_OLD_GETRLIMIT */
 #define __ARCH_WANT_SYS_OLDUMOUNT
diff --git a/arch/mips/include/asm/unistd.h b/arch/mips/include/asm/unistd.h
index 071053ece677..8e8c7cab95ca 100644
--- a/arch/mips/include/asm/unistd.h
+++ b/arch/mips/include/asm/unistd.h
@@ -38,6 +38,7 @@
 #define __ARCH_WANT_SYS_WAITPID
 #define __ARCH_WANT_SYS_SOCKETCALL
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 #define __ARCH_WANT_SYS_OLD_UNAME
 #define __ARCH_WANT_SYS_OLDUMOUNT
diff --git a/arch/parisc/include/asm/unistd.h b/arch/parisc/include/asm/unistd.h
index cd438e4150f6..29bd46381f2e 100644
--- a/arch/parisc/include/asm/unistd.h
+++ b/arch/parisc/include/asm/unistd.h
@@ -159,6 +159,7 @@ type name(type1 arg1, type2 arg2, type3 arg3, type4 arg4, type5 arg5)	\
 #define __ARCH_WANT_SYS_SOCKETCALL
 #define __ARCH_WANT_SYS_FADVISE64
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 #define __ARCH_WANT_SYS_OLDUMOUNT
 #define __ARCH_WANT_SYS_SIGPENDING
diff --git a/arch/powerpc/include/asm/unistd.h b/arch/powerpc/include/asm/unistd.h
index b0720c7c3fcf..700fcdac2e3c 100644
--- a/arch/powerpc/include/asm/unistd.h
+++ b/arch/powerpc/include/asm/unistd.h
@@ -31,6 +31,7 @@
 #define __ARCH_WANT_SYS_SOCKETCALL
 #define __ARCH_WANT_SYS_FADVISE64
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 #define __ARCH_WANT_SYS_OLD_GETRLIMIT
 #define __ARCH_WANT_SYS_OLD_UNAME
diff --git a/arch/s390/include/asm/unistd.h b/arch/s390/include/asm/unistd.h
index 9e9f75ef046a..52e9e2fe3768 100644
--- a/arch/s390/include/asm/unistd.h
+++ b/arch/s390/include/asm/unistd.h
@@ -21,6 +21,7 @@
 #define __ARCH_WANT_SYS_IPC
 #define __ARCH_WANT_SYS_FADVISE64
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 #define __ARCH_WANT_SYS_OLD_GETRLIMIT
 #define __ARCH_WANT_SYS_OLD_MMAP
diff --git a/arch/sh/include/asm/unistd.h b/arch/sh/include/asm/unistd.h
index 9c7d9d9999c6..4899b6b72f1a 100644
--- a/arch/sh/include/asm/unistd.h
+++ b/arch/sh/include/asm/unistd.h
@@ -22,6 +22,7 @@
 # define __ARCH_WANT_SYS_SOCKETCALL
 # define __ARCH_WANT_SYS_FADVISE64
 # define __ARCH_WANT_SYS_GETPGRP
+# define __ARCH_WANT_SYS_LLSEEK
 # define __ARCH_WANT_SYS_NICE
 # define __ARCH_WANT_SYS_OLD_GETRLIMIT
 # define __ARCH_WANT_SYS_OLD_UNAME
diff --git a/arch/sparc/include/asm/unistd.h b/arch/sparc/include/asm/unistd.h
index 1e66278ba4a5..7edfc208e2af 100644
--- a/arch/sparc/include/asm/unistd.h
+++ b/arch/sparc/include/asm/unistd.h
@@ -36,6 +36,7 @@
 #define __ARCH_WANT_SYS_SOCKETCALL
 #define __ARCH_WANT_SYS_FADVISE64
 #define __ARCH_WANT_SYS_GETPGRP
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_NICE
 #define __ARCH_WANT_SYS_OLDUMOUNT
 #define __ARCH_WANT_SYS_SIGPENDING
diff --git a/arch/x86/include/asm/unistd.h b/arch/x86/include/asm/unistd.h
index 097589753fec..9e5a1748b4ce 100644
--- a/arch/x86/include/asm/unistd.h
+++ b/arch/x86/include/asm/unistd.h
@@ -39,6 +39,7 @@
 # define __ARCH_WANT_SYS_FADVISE64
 # define __ARCH_WANT_SYS_GETHOSTNAME
 # define __ARCH_WANT_SYS_GETPGRP
+# define __ARCH_WANT_SYS_LLSEEK
 # define __ARCH_WANT_SYS_NICE
 # define __ARCH_WANT_SYS_OLDUMOUNT
 # define __ARCH_WANT_SYS_OLD_GETRLIMIT
diff --git a/arch/xtensa/include/asm/unistd.h b/arch/xtensa/include/asm/unistd.h
index b52236245e51..9fd236a7825e 100644
--- a/arch/xtensa/include/asm/unistd.h
+++ b/arch/xtensa/include/asm/unistd.h
@@ -9,6 +9,7 @@
 #define __ARCH_WANT_NEW_STAT
 #define __ARCH_WANT_STAT64
 #define __ARCH_WANT_SYS_UTIME32
+#define __ARCH_WANT_SYS_LLSEEK
 #define __ARCH_WANT_SYS_GETPGRP
 
 #define NR_syscalls				__NR_syscalls
diff --git a/fs/read_write.c b/fs/read_write.c
index 5bbf587f5bc1..2f3c4bb138c4 100644
--- a/fs/read_write.c
+++ b/fs/read_write.c
@@ -331,7 +331,7 @@ COMPAT_SYSCALL_DEFINE3(lseek, unsigned int, fd, compat_off_t, offset, unsigned i
 }
 #endif
 
-#if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT)
+#ifdef __ARCH_WANT_SYS_LLSEEK
 SYSCALL_DEFINE5(llseek, unsigned int, fd, unsigned long, offset_high,
 		unsigned long, offset_low, loff_t __user *, result,
 		unsigned int, whence)
diff --git a/include/asm-generic/unistd.h b/include/asm-generic/unistd.h
new file mode 100644
index 000000000000..ea74eca8463f
--- /dev/null
+++ b/include/asm-generic/unistd.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <uapi/asm-generic/unistd.h>
+#include <linux/export.h>
+
+/*
+ * These are required system calls, we should
+ * invert the logic eventually and let them
+ * be selected by default.
+ */
+#if __BITS_PER_LONG == 32
+#define __ARCH_WANT_SYS_LLSEEK
+#endif
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
