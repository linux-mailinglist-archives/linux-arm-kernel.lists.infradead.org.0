Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999D67C730
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkuZic3oH+RQXx7zPDnIe1+xHY7acWmu0a0Q5eTEEEg=; b=ECs5rgJEu7mlZR
	SLtwkAI4zSlnH5lc2a1rSL3q/jlhfSdNTWLbeO4DqP2VEC5Mh6JpO5vU89qIs+pYFc4jRY4emkulI
	dSDNI0nrqNvb6ALnjhBpyjsAMjLBoibYtEka8bMe5gw2ykHTunpSGLl51QNIxI75RfeZm4lxYalz0
	79nCNmy6GAdVqwAwguyzRpqOwN1fFrJWSGs2vZE8n8TiGCXqhRlSH3SvDLh5wjBlBxeMs0g0LyjT5
	DfxOWmAyF5iNRzW8c6TIOyCH8N7KIYDvu9OZzOXottAA/TmafSbxydJEkmN7r4JfVdlO42kzRWQce
	H2/rnynT1f1rRl9V6UPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqoi-0005vH-FX; Wed, 31 Jul 2019 15:47:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqo0-0005JN-St
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:46:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 668A21596;
 Wed, 31 Jul 2019 08:46:20 -0700 (PDT)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B66633F694;
 Wed, 31 Jul 2019 08:46:17 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v10 03/22] arm: mm: Add p?d_leaf() definitions
Date: Wed, 31 Jul 2019 16:45:44 +0100
Message-Id: <20190731154603.41797-4-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731154603.41797-1-steven.price@arm.com>
References: <20190731154603.41797-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_084620_997597_A5EC495E 
X-CRM114-Status: GOOD (  11.84  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Russell King <linux@armlinux.org.uk>,
 x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

walk_page_range() is going to be allowed to walk page tables other than
those of user space. For this it needs to know when it has reached a
'leaf' entry in the page tables. This information is provided by the
p?d_leaf() functions/macros.

For arm pmd_large() already exists and does what we want. So simply
provide the generic pmd_leaf() name.

CC: Russell King <linux@armlinux.org.uk>
CC: linux-arm-kernel@lists.infradead.org
Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm/include/asm/pgtable-2level.h | 1 +
 arch/arm/include/asm/pgtable-3level.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/pgtable-2level.h b/arch/arm/include/asm/pgtable-2level.h
index 51beec41d48c..0d3ea35c97fe 100644
--- a/arch/arm/include/asm/pgtable-2level.h
+++ b/arch/arm/include/asm/pgtable-2level.h
@@ -189,6 +189,7 @@ static inline pmd_t *pmd_offset(pud_t *pud, unsigned long addr)
 }
 
 #define pmd_large(pmd)		(pmd_val(pmd) & 2)
+#define pmd_leaf(pmd)		(pmd_val(pmd) & 2)
 #define pmd_bad(pmd)		(pmd_val(pmd) & 2)
 #define pmd_present(pmd)	(pmd_val(pmd))
 
diff --git a/arch/arm/include/asm/pgtable-3level.h b/arch/arm/include/asm/pgtable-3level.h
index 5b18295021a0..ad55ab068dbf 100644
--- a/arch/arm/include/asm/pgtable-3level.h
+++ b/arch/arm/include/asm/pgtable-3level.h
@@ -134,6 +134,7 @@
 #define pmd_sect(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
 						 PMD_TYPE_SECT)
 #define pmd_large(pmd)		pmd_sect(pmd)
+#define pmd_leaf(pmd)		pmd_sect(pmd)
 
 #define pud_clear(pudp)			\
 	do {				\
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
