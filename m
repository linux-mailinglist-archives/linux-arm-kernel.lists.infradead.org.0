Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1E3281C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiI1MDJlOp6Jxbp5X8XzBHEnCKRthsUaZJuDxgdHqtE=; b=gCkF7HLGMUqn2S
	AJy7JpnIMuQIgUhlI3PfhgapjhDCnu2c4n1e7S0egF0UJN0jpLspTM+8hGUcINGV9BHZeX5mYQMdM
	r6UCLkRl4tkSqk5CWMDcjq0hGNUH8snKeRkP58brMONTGEFa9y5jxIYdSOMBUzbDeh/QCt1jziHD8
	6uIHNGyM/+MciCFpb5WIylcXkGFmvbIidefLVP0XpxPa66EByjbDPd2gxBeDeQov3tcW3sVtHV4x4
	dkQM9mXSuGodB7t7/BwvxUryZbTIAxuXYOlVdTs0BiJUid/yjiSd6mWyQwQPPT8OEhqCZG0TuIzmd
	MvoXtRNiFm55W55pNpiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpyM-00070o-Mb; Thu, 23 May 2019 15:49:38 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpxy-0006hU-4y
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:49:21 +0000
Received: by mail-it1-x144.google.com with SMTP id e184so9261369ite.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z5ctpIu+jWXTv/YFXK0h4ORrsvPLOawXchITh96/44s=;
 b=LmDqunokL2kjMrDmv8k3gLYKoM+RLixq6vguLoqH6ppc5OE2j6g/sY/IRwa/T+C0lr
 MzhTsdRi1nPEx9ntLAlE+TIJAMjWkklvTV4NijoxXlid+DHygGOIWSTqHkZnznJMFfeP
 woDcMT587TMgQJWCpoFjPXDaTxIjTBX17qmqOUGVWRXnl0B30Lu03+FkoeVqO7OJvCOe
 6c1p8lxR7QzK3IVGGBHWO0z88XD+S1W9KkFTpROeb06FbFjBD6yrA4WamZ4UtOoN6tJk
 f05IXhmT+6d1ozkBEwzS/GJUPFRCEV+QIkQwz+TdoaVCt4UW8b+fkgNlvMeA8ioJ5g/s
 GwPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z5ctpIu+jWXTv/YFXK0h4ORrsvPLOawXchITh96/44s=;
 b=TUeJlTegFdHRN1acf+zK5ZU2NlJQvP0c4YwMa2DFLFsBUOA1VwnKx3mcbRz0+peGFG
 mk0tuc8pGMhl9Bp9NEV+MlGIl5vUfT9zCgRF/pBs9MDggyWgmEkNXoaIwctZb0fgNW8f
 y7FyUwLoxzQiT61ssm87rlAOcxyJ7kyGCHCOE7SDsgZtGhIPFcLIc5ox+cHccFa8JgYb
 Kki/0p5Zivzw/hDlNNSwB1af5vrbtvFS7P39sYzzQiXSVdWHjWZSTDSxdO+YCNYWcj7O
 7otzxAxBVWyc3Uomw71D4aTBzNyscPq7r2hiYN8ByyZshbx7lpwOfEayHHp5KPOf+VtK
 Aevw==
X-Gm-Message-State: APjAAAWeHwhbJ0OgJ/wraX6sVG8s/YD8KySTm/ZuUc3/K2ZOBG1FqlS1
 fBStIAf4o0750wfaWl60ufkNHw==
X-Google-Smtp-Source: APXvYqxC9q/gfvF4noEmnKzYohqXHRREb6iPacdieXuLb/sEjezVXXt1D/3GJTGuntWPZltO3Gx05A==
X-Received: by 2002:a05:6638:617:: with SMTP id
 g23mr11397158jar.118.1558626553338; 
 Thu, 23 May 2019 08:49:13 -0700 (PDT)
Received: from localhost.localdomain ([172.56.12.187])
 by smtp.gmail.com with ESMTPSA id v1sm9124939iob.56.2019.05.23.08.49.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:49:12 -0700 (PDT)
