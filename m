Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F04CDC254
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dpsl6PPGWgjRAVKGPiBhdobiyJUMt3W1Pp9f6QBY3hU=; b=itk0yxSPhyaUbb
	oz1ONOvgKCDmw/RYW5dqgfO4/8YcPYf/2QLUx9MhGPGaQLgSGhRxut0aVXo4nZtZ/So84Gq9tMuMt
	sa6AL+GgPHlj5Ro+frsuvEZVq1j+ChR+Lvyibvip2XvNERLqNe8ldKgzeQGCZ+LWMZSPc0H2q0Rfx
	RrnPascI86mBMrRomW3UrJhXv8xKMA4SNwiOaAf1yulWKagtHP6fPRQKdfZGaCa2tBIoEpuwNm897
	+Meb4B2Ud0ZhkHL+YN+ly/SIoB1j42GXvgA9tmuHY8OLh56DH8DmmdkKCQZAn4BbhRLDY9/hMFObf
	JB/aXPzk86N4Vg5Ixxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPH4-0000jA-PO; Fri, 18 Oct 2019 10:14:22 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPFx-0000Cl-8H; Fri, 18 Oct 2019 10:13:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD7194A7;
 Fri, 18 Oct 2019 03:13:06 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2BF23F6C4;
 Fri, 18 Oct 2019 03:13:03 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v12 02/22] arc: mm: Add p?d_leaf() definitions
Date: Fri, 18 Oct 2019 11:12:28 +0100
Message-Id: <20191018101248.33727-3-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018101248.33727-1-steven.price@arm.com>
References: <20191018101248.33727-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_031313_339457_E27B3489 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, "Liang, Kan" <kan.liang@linux.intel.com>,
 x86@kernel.org, Steven Price <steven.price@arm.com>,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

walk_page_range() is going to be allowed to walk page tables other than
those of user space. For this it needs to know when it has reached a
'leaf' entry in the page tables. This information will be provided by the
p?d_leaf() functions/macros.

For arc, we only have two levels, so only pmd_leaf() is needed.

CC: Vineet Gupta <vgupta@synopsys.com>
CC: linux-snps-arc@lists.infradead.org
Acked-by: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arc/include/asm/pgtable.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arc/include/asm/pgtable.h b/arch/arc/include/asm/pgtable.h
index 7addd0301c51..5ec798e50836 100644
--- a/arch/arc/include/asm/pgtable.h
+++ b/arch/arc/include/asm/pgtable.h
@@ -274,6 +274,7 @@ static inline void pmd_set(pmd_t *pmdp, pte_t *ptep)
 #define pmd_none(x)			(!pmd_val(x))
 #define	pmd_bad(x)			((pmd_val(x) & ~PAGE_MASK))
 #define pmd_present(x)			(pmd_val(x))
+#define pmd_leaf(x)			(pmd_val(pmd) & _PAGE_HW_SZ)
 #define pmd_clear(xp)			do { pmd_val(*(xp)) = 0; } while (0)
 
 #define pte_page(pte)		pfn_to_page(pte_pfn(pte))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
