Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3637321C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahXxuchdQirzMhvvA6TrGEaVA7QzLIt3oO7YBEx8liA=; b=JebVSD52jHWgL4
	uj58arh6303cvZ2eOs3tmq4LjjvGNIuD2RkbfAW8HZqt3apilF2D2xPPVG1ZRNms0NeSMi2Rf2MSX
	jOHKz3LDyEkqgvvTr4nUVquQXLDKXcLFfej2DF8FWEgB6jq54Eg9k8BgEmoAjQorxOlePPPmHcRKk
	AOJilbUJK5OUrjo/qwclUO+qTTbdxUoBVK490fdbfgx5EPW6iV5SW5DqVbr0pDTZAS2yrW5MVmkq4
	Jd0e/TWtcXmdtKAgtZESqq2xQTJpX4ROdFLn20h6TNRyMe++TIKGS7ILvDF3yiDddG3mc/eILRJEr
	OoiPO8bo5v0fb2mDWinQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqIYp-0002ja-Mt; Wed, 24 Jul 2019 14:48:07 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqIYc-0002i7-07
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:47:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so22012861pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 07:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x1ubznM31Zi+8TITQjBWLaj+FG6dvDHIz+J1DjDCti4=;
 b=apUb95+UUHbfjQGu5THqimf7upSpdEPG3EOBuYncXw3es/N64Gofs9902QeBgnzEMP
 1djLkK5QF9ik7aPuwoGym8cZ+Dpi/ZTHp5G4mq9wudiK6uoveKfnJ8Xc1GC+KMwpPbJw
 lmboN5MR2PSUcGWjGBpyBm27lDjuB+MWW/3VwXOJps0Wh2xhby9nQBNafEZBDjKD26dx
 jFFH45TLUM4KUozPm/9zlH2q8XZ3KODsH3x4OiYEinpIx9i6CAd1TGWo7aogWwdCFtAX
 rUedAODkq0ZdmF0CFiYi/YWMtt/10vn4TWyRXo7Weufp159jqwO8KOBZIKQqw912DazD
 2XEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x1ubznM31Zi+8TITQjBWLaj+FG6dvDHIz+J1DjDCti4=;
 b=TrtqZ8AbvfewplYYZ7NQ99qY/pByEFAPewjK/n3JeX3QZNDwhKZpmt5jzi4raS3aMm
 4py1TOtUmCp13A6RazowqC+VjPfIF6EVwgi+a6TJZq1F4PrMIxJBGofSmBWIKIiDId2g
 PZCcp1lgTlQmrz/JKiPhEkPiz8rqnV8QR0uLacpdpWQ3G/3jsCR55rlwJnpAV3WShL3h
 gDh/2uYdg8oIGzUMwFg2jAHvh1AdSjlfxQIr7tnb+EMkuJnRsh31tTh48XAvubvWKtSB
 b5WGti9PyTIE2w+bzXWo/iSsBfj7RpiDwSyFJ6H+WIuQKCkp6fWdTPqlWDaFxuww9Kb0
 CPKQ==
X-Gm-Message-State: APjAAAWYeYOZiHwLlSPhcGLJbn9wbaqTZl2H5mlzY9j+QewSZl02gWXA
 C/enbiC7VF9ZN+epEKBmK+w=
X-Google-Smtp-Source: APXvYqxgsIhm+uDW9ChjMulVpCeodED60MY1Gj7ZmMvRCcYNs3AH9HQpm4Dxz3xwlUn5xHzOEPau2g==
X-Received: by 2002:a17:902:2ec5:: with SMTP id
 r63mr85107148plb.21.1563979670908; 
 Wed, 24 Jul 2019 07:47:50 -0700 (PDT)
Received: from localhost.localdomain ([172.58.27.54])
 by smtp.gmail.com with ESMTPSA id g6sm41125644pgh.64.2019.07.24.07.47.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 07:47:50 -0700 (PDT)
From: Christian Brauner <christian@brauner.io>
To: linux-kernel@vger.kernel.org,
	oleg@redhat.com
