Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E9F1EBB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/s2D7S67lplLaax6YFuECkrARW3LQaqwDexoChvBeqs=; b=t4YMjxL++IKMmi
	WBkyrcbqMEfl+0GxtCWDdJ97eUfBe88v7bm7BmcyGz036Z8XFxSiXfPy18sIYpQ9c7iE9XsihVYth
	aHDzf3Ao/JofR4NZoVLJBLpMMs3uSA8QKPidhXaZ2vKpBNyScI54yhh1nq7j5HmN3CuPiOOCQZbBr
	kijczgQatRB6pF6+pHHX7/fbAVry7zMO85KDzXm2sQPBiIIgkh3kg+VZu+kUOeqlsl55mM71NedN4
	6rpCJWvICKdB1GylKQupreYeoascnkl9kohK04bh4duCYC1UqKfI8baGrLh2H05ns6jR4i5fd2XfB
	IRgfOz73sVBIlMPdBfXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqmE-0001aX-BI; Wed, 15 May 2019 10:04:46 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqm4-0001Zn-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:04:39 +0000
Received: by mail-ed1-x542.google.com with SMTP id w33so3272840edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 03:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=emYF70HeqAAuMX0CTpRA3DxxJXKg96JPvaB47wAe+WA=;
 b=AL9N5h8+aqRwVrLjX4YO/WX+QrxSBhfoMrpiVR3TELrUbe/A4/YPh33uRXuBlS4jWq
 oRAWuX+u05Iv1hZOh4FKmpvMVaMat1v823JwJy0O5bVQaAebolD/FdkcFFfE5mOTavqz
 VdOPJd3Upi9h3ihgLHNtFbNoUjX4BdFmx501WdJksohAbddpa4EEf09Mmm46tNmEjRfS
 +chb04InLxHLk6mRu/e4IfWsVk8ZtbH19mWc8Le8cvhMW7Mb40BOJ3/38yJ9Ue9nfGvi
 WhjnIPz+TPRddr+TDY4+stAGsg4p+/OBfiiZbr07b37dav7jrLmiyD2q7mTQkSfHCLBT
 2x0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=emYF70HeqAAuMX0CTpRA3DxxJXKg96JPvaB47wAe+WA=;
 b=ckfWEVLWm2E0RDqjj8+EtQSBXPy189dr5B3MppByrFGztzH9uXePYrICJJjnjBiYdE
 9zTy5FLvZxUEYBTvcyKOsxuewznLPjTyCAb+MDh7EwTBb9fQKDDc8ixAsdCZfIqwB1WG
 paf9K3C3cooVMW9NUIxWZK11toUdMQfmBleCsENLtyDRDVBJA2y3enwD9aHMIUUYPD4F
 P8hhQT90W0pvsbb8bEauUA9lyfVs2o3oL+SzIGPIfUF5G28PZD5f1HEnuoSOw0m+mQZR
 wi9Azl+fdnoD9X6cIs2diHpcVSNjWP3z8yCXGJpHWt2WnzgODOYw6tfWpqxwKaSNDg3J
 r/iw==
X-Gm-Message-State: APjAAAVMPgYw5yEcBulZq18jImoDMaGEwjYlKqiV9Xh1v4L14lEva5/9
 mlD2zhcj2KveABbK71wiq9YLBw==
X-Google-Smtp-Source: APXvYqzsCSW7FgmRWxpaPAIPzjl2RZjH6lxHJDeogUl7cLt1wB06g6wRpVCGddtfEwnquSZJLzvbRg==
X-Received: by 2002:a50:bf0a:: with SMTP id f10mr42884034edk.51.1557914674401; 
 Wed, 15 May 2019 03:04:34 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8109:9cc0:6dac:cd8f:f6e9:1b84:bbb1])
 by smtp.gmail.com with ESMTPSA id i33sm642763ede.47.2019.05.15.03.04.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 03:04:33 -0700 (PDT)
From: Christian Brauner <christian@brauner.io>
To: jannh@google.com, oleg@redhat.com, viro@zeniv.linux.org.uk,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org, arnd@arndb.de,
 dhowells@redhat.com
