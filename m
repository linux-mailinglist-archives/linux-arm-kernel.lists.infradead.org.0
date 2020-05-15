Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344A61D578E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3OGnYv+A0fev65JclXJL/pbiZYQ9Yu9wuX7i9Uu3gY=; b=RI81JggpvoYLDS
	L/5qfCy5JhzA4AxbJF12+k8CmV2eBVoJKBeTOIwGziWxymfA5zJkRsiFBIpTja0yXvea/ZfvTJ/iz
	QqahMWqgxvrtDkwOmUown1ERDYTdXSrdEP2zjJN7SfwaD7LeXh9gNz3vaGHHG1nxCiUPAa48ZDf29
	LsneAaE7ODbTh9xNr0nol6/ThM3Cv8q1/BSuzYQNeAZ+Ft5VbJ7eWU6pXl7FqacmBbWun46SDKI9c
	AT2UN/2YJimg4IagwtTaTzDszF+WE9UrqlVIUennrmjOtg8akLc3ejcCFOr2/dPpJNgebhY3pMg2f
	fK3j28q+SNW5RQpwtZtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe2V-00015S-OB; Fri, 15 May 2020 17:22:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdxD-0002VV-Lu
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:17:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81FB81063;
 Fri, 15 May 2020 10:16:59 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D50F93F305;
 Fri, 15 May 2020 10:16:57 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 19/26] fs: Handle intra-page faults in copy_mount_options()
Date: Fri, 15 May 2020 18:16:05 +0100
Message-Id: <20200515171612.1020-20-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101659_802235_9E088ED0 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The copy_mount_options() function takes a user pointer argument but no
size. It tries to read up to a PAGE_SIZE. However, copy_from_user() is
not guaranteed to return all the accessible bytes if, for example, the
access crosses a page boundary and gets a fault on the second page. To
work around this, the current copy_mount_options() implementation
performs two copy_from_user() passes, first to the end of the current
page and the second to what's left in the subsequent page.

On arm64 with MTE enabled, access to a user page may trigger a fault
after part of the buffer has been copied (when the user pointer tag,
bits 56-59, no longer matches the allocation tag stored in memory).
Allow copy_mount_options() to handle such intra-page faults by returning
-EFAULT only if the first copy_from_user() has not copied any bytes.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Alexander Viro <viro@zeniv.linux.org.uk>
Reviewed-by: Kevin Brodsky <kevin.brodsky@arm.com>
---

Notes:
    v4:
    - Rewrite to avoid arch_has_exact_copy_from_user()
    
    New in v3.

 fs/namespace.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/fs/namespace.c b/fs/namespace.c
index a28e4db075ed..70aa60ccce57 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -3016,7 +3016,7 @@ static void shrink_submounts(struct mount *mnt)
 void *copy_mount_options(const void __user * data)
 {
 	char *copy;
-	unsigned size;
+	unsigned size, left;
 
 	if (!data)
 		return NULL;
@@ -3027,12 +3027,30 @@ void *copy_mount_options(const void __user * data)
 
 	size = PAGE_SIZE - offset_in_page(data);
 
-	if (copy_from_user(copy, data, size)) {
+	/*
+	 * Attempt to copy to the end of the first user page. On success,
+	 * left == 0, copy the rest from the second user page (if it is
+	 * accessible). copy_from_user() will zero the part of the kernel
+	 * buffer not copied into.
+	 *
+	 * On architectures with intra-page faults (arm64 with MTE), the read
+	 * from the first page may fail after copying part of the user data
+	 * (left > 0 && left < size). Do not attempt the second copy in this
+	 * case as the end of the valid user buffer has already been reached.
+	 * Ensure, however, that the second part of the kernel buffer is
+	 * zeroed.
+	 */
+	left = copy_from_user(copy, data, size);
+	if (left == size) {
 		kfree(copy);
 		return ERR_PTR(-EFAULT);
 	}
 	if (size != PAGE_SIZE) {
-		if (copy_from_user(copy + size, data + size, PAGE_SIZE - size))
+		if (left == 0)
+			/* return not relevant, just silence the compiler */
+			left = copy_from_user(copy + size, data + size,
+					      PAGE_SIZE - size);
+		else
 			memset(copy + size, 0, PAGE_SIZE - size);
 	}
 	return copy;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
