Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8616B124DAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRnctchdwqxwRJQcYsqosRJQSYzhaNtKxgsFsoy9sWs=; b=oybsZ1Si3hqmH2
	YzkcGtXMp8/nvbApVA8zXg1FXICLgddcP7tTSbk/FxaMUh8AbN+IVHPUrUegYwd3uKJ6U+V0i81Tv
	58OVz8MrQQFBO0MzZ72DSA25+evO2ANY7ReHbIs3m4ydVKAigl49owh6Mevj/afLLaCll3f9DZXoZ
	KNnGSjzg4hpneF7J63OaRbELq8Y+sYZ1fb/dfXZrubvMM8Uu2Onpg1xA0lyl0CHMoBYIaA3sfe0Kf
	qKSVRQw0Foq1pQi38K9aBEFCIehWxsMwVSrGzpcan7XZDogWOknrGeJ6nN3dUFFC8n7ETlpDJDZKE
	kDIOXybPCiKr11ScLESg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcFE-000703-M6; Wed, 18 Dec 2019 16:32:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc8D-0007RZ-8J
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:25:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16A2D113E;
 Wed, 18 Dec 2019 08:25:00 -0800 (PST)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 88BCB3F719;
 Wed, 18 Dec 2019 08:24:57 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v17 12/23] mm: pagewalk: Allow walking without vma
Date: Wed, 18 Dec 2019 16:23:51 +0000
Message-Id: <20191218162402.45610-13-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191218162402.45610-1-steven.price@arm.com>
References: <20191218162402.45610-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082501_439108_6B54AAFF 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since 48684a65b4e3: "mm: pagewalk: fix misbehavior of walk_page_range
for vma(VM_PFNMAP)", page_table_walk() will report any kernel area as
a hole, because it lacks a vma.

This means each arch has re-implemented page table walking when needed,
for example in the per-arch ptdump walker.

Remove the requirement to have a vma in the generic code and add a new
function walk_page_range_novma() which ignores the VMAs and simply walks
the page tables.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 include/linux/pagewalk.h |  5 +++++
 mm/pagewalk.c            | 40 ++++++++++++++++++++++++++++++++--------
 2 files changed, 37 insertions(+), 8 deletions(-)

diff --git a/include/linux/pagewalk.h b/include/linux/pagewalk.h
index aa6a0b63964e..d5d07f7a9c14 100644
--- a/include/linux/pagewalk.h
+++ b/include/linux/pagewalk.h
@@ -73,6 +73,7 @@ enum page_walk_action {
  * @mm:		mm_struct representing the target process of page table walk
  * @vma:	vma currently walked (NULL if walking outside vmas)
  * @action:	next action to perform (see enum page_walk_action)
+ * @no_vma:	walk ignoring vmas (vma will always be NULL)
  * @private:	private data for callbacks' usage
  *
  * (see the comment on walk_page_range() for more details)
@@ -82,12 +83,16 @@ struct mm_walk {
 	struct mm_struct *mm;
 	struct vm_area_struct *vma;
 	enum page_walk_action action;
+	bool no_vma;
 	void *private;
 };
 
 int walk_page_range(struct mm_struct *mm, unsigned long start,
 		unsigned long end, const struct mm_walk_ops *ops,
 		void *private);
+int walk_page_range_novma(struct mm_struct *mm, unsigned long start,
+			  unsigned long end, const struct mm_walk_ops *ops,
+			  void *private);
 int walk_page_vma(struct vm_area_struct *vma, const struct mm_walk_ops *ops,
 		void *private);
 int walk_page_mapping(struct address_space *mapping, pgoff_t first_index,
diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index 690af44609e2..d5773465f6da 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -39,7 +39,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
 	do {
 again:
 		next = pmd_addr_end(addr, end);
-		if (pmd_none(*pmd) || !walk->vma) {
+		if (pmd_none(*pmd) || (!walk->vma && !walk->no_vma)) {
 			if (ops->pte_hole)
 				err = ops->pte_hole(addr, next, walk);
 			if (err)
@@ -65,13 +65,16 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
 		 * Check this here so we only break down trans_huge
 		 * pages when we _need_ to
 		 */
-		if (walk->action == ACTION_CONTINUE ||
+		if ((!walk->vma && (pmd_leaf(*pmd) || !pmd_present(*pmd))) ||
+		    walk->action == ACTION_CONTINUE ||
 		    !(ops->pte_entry))
 			continue;
 
-		split_huge_pmd(walk->vma, pmd, addr);
-		if (pmd_trans_unstable(pmd))
-			goto again;
+		if (walk->vma) {
+			split_huge_pmd(walk->vma, pmd, addr);
+			if (pmd_trans_unstable(pmd))
+				goto again;
+		}
 
 		err = walk_pte_range(pmd, addr, next, walk);
 		if (err)
@@ -93,7 +96,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
 	do {
  again:
 		next = pud_addr_end(addr, end);
-		if (pud_none(*pud) || !walk->vma) {
+		if (pud_none(*pud) || (!walk->vma && !walk->no_vma)) {
 			if (ops->pte_hole)
 				err = ops->pte_hole(addr, next, walk);
 			if (err)
@@ -111,11 +114,13 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
 		if (walk->action == ACTION_AGAIN)
 			goto again;
 
-		if (walk->action == ACTION_CONTINUE ||
+		if ((!walk->vma && (pud_leaf(*pud) || !pud_present(*pud))) ||
+		    walk->action == ACTION_CONTINUE ||
 		    !(ops->pmd_entry || ops->pte_entry))
 			continue;
 
-		split_huge_pud(walk->vma, pud, addr);
+		if (walk->vma)
+			split_huge_pud(walk->vma, pud, addr);
 		if (pud_none(*pud))
 			goto again;
 
@@ -389,6 +394,25 @@ int walk_page_range(struct mm_struct *mm, unsigned long start,
 	return err;
 }
 
+int walk_page_range_novma(struct mm_struct *mm, unsigned long start,
+			  unsigned long end, const struct mm_walk_ops *ops,
+			  void *private)
+{
+	struct mm_walk walk = {
+		.ops		= ops,
+		.mm		= mm,
+		.private	= private,
+		.no_vma		= true
+	};
+
+	if (start >= end || !walk.mm)
+		return -EINVAL;
+
+	lockdep_assert_held(&walk.mm->mmap_sem);
+
+	return __walk_page_range(start, end, &walk);
+}
+
 int walk_page_vma(struct vm_area_struct *vma, const struct mm_walk_ops *ops,
 		void *private)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
