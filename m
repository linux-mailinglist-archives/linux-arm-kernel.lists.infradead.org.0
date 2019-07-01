Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633035B534
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 08:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVwdm9fnJ0p0cbDdvxeJO3UNFI9SsCULpYMT50LqrcE=; b=JjyM6XG07C+Bad
	EQFDpu7FgijCTgwRdkL3BhRYkSMoSg4JDorzU7jLuRAn6yR4Xui0LDeZZQq8+TfAou1EFMPhTPC6I
	G8Hnw5Yxc9wIvk55XIPtC64dcGfUxPkW6sVqNGWZ/i3IDuVFjkmQHZcqkuI3nCjlMUF3RKsf4ItfZ
	tnJ4cdh5RqT8u3yMXaHvN4YtNJflzZdKie/YZWT9SlRxywP5ynjhCAcpIRMOEJoWLGPF4NB2ZL/T1
	E5a0fO6iJ20mt6QafnvDUaiHal4KyEM2YbnpKmWFpPDH8k9Sk3RhV3cY69NmsgUQ49yw1euDKmUhq
	SJv3IeabjqdRqduJOcNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhq0o-0006Iv-Jq; Mon, 01 Jul 2019 06:42:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhpzp-0005hr-QP
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 06:41:03 +0000
Received: by mail-pl1-x643.google.com with SMTP id c14so6810377plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 23:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=smDmHv6fTQfEC2Xw13QJ3CuxW2VIYrqrjOiGuS7E8nY=;
 b=bizikAVg98c+yn3J0ciWcHUsmX+eyH5Ec+Sx1ENDwBE32Rx/0lg8b1PCfc37WCUEDP
 jvLHutEpkCjCeKIF+3OCxCQD2xwfD1eqZv22X/0xYJQ2gfkR6T5h9U/i3UGWyxnopCfA
 Lc9xD+81BMSV0KJwxT6Zl8kgkeypStm0C7tCePD/8Phv4vhKKMSzIoSCKbqq4aQcXAk2
 zSivyt8fYuQ9m/IJ5Iloms2K0emcTQysfKlLQHpo7SvscAXV2YkufHhBN7FSL1dpYBzJ
 hW4BMvvO1kSJHQ22hVPW5au0hnygWqK2g/+kZgrcqWqf4S6z9Rb8Swfe1cQTUPSpss9b
 XiSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=smDmHv6fTQfEC2Xw13QJ3CuxW2VIYrqrjOiGuS7E8nY=;
 b=qdu4yMkldVdg0FKox/RnjE9fvEqzI4WGZiYndmKEW8yDr6cwEFE2nzhhOqlhKvDjrv
 5xS+KkEYn6tpSdB5VG5HjZBUJbZWq7pqBG3PSOeR9SZZltIXJ4ZnuF0mq7R4ZvOxzcEy
 WkriB8MKeHCXuzZX5pGhBY1LPqi7xYjWiIZcdSf1aTnfIt3SGG7Ph6c0RDIFI6hUKQZD
 wfcTebQB8CoA941aL0Su9VQfK4Wyg9XkGOMnttzJqqSXB+CS8XTGFOeeDPyuqyViF3HI
 ENss2ttywWHfjsflBVG9tvR/+pWNIJcxIkRD5k43sxnD7/sOnLtLMrVft47hmxY8EfH7
 syNA==
X-Gm-Message-State: APjAAAVH3W7DemdpZXEaeBeF1vU7QULTXOwRdk4dJvP/OjgEmw553tkk
 zM7euvpYyKDj/zazdAhKloo=
X-Google-Smtp-Source: APXvYqxC3bQxXqpIe85UilgRlX3q9ASs816UdqitUsnjCUP/RYiNALnXskGWa2IYqd1xwqXJJ9Kx/Q==
X-Received: by 2002:a17:902:d887:: with SMTP id
 b7mr27095942plz.28.1561963261105; 
 Sun, 30 Jun 2019 23:41:01 -0700 (PDT)
Received: from bobo.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id x128sm24238285pfd.17.2019.06.30.23.40.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:41:00 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: "linux-mm @ kvack . org" <linux-mm@kvack.org>
Subject: [PATCH v2 3/3] mm/vmalloc: fix vmalloc_to_page for huge vmap mappings
Date: Mon,  1 Jul 2019 16:40:26 +1000
Message-Id: <20190701064026.970-4-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190701064026.970-1-npiggin@gmail.com>
References: <20190701064026.970-1-npiggin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_234101_950452_CC2E0827 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicholas Piggin <npiggin@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev @ lists . ozlabs . org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vmalloc_to_page returns NULL for addresses mapped by larger pages[*].
Whether or not a vmap is huge depends on the architecture details,
alignments, boot options, etc., which the caller can not be expected
to know. Therefore HUGE_VMAP is a regression for vmalloc_to_page.