Subject: [PATCH 1/2] pid: add pidfd_open()
Date: Wed, 15 May 2019 12:03:59 +0200
Message-Id: <20190515100400.3450-1-christian@brauner.io>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_030437_123979_761205AA 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Christian Brauner <christian@brauner.io>, linux-xtensa@linux-xtensa.org,
 keescook@chromium.org, linux-m68k@lists.linux-m68k.org, luto@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org, cyphar@cyphar.com,
 luto@amacapital.net, ebiederm@xmission.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the pidfd_open() syscall. It allows a caller to retrieve pollable
pidfds for a process which did not get created via CLONE_PIDFD, i.e. for a
process that is created via traditional fork()/clone() calls that is only
referenced by a PID:

int pidfd = pidfd_open(1234, 0);
ret = pidfd_send_signal(pidfd, SIGSTOP, NULL, 0);

With the introduction of pidfds through CLONE_PIDFD it is possible to
created pidfds at process creation time.
However, a lot of processes get created with traditional PID-based calls
such as fork() or clone() (without CLONE_PIDFD). For these processes a
caller can currently not create a pollable pidfd. This is a huge problem
for Android's low memory killer (LMK) and service managers such as systemd.
Both are examples of tools that want to make use of pidfds to get reliable
notification of process exit for non-parents (pidfd polling) and race-free
signal sending (pidfd_send_signal()). They intend to switch to this API for
process supervision/management as soon as possible. Having no way to get
pollable pidfds from PID-only processes is one of the biggest blockers for
them in adopting this api. With pidfd_open() making it possible to retrieve
pidfd for PID-based processes we enable them to adopt this api.

In line with Arnd's recent changes to consolidate syscall numbers across
architectures, I have added the pidfd_open() syscall to all architectures
at the same time.

Signed-off-by: Christian Brauner <christian@brauner.io>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: Kees Cook <keescook@chromium.org>
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
---
 arch/alpha/kernel/syscalls/syscall.tbl      |  1 +
 arch/arm64/include/asm/unistd32.h           |  2 +
 arch/ia64/kernel/syscalls/syscall.tbl       |  1 +
 arch/m68k/kernel/syscalls/syscall.tbl       |  1 +
 arch/microblaze/kernel/syscalls/syscall.tbl |  1 +
 arch/mips/kernel/syscalls/syscall_n32.tbl   |  1 +
 arch/parisc/kernel/syscalls/syscall.tbl     |  1 +
 arch/powerpc/kernel/syscalls/syscall.tbl    |  1 +
 arch/s390/kernel/syscalls/syscall.tbl       |  1 +
 arch/sh/kernel/syscalls/syscall.tbl         |  1 +
 arch/sparc/kernel/syscalls/syscall.tbl      |  1 +
 arch/x86/entry/syscalls/syscall_32.tbl      |  1 +
 arch/x86/entry/syscalls/syscall_64.tbl      |  1 +
 arch/xtensa/kernel/syscalls/syscall.tbl     |  1 +
 include/linux/pid.h                         |  1 +
 include/linux/syscalls.h                    |  1 +
 include/uapi/asm-generic/unistd.h           |  4 +-
 kernel/fork.c                               |  2 +-
 kernel/pid.c                                | 48 +++++++++++++++++++++
 19 files changed, 69 insertions(+), 2 deletions(-)

diff --git a/arch/alpha/kernel/syscalls/syscall.tbl b/arch/alpha/kernel/syscalls/syscall.tbl
index 165f268beafc..ddc3c93ad7a7 100644
--- a/arch/alpha/kernel/syscalls/syscall.tbl
+++ b/arch/alpha/kernel/syscalls/syscall.tbl
@@ -467,3 +467,4 @@
 535	common	io_uring_setup			sys_io_uring_setup
 536	common	io_uring_enter			sys_io_uring_enter
 537	common	io_uring_register		sys_io_uring_register
+538	common	pidfd_open			sys_pidfd_open
diff --git a/arch/arm64/include/asm/unistd32.h b/arch/arm64/include/asm/unistd32.h
index 23f1a44acada..350e2049b4a9 100644
--- a/arch/arm64/include/asm/unistd32.h
+++ b/arch/arm64/include/asm/unistd32.h
@@ -874,6 +874,8 @@ __SYSCALL(__NR_io_uring_setup, sys_io_uring_setup)
 __SYSCALL(__NR_io_uring_enter, sys_io_uring_enter)
 #define __NR_io_uring_register 427
 __SYSCALL(__NR_io_uring_register, sys_io_uring_register)
