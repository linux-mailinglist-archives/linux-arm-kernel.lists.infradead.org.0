Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20F61BEA4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEQO6nxqQNBB4ACA58S3kp6hV882PuiA+87q9N326FI=; b=pN6QW1b079MlCR
	yt9gcAS6pB8ct+NeGp3sZ5hBiO2akVepjRVHZW/zfIHnVtQrCVm6WnQhky50WCyv1jAmzl/pKBIjI
	cpfDaFiQSG0p5f29SF9EWKFDwahDmaxcWe4Moe9oP1xbnHBw2HbHv2lfJF8QtHDptqyJpiHEjsxRE
	uSOlWUkjBeRAtoboehYDRKK474GZ0Z4sct1seghwLt0c0tsCcs3190Sbqd+UyjGt4UbStSOZUnF6i
	598GHKNQ3GgIMpCW+q707QSLddm5bbx9szQFRqScmQjEuA+mPp1n1YNVOmQs9y9LS/qgLhPAJmIO/
	kVmG9K/P+UNNpA2IBHhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuca-0001In-1g; Wed, 29 Apr 2020 21:52:00 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTub8-0000CS-5T
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:50:31 +0000
Received: by mail-yb1-xb49.google.com with SMTP id s62so5356394ybs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=j9WUvKonPgTjIUwjN6gAw2Ow91kmiZMiVo0dKn965xM=;
 b=rpSOhgpZAHdOAwMyVgY0CFeQV4JBSuitbsj273BpBIYbY5RLsc4oU8PEL0H8l2TB5Q
 jG553aIKfQF2YF6o13fsBMT5zGN9segQ20ek4BoudBSd1oldgaKUIzQE1gUENm6VWCJL
 rwV8ZCHjEEotGPzpCJokeDTsN3sON5Be1JY9+ilHhlCYSwmVmYep7UjgmJeL0j+AtidP
 A/WuYCLR/baWvIOOSlanC6XH+h7tjaSu5ed9lIJtvsjuLczSBPgDCXkkJ+gL9HeXObZ4
 LPEB4qS5TfOwPWx/cfdcs+Q13OO74wWcsFq39oxOHl9vj9OcZRqB9BpSiip4xH6q2UDi
 xagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=j9WUvKonPgTjIUwjN6gAw2Ow91kmiZMiVo0dKn965xM=;
 b=L3+09MS5jVske4o+CT7M/5MJ+vG873KkFlgp+XTpUqcGTazlJ+N7rpMNhIIOlOSBXj
 AgvlcJ3y4WkxtsKjhrc+/lnSp0br485HkQSb9sNg5P5qfuiOxMsKIJOF/wMUOoFB3E8c
 3+koWTF5NvOdnFsA0JWJOjWsizqwGTikNnw1TRlZYWSPnU8xTCpaSghz9a2N055XdrH8
 16vozKm8+mbnmrPiftjb0dF211vrfYdmchyTukEhbqb0BsQMhzutYKTxiRR51WtgCSgS
 geNoGcIaa/QqDK29AoqT6wM+KCvhYSRbRN+2PhfhuUq6tU1gePkrRKYXO8Qsf12WKVri
 RXJg==
X-Gm-Message-State: AGi0Pub4wK0InVCRP3esuE67zPpyycAYN6U9pAIcGJNCyY8dziH5Arq9
 WrnzfKD1N00JibeZhrc+d2viAot5FQ==
X-Google-Smtp-Source: APiQypIHJ7rV1yTDZpZYpBo1v+hnjoUzGur3b82l9wJsRlWX+KQ5lDvvOT4btIQYmN3rHDSbWDUnK04YhA==
X-Received: by 2002:a25:23d4:: with SMTP id j203mr618266ybj.97.1588197027087; 
 Wed, 29 Apr 2020 14:50:27 -0700 (PDT)
Date: Wed, 29 Apr 2020 23:49:54 +0200
In-Reply-To: <20200429214954.44866-1-jannh@google.com>
Message-Id: <20200429214954.44866-6-jannh@google.com>
Mime-Version: 1.0
References: <20200429214954.44866-1-jannh@google.com>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: [PATCH v2 5/5] mm/gup: Take mmap_sem in get_dump_page()
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145030_253634_D2B29205 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
get_dump_page(); and play nice, allowing the GUP code to drop the mmap_sem
if it has to sleep.

As Linus pointed out, we don't actually need the VMA because
__get_user_pages() will flush the dcache for us if necessary.

Signed-off-by: Jann Horn <jannh@google.com>
---
 mm/gup.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/mm/gup.c b/mm/gup.c
index 9a7e83772f1fe..03f659ddd830a 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -1548,19 +1548,23 @@ static long __get_user_pages_locked(struct task_struct *tsk,
  * NULL wherever the ZERO_PAGE, or an anonymous pte_none, has been found -
  * allowing a hole to be left in the corefile to save diskspace.
  *
- * Called without mmap_sem, but after all other threads have been killed.
+ * Called without mmap_sem (takes and releases the mmap_sem by itself).
  */
 struct page *get_dump_page(unsigned long addr)
 {
-	struct vm_area_struct *vma;
+	struct mm_struct *mm = current->mm;
 	struct page *page;
+	int locked = 1;
+	int ret;
 
-	if (__get_user_pages(current, current->mm, addr, 1,
-			     FOLL_FORCE | FOLL_DUMP | FOLL_GET, &page, &vma,
-			     NULL) < 1)
+	if (down_read_killable(&mm->mmap_sem))
 		return NULL;
-	flush_cache_page(vma, addr, page_to_pfn(page));
-	return page;
+	ret = __get_user_pages_locked(current, mm, addr, 1, &page, NULL,
+				      &locked,
+				      FOLL_FORCE | FOLL_DUMP | FOLL_GET);
+	if (locked)
+		up_read(&mm->mmap_sem);
+	return (ret == 1) ? page : NULL;
 }
 
 #if defined(CONFIG_FS_DAX) || defined (CONFIG_CMA)
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
