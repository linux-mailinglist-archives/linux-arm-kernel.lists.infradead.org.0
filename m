Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507671BEA4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBBZHlcxBP4IBoTL2YHMQr3tuBqp6MLcH0iBvFRVTKQ=; b=qJ0ADG1XnF74f9
	qF1x0jVd6yHeIQrfLrpLBzMBWlzPcKoRwrCQfZ8rfGtGXRBQAdEnGxGVSdWQz52Ycuml4N06uQQDX
	TuEw+v1f+k3f5b0xepj/whCq/DyFELh9HJRcqVMRICChKMzQKxIqSpGtu6qkWZ9AtEv3xJ6aUbRDA
	rqboxa3CZagWDpBlxKfVeFVeu42ZD/MUiqIeWq1wn7BArOPTuihFLSx2gbyXRWNyvR+sbbis1/TUn
	8x/G6NN9yD9Z/aWzzaWi5uNyq+OELFK1j/7d7WEICwiT9fbQMfjlVdv4LhGphCPGPO3IiLJR9UAQA
	3N8er1LXUC/UrYBZ+4aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTucH-00013Z-BO; Wed, 29 Apr 2020 21:51:41 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTub4-00008I-5a
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:50:29 +0000
Received: by mail-qv1-xf49.google.com with SMTP id c89so4176029qva.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=n/kbYO/P8r9qjIHatbomr9oYvX4Fs7o+QJm2b7IkvvY=;
 b=cgr+TYE8vkEUBlnn/4x8wGFcQHJEel5hBhVI86rYp5miZ1UTXoa/QgOK3lFq5WxQnE
 Q9QKmjZcshlFnwye5iZFHSIrrlVsvXOpvAuaVN524lnmBgCJ4c193lY0bjiDTK6FqXP6
 Dpjbx5QcjLnHddqo2KtnhA9fxXjVlv/cttYcUMyPphdkzEudpO9qQR6qbW57b465lfYu
 riQi5N1++sHU6boVo7r4zt/O+gclwLv97eUHeibTBDOoWth+4/PwMSh9O84b/krR+c2n
 ivy7FpzW0Tqeg5ovtiqCbYMOWDuwq9k3vgln3Iom2sJZRH71J0SHyGa4zjoWCyKxv+b9
 NDCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=n/kbYO/P8r9qjIHatbomr9oYvX4Fs7o+QJm2b7IkvvY=;
 b=ar//uXTFg4+dzeodn9EFUX7QzQ1q3JFd5gEjNy6Ei3ayiY8xF/736wQZh7qxhV+ZjT
 dekwCSZbKpReWkvdixX/ViBcjbUogo8Oj27AsDrFtn/6N+BGXAdDAbpHC3xIyPHmsuqF
 P6avsGefn/gJH1DFLyzPbifJYYD8VTMeTUtm+EtuV4hljDoAtCtL+ZtNUua1CT3X87N9
 +iKajsL8sQn6VjKpadRZI0zNMR+LCboLXdeqBAx/OPhaTLr3nBQjqwvzErctIJn0vqyz
 beGVQrYykK3ge+gK+sCmN79q5jm/3fbSD6B8T9vxJq1Icfclls/utDccPjHvYB4WMyoK
 1P/A==
X-Gm-Message-State: AGi0PuaM5MQvKYrAgGwf6ER0573sMyCS/yY+a2CJKYitIyBfQLH3uUoM
 7Chs/rFVbegG8rarNS1I8ZvEyZoLNg==
X-Google-Smtp-Source: APiQypKSLyLimCosOw/U/0bAe2cFRJTCmuvNNA0mLLgmQmMHrvTTR8ykhhbxYF0u24On0xQdRORFJUz8vg==
X-Received: by 2002:a05:6214:42b:: with SMTP id
 a11mr35017166qvy.186.1588197023571; 
 Wed, 29 Apr 2020 14:50:23 -0700 (PDT)
