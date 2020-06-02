Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFF31EC3F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 22:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+b7yqsWZFgyr4fBZ/8CFt1tWH/DGCGN7KzMfQPHbQk=; b=hYbOUalDiwqOKn
	moyMOsLycdofhXd/uEw0vLya7glO6Z2JdEBHtojWmiPHrOSwUtm2O4kSgh+8k1+zZJSgPAXpmTFua
	oZM70i4bpucgyIgewWhT11DLFx/70+8A4RoPmCWnK15Cm+PGXR4TnOj/Ail/6YjsqYjhzQYlTE1ns
	cCmTpTP9trPfG5eeSWq+bQMO1T/b2NNWhVWtysg5or7cBLhd67gktf2zVantjBRtFq/01Yu5iYYC/
	68Kw0sACP/VIbYwQ1DNQkWhxA4jYlCCZ3RqihTzPqz4Pvzq7frQ0jk/F9B7vfDFeIcLnwwXqKqumd
	6tds6g3dSVuCdKnC0TvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgDkT-0000I4-6I; Tue, 02 Jun 2020 20:43:01 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgDkJ-0000FG-Qt
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 20:42:54 +0000
Received: from ip5f5af183.dynamic.kabel-deutschland.de ([95.90.241.131]
 helo=wittgenstein.fritz.box) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jgDk2-0001oi-HB; Tue, 02 Jun 2020 20:42:34 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 Kyle Evans <self@kyle-evans.net>, Victor Stinner <victor.stinner@gmail.com>
Subject: [PATCH v5 2/3] arch: wire-up close_range()
Date: Tue,  2 Jun 2020 22:42:18 +0200
Message-Id: <20200602204219.186620-3-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602204219.186620-1-christian.brauner@ubuntu.com>
References: <20200602204219.186620-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_134252_012345_972ACFA5 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, fweimer@redhat.com,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org, oleg@redhat.com,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
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
unchanged
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
index 36d42da7466a..67ef02ead4da 100644
--- a/arch/alpha/kernel/syscalls/syscall.tbl
+++ b/arch/alpha/kernel/syscalls/syscall.tbl
@@ -475,5 +475,6 @@
 543	common	fspick				sys_fspick
 544	common	pidfd_open			sys_pidfd_open
 # 545 reserved for clone3
+546	common	close_range			sys_close_range
 547	common	openat2				sys_openat2
 548	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/arm/tools/syscall.tbl b/arch/arm/tools/syscall.tbl
index 4d1cf74a2caa..13c5652137fb 100644
--- a/arch/arm/tools/syscall.tbl
+++ b/arch/arm/tools/syscall.tbl
@@ -449,5 +449,6 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+436	common	close_range			sys_close_range
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
index 803039d504de..3b859596840d 100644
--- a/arch/arm64/include/asm/unistd.h
+++ b/arch/arm64/include/asm/unistd.h
@@ -38,7 +38,7 @@
 #define __ARM_NR_compat_set_tls		(__ARM_NR_COMPAT_BASE + 5)
 #define __ARM_NR_COMPAT_END		(__ARM_NR_COMPAT_BASE + 0x800)
 
-#define __NR_compat_syscalls		439
+#define __NR_compat_syscalls		440
 #endif
 
 #define __ARCH_WANT_SYS_CLONE
diff --git a/arch/arm64/include/asm/unistd32.h b/arch/arm64/include/asm/unistd32.h
index c1c61635f89c..902bfb136002 100644
--- a/arch/arm64/include/asm/unistd32.h
+++ b/arch/arm64/include/asm/unistd32.h
@@ -879,6 +879,8 @@ __SYSCALL(__NR_fspick, sys_fspick)
 __SYSCALL(__NR_pidfd_open, sys_pidfd_open)
 #define __NR_clone3 435
 __SYSCALL(__NR_clone3, sys_clone3)
+#define __NR_close_range 436
+__SYSCALL(__NR_close_range, sys_close_range)
 #define __NR_openat2 437
 __SYSCALL(__NR_openat2, sys_openat2)
 #define __NR_pidfd_getfd 438
