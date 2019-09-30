Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9DAC1A0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 03:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eqoOQt8imFmQvmsnNI1cCs0z/P856F1Aw0Ns94ks/L4=; b=QtU0JFjW8RzY+lQT+4gmQAkJst
	aJ99PmLex6cu3rz7e1fHpxjNTrRwvSo9gTWYkGvh5Kzh0sRwxZQPATCN4wrUkT8JY0WWOWeJF2UJc
	5KGlSfMTvvdYM/NUZt7cfHt+0oWfZN3W5X5sl/CBXeVdeEnwbTCFlmVK0xLX5aBdsKT6y/hP0KDiQ
	8jtrgwdkDVRL1UqykNP9bgB4FCehKn8GSVUkyonE3TkbWDxEepoUOTOJGoS2vcAlRKf8vwS4q03oc
	bJggtUPKU8oPB3UwnasEg2ndJEd5heSsshR3S2t59Ocf3C4ddu6TnC+g34FvHV0YzTfhWLLaduUJZ
	jCLaG2IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEkxb-0002EY-5h; Mon, 30 Sep 2019 01:58:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEkww-0001of-Qe
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 01:58:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAC311597;
 Sun, 29 Sep 2019 18:58:01 -0700 (PDT)
Received: from localhost.localdomain (entos-thunderx2-02.shanghai.arm.com
 [10.169.40.54])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DEE5B3F706;
 Sun, 29 Sep 2019 18:57:57 -0700 (PDT)
From: Jia He <justin.he@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v10 2/3] arm64: mm: implement arch_faults_on_old_pte() on arm64
Date: Mon, 30 Sep 2019 09:57:39 +0800
Message-Id: <20190930015740.84362-3-justin.he@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190930015740.84362-1-justin.he@arm.com>
References: <20190930015740.84362-1-justin.he@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_185806_901452_B7FB70EE 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jia He <justin.he@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 without hardware Access Flag, copying fromuser will fail because
the pte is old and cannot be marked young. So we always end up with zeroed
page after fork() + CoW for pfn mappings. we don't always have a
hardware-managed access flag on arm64.

Hence implement arch_faults_on_old_pte on arm64 to indicate that it might
cause page fault when accessing old pte.

Signed-off-by: Jia He <justin.he@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/pgtable.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 7576df00eb50..e96fb82f62de 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -885,6 +885,20 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
 #define phys_to_ttbr(addr)	(addr)
 #endif
 
+/*
+ * On arm64 without hardware Access Flag, copying from user will fail because
+ * the pte is old and cannot be marked young. So we always end up with zeroed
+ * page after fork() + CoW for pfn mappings. We don't always have a
+ * hardware-managed access flag on arm64.
+ */
+static inline bool arch_faults_on_old_pte(void)
+{
+	WARN_ON(preemptible());
+
+	return !cpu_has_hw_af();
+}
+#define arch_faults_on_old_pte arch_faults_on_old_pte
+
 #endif /* !__ASSEMBLY__ */
 
 #endif /* __ASM_PGTABLE_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