Date: Wed, 29 Apr 2020 23:49:53 +0200
In-Reply-To: <20200429214954.44866-1-jannh@google.com>
Message-Id: <20200429214954.44866-5-jannh@google.com>
Mime-Version: 1.0
References: <20200429214954.44866-1-jannh@google.com>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: [PATCH v2 4/5] binfmt_elf, binfmt_elf_fdpic: Use a VMA list snapshot
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145026_252127_AE2C39C9 
X-CRM114-Status: GOOD (  25.74  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f49 listed in]
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

In both binfmt_elf and binfmt_elf_fdpic, use a new helper
dump_vma_snapshot() to take a snapshot of the VMA list (including the gate
VMA, if we have one) while protected by the mmap_sem, and then use that
snapshot instead of walking the VMA list without locking.

An alternative approach would be to keep the mmap_sem held across the
entire core dumping operation; however, keeping the mmap_sem locked while
we may be blocked for an unbounded amount of time (e.g. because we're
dumping to a FUSE filesystem or so) isn't really optimal; the mmap_sem
blocks things like the ->release handler of userfaultfd, and we don't
really want critical system daemons to grind to a halt just because someone
"gifted" them SCM_RIGHTS to an eternally-locked userfaultfd, or something
like that.

Since both the normal ELF code and the FDPIC ELF code need this
functionality (and if any other binfmt wants to add coredump support in the
future, they'd probably need it, too), implement this with a common helper
in fs/coredump.c.

A downside of this approach is that we now need a bigger amount of kernel
memory per userspace VMA in the normal ELF case, and that we need O(n)
kernel memory in the FDPIC ELF case at all; but 40 bytes per VMA shouldn't
be terribly bad.

Signed-off-by: Jann Horn <jannh@google.com>
---
 fs/binfmt_elf.c          | 152 +++++++++++++--------------------------
 fs/binfmt_elf_fdpic.c    |  86 ++++++++++------------
 fs/coredump.c            |  68 ++++++++++++++++++
 include/linux/coredump.h |  10 +++
 4 files changed, 168 insertions(+), 148 deletions(-)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index fb36469848323..dffe9dc8497ca 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -1292,8 +1292,12 @@ static bool always_dump_vma(struct vm_area_struct *vma)
 	return false;
 }
 
+#define DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER 1
+
 /*
  * Decide what to dump of a segment, part, all or none.
+ * The result must be fixed up via vma_dump_size_fixup() once we're in a context
+ * that's allowed to sleep arbitrarily long.
  */
 static unsigned long vma_dump_size(struct vm_area_struct *vma,
 				   unsigned long mm_flags)
@@ -1348,30 +1352,15 @@ static unsigned long vma_dump_size(struct vm_area_struct *vma,
 
 	/*
 	 * If this looks like the beginning of a DSO or executable mapping,
-	 * check for an ELF header.  If we find one, dump the first page to
-	 * aid in determining what was mapped here.
+	 * we'll check for an ELF header. If we find one, we'll dump the first
+	 * page to aid in determining what was mapped here.
+	 * However, we shouldn't sleep on userspace reads while holding the
+	 * mmap_sem, so we just return a placeholder for now that will be fixed
+	 * up later in vma_dump_size_fixup().
 	 */
 	if (FILTER(ELF_HEADERS) &&
-	    vma->vm_pgoff == 0 && (vma->vm_flags & VM_READ)) {
-		u32 __user *header = (u32 __user *) vma->vm_start;
-		u32 word;
-		/*
-		 * Doing it this way gets the constant folded by GCC.
-		 */
-		union {
-			u32 cmp;
-			char elfmag[SELFMAG];
-		} magic;
-		BUILD_BUG_ON(SELFMAG != sizeof word);
-		magic.elfmag[EI_MAG0] = ELFMAG0;
-		magic.elfmag[EI_MAG1] = ELFMAG1;
-		magic.elfmag[EI_MAG2] = ELFMAG2;
-		magic.elfmag[EI_MAG3] = ELFMAG3;
-		if (unlikely(get_user(word, header)))
-			word = 0;
-		if (word == magic.cmp)
-			return PAGE_SIZE;
-	}
+	    vma->vm_pgoff == 0 && (vma->vm_flags & VM_READ))
+		return DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER;
 
 #undef	FILTER
 
