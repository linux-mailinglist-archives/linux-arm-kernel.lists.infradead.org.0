Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F12313D335
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 05:36:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ji2IivpNs4RCE3n9272PO71CPaIWhATHIsRlG1art0w=; b=I4gKNCayiKnUmC
	vkQrsE3t/LubjgNMfBONEzWgODX6D7RcpdCvDvuo/cLGkXqcSznGMvj3aXxwzsXBQepdpFdgryZun
	ITygzfNHYhcaIP0jehLfDxlZLUHN0Gj+yac4saqq5uPhst3KwRpqR1DraVPm97ZN5ZC/zS6EF4veT
	yipNXDqua03KGypLLGBu4+ymD2U3PXj/jn7kH6klkQ9WE5AoujBWkLv3d826rlgw29n6RKKsEWIKt
	1hLehsi+vWxGJRfORoSMQpK7KnoD6EI4QxZ8rB04D2WiuC+HfA2yH6d9XelOJox0gy2v6GbYQYMIY
	YCcHEpJJ9u3pOpJ8TvCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irwtm-0000V7-EK; Thu, 16 Jan 2020 04:36:50 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irwtI-0000Gf-Sr
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 04:36:22 +0000
Received: by mail-pf1-x449.google.com with SMTP id h16so12298881pfn.23
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 20:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=lOS4ewWznrG+/0jceSUIoLxZFs2qMA4l+9gH32rT8ZU=;
 b=WStbr0MJSOPJGqzN2iGhIkdauZViO9hiPHW8Uj0CQFi0U3cTaC+CtBLstGwqiu/okm
 HwJonDO4S20K4z1FseDh/ERI2uZPRo9aoKkZjNyJR4eLMsIuCWvGzCPrdTwlUbyFeq18
 4aadRAQl8JLnnKuLbKXV8Kf5PuQGXgWmjRQGIXV6jLyRE55XPV46346RsbUI5pwP646F
 W7Zi4/hotQx4xNZHbfw2SyYexpMQ3MwhPt1at98Ah5V6RNdVvM3CwauYeM00GAr+WM2Y
 A8r1y2CyypILKIp6eJzku7HKEflikMjfc9K1prTtvGNz2mox+pXGPh+YGIgEKaDqqfYW
 KcnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=lOS4ewWznrG+/0jceSUIoLxZFs2qMA4l+9gH32rT8ZU=;
 b=o1ruA6uhXenfNm3Z4WBMca+ZoulhX/FfRaJ5eTxfqVFdiSFYqVxP736r4OC/dMcDEa
 B1+XS0PCJA5/DJr5dDkgxGxMJexwdkrF463hx00te8HsaaVh/ZL45ua4KGLU9uAe71Ys
 oRAl6j4zMyg827b1ntMUoIdTBOqGeXb0bARHAjdEtoHunhR8WI9bvmdM8gMNpRc5Y1Ox
 cUteZvbIVRMRh9jYKBCFB/5zPv7qNUJa0a2PoUM8x+qW8HLUdh/WFrh0EUq4EGHGOcrG
 97n+f+fsd48OI7rq0uHBN/88JWKtVXSnSFvFYGFlQ7aH1EUvsqheK80Vz5oDWwNk+oVt
 8sTg==
X-Gm-Message-State: APjAAAUVx4/gb3D5FJrtzXVjNmn0miKQjCNEbLmqtAe5Ql7ny54+aZkn
 pf9qN5sFchYsEemUjNQKPk9wleDMXXU=
X-Google-Smtp-Source: APXvYqzbKGjnpLecCWg4B+/ttVo20VzbmxlVS+5fmmSGkVQcYwu4EGAJJ4ZismsmxqM/zsKwRtOeqsmsDUk=
X-Received: by 2002:a63:1f21:: with SMTP id f33mr37413032pgf.91.1579149378890; 
 Wed, 15 Jan 2020 20:36:18 -0800 (PST)
Date: Wed, 15 Jan 2020 20:36:12 -0800
In-Reply-To: <20200116043612.52782-1-surenb@google.com>
Message-Id: <20200116043612.52782-2-surenb@google.com>
Mime-Version: 1.0
References: <20200116043612.52782-1-surenb@google.com>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
Subject: [PATCH 2/2] kselftest/cgroup: add cgroup destruction test
From: Suren Baghdasaryan <surenb@google.com>
To: surenb@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_203620_950386_43EE8803 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: mkoutny@suse.com, linger.lee@mediatek.com, kernel-team@android.com,
 linux-kernel@vger.kernel.org, tomcherry@google.com, matthias.bgg@gmail.com,
 lizefan@huawei.com, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, hannes@cmpxchg.org, tj@kernel.org,
 cgroups@vger.kernel.org, alex.shi@linux.alibaba.com, shuah@kernel.org,
 guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new test to verify that a cgroup with dead processes can be destroyed.
