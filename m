Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8268AC822
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPfJNOobITpddnONE49G90N570OdzCK49aQxZzF+2gc=; b=T6Xv97yYcwqENp
	LiltwlLi1sPGT7L8INizEjAwY2WVsdgq3UKz7Dbzxy/3f57l5BfJwp7Zo+gyeAptjyl3xPZ+sF/mx
	22s93UYPuZq5jCaKjPoDJAXNRdsno4I44cj3Jgfhf93837mvdefuTKXiquyWxsp+pQFj2uPuHN+cv
	TDjS/Vy6bUtbmUylFGvdf5INzkQTASRA5kqh1qPl3eSYdZ8W35YXYhLJZ81LRKvNz4fBEzb1LKnUu
	CawWP5c+o2HMPrKtmYBU6HoQRy0+zKrZEM33XR/KP8HRD5Pqbs7ToxHzEuwo/lucebjGtZFHz/Ilm
	M8NzM1V6lh6DqvH32mSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eUD-0000hL-Oe; Sat, 07 Sep 2019 17:26:58 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eT6-0008OK-RJ
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:25:50 +0000
Received: by mail-oi1-x242.google.com with SMTP id e12so7304375oie.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=kSopJtjN0Bct/j9/oVkg8pXbs8bfoPtfq3tp15cWbFA=;
 b=GP196UxhtesI4DpzLroLGitq6AT3yCg6JIv7eHeX5bE512Bt2rY5UX8Owl6UWaLuqS
 KBU4alhzy/RjfOR2TD2kzxNOol1Dd7elx6QeLBSjvXAWYZ6J72Ui7zxbgwBqcpRN3GUw
 HM+GqbVngxARkCzWLz6bcneox7MpCZMhaZa7BbElkS22E1/H9BVwFHjSHB7D8HdTnNB8
 s9D7U+SPL6HVQH4GdqLxg+X1sIFEo1PwYNdUecPhL42WU/f2CPZGoIfUWj2ABQ0FomHv
 p1CyrMS2490/kosLr9EtAAYUk6zgj+NGlrqlwd2lM4GhpruzQf8L1+BRJ/tGzqsdCmoi
 ndmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=kSopJtjN0Bct/j9/oVkg8pXbs8bfoPtfq3tp15cWbFA=;
 b=FpeBRZklE2cfr7Ub2h94fL9ibTuWP++2ghIgbIr87OAtdNmKqh0ZCv1AWKi5e8LlY7
 V1PQOWCxAdiJRJ4r5pZjFNkNPC0voutD6/KRM/ANbz4FKhk1bixlwDg+UWSV4AYX6ZgZ
 /krRppE1rZTHCixRmEivu79TPO0VHdk3t+dRNEQi0ozQBfkPWiOL28OZFzKmt/EHqOtx
 38p7iGrs5pEngBIGFlOPGMOZDWt4s1bPuuu19RqkvDYRrlAWYcF4dc2URL4Owcfy2CDS
 fIxGEgYgv/NhVZXFYvYlXhhmUhkG655nLp/tCfslrMqn5Bm1I3Dkc16cv6Rlki9hUpms
 8/gw==
X-Gm-Message-State: APjAAAWQNNi4cZ3q10i/e7KZl3BXUchBimj8sUBX1A5ivKp+2UpnDvhT
 uQvHWoPbxpNy5dgsPrVYtbw=
X-Google-Smtp-Source: APXvYqx2weNfO8K71L99snv6nx65rVmU19IskIQeolfUre8SXryHDBsQbX2DReh7lqCg7Zl0p2XdAA==
X-Received: by 2002:aca:2105:: with SMTP id 5mr9598351oiz.84.1567877148171;
 Sat, 07 Sep 2019 10:25:48 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id x6sm4135651ote.69.2019.09.07.10.25.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:25:47 -0700 (PDT)
Subject: [PATCH v9 5/8] arm64: Move hugetlb related definitions out of
 pgtable.h to page-defs.h
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 catalin.marinas@arm.com, david@redhat.com, dave.hansen@intel.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, mhocko@kernel.org,
 linux-mm@kvack.org, akpm@linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Sat, 07 Sep 2019 10:25:45 -0700
Message-ID: <20190907172545.10910.88045.stgit@localhost.localdomain>
In-Reply-To: <20190907172225.10910.34302.stgit@localhost.localdomain>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_102549_106840_B16F8634 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, ying.huang@intel.com, lcapitulino@redhat.com,
 wei.w.wang@intel.com, aarcange@redhat.com, nitesh@redhat.com,
 pbonzini@redhat.com, dan.j.williams@intel.com, fengguang.wu@intel.com,
 alexander.h.duyck@linux.intel.com, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Move the static definition for things such as HUGETLB_PAGE_ORDER out of
asm/pgtable.h and place it in page-defs.h. By doing this the includes
become much easier to deal with as currently arm64 is the only architecture
that didn't include this definition in the asm/page.h file or a file
included by it.

It also makes logical sense as PAGE_SHIFT was already defined in
page-defs.h so now we also have HPAGE_SHIFT defined there as well.

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 arch/arm64/include/asm/page-def.h |    9 +++++++++
 arch/arm64/include/asm/pgtable.h  |    9 ---------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/page-def.h b/arch/arm64/include/asm/page-def.h
index f99d48ecbeef..1c5b079e2482 100644
--- a/arch/arm64/include/asm/page-def.h
+++ b/arch/arm64/include/asm/page-def.h
@@ -20,4 +20,13 @@
 #define CONT_SIZE		(_AC(1, UL) << (CONT_SHIFT + PAGE_SHIFT))
 #define CONT_MASK		(~(CONT_SIZE-1))
 
+/*
+ * Hugetlb definitions.
+ */
+#define HUGE_MAX_HSTATE		4
+#define HPAGE_SHIFT		PMD_SHIFT
+#define HPAGE_SIZE		(_AC(1, UL) << HPAGE_SHIFT)
+#define HPAGE_MASK		(~(HPAGE_SIZE - 1))
+#define HUGETLB_PAGE_ORDER	(HPAGE_SHIFT - PAGE_SHIFT)
+
 #endif /* __ASM_PAGE_DEF_H */
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 7576df00eb50..06a376de9bd6 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -305,15 +305,6 @@ static inline int pte_same(pte_t pte_a, pte_t pte_b)
  */
 #define pte_mkhuge(pte)		(__pte(pte_val(pte) & ~PTE_TABLE_BIT))
 
-/*
- * Hugetlb definitions.
- */
-#define HUGE_MAX_HSTATE		4
-#define HPAGE_SHIFT		PMD_SHIFT
-#define HPAGE_SIZE		(_AC(1, UL) << HPAGE_SHIFT)
-#define HPAGE_MASK		(~(HPAGE_SIZE - 1))
-#define HUGETLB_PAGE_ORDER	(HPAGE_SHIFT - PAGE_SHIFT)
-
 static inline pte_t pgd_pte(pgd_t pgd)
 {
 	return __pte(pgd_val(pgd));


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
