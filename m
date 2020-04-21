Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074781B29B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9y/wcDvwyPhrJ/Q7K2dK6o8cWwxkADZx7zIO6tks2Rc=; b=Vy6YGXOvGnGcCH
	Je9Qt76Nj5xFexkXjpbM1Pdxhj225eFkpAxNTjJoVXnFJCNwesF9kW1yjaGh98jzF42shqcrME6jp
	3YT0WaI1mPhAak29Uvjr62BeOgBVzfugD5EtcQdS0sENUwTICjen5JrPtZHy9W3jadwBkzG/iHhcK
	vLj2csvyQ0OukNQvQ8DlLk8lticLw4kYv3Up/6uHQ2HfpofXWvDlDLooPWhUAQLWBV7HtvCF5YcM6
	KuLLNxbWSssA7XWqHgB937vvt4iujLBVA1Xp7pGvQRd9OcvAW37Xi7JZM/NZ1r/Gw046BwMDB/DmJ
	9EfW/jji/R/1sjFmvPmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtvV-0005lA-Op; Tue, 21 Apr 2020 14:31:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtr9-0008HM-G5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:26:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 097C131B;
 Tue, 21 Apr 2020 07:26:35 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7A5283F68F;
 Tue, 21 Apr 2020 07:26:33 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 13/23] mm: Introduce arch_validate_flags()
Date: Tue, 21 Apr 2020 15:25:53 +0100
Message-Id: <20200421142603.3894-14-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142603.3894-1-catalin.marinas@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_072635_667651_1900D607 
X-CRM114-Status: GOOD (  12.38  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similarly to arch_validate_prot() called from do_mprotect_pkey(), an
architecture may need to sanity-check the new vm_flags.

Define a dummy function always returning true. In addition to
do_mprotect_pkey(), also invoke it from mmap_region() prior to updating
vma->vm_page_prot to allow the architecture code to veto potentially
inconsistent vm_flags.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

Notes:
    v2:
    - Some comments updated.

 include/linux/mman.h | 13 +++++++++++++
 mm/mmap.c            |  9 +++++++++
 mm/mprotect.c        |  6 ++++++
 3 files changed, 28 insertions(+)

diff --git a/include/linux/mman.h b/include/linux/mman.h
index 15c1162b9d65..09dd414b81b6 100644
--- a/include/linux/mman.h
+++ b/include/linux/mman.h
@@ -103,6 +103,19 @@ static inline bool arch_validate_prot(unsigned long prot, unsigned long addr)
 #define arch_validate_prot arch_validate_prot
 #endif
 
+#ifndef arch_validate_flags
+/*
+ * This is called from mmap() and mprotect() with the updated vma->vm_flags.
+ *
+ * Returns true if the VM_* flags are valid.
+ */
+static inline bool arch_validate_flags(unsigned long flags)
+{
+	return true;
+}
+#define arch_validate_flags arch_validate_flags
+#endif
+
 /*
  * Optimisation macro.  It is equivalent to:
  *      (x & bit1) ? bit2 : 0
diff --git a/mm/mmap.c b/mm/mmap.c
index f609e9ec4a25..d5fc93c2072e 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -1792,6 +1792,15 @@ unsigned long mmap_region(struct file *file, unsigned long addr,
 		vma_set_anonymous(vma);
 	}
 
+	/* Allow architectures to sanity-check the vm_flags */
+	if (!arch_validate_flags(vma->vm_flags)) {
+		error = -EINVAL;
+		if (file)
+			goto unmap_and_free_vma;
+		else
+			goto free_vma;
+	}
+
 	vma_link(mm, vma, prev, rb_link, rb_parent);
 	/* Once vma denies write, undo our temporary denial count */
 	if (file) {
diff --git a/mm/mprotect.c b/mm/mprotect.c
index 494192ca954b..04b1d2cf0e74 100644
--- a/mm/mprotect.c
+++ b/mm/mprotect.c
@@ -603,6 +603,12 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
 			goto out;
 		}
 
+		/* Allow architectures to sanity-check the new flags */
+		if (!arch_validate_flags(newflags)) {
+			error = -EINVAL;
+			goto out;
+		}
+
 		error = security_file_mprotect(vma, reqprot, prot);
 		if (error)
 			goto out;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