This change teaches vmalloc_to_page about larger pages, and returns
the struct page that corresponds to the offset within the large page.
This makes the API agnostic to mapping implementation details.

[*] As explained by commit 029c54b095995 ("mm/vmalloc.c: huge-vmap:
    fail gracefully on unexpected huge vmap mappings")

Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
---
 include/asm-generic/4level-fixup.h |  1 +
 include/asm-generic/5level-fixup.h |  1 +
 mm/vmalloc.c                       | 37 +++++++++++++++++++-----------
 3 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
index e3667c9a33a5..3cc65a4dd093 100644
--- a/include/asm-generic/4level-fixup.h
+++ b/include/asm-generic/4level-fixup.h
@@ -20,6 +20,7 @@
 #define pud_none(pud)			0
 #define pud_bad(pud)			0
 #define pud_present(pud)		1
+#define pud_large(pud)			0
 #define pud_ERROR(pud)			do { } while (0)
 #define pud_clear(pud)			pgd_clear(pud)
 #define pud_val(pud)			pgd_val(pud)
diff --git a/include/asm-generic/5level-fixup.h b/include/asm-generic/5level-fixup.h
index bb6cb347018c..c4377db09a4f 100644
--- a/include/asm-generic/5level-fixup.h
+++ b/include/asm-generic/5level-fixup.h
@@ -22,6 +22,7 @@
 #define p4d_none(p4d)			0
 #define p4d_bad(p4d)			0
 #define p4d_present(p4d)		1
+#define p4d_large(p4d)			0
 #define p4d_ERROR(p4d)			do { } while (0)
 #define p4d_clear(p4d)			pgd_clear(p4d)
 #define p4d_val(p4d)			pgd_val(p4d)
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 0f76cca32a1c..09a283866368 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -36,6 +36,7 @@
 #include <linux/rbtree_augmented.h>
 
 #include <linux/uaccess.h>
+#include <asm/pgtable.h>
 #include <asm/tlbflush.h>
 #include <asm/shmparam.h>
 
@@ -284,25 +285,35 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
 
 	if (pgd_none(*pgd))
 		return NULL;
+
 	p4d = p4d_offset(pgd, addr);
 	if (p4d_none(*p4d))
 		return NULL;
-	pud = pud_offset(p4d, addr);
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (p4d_large(*p4d))
+		return p4d_page(*p4d) + ((addr & ~P4D_MASK) >> PAGE_SHIFT);
+#endif
+	if (WARN_ON_ONCE(p4d_bad(*p4d)))
+		return NULL;
 
-	/*
-	 * Don't dereference bad PUD or PMD (below) entries. This will also
-	 * identify huge mappings, which we may encounter on architectures
-	 * that define CONFIG_HAVE_ARCH_HUGE_VMAP=y. Such regions will be
-	 * identified as vmalloc addresses by is_vmalloc_addr(), but are
-	 * not [unambiguously] associated with a struct page, so there is
-	 * no correct value to return for them.
-	 */
-	WARN_ON_ONCE(pud_bad(*pud));
-	if (pud_none(*pud) || pud_bad(*pud))
+	pud = pud_offset(p4d, addr);
+	if (pud_none(*pud))
+		return NULL;
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (pud_large(*pud))
+		return pud_page(*pud) + ((addr & ~PUD_MASK) >> PAGE_SHIFT);
+#endif
+	if (WARN_ON_ONCE(pud_bad(*pud)))
 		return NULL;
+
 	pmd = pmd_offset(pud, addr);
-	WARN_ON_ONCE(pmd_bad(*pmd));
-	if (pmd_none(*pmd) || pmd_bad(*pmd))
+	if (pmd_none(*pmd))
+		return NULL;
+#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
+	if (pmd_large(*pmd))
+		return pmd_page(*pmd) + ((addr & ~PMD_MASK) >> PAGE_SHIFT);
+#endif
+	if (WARN_ON_ONCE(pmd_bad(*pmd)))
 		return NULL;
 
 	ptep = pte_offset_map(pmd, addr);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
