Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE09A9329
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HukSZZAvG4K0HREE4OcrRYH8zaQLnX7DDgp2ZqnKLV8=; b=VWSj5Kal2o4OJt
	sAdlrrJ9stsKmYdx8uUts2plhJihilSVJRCSBkv9TvWX1Hx3u7qaTQukANrSgZ0bUU037LPXhKOIt
	+M4pvYUGgauP///u3NgHvoWXIrFKmXYxiwLRGuVpRldqq3flxX1I6Ay3rvjdf4Gme74SIDsTMSteK
	+ymsSI8Mq1L+/tuwF/4riwTf0GCaupEbUZUE+BhL2Anlf/Eo/isdSjMvqjA6MqjkolvrGG2589Hlu
	44j1pLcMFo7Sl174GiWSVyQ6qUnSuwhDDKv/gpsas8ftbmsKohbIBUVOZ4SbpfeibVtjJZCedYbVz
	Wpsf8M03kQ9GEEi8h3EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5bmH-0001f8-04; Wed, 04 Sep 2019 20:21:17 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5bm1-0001Zd-Q8
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:21:06 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id CBDD1A11C8;
 Wed,  4 Sep 2019 22:20:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id wJ1JmQV60FQK; Wed,  4 Sep 2019 22:20:56 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Christian Brauner <christian@brauner.io>
Subject: [PATCH v12 03/12] sched_setattr: switch to copy_struct_{to,
 from}_user()
Date: Thu,  5 Sep 2019 06:19:24 +1000
Message-Id: <20190904201933.10736-4-cyphar@cyphar.com>
In-Reply-To: <20190904201933.10736-1-cyphar@cyphar.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_132102_308123_1311616E 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 Jiri Olsa <jolsa@redhat.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 Aleksa Sarai <cyphar@cyphar.com>, Andy Lutomirski <luto@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The change is very straightforward, and takes advantage of the (very
minor) efficiency improvements in copy_struct_{to,from}_user() -- that
the memchr_inv() check is done on a buffer instead of one-at-at-time
with get_user() or put_user().

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 kernel/sched/core.c | 85 ++++++---------------------------------------
 1 file changed, 10 insertions(+), 75 deletions(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 010d578118d6..2f58b07d3468 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -4900,9 +4900,6 @@ static int sched_copy_attr(struct sched_attr __user *uattr, struct sched_attr *a
 	u32 size;
 	int ret;
 
-	if (!access_ok(uattr, SCHED_ATTR_SIZE_VER0))
-		return -EFAULT;
-
 	/* Zero the full structure, so that a short copy will be nice: */
 	memset(attr, 0, sizeof(*attr));
 
@@ -4910,45 +4907,19 @@ static int sched_copy_attr(struct sched_attr __user *uattr, struct sched_attr *a
 	if (ret)
 		return ret;
 
-	/* Bail out on silly large: */
-	if (size > PAGE_SIZE)
-		goto err_size;
-
 	/* ABI compatibility quirk: */
 	if (!size)
 		size = SCHED_ATTR_SIZE_VER0;
-
 	if (size < SCHED_ATTR_SIZE_VER0)
 		goto err_size;
 
-	/*
-	 * If we're handed a bigger struct than we know of,
-	 * ensure all the unknown bits are 0 - i.e. new
-	 * user-space does not rely on any kernel feature
-	 * extensions we dont know about yet.
-	 */
-	if (size > sizeof(*attr)) {
-		unsigned char __user *addr;
-		unsigned char __user *end;
-		unsigned char val;
-
-		addr = (void __user *)uattr + sizeof(*attr);
-		end  = (void __user *)uattr + size;
-
-		for (; addr < end; addr++) {
-			ret = get_user(val, addr);
-			if (ret)
-				return ret;
-			if (val)
-				goto err_size;
-		}
-		size = sizeof(*attr);
+	ret = copy_struct_from_user(attr, sizeof(*attr), uattr, size);
+	if (ret) {
+		if (ret == -E2BIG)
+			goto err_size;
+		return ret;
 	}
 
-	ret = copy_from_user(attr, uattr, size);
-	if (ret)
-		return -EFAULT;
-
 	if ((attr->sched_flags & SCHED_FLAG_UTIL_CLAMP) &&
 	    size < SCHED_ATTR_SIZE_VER1)
 		return -EINVAL;
@@ -5105,51 +5076,15 @@ SYSCALL_DEFINE2(sched_getparam, pid_t, pid, struct sched_param __user *, param)
 	return retval;
 }
 
-static int sched_read_attr(struct sched_attr __user *uattr,
-			   struct sched_attr *attr,
-			   unsigned int usize)
-{
-	int ret;
-
-	if (!access_ok(uattr, usize))
-		return -EFAULT;
-
-	/*
-	 * If we're handed a smaller struct than we know of,
-	 * ensure all the unknown bits are 0 - i.e. old
-	 * user-space does not get uncomplete information.
-	 */
-	if (usize < sizeof(*attr)) {
-		unsigned char *addr;
-		unsigned char *end;
-
-		addr = (void *)attr + usize;
-		end  = (void *)attr + sizeof(*attr);
-
-		for (; addr < end; addr++) {
-			if (*addr)
-				return -EFBIG;
-		}
-
-		attr->size = usize;
-	}
-
-	ret = copy_to_user(uattr, attr, attr->size);
-	if (ret)
-		return -EFAULT;
-
-	return 0;
-}
-
 /**
  * sys_sched_getattr - similar to sched_getparam, but with sched_attr
  * @pid: the pid in question.
  * @uattr: structure containing the extended parameters.
- * @size: sizeof(attr) for fwd/bwd comp.
+ * @usize: sizeof(attr) for fwd/bwd comp.
  * @flags: for future extension.
  */
 SYSCALL_DEFINE4(sched_getattr, pid_t, pid, struct sched_attr __user *, uattr,
-		unsigned int, size, unsigned int, flags)
+		unsigned int, usize, unsigned int, flags)
 {
 	struct sched_attr attr = {
 		.size = sizeof(struct sched_attr),
@@ -5157,8 +5092,8 @@ SYSCALL_DEFINE4(sched_getattr, pid_t, pid, struct sched_attr __user *, uattr,
 	struct task_struct *p;
 	int retval;
 
-	if (!uattr || pid < 0 || size > PAGE_SIZE ||
-	    size < SCHED_ATTR_SIZE_VER0 || flags)
+	if (!uattr || pid < 0 || usize > PAGE_SIZE ||
+	    usize < SCHED_ATTR_SIZE_VER0 || flags)
 		return -EINVAL;
 
 	rcu_read_lock();
@@ -5188,7 +5123,7 @@ SYSCALL_DEFINE4(sched_getattr, pid_t, pid, struct sched_attr __user *, uattr,
 
 	rcu_read_unlock();
 
-	retval = sched_read_attr(uattr, &attr, size);
+	retval = copy_struct_to_user(uattr, usize, &attr, sizeof(attr));
 	return retval;
 
 out_unlock:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
