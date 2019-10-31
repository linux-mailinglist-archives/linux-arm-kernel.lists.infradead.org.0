Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9E4EB60A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYx8jFbFIBNUqYW7MrBp5rc6hapdEiVWfTzOVJxoapA=; b=pqV1KT4911qlfv
	yjAgAT/1LRHZC05TrtaBGvLUlABYnBAtjISeraO+bvWJXszlnHE8Sx26lF+Fu10iUhYE5VvCGBNaT
	ddmChlzpsb7WXW3A8GgrZnfyqITM6yug1fn++9Jz+8WP3iSMNGkJ2HZYRgTwT25/H+FE2As+91/TJ
	X4dn6+kHlH7ZB5/2yiBRIyumoX6t3uYlmWbHPwUA7bXFdOq6DresECJfM5MVQzbMKTT0poyd2+svL
	0Qb5E6mVLT5tRfm0RMSvmPiUHXndHKxYoKe9s3999TZz8tX943J1nQ//UbbU7PYjK+/UepYdxMLbk
	mS3o5yerVkBvPHg2attg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEA6-0002Y1-IM; Thu, 31 Oct 2019 17:23:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQE9t-0002XB-0n
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:22:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C50F11FB;
 Thu, 31 Oct 2019 10:22:51 -0700 (PDT)
Received: from arm.com (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFE213F6C4;
 Thu, 31 Oct 2019 10:22:48 -0700 (PDT)
Date: Thu, 31 Oct 2019 17:22:43 +0000
From: Steven Price <steven.price@arm.com>
To: lkp report check <lkp@intel.com>
Subject: Re: [mm] 9343f6818b: BUG:kernel_NULL_pointer_dereference,address
Message-ID: <20191031172241.GA54073@arm.com>
References: <20191028135910.33253-13-steven.price@arm.com>
 <20191031151510.GA16405@xsang-OptiPlex-9020>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031151510.GA16405@xsang-OptiPlex-9020>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_102253_152220_AA82C1FF 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Zong Li <zong.li@sifive.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, "x86@kernel.org" <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, "ltp@lists.linux.it" <ltp@lists.linux.it>,
 Arnd Bergmann <arnd@arndb.de>, "lkp@lists.01.org" <lkp@lists.01.org>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morse <James.Morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 03:15:10PM +0000, kernel test robot wrote:
> FYI, we noticed the following commit (built with gcc-7):
> 
> commit: 9343f6818bb98cf0c982bfff6ed89b2c7176bcf9 ("[PATCH v14 12/22] mm: pagewalk: Allow walking without vma")
> url: https://github.com/0day-ci/linux/commits/Steven-Price/Generic-page-walk-and-ptdump/20191030-085205
> 
[...]
> 
> [   36.010874] BUG: kernel NULL pointer dereference, address: 0000000000000053
> [   36.012644] #PF: supervisor read access in kernel mode
> [   36.014074] #PF: error_code(0x0000) - not-present page
> [   36.015481] PGD 0 P4D 0 
> [   36.016433] Oops: 0000 [#1] SMP PTI
> [   36.017561] CPU: 1 PID: 2376 Comm: mmap12 Not tainted 5.4.0-rc5-00046-g9343f6818bb98 #1
> [   36.019340] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.10.2-1 04/01/2014
> [   36.021250] RIP: 0010:pagemap_pmd_range+0x5ae/0x7b0

So it looks like this has broken /proc/<pid>/pagemap because we can now
call the callbacks with a NULL vma if the region passed into
walk_page_range is (partially) outside the VMA range.

Somehow, in this situation, there is a region which has a PMD entry but
no corresponding VMA. So the pmd_entry callback is called but with
walk->vma==NULL.

The options for fixing this seem to be:
 a) Make the pagemap callback robust against a PMD entry without a VMA.
    For example treating it as a hole (as it would have been before this
    patch):

---8<---
diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
index 9442631fd4af..b6d819c4bbb2 100644
--- a/fs/proc/task_mmu.c
+++ b/fs/proc/task_mmu.c
@@ -1369,6 +1369,9 @@ static int pagemap_pmd_range(pmd_t *pmdp, unsigned long addr, unsigned long end,
 	pte_t *pte, *orig_pte;
 	int err = 0;
 
+	if (!vma)
+		return pagemap_pte_hole(addr, end, walk);
+
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 	ptl = pmd_trans_huge_lock(pmdp, vma);
 	if (ptl) {
---8<---

 b) Provide a flag (or another function) for walk_page_range() which
    restores the previous behaviour. Only those users that want to walk
    ranges without VMAs would then need to deal with NULL-vma returns.

---8<---
diff --git a/include/linux/pagewalk.h b/include/linux/pagewalk.h
index 12004b097eae..519258e8fffa 100644
--- a/include/linux/pagewalk.h
+++ b/include/linux/pagewalk.h
@@ -61,6 +61,7 @@ struct mm_walk {
 	const struct mm_walk_ops *ops;
 	struct mm_struct *mm;
 	struct vm_area_struct *vma;
+	bool ignore_vma;
 	void *private;
 };

diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index 4139e9163aee..f2fccbc3cba8 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -38,7 +38,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
 	do {
 again:
 		next = pmd_addr_end(addr, end);
-		if (pmd_none(*pmd)) {
+		if (pmd_none(*pmd) || (!walk->vma && walk->ignore_vma)) {
 			if (ops->pte_hole)
 				err = ops->pte_hole(addr, next, walk);
 			if (err)
@@ -89,7 +89,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
 	do {
  again:
 		next = pud_addr_end(addr, end);
-		if (pud_none(*pud)) {
+		if (pud_none(*pud) || (!walk->vma && !walk->ignore_vma)) {
 			if (ops->pte_hole)
 				err = ops->pte_hole(addr, next, walk);
 			if (err)
---8<---

I'm currently inclined towards the latter because I don't want to have
to try to audit all existing users in case there's anything similar
lurking in another user of walk_page_range().

Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
