Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988001FF552
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZ5wbg9Npq1Fij6bnxSNug/Y67Mf+8g5hXXg5i1VUxM=; b=JSryNvd36+KmvJ
	kMBNEqDf6RMPCKP9HvdGyin7hrITHurD2F8oxrysrju3grGfC+KGEOh0/p1qN1CQD9znDgsrFtXaj
	gItKJJSCBzoFv3//0WAsbtPkxky9xp9a5QUsie6qmrJUgfHjERXqp56dhlq2fTrjSTZkVMca21ZL4
	CUmXz7tV56WV2oXYJEA5yvLz43lYSZGnIFuJajZrGwBtbZyIKHFyJBsvQJsYyuLdV8cvXdtggdKy9
	t6FymFauul76uokhkH9hl+CJXnR/Wkig3y5P6TfyFWXvzr9KJwzWKF5pNpZ3XWrwAr4doSyLYWUZ8
	KHsUw7yKjmvVN1weJHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvq1-0007c8-U5; Thu, 18 Jun 2020 14:48:21 +0000
Received: from 195-192-102-148.dyn.cablelink.at ([195.192.102.148]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvoQ-0006Ri-Ld; Thu, 18 Jun 2020 14:46:43 +0000
From: Christoph Hellwig <hch@lst.de>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH 4/6] exec: split prepare_arg_pages
Date: Thu, 18 Jun 2020 16:46:25 +0200
Message-Id: <20200618144627.114057-5-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618144627.114057-1-hch@lst.de>
References: <20200618144627.114057-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Brian Gerst <brgerst@gmail.com>, x86@kernel.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, sparclinux@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move counting the arguments and enviroment variables out of
prepare_arg_pages and rename the rest of the function to check_arg_limit.
This prepares for a version of do_execvat that takes kernel pointers.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/exec.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/fs/exec.c b/fs/exec.c
index a5d91f8b1341d5..34781db6bf6889 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -435,20 +435,10 @@ static int count_strings(const char __user *const __user *argv)
 	return i;
 }
 
-static int prepare_arg_pages(struct linux_binprm *bprm,
-		const char __user *const __user *argv,
-		const char __user *const __user *envp)
+static int check_arg_limit(struct linux_binprm *bprm)
 {
 	unsigned long limit, ptr_size;
 
-	bprm->argc = count_strings(argv);
-	if (bprm->argc < 0)
-		return bprm->argc;
-
-	bprm->envc = count_strings(envp);
-	if (bprm->envc < 0)
-		return bprm->envc;
-
 	/*
 	 * Limit to 1/4 of the max stack size or 3/4 of _STK_LIM
 	 * (whichever is smaller) for the argv+env strings.
@@ -1886,7 +1876,19 @@ int do_execveat(int fd, struct filename *filename,
 	if (retval)
 		goto out_unmark;
 
-	retval = prepare_arg_pages(bprm, argv, envp);
+	bprm->argc = count_strings(argv);
+	if (bprm->argc < 0) {
+		retval = bprm->argc;
+		goto out;
+	}
+
+	bprm->envc = count_strings(envp);
+	if (bprm->envc < 0) {
+		retval = bprm->envc;
+		goto out;
+	}
+
+	retval = check_arg_limit(bprm);
 	if (retval < 0)
 		goto out;
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