+#define __NR_pidfd_open 428
+__SYSCALL(__NR_pidfd_open, sys_pidfd_open)
 
 /*
  * Please add new compat syscalls above this comment and update
diff --git a/arch/ia64/kernel/syscalls/syscall.tbl b/arch/ia64/kernel/syscalls/syscall.tbl
index 56e3d0b685e1..7115f6dd347a 100644
--- a/arch/ia64/kernel/syscalls/syscall.tbl
+++ b/arch/ia64/kernel/syscalls/syscall.tbl
@@ -348,3 +348,4 @@
 425	common	io_uring_setup			sys_io_uring_setup
 426	common	io_uring_enter			sys_io_uring_enter
 427	common	io_uring_register		sys_io_uring_register
+428	common	pidfd_open			sys_pidfd_open
diff --git a/arch/m68k/kernel/syscalls/syscall.tbl b/arch/m68k/kernel/syscalls/syscall.tbl
index df4ec3ec71d1..44bf12b16ffe 100644
--- a/arch/m68k/kernel/syscalls/syscall.tbl
+++ b/arch/m68k/kernel/syscalls/syscall.tbl
@@ -427,3 +427,4 @@
 425	common	io_uring_setup			sys_io_uring_setup
 426	common	io_uring_enter			sys_io_uring_enter
 427	common	io_uring_register		sys_io_uring_register
+428	common	pidfd_open			sys_pidfd_open
diff --git a/arch/microblaze/kernel/syscalls/syscall.tbl b/arch/microblaze/kernel/syscalls/syscall.tbl
index 4964947732af..0d32e5152dc0 100644
--- a/arch/microblaze/kernel/syscalls/syscall.tbl
+++ b/arch/microblaze/kernel/syscalls/syscall.tbl
@@ -433,3 +433,4 @@
 425	common	io_uring_setup			sys_io_uring_setup
 426	common	io_uring_enter			sys_io_uring_enter
 427	common	io_uring_register		sys_io_uring_register
+428	common	pidfd_open			sys_pidfd_open
diff --git a/arch/mips/kernel/syscalls/syscall_n32.tbl b/arch/mips/kernel/syscalls/syscall_n32.tbl
index 9392dfe33f97..726e107b3c9f 100644
--- a/arch/mips/kernel/syscalls/syscall_n32.tbl
+++ b/arch/mips/kernel/syscalls/syscall_n32.tbl
@@ -366,3 +366,4 @@
 425	n32	io_uring_setup			sys_io_uring_setup
 426	n32	io_uring_enter			sys_io_uring_enter
 427	n32	io_uring_register		sys_io_uring_register
+428	n32	pidfd_open			sys_pidfd_open
diff --git a/arch/parisc/kernel/syscalls/syscall.tbl b/arch/parisc/kernel/syscalls/syscall.tbl
index fe8ca623add8..83b46b568d51 100644
--- a/arch/parisc/kernel/syscalls/syscall.tbl
+++ b/arch/parisc/kernel/syscalls/syscall.tbl
@@ -424,3 +424,4 @@
 425	common	io_uring_setup			sys_io_uring_setup
 426	common	io_uring_enter			sys_io_uring_enter
 427	common	io_uring_register		sys_io_uring_register
+428	common	pidfd_open			sys_pidfd_open
diff --git a/arch/powerpc/kernel/syscalls/syscall.tbl b/arch/powerpc/kernel/syscalls/syscall.tbl
index 00f5a63c8d9a..5294d04d7fa5 100644
--- a/arch/powerpc/kernel/syscalls/syscall.tbl
+++ b/arch/powerpc/kernel/syscalls/syscall.tbl
@@ -509,3 +509,4 @@
 425	common	io_uring_setup			sys_io_uring_setup
 426	common	io_uring_enter			sys_io_uring_enter
 427	common	io_uring_register		sys_io_uring_register
+428	common	pidfd_open			sys_pidfd_open
diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
index 061418f787c3..dcdb838adf49 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -430,3 +430,4 @@
 425  common	io_uring_setup		sys_io_uring_setup              sys_io_uring_setup
 426  common	io_uring_enter		sys_io_uring_enter              sys_io_uring_enter
 427  common	io_uring_register	sys_io_uring_register           sys_io_uring_register
+428  common	pidfd_open		sys_pidfd_open			sys_pidfd_open
diff --git a/arch/sh/kernel/syscalls/syscall.tbl b/arch/sh/kernel/syscalls/syscall.tbl
index 480b057556ee..8e66edfbc521 100644
--- a/arch/sh/kernel/syscalls/syscall.tbl
+++ b/arch/sh/kernel/syscalls/syscall.tbl
@@ -430,3 +430,4 @@
 425	common	io_uring_setup			sys_io_uring_setup
 426	common	io_uring_enter			sys_io_uring_enter
 427	common	io_uring_register		sys_io_uring_register
+428	common	pidfd_open			sys_pidfd_open
diff --git a/arch/sparc/kernel/syscalls/syscall.tbl b/arch/sparc/kernel/syscalls/syscall.tbl
index a1dd24307b00..d6f3bc686939 100644
--- a/arch/sparc/kernel/syscalls/syscall.tbl
+++ b/arch/sparc/kernel/syscalls/syscall.tbl
@@ -473,3 +473,4 @@
 425	common	io_uring_setup			sys_io_uring_setup
 426	common	io_uring_enter			sys_io_uring_enter
 427	common	io_uring_register		sys_io_uring_register
+428	common	pidfd_open			sys_pidfd_open
diff --git a/arch/x86/entry/syscalls/syscall_32.tbl b/arch/x86/entry/syscalls/syscall_32.tbl
index 4cd5f982b1e5..1af6b469160a 100644
--- a/arch/x86/entry/syscalls/syscall_32.tbl
+++ b/arch/x86/entry/syscalls/syscall_32.tbl
@@ -438,3 +438,4 @@
 425	i386	io_uring_setup		sys_io_uring_setup		__ia32_sys_io_uring_setup
 426	i386	io_uring_enter		sys_io_uring_enter		__ia32_sys_io_uring_enter
 427	i386	io_uring_register	sys_io_uring_register		__ia32_sys_io_uring_register
+428	i386	pidfd_open		sys_pidfd_open			__ia32_sys_pidfd_open
diff --git a/arch/x86/entry/syscalls/syscall_64.tbl b/arch/x86/entry/syscalls/syscall_64.tbl
index 64ca0d06259a..c18e6ebe3387 100644
--- a/arch/x86/entry/syscalls/syscall_64.tbl
+++ b/arch/x86/entry/syscalls/syscall_64.tbl
@@ -355,6 +355,7 @@
 425	common	io_uring_setup		__x64_sys_io_uring_setup
 426	common	io_uring_enter		__x64_sys_io_uring_enter
 427	common	io_uring_register	__x64_sys_io_uring_register
+428	common	pidfd_open		__x64_sys_pidfd_open
 
 #
 # x32-specific system call numbers start at 512 to avoid cache impact
diff --git a/arch/xtensa/kernel/syscalls/syscall.tbl b/arch/xtensa/kernel/syscalls/syscall.tbl
index 30084eaf8422..21ee795f3003 100644
--- a/arch/xtensa/kernel/syscalls/syscall.tbl
+++ b/arch/xtensa/kernel/syscalls/syscall.tbl
@@ -398,3 +398,4 @@
 425	common	io_uring_setup			sys_io_uring_setup
 426	common	io_uring_enter			sys_io_uring_enter
 427	common	io_uring_register		sys_io_uring_register
+428	common	pidfd_open			sys_pidfd_open
diff --git a/include/linux/pid.h b/include/linux/pid.h
index 3c8ef5a199ca..c938a92eab99 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -67,6 +67,7 @@ struct pid
 extern struct pid init_struct_pid;
 
 extern const struct file_operations pidfd_fops;
+extern int pidfd_create(struct pid *pid);
 
 static inline struct pid *get_pid(struct pid *pid)
 {
diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
index e2870fe1be5b..989055e0b501 100644
--- a/include/linux/syscalls.h
+++ b/include/linux/syscalls.h
@@ -929,6 +929,7 @@ asmlinkage long sys_clock_adjtime32(clockid_t which_clock,
 				struct old_timex32 __user *tx);
 asmlinkage long sys_syncfs(int fd);
 asmlinkage long sys_setns(int fd, int nstype);
+asmlinkage long sys_pidfd_open(pid_t pid, unsigned int flags);
 asmlinkage long sys_sendmmsg(int fd, struct mmsghdr __user *msg,
 			     unsigned int vlen, unsigned flags);
 asmlinkage long sys_process_vm_readv(pid_t pid,
diff --git a/include/uapi/asm-generic/unistd.h b/include/uapi/asm-generic/unistd.h
index dee7292e1df6..94a257a93d20 100644
--- a/include/uapi/asm-generic/unistd.h
+++ b/include/uapi/asm-generic/unistd.h
@@ -832,9 +832,11 @@ __SYSCALL(__NR_io_uring_setup, sys_io_uring_setup)
 __SYSCALL(__NR_io_uring_enter, sys_io_uring_enter)
 #define __NR_io_uring_register 427
 __SYSCALL(__NR_io_uring_register, sys_io_uring_register)
+#define __NR_pidfd_open 428
+__SYSCALL(__NR_pidfd_open, sys_pidfd_open)
 
 #undef __NR_syscalls
-#define __NR_syscalls 428
+#define __NR_syscalls 429
 
 /*
  * 32 bit systems traditionally used different
diff --git a/kernel/fork.c b/kernel/fork.c
index 737db1828437..980cc1d2b8d4 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -1714,7 +1714,7 @@ const struct file_operations pidfd_fops = {
  * Return: On success, a cloexec pidfd is returned.
  *         On error, a negative errno number will be returned.
  */