The test spawns a child process which allocates and touches 100MB of RAM
to ensure prolonged exit. Subsequently it kills the child, waits until
the cgroup containing the child is empty and destroys the cgroup.

Signed-off-by: Suren Baghdasaryan <surenb@google.com>
---
 tools/testing/selftests/cgroup/test_core.c | 113 +++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/tools/testing/selftests/cgroup/test_core.c b/tools/testing/selftests/cgroup/test_core.c
index c5ca669feb2b..2a5242ec1a49 100644
--- a/tools/testing/selftests/cgroup/test_core.c
+++ b/tools/testing/selftests/cgroup/test_core.c
@@ -2,7 +2,10 @@
 
 #include <linux/limits.h>
 #include <sys/types.h>
+#include <sys/mman.h>
+#include <sys/wait.h>
 #include <unistd.h>
+#include <fcntl.h>
 #include <stdio.h>
 #include <errno.h>
 #include <signal.h>
@@ -12,6 +15,115 @@
 #include "../kselftest.h"
 #include "cgroup_util.h"
 
+static int touch_anon(char *buf, size_t size)
+{
+	int fd;
+	char *pos = buf;
+
+	fd = open("/dev/urandom", O_RDONLY);
+	if (fd < 0)
+		return -1;
+
+	while (size > 0) {
+		ssize_t ret = read(fd, pos, size);
+
+		if (ret < 0) {
+			if (errno != EINTR) {
+				close(fd);
+				return -1;
+			}
+		} else {
+			pos += ret;
+			size -= ret;
+		}
+	}
+	close(fd);
+
+	return 0;
+}
+
+static int alloc_and_touch_anon_noexit(const char *cgroup, void *arg)
+{
+	int ppid = getppid();
+	size_t size = (size_t)arg;
+	void *buf;
+
+	buf = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON,
+		   0, 0);
+	if (buf == MAP_FAILED)
+		return -1;
+
+	if (touch_anon((char *)buf, size)) {
+		munmap(buf, size);
+		return -1;
+	}
+
+	while (getppid() == ppid)
+		sleep(1);
+
+	munmap(buf, size);
+	return 0;
+}
+
+/*
+ * Create a child process that allocates and touches 100MB, then waits to be
+ * killed. Wait until the child is attached to the cgroup, kill all processes
+ * in that cgroup and wait until "cgroup.events" is empty. At this point try to
+ * destroy the empty cgroup. The test helps detect race conditions between
+ * dying processes leaving the cgroup and cgroup destruction path.
+ */
+static int test_cgcore_destroy(const char *root)
+{
+	int ret = KSFT_FAIL;
+	char *cg_test = NULL;
+	int child_pid;
+	char buf[PAGE_SIZE];
+
+	cg_test = cg_name(root, "cg_test");
+
+	if (!cg_test)
+		goto cleanup;
+
+	for (int i = 0; i < 10; i++) {
+		if (cg_create(cg_test))
+			goto cleanup;
+
+		child_pid = cg_run_nowait(cg_test, alloc_and_touch_anon_noexit,
+					  (void *) MB(100));
+
+		if (child_pid < 0)
+			goto cleanup;
+
+		/* wait for the child to enter cgroup */
+		if (cg_wait_for_proc_count(cg_test, 1))
+			goto cleanup;
+
+		if (cg_killall(cg_test))
+			goto cleanup;
+
+		/* wait for cgroup to be empty */
+		while (1) {
+			if (cg_read(cg_test, "cgroup.procs", buf, sizeof(buf)))
+				goto cleanup;
+			if (buf[0] == '\0')
+				break;
+			usleep(1000);
+		}
+
+		if (rmdir(cg_test))
+			goto cleanup;
+
+		if (waitpid(child_pid, NULL, 0) < 0)
+			goto cleanup;
+	}
+	ret = KSFT_PASS;
+cleanup:
+	if (cg_test)
+		cg_destroy(cg_test);
+	free(cg_test);
+	return ret;
+}
+
 /*
  * A(0) - B(0) - C(1)
  *        \ D(0)
@@ -512,6 +624,7 @@ struct corecg_test {
 	T(test_cgcore_populated),
 	T(test_cgcore_proc_migration),
 	T(test_cgcore_thread_migration),
+	T(test_cgcore_destroy),
 };
 #undef T
 
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
