Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C062C17071F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:08:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnY8Zg/v4HF/PHOEtLJLvV2Zusbh9aZxTfe10Pp0A/Y=; b=YHqqmjKyFndc68
	04V6wCkqb4S8HXojJEq63jlxK7zyW+LcR/sX7T1T+hQNN9/6fhZhtCCU/AxQJ6zbGYmiVkwvIefpT
	upcsRYwaK+pLFtZQeOem5sgejpW7dxZ3kcIylV1S0YHjozFTLMrKfLfEXrAQdIelBQcJ6acnLQAyd
	cATQZVk2rbDbkT3/QqdkB89Spj2R+4be9eGza8202//d5xsY3eBzLPgFoz/Pl5d8BK2mKddJMZ615
	Dc2RjNCoQlYBXzSw+uvTUGMC4KuGgOKNW8ANZgNT/Mx6A02BmCJokNT+nyyf/frxQH7G43PipnDez
	xIux1js2advYjzH6kv0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j716z-0001MN-MY; Wed, 26 Feb 2020 18:08:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j714E-0007SL-VB
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:05:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C350B106F;
 Wed, 26 Feb 2020 10:05:54 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3F3053F881;
 Wed, 26 Feb 2020 10:05:53 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 11/19] mm: Introduce arch_calc_vm_flag_bits()
Date: Wed, 26 Feb 2020 18:05:18 +0000
Message-Id: <20200226180526.3272848-12-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226180526.3272848-1-catalin.marinas@arm.com>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100555_104827_6C41923D 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kevin Brodsky <Kevin.Brodsky@arm.com>

Similarly to arch_calc_vm_prot_bits(), introduce a dummy
arch_calc_vm_flag_bits() invoked from calc_vm_flag_bits(). This macro
can be overridden by architectures to insert specific VM_* flags derived
from the mmap() MAP_* flags.

Signed-off-by: Kevin Brodsky <Kevin.Brodsky@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---

Notes:
    v2:
    - Updated the comment above arch_calc_vm_prot_bits().
    - Changed author since this patch had already been posted (internally).

 include/linux/mman.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/linux/mman.h b/include/linux/mman.h
index 4b08e9c9c538..15c1162b9d65 100644
--- a/include/linux/mman.h
+++ b/include/linux/mman.h
@@ -74,13 +74,17 @@ static inline void vm_unacct_memory(long pages)
 }
 
 /*
- * Allow architectures to handle additional protection bits
+ * Allow architectures to handle additional protection and flag bits
  */
 
 #ifndef arch_calc_vm_prot_bits
 #define arch_calc_vm_prot_bits(prot, pkey) 0
 #endif
 
+#ifndef arch_calc_vm_flag_bits
+#define arch_calc_vm_flag_bits(flags) 0
+#endif
+
 #ifndef arch_vm_get_page_prot
 #define arch_vm_get_page_prot(vm_flags) __pgprot(0)
 #endif
@@ -131,7 +135,8 @@ calc_vm_flag_bits(unsigned long flags)
 	return _calc_vm_trans(flags, MAP_GROWSDOWN,  VM_GROWSDOWN ) |
 	       _calc_vm_trans(flags, MAP_DENYWRITE,  VM_DENYWRITE ) |
 	       _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
-	       _calc_vm_trans(flags, MAP_SYNC,	     VM_SYNC      );
+	       _calc_vm_trans(flags, MAP_SYNC,	     VM_SYNC      ) |
+	       arch_calc_vm_flag_bits(flags);
 }
 
 unsigned long vm_commit_limit(void);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