@@ -1381,6 +1370,22 @@ static unsigned long vma_dump_size(struct vm_area_struct *vma,
 	return vma->vm_end - vma->vm_start;
 }
 
+/* Fix up the result from vma_dump_size(), now that we're allowed to sleep. */
+static void vma_dump_size_fixup(struct core_vma_metadata *meta)
+{
+	char elfmag[SELFMAG];
+
+	if (meta->dump_size != DUMP_SIZE_MAYBE_ELFHDR_PLACEHOLDER)
+		return;
+
+	if (copy_from_user(elfmag, (void __user *)meta->start, SELFMAG)) {
+		meta->dump_size = 0;
+		return;
+	}
+	meta->dump_size =
+		(memcmp(elfmag, ELFMAG, SELFMAG) == 0) ? PAGE_SIZE : 0;
+}
+
 /* An ELF note in memory */
 struct memelfnote
 {
@@ -2124,32 +2129,6 @@ static void free_note_info(struct elf_note_info *info)
 
 #endif
 
-static struct vm_area_struct *first_vma(struct task_struct *tsk,
-					struct vm_area_struct *gate_vma)
-{
-	struct vm_area_struct *ret = tsk->mm->mmap;
-
-	if (ret)
-		return ret;
-	return gate_vma;
-}
-/*
- * Helper function for iterating across a vma list.  It ensures that the caller
- * will visit `gate_vma' prior to terminating the search.
- */
-static struct vm_area_struct *next_vma(struct vm_area_struct *this_vma,
-					struct vm_area_struct *gate_vma)
-{
-	struct vm_area_struct *ret;
-
-	ret = this_vma->vm_next;
-	if (ret)
-		return ret;
-	if (this_vma == gate_vma)
-		return NULL;
-	return gate_vma;
-}
-
 static void fill_extnum_info(struct elfhdr *elf, struct elf_shdr *shdr4extnum,
 			     elf_addr_t e_shoff, int segs)
 {
@@ -2176,9 +2155,8 @@ static void fill_extnum_info(struct elfhdr *elf, struct elf_shdr *shdr4extnum,
 static int elf_core_dump(struct coredump_params *cprm)
 {
 	int has_dumped = 0;
-	int segs, i;
+	int vma_count, segs, i;
 	size_t vma_data_size = 0;
-	struct vm_area_struct *vma, *gate_vma;
 	struct elfhdr elf;
 	loff_t offset = 0, dataoff;
 	struct elf_note_info info = { };
@@ -2186,30 +2164,21 @@ static int elf_core_dump(struct coredump_params *cprm)
 	struct elf_shdr *shdr4extnum = NULL;
 	Elf_Half e_phnum;
 	elf_addr_t e_shoff;
-	elf_addr_t *vma_filesz = NULL;
+	struct core_vma_metadata *vma_meta;
+
+	if (dump_vma_snapshot(cprm, &vma_count, &vma_meta, vma_dump_size))
+		return 0;
+
+	for (i = 0; i < vma_count; i++) {
+		vma_dump_size_fixup(vma_meta + i);
+		vma_data_size += vma_meta[i].dump_size;
+	}
 
-	/*
-	 * We no longer stop all VM operations.
-	 * 
-	 * This is because those proceses that could possibly change map_count
-	 * or the mmap / vma pages are now blocked in do_exit on current
-	 * finishing this core dump.
-	 *
-	 * Only ptrace can touch these memory addresses, but it doesn't change
-	 * the map_count or the pages allocated. So no possibility of crashing
-	 * exists while dumping the mm->vm_next areas to the core file.
-	 */
-  
 	/*
 	 * The number of segs are recored into ELF header as 16bit value.
 	 * Please check DEFAULT_MAX_MAP_COUNT definition when you modify here.
 	 */
-	segs = current->mm->map_count;
-	segs += elf_core_extra_phdrs();
-
-	gate_vma = get_gate_vma(current->mm);
-	if (gate_vma != NULL)
-		segs++;
+	segs = vma_count + elf_core_extra_phdrs();
 
 	/* for notes section */
 	segs++;
@@ -2247,24 +2216,6 @@ static int elf_core_dump(struct coredump_params *cprm)
 
 	dataoff = offset = roundup(offset, ELF_EXEC_PAGESIZE);
 
-	/*
-	 * Zero vma process will get ZERO_SIZE_PTR here.
-	 * Let coredump continue for register state at least.
-	 */
-	vma_filesz = kvmalloc(array_size(sizeof(*vma_filesz), (segs - 1)),
-			      GFP_KERNEL);
-	if (!vma_filesz)
-		goto cleanup;
-
-	for (i = 0, vma = first_vma(current, gate_vma); vma != NULL;
-			vma = next_vma(vma, gate_vma)) {
-		unsigned long dump_size;
-
-		dump_size = vma_dump_size(vma, cprm->mm_flags);
-		vma_filesz[i++] = dump_size;
-		vma_data_size += dump_size;
-	}
-
 	offset += vma_data_size;
 	offset += elf_core_extra_data_size();
 	e_shoff = offset;
@@ -2285,22 +2236,20 @@ static int elf_core_dump(struct coredump_params *cprm)
 		goto cleanup;
 
 	/* Write program headers for segments dump */
-	for (i = 0, vma = first_vma(current, gate_vma); vma != NULL;
-			vma = next_vma(vma, gate_vma)) {
+	for (i = 0; i < vma_count; i++) {
+		struct core_vma_metadata *meta = vma_meta + i;
 		struct elf_phdr phdr;
 
 		phdr.p_type = PT_LOAD;
 		phdr.p_offset = offset;
-		phdr.p_vaddr = vma->vm_start;
+		phdr.p_vaddr = meta->start;
 		phdr.p_paddr = 0;
-		phdr.p_filesz = vma_filesz[i++];
-		phdr.p_memsz = vma->vm_end - vma->vm_start;
+		phdr.p_filesz = meta->dump_size;
+		phdr.p_memsz = meta->end - meta->start;
 		offset += phdr.p_filesz;
-		phdr.p_flags = vma->vm_flags & VM_READ ? PF_R : 0;
-		if (vma->vm_flags & VM_WRITE)
-			phdr.p_flags |= PF_W;
-		if (vma->vm_flags & VM_EXEC)
-			phdr.p_flags |= PF_X;
+		phdr.p_flags = meta->flags & VM_READ ? PF_R : 0;
+		phdr.p_flags |= meta->flags & VM_WRITE ? PF_W : 0;
+		phdr.p_flags |= meta->flags & VM_EXEC ? PF_X : 0;
 		phdr.p_align = ELF_EXEC_PAGESIZE;
 
 		if (!dump_emit(cprm, &phdr, sizeof(phdr)))
@@ -2321,9 +2270,10 @@ static int elf_core_dump(struct coredump_params *cprm)
 	if (!dump_skip(cprm, dataoff - cprm->pos))
 		goto cleanup;
 
-	for (i = 0, vma = first_vma(current, gate_vma); vma != NULL;
-			vma = next_vma(vma, gate_vma)) {
-		if (!dump_user_range(cprm, vma->vm_start, vma_filesz[i++]))
+	for (i = 0; i < vma_count; i++) {
+		struct core_vma_metadata *meta = vma_meta + i;
+
+		if (!dump_user_range(cprm, meta->start, meta->dump_size))
 			goto cleanup;
 	}
 	dump_truncate(cprm);
@@ -2339,7 +2289,7 @@ static int elf_core_dump(struct coredump_params *cprm)
 cleanup:
 	free_note_info(&info);
 	kfree(shdr4extnum);
-	kvfree(vma_filesz);
+	kvfree(vma_meta);
 	kfree(phdr4note);
 	return has_dumped;
 }
diff --git a/fs/binfmt_elf_fdpic.c b/fs/binfmt_elf_fdpic.c
index 938f66f4de9b2..bde51f40085b9 100644
--- a/fs/binfmt_elf_fdpic.c
+++ b/fs/binfmt_elf_fdpic.c
@@ -1190,7 +1190,8 @@ static int elf_fdpic_map_file_by_direct_mmap(struct elf_fdpic_params *params,
  *
  * I think we should skip something. But I am not sure how. H.J.
  */
-static int maydump(struct vm_area_struct *vma, unsigned long mm_flags)
+static unsigned long vma_dump_size(struct vm_area_struct *vma,
+				   unsigned long mm_flags)
 {
 	int dump_ok;
 
@@ -1219,7 +1220,7 @@ static int maydump(struct vm_area_struct *vma, unsigned long mm_flags)
 			kdcore("%08lx: %08lx: %s (DAX private)", vma->vm_start,
 			       vma->vm_flags, dump_ok ? "yes" : "no");
 		}
-		return dump_ok;
+		goto out;
 	}
 
 	/* By default, dump shared memory if mapped from an anonymous file. */
@@ -1228,13 +1229,13 @@ static int maydump(struct vm_area_struct *vma, unsigned long mm_flags)
 			dump_ok = test_bit(MMF_DUMP_ANON_SHARED, &mm_flags);
 			kdcore("%08lx: %08lx: %s (share)", vma->vm_start,
 			       vma->vm_flags, dump_ok ? "yes" : "no");
-			return dump_ok;
+			goto out;
 		}
 
 		dump_ok = test_bit(MMF_DUMP_MAPPED_SHARED, &mm_flags);
 		kdcore("%08lx: %08lx: %s (share)", vma->vm_start,
 		       vma->vm_flags, dump_ok ? "yes" : "no");
-		return dump_ok;
+		goto out;
 	}
 
 #ifdef CONFIG_MMU
@@ -1243,14 +1244,16 @@ static int maydump(struct vm_area_struct *vma, unsigned long mm_flags)
 		dump_ok = test_bit(MMF_DUMP_MAPPED_PRIVATE, &mm_flags);
 		kdcore("%08lx: %08lx: %s (!anon)", vma->vm_start,
 		       vma->vm_flags, dump_ok ? "yes" : "no");
-		return dump_ok;
+		goto out;
 	}
 #endif
 
 	dump_ok = test_bit(MMF_DUMP_ANON_PRIVATE, &mm_flags);
 	kdcore("%08lx: %08lx: %s", vma->vm_start, vma->vm_flags,
 	       dump_ok ? "yes" : "no");
-	return dump_ok;
+
+out:
+	return dump_ok ? vma->vm_end - vma->vm_start : 0;
 }
 
 /* An ELF note in memory */
@@ -1490,31 +1493,30 @@ static void fill_extnum_info(struct elfhdr *elf, struct elf_shdr *shdr4extnum,
 /*
  * dump the segments for an MMU process
  */
-static bool elf_fdpic_dump_segments(struct coredump_params *cprm)
+static bool elf_fdpic_dump_segments(struct coredump_params *cprm,
+				    struct core_vma_metadata *vma_meta,
+				    int vma_count)
 {
-	struct vm_area_struct *vma;
+	int i;
 
-	for (vma = current->mm->mmap; vma; vma = vma->vm_next) {
-		unsigned long addr;
+	for (i = 0; i < vma_count; i++) {
+		struct core_vma_metadata *meta = vma_meta + i;
 
-		if (!maydump(vma, cprm->mm_flags))
-			continue;
-
-		if (!dump_user_range(cprm, vma->vm_start,
-				     vma->vma_end - vma->vm_start))
+		if (!dump_user_range(cprm, meta->start, meta->dump_size))
 			return false;
 	}
 	return true;
 }
 
-static size_t elf_core_vma_data_size(unsigned long mm_flags)
+static size_t elf_core_vma_data_size(unsigned long mm_flags,
+				     struct core_vma_metadata *vma_meta,
+				     int vma_count)
 {
-	struct vm_area_struct *vma;
 	size_t size = 0;
+	int i;
 
-	for (vma = current->mm->mmap; vma; vma = vma->vm_next)
-		if (maydump(vma, mm_flags))
-			size += vma->vm_end - vma->vm_start;
+	for (i = 0; i < vma_count; i++)
+		size += vma_meta[i].dump_size;
 	return size;
 }
 
@@ -1529,9 +1531,8 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 {
 #define	NUM_NOTES	6
 	int has_dumped = 0;
-	int segs;
+	int vma_count, segs;
 	int i;
-	struct vm_area_struct *vma;
 	struct elfhdr *elf = NULL;
 	loff_t offset = 0, dataoff;
 	int numnote;
@@ -1552,18 +1553,7 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 	elf_addr_t e_shoff;
 	struct core_thread *ct;
 	struct elf_thread_status *tmp;
-
-	/*
-	 * We no longer stop all VM operations.
-	 *
-	 * This is because those proceses that could possibly change map_count
-	 * or the mmap / vma pages are now blocked in do_exit on current
-	 * finishing this core dump.
-	 *
-	 * Only ptrace can touch these memory addresses, but it doesn't change
-	 * the map_count or the pages allocated. So no possibility of crashing
-	 * exists while dumping the mm->vm_next areas to the core file.
-	 */
+	struct core_vma_metadata *vma_meta = NULL;
 
 	/* alloc memory for large data structures: too large to be on stack */
 	elf = kmalloc(sizeof(*elf), GFP_KERNEL);
@@ -1588,6 +1578,9 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 		goto cleanup;
 #endif
 
+	if (dump_vma_snapshot(cprm, &vma_count, &vma_meta, vma_dump_size))
+		goto cleanup;
+
 	for (ct = current->mm->core_state->dumper.next;
 					ct; ct = ct->next) {
 		tmp = kzalloc(sizeof(*tmp), GFP_KERNEL);
@@ -1611,8 +1604,7 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 	fill_prstatus(prstatus, current, cprm->siginfo->si_signo);
 	elf_core_copy_regs(&prstatus->pr_reg, cprm->regs);
 
-	segs = current->mm->map_count;
-	segs += elf_core_extra_phdrs();
+	segs = vma_count + elf_core_extra_phdrs();
 
 	/* for notes section */
 	segs++;
@@ -1680,7 +1672,7 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 	/* Page-align dumped data */
 	dataoff = offset = roundup(offset, ELF_EXEC_PAGESIZE);
 
-	offset += elf_core_vma_data_size(cprm->mm_flags);
+	offset += elf_core_vma_data_size(cprm->mm_flags, vma_meta, vma_count);
 	offset += elf_core_extra_data_size();
 	e_shoff = offset;
 
@@ -1700,24 +1692,23 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 		goto cleanup;
 
 	/* write program headers for segments dump */
-	for (vma = current->mm->mmap; vma; vma = vma->vm_next) {
+	for (i = 0; i < vma_count; i++) {
+		struct core_vma_metadata *meta = vma_meta + i;
 		struct elf_phdr phdr;
 		size_t sz;
 
-		sz = vma->vm_end - vma->vm_start;
+		sz = meta->end - meta->start;
 
 		phdr.p_type = PT_LOAD;
 		phdr.p_offset = offset;
-		phdr.p_vaddr = vma->vm_start;
+		phdr.p_vaddr = meta->start;
 		phdr.p_paddr = 0;
-		phdr.p_filesz = maydump(vma, cprm->mm_flags) ? sz : 0;
+		phdr.p_filesz = meta->dump_size;
 		phdr.p_memsz = sz;
 		offset += phdr.p_filesz;
-		phdr.p_flags = vma->vm_flags & VM_READ ? PF_R : 0;
-		if (vma->vm_flags & VM_WRITE)
-			phdr.p_flags |= PF_W;
-		if (vma->vm_flags & VM_EXEC)
-			phdr.p_flags |= PF_X;
+		phdr.p_flags = meta->flags & VM_READ ? PF_R : 0;
+		phdr.p_flags |= meta->flags & VM_WRITE ? PF_W : 0;
+		phdr.p_flags |= meta->flags & VM_EXEC ? PF_X : 0;
 		phdr.p_align = ELF_EXEC_PAGESIZE;
 
 		if (!dump_emit(cprm, &phdr, sizeof(phdr)))
@@ -1745,7 +1736,7 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 	if (!dump_skip(cprm, dataoff - cprm->pos))
 		goto cleanup;
 
-	if (!elf_fdpic_dump_segments(cprm))
+	if (!elf_fdpic_dump_segments(cprm, vma_meta, vma_count))
 		goto cleanup;
 
 	if (!elf_core_write_extra_data(cprm))
@@ -1769,6 +1760,7 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 		list_del(tmp);
 		kfree(list_entry(tmp, struct elf_thread_status, list));
 	}
+	kvfree(vma_meta);
 	kfree(phdr4note);
 	kfree(elf);
 	kfree(prstatus);
diff --git a/fs/coredump.c b/fs/coredump.c
index 88f625eecaac1..4213eab89190f 100644
--- a/fs/coredump.c
+++ b/fs/coredump.c
@@ -918,3 +918,71 @@ void dump_truncate(struct coredump_params *cprm)
 	}
 }
 EXPORT_SYMBOL(dump_truncate);
+
+static struct vm_area_struct *first_vma(struct task_struct *tsk,
+					struct vm_area_struct *gate_vma)
+{
+	struct vm_area_struct *ret = tsk->mm->mmap;
+
+	if (ret)
+		return ret;
+	return gate_vma;
+}
+/*
+ * Helper function for iterating across a vma list.  It ensures that the caller
+ * will visit `gate_vma' prior to terminating the search.
+ */
+static struct vm_area_struct *next_vma(struct vm_area_struct *this_vma,
+				       struct vm_area_struct *gate_vma)
+{
+	struct vm_area_struct *ret;
+
+	ret = this_vma->vm_next;
+	if (ret)
+		return ret;
+	if (this_vma == gate_vma)
+		return NULL;
+	return gate_vma;
+}
+
+/*
+ * Under the mmap_sem, take a snapshot of relevant information about the task's
+ * VMAs.
+ */
+int dump_vma_snapshot(struct coredump_params *cprm, int *vma_count,
+	struct core_vma_metadata **vma_meta,
+	unsigned long (*dump_size_cb)(struct vm_area_struct *, unsigned long))
+{
+	struct vm_area_struct *vma, *gate_vma;
+	struct mm_struct *mm = current->mm;
+	int i;
+
+	if (down_read_killable(&mm->mmap_sem))
+		return -EINTR;
+
+	gate_vma = get_gate_vma(mm);
+	*vma_count = mm->map_count + (gate_vma ? 1 : 0);
+
+	*vma_meta = kvmalloc_array(*vma_count, sizeof(**vma_meta), GFP_KERNEL);
+	if (!*vma_meta) {
+		up_read(&mm->mmap_sem);
+		return -ENOMEM;
+	}
+
+	for (i = 0, vma = first_vma(current, gate_vma); vma != NULL;
+			vma = next_vma(vma, gate_vma)) {
+		(*vma_meta)[i++] = (struct core_vma_metadata) {
+			.start = vma->vm_start,
+			.end = vma->vm_end,
+			.flags = vma->vm_flags,
+			.dump_size = dump_size_cb(vma, cprm->mm_flags)
+		};
+	}
+
+	up_read(&mm->mmap_sem);
+
+	if (WARN_ON(i != *vma_count))
+		return -EFAULT;
+
+	return 0;
+}
diff --git a/include/linux/coredump.h b/include/linux/coredump.h
index 4289dc21c04ff..d3387866dce7b 100644
--- a/include/linux/coredump.h
+++ b/include/linux/coredump.h
@@ -7,6 +7,13 @@
 #include <linux/fs.h>
 #include <asm/siginfo.h>
 
+struct core_vma_metadata {
+	unsigned long start, end;
+	unsigned long filesize;
+	unsigned long flags;
+	unsigned long dump_size;
+};
+
 /*
  * These are the only things you should do on a core-file: use only these
  * functions to write out all the necessary info.
@@ -18,6 +25,9 @@ extern int dump_align(struct coredump_params *cprm, int align);
 extern void dump_truncate(struct coredump_params *cprm);
 int dump_user_range(struct coredump_params *cprm, unsigned long start,
 		    unsigned long len);
+int dump_vma_snapshot(struct coredump_params *cprm, int *vma_count,
+	struct core_vma_metadata **vma_meta,
+	unsigned long (*dump_size_cb)(struct vm_area_struct *, unsigned long));
 #ifdef CONFIG_COREDUMP
 extern void do_coredump(const kernel_siginfo_t *siginfo);
 #else
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