Subject: [PATCH 3/5] arch: wire-up pidfd_wait()
Date: Wed, 24 Jul 2019 16:46:49 +0200
Message-Id: <20190724144651.28272-4-christian@brauner.io>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724144651.28272-1-christian@brauner.io>
References: <20190724144651.28272-1-christian@brauner.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_074754_049347_527EA8AE 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, dhowells@redhat.com,
 sparclinux@vger.kernel.org, joel@joelfernandes.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, x86@kernel.org, torvalds@linux-foundation.org,
 Christian Brauner <christian@brauner.io>, kernel-team@android.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk, luto@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 linux-mips@vger.kernel.org, ebiederm@xmission.com, linux-alpha@vger.kernel.org,
 tj@kernel.org, akpm@linux-foundation.org, cyphar@cyphar.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This wires up the pidfd_wait() syscall into all arches at once.

Signed-off-by: Christian Brauner <christian@brauner.io>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Joel Fernandes (Google) <joel@joelfernandes.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Jann Horn <jannh@google.com>
Cc: David Howells <dhowells@redhat.com>
Cc: Andy Lutomirsky <luto@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Aleksa Sarai <cyphar@cyphar.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Al Viro <viro@zeniv.linux.org.uk>
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
 arch/alpha/kernel/syscalls/syscall.tbl      | 1 +
 arch/arm/tools/syscall.tbl                  | 1 +
 arch/arm64/include/asm/unistd.h             | 2 +-
 arch/arm64/include/asm/unistd32.h           | 4 +++-
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
 include/linux/syscalls.h                    | 4 ++++
 include/uapi/asm-generic/unistd.h           | 4 +++-
 20 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/arch/alpha/kernel/syscalls/syscall.tbl b/arch/alpha/kernel/syscalls/syscall.tbl
index 728fe028c02c..ca3e593f0c7a 100644
--- a/arch/alpha/kernel/syscalls/syscall.tbl
+++ b/arch/alpha/kernel/syscalls/syscall.tbl
@@ -475,3 +475,4 @@
 543	common	fspick				sys_fspick
 544	common	pidfd_open			sys_pidfd_open
 # 545 reserved for clone3
+548	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/arm/tools/syscall.tbl b/arch/arm/tools/syscall.tbl
index 6da7dc4d79cc..5e448d915b2f 100644
--- a/arch/arm/tools/syscall.tbl
+++ b/arch/arm/tools/syscall.tbl
@@ -449,3 +449,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
index 2629a68b8724..b722e47377a5 100644
--- a/arch/arm64/include/asm/unistd.h
+++ b/arch/arm64/include/asm/unistd.h
@@ -38,7 +38,7 @@
 #define __ARM_NR_compat_set_tls		(__ARM_NR_COMPAT_BASE + 5)
 #define __ARM_NR_COMPAT_END		(__ARM_NR_COMPAT_BASE + 0x800)
 
-#define __NR_compat_syscalls		436
+#define __NR_compat_syscalls		439
 #endif
 
 #define __ARCH_WANT_SYS_CLONE
diff --git a/arch/arm64/include/asm/unistd32.h b/arch/arm64/include/asm/unistd32.h
index 94ab29cf4f00..ca77c9d4f7a1 100644
--- a/arch/arm64/include/asm/unistd32.h
+++ b/arch/arm64/include/asm/unistd32.h
@@ -877,7 +877,9 @@ __SYSCALL(__NR_fsmount, sys_fsmount)
 __SYSCALL(__NR_fspick, sys_fspick)
 #define __NR_pidfd_open 434
 __SYSCALL(__NR_pidfd_open, sys_pidfd_open)