diff --git a/arch/ia64/kernel/syscalls/syscall.tbl b/arch/ia64/kernel/syscalls/syscall.tbl
index 042911e670b8..df2e14da6a29 100644
--- a/arch/ia64/kernel/syscalls/syscall.tbl
+++ b/arch/ia64/kernel/syscalls/syscall.tbl
@@ -356,5 +356,6 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+436	common	close_range			sys_close_range
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/m68k/kernel/syscalls/syscall.tbl b/arch/m68k/kernel/syscalls/syscall.tbl
index f4f49fcb76d0..553b8858e667 100644
--- a/arch/m68k/kernel/syscalls/syscall.tbl
+++ b/arch/m68k/kernel/syscalls/syscall.tbl
@@ -435,5 +435,6 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				__sys_clone3
+436	common	close_range			sys_close_range
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/microblaze/kernel/syscalls/syscall.tbl b/arch/microblaze/kernel/syscalls/syscall.tbl
index 4c67b11f9c9e..4467e2211d3c 100644
--- a/arch/microblaze/kernel/syscalls/syscall.tbl
+++ b/arch/microblaze/kernel/syscalls/syscall.tbl
@@ -441,5 +441,6 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+436	common	close_range			sys_close_range
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/mips/kernel/syscalls/syscall_n32.tbl b/arch/mips/kernel/syscalls/syscall_n32.tbl
index 1f9e8ad636cc..82ad4cce163a 100644
--- a/arch/mips/kernel/syscalls/syscall_n32.tbl
+++ b/arch/mips/kernel/syscalls/syscall_n32.tbl
@@ -374,5 +374,6 @@
 433	n32	fspick				sys_fspick
 434	n32	pidfd_open			sys_pidfd_open
 435	n32	clone3				__sys_clone3
+436	n32	close_range			sys_close_range
 437	n32	openat2				sys_openat2
 438	n32	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/mips/kernel/syscalls/syscall_n64.tbl b/arch/mips/kernel/syscalls/syscall_n64.tbl
index c0b9d802dbf6..232934c26d07 100644
--- a/arch/mips/kernel/syscalls/syscall_n64.tbl
+++ b/arch/mips/kernel/syscalls/syscall_n64.tbl
@@ -350,5 +350,6 @@
 433	n64	fspick				sys_fspick
 434	n64	pidfd_open			sys_pidfd_open
 435	n64	clone3				__sys_clone3
+436	n64	close_range			sys_close_range
 437	n64	openat2				sys_openat2
 438	n64	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/mips/kernel/syscalls/syscall_o32.tbl b/arch/mips/kernel/syscalls/syscall_o32.tbl
index ac586774c980..d63000c8e769 100644
--- a/arch/mips/kernel/syscalls/syscall_o32.tbl
+++ b/arch/mips/kernel/syscalls/syscall_o32.tbl
@@ -423,5 +423,6 @@
 433	o32	fspick				sys_fspick
 434	o32	pidfd_open			sys_pidfd_open
 435	o32	clone3				__sys_clone3
+436	o32	close_range			sys_close_range
 437	o32	openat2				sys_openat2
 438	o32	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/parisc/kernel/syscalls/syscall.tbl b/arch/parisc/kernel/syscalls/syscall.tbl
index 52a15f5cd130..8612458afda6 100644
--- a/arch/parisc/kernel/syscalls/syscall.tbl
+++ b/arch/parisc/kernel/syscalls/syscall.tbl
@@ -433,5 +433,6 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3_wrapper
+436	common	close_range			sys_close_range
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/powerpc/kernel/syscalls/syscall.tbl b/arch/powerpc/kernel/syscalls/syscall.tbl
index 220ae11555f2..ac92f5d7279d 100644
--- a/arch/powerpc/kernel/syscalls/syscall.tbl
+++ b/arch/powerpc/kernel/syscalls/syscall.tbl
@@ -525,5 +525,6 @@
 435	32	clone3				ppc_clone3			sys_clone3
 435	64	clone3				sys_clone3
 435	spu	clone3				sys_ni_syscall