From: Christian Brauner <christian@brauner.io>
To: viro@zeniv.linux.org.uk, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-api@vger.kernel.org,
 torvalds@linux-foundation.org, fweimer@redhat.com
Subject: [PATCH v2 2/2] tests: add close_range() tests
Date: Thu, 23 May 2019 17:47:47 +0200
Message-Id: <20190523154747.15162-3-christian@brauner.io>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523154747.15162-1-christian@brauner.io>
References: <20190523154747.15162-1-christian@brauner.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_084914_556995_436A317C 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, ldv@altlinux.org,
 dhowells@redhat.com, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, miklos@szeredi.hu, x86@kernel.org,
 Christian Brauner <christian@brauner.io>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 oleg@redhat.com, linux-alpha@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds basic tests for the new close_range() syscall.
- test that no invalid flags can be passed
- test that a range of file descriptors is correctly closed
- test that a range of file descriptors is correctly closed if there there
  are already closed file descriptors in the range
- test that max_fd is correctly capped to the current fdtable maximum

Signed-off-by: Christian Brauner <christian@brauner.io>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Jann Horn <jannh@google.com>
Cc: David Howells <dhowells@redhat.com>
Cc: Dmitry V. Levin <ldv@altlinux.org>
Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: linux-api@vger.kernel.org
---
v1: unchanged
v2:
- Christian Brauner <christian@brauner.io>:
  - verify that close_range() correctly closes a single file descriptor
---
 tools/testing/selftests/Makefile              |   1 +
 tools/testing/selftests/core/.gitignore       |   1 +
 tools/testing/selftests/core/Makefile         |   6 +
 .../testing/selftests/core/close_range_test.c | 142 ++++++++++++++++++
 4 files changed, 150 insertions(+)
 create mode 100644 tools/testing/selftests/core/.gitignore
 create mode 100644 tools/testing/selftests/core/Makefile
 create mode 100644 tools/testing/selftests/core/close_range_test.c

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index 9781ca79794a..06e57fabbff9 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -4,6 +4,7 @@ TARGETS += bpf
 TARGETS += breakpoints
 TARGETS += capabilities
 TARGETS += cgroup
+TARGETS += core
 TARGETS += cpufreq
 TARGETS += cpu-hotplug
 TARGETS += drivers/dma-buf