-#define __NR_clone3 435
+#define __NR_pidfd_wait 438
+__SYSCALL(__NR_pidfd_wait, sys_pidfd_wait)
+#define __NR_clone3 439
 __SYSCALL(__NR_clone3, sys_clone3)
 
 /*
diff --git a/arch/ia64/kernel/syscalls/syscall.tbl b/arch/ia64/kernel/syscalls/syscall.tbl
index 36d5faf4c86c..f038afaced9b 100644
--- a/arch/ia64/kernel/syscalls/syscall.tbl
+++ b/arch/ia64/kernel/syscalls/syscall.tbl
@@ -356,3 +356,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/m68k/kernel/syscalls/syscall.tbl b/arch/m68k/kernel/syscalls/syscall.tbl
index a88a285a0e5f..51f86f7b4cec 100644
--- a/arch/m68k/kernel/syscalls/syscall.tbl
+++ b/arch/m68k/kernel/syscalls/syscall.tbl
@@ -435,3 +435,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/microblaze/kernel/syscalls/syscall.tbl b/arch/microblaze/kernel/syscalls/syscall.tbl
index 09b0cd7dab0a..24f912ac5dfa 100644
--- a/arch/microblaze/kernel/syscalls/syscall.tbl
+++ b/arch/microblaze/kernel/syscalls/syscall.tbl
@@ -441,3 +441,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/mips/kernel/syscalls/syscall_n32.tbl b/arch/mips/kernel/syscalls/syscall_n32.tbl
index c9c879ec9b6d..edc144c4040c 100644
--- a/arch/mips/kernel/syscalls/syscall_n32.tbl
+++ b/arch/mips/kernel/syscalls/syscall_n32.tbl
@@ -374,3 +374,4 @@
 433	n32	fspick				sys_fspick
 434	n32	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438	n32	pidfd_wait			sys_pidfd_wait
diff --git a/arch/mips/kernel/syscalls/syscall_n64.tbl b/arch/mips/kernel/syscalls/syscall_n64.tbl
index bbce9159caa1..da4486ea0f4f 100644
--- a/arch/mips/kernel/syscalls/syscall_n64.tbl
+++ b/arch/mips/kernel/syscalls/syscall_n64.tbl
@@ -350,3 +350,4 @@
 433	n64	fspick				sys_fspick
 434	n64	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438	n64	pidfd_wait			sys_pidfd_wait
diff --git a/arch/mips/kernel/syscalls/syscall_o32.tbl b/arch/mips/kernel/syscalls/syscall_o32.tbl
index 9653591428ec..d738688e50d8 100644
--- a/arch/mips/kernel/syscalls/syscall_o32.tbl
+++ b/arch/mips/kernel/syscalls/syscall_o32.tbl
@@ -423,3 +423,4 @@
 433	o32	fspick				sys_fspick
 434	o32	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438	o32	pidfd_wait			sys_pidfd_wait
diff --git a/arch/parisc/kernel/syscalls/syscall.tbl b/arch/parisc/kernel/syscalls/syscall.tbl
index 670d1371aca1..d60f44d8145c 100644
--- a/arch/parisc/kernel/syscalls/syscall.tbl
+++ b/arch/parisc/kernel/syscalls/syscall.tbl
@@ -432,3 +432,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3_wrapper
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/powerpc/kernel/syscalls/syscall.tbl b/arch/powerpc/kernel/syscalls/syscall.tbl
index 3331749aab20..3309bf5f5370 100644
--- a/arch/powerpc/kernel/syscalls/syscall.tbl
+++ b/arch/powerpc/kernel/syscalls/syscall.tbl
@@ -517,3 +517,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
index a90d3e945445..ef8ba9a9c3bb 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -438,3 +438,4 @@
 433  common	fspick			sys_fspick			sys_fspick
 434  common	pidfd_open		sys_pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438  common	pidfd_wait		sys_pidfd_wait			sys_pidfd_wait
diff --git a/arch/sh/kernel/syscalls/syscall.tbl b/arch/sh/kernel/syscalls/syscall.tbl
index b5ed26c4c005..9e786a198bfd 100644
--- a/arch/sh/kernel/syscalls/syscall.tbl
+++ b/arch/sh/kernel/syscalls/syscall.tbl
@@ -438,3 +438,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/sparc/kernel/syscalls/syscall.tbl b/arch/sparc/kernel/syscalls/syscall.tbl
index 8c8cc7537fb2..ef4f13907894 100644
--- a/arch/sparc/kernel/syscalls/syscall.tbl
+++ b/arch/sparc/kernel/syscalls/syscall.tbl
@@ -481,3 +481,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 # 435 reserved for clone3
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/arch/x86/entry/syscalls/syscall_32.tbl b/arch/x86/entry/syscalls/syscall_32.tbl
index c00019abd076..76ec8c905745 100644
--- a/arch/x86/entry/syscalls/syscall_32.tbl
+++ b/arch/x86/entry/syscalls/syscall_32.tbl
@@ -440,3 +440,4 @@
 433	i386	fspick			sys_fspick			__ia32_sys_fspick
 434	i386	pidfd_open		sys_pidfd_open			__ia32_sys_pidfd_open
 435	i386	clone3			sys_clone3			__ia32_sys_clone3
+438	i386	pidfd_wait		sys_pidfd_wait			__ia32_sys_pidfd_wait
diff --git a/arch/x86/entry/syscalls/syscall_64.tbl b/arch/x86/entry/syscalls/syscall_64.tbl
index c29976eca4a8..733c206130f8 100644
--- a/arch/x86/entry/syscalls/syscall_64.tbl
+++ b/arch/x86/entry/syscalls/syscall_64.tbl
@@ -357,6 +357,7 @@
 433	common	fspick			__x64_sys_fspick
 434	common	pidfd_open		__x64_sys_pidfd_open
 435	common	clone3			__x64_sys_clone3/ptregs
+438	common	pidfd_wait		__x64_sys_pidfd_wait
 
 #
 # x32-specific system call numbers start at 512 to avoid cache impact
diff --git a/arch/xtensa/kernel/syscalls/syscall.tbl b/arch/xtensa/kernel/syscalls/syscall.tbl
index 25f4de729a6d..417203971292 100644
--- a/arch/xtensa/kernel/syscalls/syscall.tbl
+++ b/arch/xtensa/kernel/syscalls/syscall.tbl
@@ -406,3 +406,4 @@
 433	common	fspick				sys_fspick
 434	common	pidfd_open			sys_pidfd_open
 435	common	clone3				sys_clone3
+438	common	pidfd_wait			sys_pidfd_wait
diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
index 88145da7d140..760e8eacb93c 100644
--- a/include/linux/syscalls.h
+++ b/include/linux/syscalls.h
@@ -932,6 +932,10 @@ asmlinkage long sys_clock_adjtime32(clockid_t which_clock,
 asmlinkage long sys_syncfs(int fd);
 asmlinkage long sys_setns(int fd, int nstype);
 asmlinkage long sys_pidfd_open(pid_t pid, unsigned int flags);
+asmlinkage long sys_pidfd_wait(int pidfd, int __user *stat_addr,
+			       struct siginfo __user *info,
+			       struct rusage __user *ru, unsigned int states,
+			       unsigned int flags);
 asmlinkage long sys_sendmmsg(int fd, struct mmsghdr __user *msg,
 			     unsigned int vlen, unsigned flags);
 asmlinkage long sys_process_vm_readv(pid_t pid,
diff --git a/include/uapi/asm-generic/unistd.h b/include/uapi/asm-generic/unistd.h
index 1be0e798e362..0dd5b9d4dba0 100644
--- a/include/uapi/asm-generic/unistd.h
+++ b/include/uapi/asm-generic/unistd.h
@@ -850,9 +850,11 @@ __SYSCALL(__NR_pidfd_open, sys_pidfd_open)
 #define __NR_clone3 435
 __SYSCALL(__NR_clone3, sys_clone3)
 #endif
+#define __NR_pidfd_wait 438
+__SYSCALL(__NR_pidfd_wait, sys_pidfd_wait)
 
 #undef __NR_syscalls
-#define __NR_syscalls 436
+#define __NR_syscalls 439
 
 /*
  * 32 bit systems traditionally used different
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
