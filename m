Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CC31BB4AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 05:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwrD+Ug/BKtQv2kp2Y+RDJYz0egoEyGuJEgMRRqo4qs=; b=i8ochlVeabOQOZ
	l/nZzNpkP2AbtS4//FH6TfzG69VP73yVSbGTtuRVXeGk56ygp3QohW4ACASTp9j94YlJNFLaDGGG0
	bHWJvMt1r/lFMxBx09soDZpR9ydh1RSMM/UUELZvoLuMGXnvn5BoAT81T7Tunp0Sku6tQlAxWMqkS
	w/7tq1nVv9/YjP/bySewpB5wuddeCgum1hSarvNqv5nvpeyou0dXDJI4ppnGk+KycwveZRHzk6S59
	y6Ah/tn1zpEFtXi1kp2vyVeqqnSIUTTycImpwK0OgdC4GKj5NPjaxcbzaLdWtzVNotkKdqhon31EW
	M1mmQd+jz3MnDj+Dg51Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGvm-0001Ks-3v; Tue, 28 Apr 2020 03:29:10 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGuo-0000jK-PJ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 03:28:12 +0000
Received: by mail-qt1-x849.google.com with SMTP id w12so22961886qto.19
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 20:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=JjVJ6bVnkDD22Kug2lLArucLeDH63cpRkRDdCvmUsgw=;
 b=sLC5sUwQCO5H8VpQfbr0H4yolym1MeU6fcyvl0GX1tVdSTKXplkYJVOUSPeObsdt1J
 JNFx6+q7V/UcdjF9kl6aGAwR+65DA5naHvrPlRhD9971fShW/szwPgWHYDi486Wz2jsk
 4n54HzCwbsCTB0brNiYnCd28IVesQuXtCTGd1S+kk4pCbbakqRMd6Yy+wfjsX6mVg9Ul
 5/piBlog/ScC96XdEuOmAWtCjjJytAI/OBS1H/Vf1cjHyX7mQZbuEwfvfZYYxbhWQwJV
 4OaucR4dIV8MFcI9nfy1JhV0PUihfy76zcj3UWEktQgJ9dZEPvmmOG5zdCRO4l3kcB+A
 iXGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=JjVJ6bVnkDD22Kug2lLArucLeDH63cpRkRDdCvmUsgw=;
 b=FVg7fG16xBGmpGglYr886GDI7fZOABuYEkU61DpbvoSsUWC48eGEkfwMylILDVpruD
 h5g+r1qWXifeygZRsgE9am1cVGZXin/DT/vYgx/48dF6Plr/L+SKM1aYjLtxLLJIIIwX
 CSsD/MekertJ93JUYgHX3/adigJ4CvtZinjnVVLQwQHeOEAkgKlFpko5rZCxAURdL+Cs
 2SnWzdQuXRRY8s/LcAYxiNTTjKYpZ9USkMJtEcgSZt30g3Mv015VvugplatQy5JE3Vqr
 Ew+p5FEcOldT+0aGbHpjlejq1VEdJNzvFhx4ZPYfRfn53Nb6dm3qR6arnfypiLYhaB/5
 LlmQ==
X-Gm-Message-State: AGi0PuZ5PF6sfuncXkgydwqdmSITusC6vjdgbRM1DFyxPvH/npmyEhEN
 SfS6jtUbMvUkGckrmxw7YonFofjeGQ==
X-Google-Smtp-Source: APiQypK8E6BiAXKEVW3TpfVgfPj6v9qslU6kHK+WktRMaanVdj0UoaQeTgjCIkPDaA7t5NniPYjJ3E4kEw==
X-Received: by 2002:a0c:f1d1:: with SMTP id u17mr26207196qvl.146.1588044488930; 
 Mon, 27 Apr 2020 20:28:08 -0700 (PDT)
Date: Tue, 28 Apr 2020 05:27:43 +0200
In-Reply-To: <20200428032745.133556-1-jannh@google.com>
Message-Id: <20200428032745.133556-4-jannh@google.com>
Mime-Version: 1.0
References: <20200428032745.133556-1-jannh@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH 3/5] coredump: Refactor page range dumping into common helper
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_202810_838025_50A7354B 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
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

Both fs/binfmt_elf.c and fs/binfmt_elf_fdpic.c need to dump ranges of pages
into the coredump file. Extract that logic into a common helper.

Any other binfmt that actually wants to create coredumps will probably need
the same function; so stop making get_dump_page() depend on
CONFIG_ELF_CORE.