diff --git a/tools/testing/selftests/core/.gitignore b/tools/testing/selftests/core/.gitignore
new file mode 100644
index 000000000000..6e6712ce5817
--- /dev/null
+++ b/tools/testing/selftests/core/.gitignore
@@ -0,0 +1 @@
+close_range_test
diff --git a/tools/testing/selftests/core/Makefile b/tools/testing/selftests/core/Makefile
new file mode 100644
index 000000000000..de3ae68aa345
--- /dev/null
+++ b/tools/testing/selftests/core/Makefile
@@ -0,0 +1,6 @@
+CFLAGS += -g -I../../../../usr/include/ -I../../../../include
+
+TEST_GEN_PROGS := close_range_test
+
+include ../lib.mk
+
diff --git a/tools/testing/selftests/core/close_range_test.c b/tools/testing/selftests/core/close_range_test.c
new file mode 100644
index 000000000000..d6e6079d3d53
--- /dev/null
+++ b/tools/testing/selftests/core/close_range_test.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define _GNU_SOURCE
+#include <errno.h>
+#include <fcntl.h>
+#include <linux/kernel.h>
+#include <limits.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <syscall.h>
+#include <unistd.h>
+
+#include "../kselftest.h"
+
+static inline int sys_close_range(unsigned int fd, unsigned int max_fd,
+				  unsigned int flags)
+{
+	return syscall(__NR_close_range, fd, max_fd, flags);
+}
+
+#ifndef ARRAY_SIZE
+#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
+#endif
+
+int main(int argc, char **argv)
+{
+	const char *test_name = "close_range";
+	int i, ret;
+	int open_fds[101];
+	int fd_max, fd_mid, fd_min;
+
+	ksft_set_plan(9);
+
+	for (i = 0; i < ARRAY_SIZE(open_fds); i++) {
+		int fd;
+
+		fd = open("/dev/null", O_RDONLY | O_CLOEXEC);
+		if (fd < 0) {
+			if (errno == ENOENT)
+				ksft_exit_skip(
+					"%s test: skipping test since /dev/null does not exist\n",
+					test_name);
+
+			ksft_exit_fail_msg(
+				"%s test: %s - failed to open /dev/null\n",
+				strerror(errno), test_name);
+		}
+
+		open_fds[i] = fd;
+	}
+
+	fd_min = open_fds[0];
+	fd_max = open_fds[99];
+
+	ret = sys_close_range(fd_min, fd_max, 1);
+	if (!ret)
+		ksft_exit_fail_msg(
+			"%s test: managed to pass invalid flag value\n",
+			test_name);
+	ksft_test_result_pass("do not allow invalid flag values for close_range()\n");
+
+	fd_mid = open_fds[50];
+	ret = sys_close_range(fd_min, fd_mid, 0);
+	if (ret < 0)
+		ksft_exit_fail_msg(
+			"%s test: Failed to close range of file descriptors from %d to %d\n",
+			test_name, fd_min, fd_mid);
+	ksft_test_result_pass("close_range() from %d to %d\n", fd_min, fd_mid);
+
+	for (i = 0; i <= 50; i++) {
+		ret = fcntl(open_fds[i], F_GETFL);
+		if (ret >= 0)
+			ksft_exit_fail_msg(
+				"%s test: Failed to close range of file descriptors from %d to %d\n",
+				test_name, fd_min, fd_mid);
+	}
+	ksft_test_result_pass("fcntl() verify closed range from %d to %d\n", fd_min, fd_mid);
+
+	/* create a couple of gaps */
+	close(57);
+	close(78);
+	close(81);
+	close(82);
+	close(84);
+	close(90);
+
+	fd_mid = open_fds[51];
+	/* Choose slightly lower limit and leave some fds for a later test */
+	fd_max = open_fds[92];
+	ret = sys_close_range(fd_mid, fd_max, 0);
+	if (ret < 0)
+		ksft_exit_fail_msg(
+			"%s test: Failed to close range of file descriptors from 51 to 100\n",
+			test_name);
+	ksft_test_result_pass("close_range() from %d to %d\n", fd_mid, fd_max);
+
+	for (i = 51; i <= 92; i++) {
+		ret = fcntl(open_fds[i], F_GETFL);
+		if (ret >= 0)
+			ksft_exit_fail_msg(
+				"%s test: Failed to close range of file descriptors from 51 to 100\n",
+				test_name);
+	}
+	ksft_test_result_pass("fcntl() verify closed range from %d to %d\n", fd_mid, fd_max);
+
+	fd_mid = open_fds[93];
+	fd_max = open_fds[99];
+	/* test that the kernel caps and still closes all fds */
+	ret = sys_close_range(fd_mid, UINT_MAX, 0);
+	if (ret < 0)
+		ksft_exit_fail_msg(
+			"%s test: Failed to close range of file descriptors from 51 to 100\n",
+			test_name);
+	ksft_test_result_pass("close_range() from %d to %d\n", fd_mid, fd_max);
+
+	for (i = 93; i < 100; i++) {
+		ret = fcntl(open_fds[i], F_GETFL);
+		if (ret >= 0)
+			ksft_exit_fail_msg(
+				"%s test: Failed to close range of file descriptors from 51 to 100\n",
+				test_name);
+	}
+	ksft_test_result_pass("fcntl() verify closed range from %d to %d\n", fd_mid, fd_max);
+
+	ret = sys_close_range(open_fds[100], open_fds[100], 0);
+	if (ret < 0)
+		ksft_exit_fail_msg(
+			"%s test: Failed to close single file descriptor\n",
+			test_name);
+	ksft_test_result_pass("close_range() closed single file descriptor\n");
+
+	ret = fcntl(open_fds[100], F_GETFL);
+	if (ret >= 0)
+		ksft_exit_fail_msg(
+			"%s test: Failed to close single file descriptor\n",
+			test_name);
+	ksft_test_result_pass("fcntl() verify closed single file descriptor\n");
+
+	return ksft_exit_pass();
+}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