-static int pidfd_create(struct pid *pid)
+int pidfd_create(struct pid *pid)
 {
 	int fd;
 
diff --git a/kernel/pid.c b/kernel/pid.c
index 20881598bdfa..237d18d6ecb8 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -38,6 +38,7 @@
 #include <linux/syscalls.h>
 #include <linux/proc_ns.h>
 #include <linux/proc_fs.h>
+#include <linux/sched/signal.h>
 #include <linux/sched/task.h>
 #include <linux/idr.h>
 
@@ -451,6 +452,53 @@ struct pid *find_ge_pid(int nr, struct pid_namespace *ns)
 	return idr_get_next(&ns->idr, &nr);
 }
 
+/**
+ * pidfd_open() - Open new pid file descriptor.
+ *
+ * @pid:   pid for which to retrieve a pidfd
+ * @flags: flags to pass
+ *
+ * This creates a new pid file descriptor with the O_CLOEXEC flag set for
+ * the process identified by @pid. Currently, the process identified by
+ * @pid must be a thread-group leader. This restriction currently exists
+ * for all aspects of pidfds including pidfd creation (CLONE_PIDFD cannot
+ * be used with CLONE_THREAD) and pidfd polling (only supports thread group
+ * leaders).
+ *
+ * Return: On success, a cloexec pidfd is returned.
+ *         On error, a negative errno number will be returned.
+ */
+SYSCALL_DEFINE2(pidfd_open, pid_t, pid, unsigned int, flags)
+{
+	int fd, ret;
+	struct pid *p;
+	struct task_struct *tsk;
+
+	if (flags)
+		return -EINVAL;
+
+	if (pid <= 0)
+		return -EINVAL;
+
+	p = find_get_pid(pid);
+	if (!p)
+		return -ESRCH;
+
+	rcu_read_lock();
+	tsk = pid_task(p, PIDTYPE_PID);
+	if (!tsk)
+		ret = -ESRCH;
+	else if (unlikely(!thread_group_leader(tsk)))
+		ret = -EINVAL;
+	else
+		ret = 0;
+	rcu_read_unlock();
+
+	fd = ret ?: pidfd_create(p);
+	put_pid(p);
+	return fd;
+}
+
 void __init pid_idr_init(void)
 {
 	/* Verify no one has done anything silly: */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
