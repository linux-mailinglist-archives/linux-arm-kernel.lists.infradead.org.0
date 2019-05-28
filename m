Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658892BD50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 04:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nD+QVo1xTeVp6OtVwnqFCOqzAZzSXoj+ZeRWkehxLKY=; b=EQxHPivj8L4n9q
	ygQVyiy4igAKkrQZLE7LkGvx5Yz2yq2/utz2+QDlhUICHY59UjnPFnW9hVNVicVwMks3ILj3zotM2
	6A9GHMUQg/wJ+CKSQwxT02e2T4VppFugfsr0J8lM1/9hidN6+pyR9Kphip+BHI3DziDPcpJQqPqxP
	AmnZWEDSglVVPBcw4B1XDJrVghXKc4MWEYSFUSNTBENyrizpmw46Sfm2NEhmWmzu6NAl+6chXD2AQ
	T3tLeRpvQBBJAs9C6bfMGX+mxMukAkkJTlMYGfO74NDaEORpniO38Y4WXjx3gympeuj/wfKbjp1HQ
	wVvvSoe24RJCzFGwpKeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVRwA-0004jD-4b; Tue, 28 May 2019 02:34:02 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVRw1-0004iI-Gb
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 02:33:55 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45CdFL2nBkz9s3l;
 Tue, 28 May 2019 12:33:41 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christian Brauner <christian@brauner.io>, viro@zeniv.linux.org.uk,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-api@vger.kernel.org, torvalds@linux-foundation.org, fweimer@redhat.com
Subject: Re: [PATCH v2 2/2] tests: add close_range() tests
In-Reply-To: <20190523154747.15162-3-christian@brauner.io>
References: <20190523154747.15162-1-christian@brauner.io>
 <20190523154747.15162-3-christian@brauner.io>
Date: Tue, 28 May 2019 12:33:41 +1000
Message-ID: <8736kzqpdm.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_193354_014850_EE51037D 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Christian Brauner <christian@brauner.io> writes:
> This adds basic tests for the new close_range() syscall.
> - test that no invalid flags can be passed
> - test that a range of file descriptors is correctly closed
> - test that a range of file descriptors is correctly closed if there there
>   are already closed file descriptors in the range
> - test that max_fd is correctly capped to the current fdtable maximum
>
> Signed-off-by: Christian Brauner <christian@brauner.io>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Jann Horn <jannh@google.com>
> Cc: David Howells <dhowells@redhat.com>
> Cc: Dmitry V. Levin <ldv@altlinux.org>
> Cc: Oleg Nesterov <oleg@redhat.com>
> Cc: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Florian Weimer <fweimer@redhat.com>
> Cc: linux-api@vger.kernel.org
> ---
> v1: unchanged
> v2:
> - Christian Brauner <christian@brauner.io>:
>   - verify that close_range() correctly closes a single file descriptor
> ---
>  tools/testing/selftests/Makefile              |   1 +
>  tools/testing/selftests/core/.gitignore       |   1 +
>  tools/testing/selftests/core/Makefile         |   6 +
>  .../testing/selftests/core/close_range_test.c | 142 ++++++++++++++++++
>  4 files changed, 150 insertions(+)
>  create mode 100644 tools/testing/selftests/core/.gitignore
>  create mode 100644 tools/testing/selftests/core/Makefile
>  create mode 100644 tools/testing/selftests/core/close_range_test.c
>
> diff --git a/tools/testing/selftests/core/.gitignore b/tools/testing/selftests/core/.gitignore
> new file mode 100644
> index 000000000000..6e6712ce5817
> --- /dev/null
> +++ b/tools/testing/selftests/core/.gitignore
> @@ -0,0 +1 @@
> +close_range_test
> diff --git a/tools/testing/selftests/core/Makefile b/tools/testing/selftests/core/Makefile
> new file mode 100644
> index 000000000000..de3ae68aa345
> --- /dev/null
> +++ b/tools/testing/selftests/core/Makefile
> @@ -0,0 +1,6 @@
> +CFLAGS += -g -I../../../../usr/include/ -I../../../../include

Your second -I pulls the unexported kernel headers in, userspace
programs shouldn't include unexported kernel headers.

It breaks the build on powerpc with eg:

  powerpc64le-linux-gnu-gcc -g -I../../../../usr/include/ -I../../../../include    close_range_test.c  -o /output/kselftest/core/close_range_test
  In file included from /usr/powerpc64le-linux-gnu/include/bits/fcntl-linux.h:346,
                   from /usr/powerpc64le-linux-gnu/include/bits/fcntl.h:62,
                   from /usr/powerpc64le-linux-gnu/include/fcntl.h:35,
                   from close_range_test.c:5:
  ../../../../include/linux/falloc.h:13:2: error: unknown type name '__s16'
    __s16  l_type;
    ^~~~~


Did you do that on purpose or just copy it from one of the other
Makefiles? :)

If you're just wanting to get the syscall number when the headers
haven't been exported, I think the best solution is to do eg:

diff --git a/tools/testing/selftests/core/close_range_test.c b/tools/testing/selftests/core/close_range_test.c
index d6e6079d3d53..34c6f02f25de 100644
--- a/tools/testing/selftests/core/close_range_test.c
+++ b/tools/testing/selftests/core/close_range_test.c
@@ -14,6 +14,10 @@

 #include "../kselftest.h"

+#ifndef __NR_close_range
+#define __NR_close_range       435
+#endif
+
 static inline int sys_close_range(unsigned int fd, unsigned int max_fd,
                                  unsigned int flags)
 {


cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
