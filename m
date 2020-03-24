Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF821911AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYFFaL8xXm1BrM4PYGCx/TbbYVoX58C/CUs6d9qotjY=; b=m8Kv7O83d0wtOt
	Cp9+0WjGkTNcYwLPDYH9oOyQ8H4dVxZwCznxaHA1gPrPENLR7tHbYXf0/Gi6Z6pO4bF84sfICv748
	vqGFh5KSH+kA0xQ6pCWvMnImnawMrKt9/ZUjcNMTIaGHVYffhWHn1L//8u+g/P77L9KJXGxCcXrKx
	U5LNJ/ZcySCacUWGorjmBDVVFYGVgaYp+01DZUIzjvd9N6FexqOX8+ekh34i2mtuE4cmxW05LY+Hu
	XXV7NSTLkbSq9E3J2eUVottRnHRcA9j6OnMq0uAhU0IKWCc+1lYVXjfx95yHPuqt5KfI47Ee4Rpw1
	/AY5pCgvlZsC35tTX/7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjtD-0006pz-9u; Tue, 24 Mar 2020 13:46:43 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjsk-0006cR-O3
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:46:16 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5368CAA17414541C128E;
 Tue, 24 Mar 2020 21:46:11 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 24 Mar 2020 21:46:04 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>, <catalin.marinas@arm.com>,
 <aneesh.kumar@linux.ibm.com>, <akpm@linux-foundation.org>,
 <npiggin@gmail.com>, <peterz@infradead.org>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v4 4/6] mm: Add page table level flags to vm_flags
Date: Tue, 24 Mar 2020 21:45:32 +0800
Message-ID: <20200324134534.1570-5-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200324134534.1570-1-yezhenyu2@huawei.com>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_064614_946830_9B71887E 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add VM_LEVEL_[PUD|PMD|PTE] to vm_flags to indicate which level of
the page tables the vma is in. Those flags can be used to reduce
the cost of TLB invalidation.

These should be common flags for all architectures, however, those
flags are only available in 64-bits system currently, because the
lower-order flags are fully used.

These flags are only used by ARM64 architecture now. See in next
patch.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 include/linux/mm.h             | 10 ++++++++++
 include/trace/events/mmflags.h | 15 ++++++++++++++-
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index c54fb96cb1e6..3ff16ffa5e83 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -313,6 +313,16 @@ extern unsigned int kobjsize(const void *objp);
 #endif
 #endif /* CONFIG_ARCH_HAS_PKEYS */
 
+#ifdef CONFIG_64BIT
+# define VM_LEVEL_PUD	BIT(37)		/* vma is in pud-level of page table */
+# define VM_LEVEL_PMD	BIT(38)		/* vma is in pmd-level of page table */
+# define VM_LEVEL_PTE	BIT(39)		/* vma is in pte-level of page table */
+#else
+# define VM_LEVEL_PUD	0
+# define VM_LEVEL_PMD	0
+# define VM_LEVEL_PTE	0
+#endif /* CONFIG_64BIT */
+
 #if defined(CONFIG_X86)
 # define VM_PAT		VM_ARCH_1	/* PAT reserves whole VMA at once (x86) */
 #elif defined(CONFIG_PPC)
diff --git a/include/trace/events/mmflags.h b/include/trace/events/mmflags.h
index a1675d43777e..9f13cfa96f9f 100644
--- a/include/trace/events/mmflags.h
+++ b/include/trace/events/mmflags.h
@@ -130,6 +130,16 @@ IF_HAVE_PG_IDLE(PG_idle,		"idle"		)
 #define IF_HAVE_VM_SOFTDIRTY(flag,name)
 #endif
 
+#ifdef CONFIG_64BIT
+#define IF_HAVE_VM_LEVEL_PUD(flag,name)	{flag, name}
+#define IF_HAVE_VM_LEVEL_PMD(flag,name)	{flag, name}
+#define IF_HAVE_VM_LEVEL_PTE(flag,name)	{flag, name}
+#else
+#define IF_HAVE_VM_LEVEL_PUD(flag,name)
+#define IF_HAVE_VM_LEVEL_PMD(flag,name)
+#define IF_HAVE_VM_LEVEL_PTE(flag,name)
+#endif
+
 #define __def_vmaflag_names						\
 	{VM_READ,			"read"		},		\
 	{VM_WRITE,			"write"		},		\
@@ -161,7 +171,10 @@ IF_HAVE_VM_SOFTDIRTY(VM_SOFTDIRTY,	"softdirty"	)		\
 	{VM_MIXEDMAP,			"mixedmap"	},		\
 	{VM_HUGEPAGE,			"hugepage"	},		\
 	{VM_NOHUGEPAGE,			"nohugepage"	},		\
-	{VM_MERGEABLE,			"mergeable"	}		\
+	{VM_MERGEABLE,			"mergeable"	},		\
+IF_HAVE_VM_LEVEL_PUD(VM_LEVEL_PUD,	"pud-level"	),		\
+IF_HAVE_VM_LEVEL_PMD(VM_LEVEL_PMD,	"pmd-level"	),		\
+IF_HAVE_VM_LEVEL_PTE(VM_LEVEL_PTE,	"pte-level"	)		\
 
 #define show_vma_flags(flags)						\
 	(flags) ? __print_flags(flags, "|",				\
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