+436	common	close_range			sys_close_range
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
index bd7bd3581a0f..371bb1f2bfc3 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -438,5 +438,6 @@
 433  common	fspick			sys_fspick			sys_fspick
 434  common	pidfd_open		sys_pidfd_open			sys_pidfd_open
 435  common	clone3			sys_clone3			sys_clone3
+436  common	close_range		sys_close_range			sys_close_range
 437  common	openat2			sys_openat2			sys_openat2
 438  common	pidfd_getfd		sys_pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/sh/kernel/syscalls/syscall.tbl b/arch/sh/kernel/syscalls/syscall.tbl
index c7a30fcd135f..4db428e7acdd 100644
--- a/arch/sh/kernel/syscalls/syscall.tbl
+++ b/arch/sh/kernel/syscalls/syscall.tbl
@@ -438,5 +438,6 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+436	common	close_range			sys_close_range
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/sparc/kernel/syscalls/syscall.tbl b/arch/sparc/kernel/syscalls/syscall.tbl
index f13615ecdecc..c9233f79a11b 100644
--- a/arch/sparc/kernel/syscalls/syscall.tbl
+++ b/arch/sparc/kernel/syscalls/syscall.tbl
@@ -481,5 +481,6 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+436	common	close_range			sys_close_range
 437	common	openat2			sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/arch/x86/entry/syscalls/syscall_32.tbl b/arch/x86/entry/syscalls/syscall_32.tbl
index 54581ac671b4..49ea7190351a 100644
--- a/arch/x86/entry/syscalls/syscall_32.tbl
+++ b/arch/x86/entry/syscalls/syscall_32.tbl
@@ -440,5 +440,6 @@
 433	i386	fspick			sys_fspick
 434	i386	pidfd_open		sys_pidfd_open
 435	i386	clone3			sys_clone3
+436	i386	close_range		sys_close_range
 437	i386	openat2			sys_openat2
 438	i386	pidfd_getfd		sys_pidfd_getfd
diff --git a/arch/x86/entry/syscalls/syscall_64.tbl b/arch/x86/entry/syscalls/syscall_64.tbl
index 37b844f839bc..c2b50b16a24c 100644
--- a/arch/x86/entry/syscalls/syscall_64.tbl
+++ b/arch/x86/entry/syscalls/syscall_64.tbl
@@ -357,6 +357,7 @@
 433	common	fspick			sys_fspick
 434	common	pidfd_open		sys_pidfd_open
 435	common	clone3			sys_clone3
+436	common	close_range		sys_close_range
 437	common	openat2			sys_openat2
 438	common	pidfd_getfd		sys_pidfd_getfd
 
diff --git a/arch/xtensa/kernel/syscalls/syscall.tbl b/arch/xtensa/kernel/syscalls/syscall.tbl
index 85a9ab1bc04d..d5dd7e506893 100644
--- a/arch/xtensa/kernel/syscalls/syscall.tbl
+++ b/arch/xtensa/kernel/syscalls/syscall.tbl
@@ -406,5 +406,6 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+436	common	close_range			sys_close_range
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
diff --git a/include/uapi/asm-generic/unistd.h b/include/uapi/asm-generic/unistd.h
index 3a3201e4618e..ed4e7c2a557f 100644
--- a/include/uapi/asm-generic/unistd.h
+++ b/include/uapi/asm-generic/unistd.h
@@ -850,6 +850,8 @@ __SYSCALL(__NR_pidfd_open, sys_pidfd_open)
 #define __NR_clone3 435
 __SYSCALL(__NR_clone3, sys_clone3)
 #endif
+#define __NR_close_range 436
+__SYSCALL(__NR_close_range, sys_close_range)
 
 #define __NR_openat2 437
 __SYSCALL(__NR_openat2, sys_openat2)
@@ -857,7 +859,7 @@ __SYSCALL(__NR_openat2, sys_openat2)
 __SYSCALL(__NR_pidfd_getfd, sys_pidfd_getfd)
 
 #undef __NR_syscalls
-#define __NR_syscalls 439
+#define __NR_syscalls 440
 
 /*
  * 32 bit systems traditionally used different
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
