Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9BA611BF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 17:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bww0CdScBLAzeta03Z9mQ2QvIeh2Hz32x7WNq+eHdeY=; b=W1GJrhnlLdXiET
	kUnys9rqyXopvwhLBNUNSQ4JD+SbDXSmh6mnqcMpjgOrsswKszXF5OGFc/p3tmIOPMMJn8F1Yzox7
	OAv97XTNxPOkU6uNJAaskrSfHPBr9/Y+MVIWUlm3wpKWe40KhLqq+eexPHgwwVdVbWS42g7rAWLvl
	uCiASh/1wdNRpQ9xqipWMrGFPVXl1HAxuMmO8YueXd0un4khvXybOTSInsMPF1ENbCYX93EI+Ckin
	FiB0yRFDomvTGKEwP/H0e5Sz/gp0iWM97HBb8AS7HVsa73PeOmV2Gar5dsSiHXefzL/5A9XttkDvZ
	h/qp6Mm+RHJDazW0NuEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjmD8-00056v-C9; Sat, 06 Jul 2019 15:02:46 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjmBI-0003sm-QM
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 15:00:54 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 5557250266;
 Sat,  6 Jul 2019 17:00:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id AhUDKWrxSzUZ; Sat,  6 Jul 2019 17:00:43 +0200 (CEST)
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>, Jeff Layton <jlayton@kernel.org>,
 "J. Bruce Fields" <bfields@fieldses.org>, Arnd Bergmann <arnd@arndb.de>,
 David Howells <dhowells@redhat.com>, Shuah Khan <shuah@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
Subject: [PATCH v9 09/10] kselftest: save-and-restore errno to allow for %m
 formatting
Date: Sun,  7 Jul 2019 00:57:36 +1000
Message-Id: <20190706145737.5299-10-cyphar@cyphar.com>
In-Reply-To: <20190706145737.5299-1-cyphar@cyphar.com>
References: <20190706145737.5299-1-cyphar@cyphar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_080053_381116_6C9057D7 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 Aleksa Sarai <cyphar@cyphar.com>, Andy Lutomirski <luto@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 linux-parisc@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previously, using "%m" in a ksft_* format string can result in strange
output because the errno value wasn't saved before calling other libc
functions. The solution is to simply save and restore the errno before
we format the user-supplied format string.

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 tools/testing/selftests/kselftest.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/tools/testing/selftests/kselftest.h b/tools/testing/selftests/kselftest.h
index ec15c4f6af55..0ac49d91a260 100644
--- a/tools/testing/selftests/kselftest.h
+++ b/tools/testing/selftests/kselftest.h
@@ -10,6 +10,7 @@
 #ifndef __KSELFTEST_H
 #define __KSELFTEST_H
 
+#include <errno.h>
 #include <stdlib.h>
 #include <unistd.h>
 #include <stdarg.h>
@@ -81,58 +82,68 @@ static inline void ksft_print_cnts(void)
 
 static inline void ksft_print_msg(const char *msg, ...)
 {
+	int saved_errno = errno;
 	va_list args;
 
 	va_start(args, msg);
 	printf("# ");
+	errno = saved_errno;
 	vprintf(msg, args);
 	va_end(args);
 }
 
 static inline void ksft_test_result_pass(const char *msg, ...)
 {
+	int saved_errno = errno;
 	va_list args;
 
 	ksft_cnt.ksft_pass++;
 
 	va_start(args, msg);
 	printf("ok %d ", ksft_test_num());
+	errno = saved_errno;
 	vprintf(msg, args);
 	va_end(args);
 }
 
 static inline void ksft_test_result_fail(const char *msg, ...)
 {
+	int saved_errno = errno;
 	va_list args;
 
 	ksft_cnt.ksft_fail++;
 
 	va_start(args, msg);
 	printf("not ok %d ", ksft_test_num());
+	errno = saved_errno;
 	vprintf(msg, args);
 	va_end(args);
 }
 
 static inline void ksft_test_result_skip(const char *msg, ...)
 {
+	int saved_errno = errno;
 	va_list args;
 
 	ksft_cnt.ksft_xskip++;
 
 	va_start(args, msg);
 	printf("not ok %d # SKIP ", ksft_test_num());
+	errno = saved_errno;
 	vprintf(msg, args);
 	va_end(args);
 }
 
 static inline void ksft_test_result_error(const char *msg, ...)
 {
+	int saved_errno = errno;
 	va_list args;
 
 	ksft_cnt.ksft_error++;
 
 	va_start(args, msg);
 	printf("not ok %d # error ", ksft_test_num());
+	errno = saved_errno;
 	vprintf(msg, args);
 	va_end(args);
 }
@@ -152,10 +163,12 @@ static inline int ksft_exit_fail(void)
 
 static inline int ksft_exit_fail_msg(const char *msg, ...)
 {
+	int saved_errno = errno;
 	va_list args;
 
 	va_start(args, msg);
 	printf("Bail out! ");
+	errno = saved_errno;
 	vprintf(msg, args);
 	va_end(args);
 
@@ -178,10 +191,12 @@ static inline int ksft_exit_xpass(void)
 static inline int ksft_exit_skip(const char *msg, ...)
 {
 	if (msg) {
+		int saved_errno = errno;
 		va_list args;
 
 		va_start(args, msg);
 		printf("not ok %d # SKIP ", 1 + ksft_test_num());
+		errno = saved_errno;
 		vprintf(msg, args);
 		va_end(args);
 	} else {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