Signed-off-by: Jann Horn <jannh@google.com>
---
 fs/binfmt_elf.c          | 22 ++--------------------
 fs/binfmt_elf_fdpic.c    | 18 +++---------------
 fs/coredump.c            | 33 +++++++++++++++++++++++++++++++++
 include/linux/coredump.h |  2 ++
 mm/gup.c                 |  2 --
 5 files changed, 40 insertions(+), 37 deletions(-)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index b29b84595b09f..fb36469848323 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -2323,26 +2323,8 @@ static int elf_core_dump(struct coredump_params *cprm)
 
 	for (i = 0, vma = first_vma(current, gate_vma); vma != NULL;
 			vma = next_vma(vma, gate_vma)) {
-		unsigned long addr;
-		unsigned long end;
-
-		end = vma->vm_start + vma_filesz[i++];
-
-		for (addr = vma->vm_start; addr < end; addr += PAGE_SIZE) {
-			struct page *page;
-			int stop;
-
-			page = get_dump_page(addr);
-			if (page) {
-				void *kaddr = kmap(page);
-				stop = !dump_emit(cprm, kaddr, PAGE_SIZE);
-				kunmap(page);
-				put_page(page);
-			} else
-				stop = !dump_skip(cprm, PAGE_SIZE);
-			if (stop)
-				goto cleanup;
-		}
+		if (!dump_user_range(cprm, vma->vm_start, vma_filesz[i++]))
+			goto cleanup;
 	}
 	dump_truncate(cprm);
 
diff --git a/fs/binfmt_elf_fdpic.c b/fs/binfmt_elf_fdpic.c
index f5b47076fa762..938f66f4de9b2 100644
--- a/fs/binfmt_elf_fdpic.c
+++ b/fs/binfmt_elf_fdpic.c
@@ -1500,21 +1500,9 @@ static bool elf_fdpic_dump_segments(struct coredump_params *cprm)
 		if (!maydump(vma, cprm->mm_flags))
 			continue;
 
-		for (addr = vma->vm_start; addr < vma->vm_end;
-							addr += PAGE_SIZE) {
-			bool res;
-			struct page *page = get_dump_page(addr);
-			if (page) {
-				void *kaddr = kmap(page);
-				res = dump_emit(cprm, kaddr, PAGE_SIZE);
-				kunmap(page);
-				put_page(page);
-			} else {
-				res = dump_skip(cprm, PAGE_SIZE);
-			}
-			if (!res)
-				return false;
-		}
+		if (!dump_user_range(cprm, vma->vm_start,
+				     vma->vma_end - vma->vm_start))
+			return false;
 	}
 	return true;
 }
diff --git a/fs/coredump.c b/fs/coredump.c
index 047f5a11dbee7..3385de8a62302 100644
--- a/fs/coredump.c
+++ b/fs/coredump.c
@@ -860,6 +860,39 @@ int dump_skip(struct coredump_params *cprm, size_t nr)
 }
 EXPORT_SYMBOL(dump_skip);
 
+#ifdef CONFIG_ELF_CORE
+int dump_user_range(struct coredump_params *cprm, unsigned long start,
+		    unsigned long len)
+{
+	unsigned long addr;
+
+	for (addr = start; addr < start + len; addr += PAGE_SIZE) {
+		struct page *page;
+		int stop;
+
+		/*
+		 * To avoid having to allocate page tables for virtual address
+		 * ranges that have never been used yet, use a helper that
+		 * returns NULL when encountering an empty page table entry that
+		 * would otherwise have been filled with the zero page.
+		 */
+		page = get_dump_page(addr);
+		if (page) {
+			void *kaddr = kmap(page);
+
+			stop = !dump_emit(cprm, kaddr, PAGE_SIZE);
+			kunmap(page);
+			put_page(page);
+		} else {
+			stop = !dump_skip(cprm, PAGE_SIZE);
+		}
+		if (stop)
+			return 0;
+	}
+	return 1;
+}
+#endif
+
 int dump_align(struct coredump_params *cprm, int align)
 {
 	unsigned mod = cprm->pos & (align - 1);
diff --git a/include/linux/coredump.h b/include/linux/coredump.h
index abf4b4e65dbb9..4289dc21c04ff 100644
--- a/include/linux/coredump.h
+++ b/include/linux/coredump.h
@@ -16,6 +16,8 @@ extern int dump_skip(struct coredump_params *cprm, size_t nr);
 extern int dump_emit(struct coredump_params *cprm, const void *addr, int nr);
 extern int dump_align(struct coredump_params *cprm, int align);
 extern void dump_truncate(struct coredump_params *cprm);
+int dump_user_range(struct coredump_params *cprm, unsigned long start,
+		    unsigned long len);
 #ifdef CONFIG_COREDUMP
 extern void do_coredump(const kernel_siginfo_t *siginfo);
 #else
diff --git a/mm/gup.c b/mm/gup.c
index 76080c4dbff05..9a7e83772f1fe 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -1550,7 +1550,6 @@ static long __get_user_pages_locked(struct task_struct *tsk,
  *
  * Called without mmap_sem, but after all other threads have been killed.
  */
-#ifdef CONFIG_ELF_CORE
 struct page *get_dump_page(unsigned long addr)
 {
 	struct vm_area_struct *vma;
@@ -1563,7 +1562,6 @@ struct page *get_dump_page(unsigned long addr)
 	flush_cache_page(vma, addr, page_to_pfn(page));
 	return page;
 }
-#endif /* CONFIG_ELF_CORE */
 
 #if defined(CONFIG_FS_DAX) || defined (CONFIG_CMA)
 static bool check_dax_vmas(struct vm_area_struct **vmas, long nr_pages)
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
