Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6AC1BB4B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 05:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guwzH3gFwRbAvxGtLJ5EMg2+hMRqzcnBDvL0jtyKK64=; b=mOP8wEePoj10X4
	O7KtT1UvL+jW0k4xhEcgO5d8hhQGdq0OPqwNDWYn1iD9yMe8x1fnY3peVjNHlngc3XJ7opJNoSpKo
	5kFNocNhKnNT4AUai95a6hlJJwaStmHj0PXrnXAwtqWGerknB9OkTihCKAHw4Gy/S9+XXwOTNYD1d
	CtXBD6vz6XOU/pYnPIDvqKViUJYooHwsVhuXADEFZKEf3ikTNsS6910umUf9VSTIWNykCSuQOA249
	mfEJiVxzNBvIcGewS/jW6T2m7EMTh6L/u51HtK8QRFlf4W8LwZa5SKXXyhAh/oskRLRmgri4+Ofb+
	kD/Rcdg7POKJr2I3XwbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGw7-0001eL-Cu; Tue, 28 Apr 2020 03:29:31 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGux-0000pO-9t
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 03:28:21 +0000
Received: by mail-qv1-xf49.google.com with SMTP id dh14so21239404qvb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 20:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=S74qc3gT0+GaAOfxP9OW8h7LX2dHXzF9FcHNnI79iRU=;
 b=IidsVYIWxuA6ZMq4mduyFOFvGK2ppYXoJH0wqJkIqqc+oYorXd4D8TC5648uk83yp9
 Wk6TRGHazyI7/dl0YaKYN69J4JYYCXH0CXmm45CYpg5crMvD0sBEhoVk0OCbke9ON03l
 t++54shNE4fldweicnAFUG7BlPQRKlLvBj3ELH6NgoiG7tKyqU09KfhIbfcLrXBCqA5+
 ERaEY1qXQhMRhOoex9Yt2JzsgbxA1o9//qxW7Rl64iVEwEvm2M5aNBfC/sbBWFTgc2W9
 OB2UUdMDfKlny1MscN1lZUlNUVq8y5d3lfxTGrfnTL+k4Xh6lfcXpgzN0XvkrZqCgzwF
 SQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=S74qc3gT0+GaAOfxP9OW8h7LX2dHXzF9FcHNnI79iRU=;
 b=dLPWJ3Fh3ycVZ52AuW5oGsXfa+6/LaMREmg5PntaDLS6cidJzWDtBPa5pD/UUUnVqS
 jIzVf3SEHh5NRnNlXg2E1BuGc45sYQRANUTW9ClnjBCB4ZX8jWVctbHMFcURWb7M5hZI
 f5yaPsavG7KGYQwEe6tPi/VpHx798Ory8ppe+TMUWbJ8parJ5Ww0bIMYDi0kV3rG0FHw
 LvuVmlOHRLOvYdmdZJxMYS0StA0OSumOaHsP6LTxq+eizVq0n7oYkQ8/1AJV72vT1O9s
 wIvGlUhnaqlhO08r/r6C+tQ1hBhWeLCJy6eeNss0vGST95Oowj+Y1dBDR3vOXUP2VUdQ
 6Oyg==
X-Gm-Message-State: AGi0PuaTlQ3PK7EJl1+8nJGzd0tXBSHwmZ8WxUDZrI5ZLdtOMnQMLkEY
 einY4RBlRPdShWahsN6wXWJwCOZoMQ==
X-Google-Smtp-Source: APiQypKNWrwmeyovNjE39gEB3tk3kbcuILr7RYV7vdkJNUwXcv+LEB33zDblKbOqInzqOcSp3nptjlK/lg==
X-Received: by 2002:a0c:99ca:: with SMTP id y10mr18997354qve.217.1588044495889; 
 Mon, 27 Apr 2020 20:28:15 -0700 (PDT)
Date: Tue, 28 Apr 2020 05:27:45 +0200
In-Reply-To: <20200428032745.133556-1-jannh@google.com>
Message-Id: <20200428032745.133556-6-jannh@google.com>
Mime-Version: 1.0
References: <20200428032745.133556-1-jannh@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH 5/5] mm/gup: Take mmap_sem in get_dump_page()
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_202819_454652_D89B5A4A 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleg Nesterov <oleg@redhat.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>, linux-fsdevel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Properly take the mmap_sem before calling into the GUP code from
get_dump_page(); and play nice, allowing __get_user_pages_locked() to drop
the mmap_sem if it has to sleep.

This requires adjusting the check in __get_user_pages_locked() to be
slightly less strict: While `vmas != NULL` is normally incompatible with
the lock-dropping retry logic, it's fine if we only want a single page,
because then retries can only happen when we haven't grabbed any pages yet.

Signed-off-by: Jann Horn <jannh@google.com>
---
 mm/gup.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/mm/gup.c b/mm/gup.c
index 9a7e83772f1fe..4bb4149c0e259 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -1261,7 +1261,8 @@ static __always_inline long __get_user_pages_locked(struct task_struct *tsk,
 
 	if (locked) {
 		/* if VM_FAULT_RETRY can be returned, vmas become invalid */
-		BUG_ON(vmas);
+		if (WARN_ON(vmas && nr_pages != 1))
+			return -EFAULT;
 		/* check caller initialized locked */
 		BUG_ON(*locked != 1);
 	}
@@ -1548,18 +1549,28 @@ static long __get_user_pages_locked(struct task_struct *tsk,
  * NULL wherever the ZERO_PAGE, or an anonymous pte_none, has been found -
  * allowing a hole to be left in the corefile to save diskspace.
  *
- * Called without mmap_sem, but after all other threads have been killed.
+ * Called without mmap_sem (takes and releases the mmap_sem by itself).
  */
 struct page *get_dump_page(unsigned long addr)
 {
+	struct mm_struct *mm = current->mm;
 	struct vm_area_struct *vma;
 	struct page *page;
+	int locked = 1;
+	int ret;
 
-	if (__get_user_pages(current, current->mm, addr, 1,
-			     FOLL_FORCE | FOLL_DUMP | FOLL_GET, &page, &vma,
-			     NULL) < 1)
+	if (down_read_killable(&mm->mmap_sem))
+		return NULL;
+	ret = __get_user_pages_locked(current, mm, addr, 1, &page, &vma,
+				      &locked,
+				      FOLL_FORCE | FOLL_DUMP | FOLL_GET);
+	if (ret != 1) {
+		if (locked)
+			up_read(&mm->mmap_sem);
 		return NULL;
+	}
 	flush_cache_page(vma, addr, page_to_pfn(page));
+	up_read(&mm->mmap_sem);
 	return page;
 }
 
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
