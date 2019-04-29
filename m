Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C931E951
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aDk6I37m5m3oFZ/HyMwI8cEj3nGcwQInuL/6jvutoBQ=; b=lsslTidOPxgNma
	866+t3ATVwypvJgl+CRLTfedNJ9DT/K65PthU63FUe3oAtoVx3tQquwKN2/H2JImSH3bYrlPKv1nv
	LepcLPbwl4BrLZrAnhK9wGoUVsCU7nN0/Ptv/iXqsj7nefLZB1GHmN8b6JVQYgRKk7wVBBCeFRyMg
	RDSoqumPHnIXoavCubxDYNAo+dIXFuk+fMDYUcbTspbc5Id/fxr8pABO8mt1J5JMdL36uIf+tXgqp
	2jPwjdYiyq7rIAXD9eK3XWEbVtKpkrQAnSb5DrRLbvN6ck3KAaiwhJT4ckzNJxzr+DPeQJHcyRerN
	QjXosRZwdGXYWP5ukKrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLADn-0005FJ-6e; Mon, 29 Apr 2019 17:37:43 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLADN-00051K-02
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:37:21 +0000
Received: by mail-qt1-x841.google.com with SMTP id b3so12864297qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Scl3PSeQx2hTIiqKFeLsOvlDZYPJZC93Bw/i/+ssipk=;
 b=ptaO2FS6ypIWyQztD2x2lutibcWLniDRjyeuKUfWIf1O+X5lxP5eMp4/yYYtuz+pGY
 Ce1XXKV/mauofPq43ANGGo6PE3Kk/SDXnWiQRI+og1/IPlwqZfM6Vq8Ohx+Qd+xe3Cea
 1XliFECnAIIRzb4T3QpixakaHFmr/RZ921PUK1wHvYo6CbSuHBTc3bjjbOBaLe1x3AKr
 LqNHs/SltBfNkLhL6b7nnJnLPK211670F1VVeE8oneNUafHLpj9ZvtGw3ypqtz1pEIJx
 JcDr2aqjt21YG85BglmPhR89KSy7HkMswTGFzEMe1/jlO7ILrDSYmMKxnVU2We8soAVR
 P51A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Scl3PSeQx2hTIiqKFeLsOvlDZYPJZC93Bw/i/+ssipk=;
 b=lnDLgi1tooTHfZjEtIuDvTOo+qphYQ/L8QM1nil6B9gphLjQKQf+aTMO7jeEdr0YiF
 hw/QzAqSrdgd5GMzHoIrD1HGkuV9J9AzRUEfT/THatStRQ+groYlPru3VuR76kgEZeok
 s9p3NI1NXaeKLF/Z4cX9xnTLWjhbJNWhzVBIAWHgRok3IOpd0fYPEnNXADvZABZ6QHhx
 fE0/p4dERT8ByNSJUzoWUjaxJkZj+hHNNpllnN9OFQ1sio258aNb8mEgymiGu9MV3Vm2
 /BDu9C82Msu65U/lLvoS9KsVY9YxXi9M+H/vBQMl4rgXkgc/z5E+L1ucznKZ1/nT4yvI
 Pp5Q==
X-Gm-Message-State: APjAAAWE8x33QtzLgFLqjJbhGSVbPBQMagpyRKHwfH8kB6KfmJ4Ovm8+
 QeRpwOHZsm/sRg7G7yZDz9Z/RQ==
X-Google-Smtp-Source: APXvYqxVU8sw20J6Qw/4taFaNGKYpelgEYrGSEY3WYaBH1E6yhmpWrRJFCcKzXbh58XbHGTuCJNX8g==
X-Received: by 2002:ac8:3613:: with SMTP id m19mr27358131qtb.261.1556559435878; 
 Mon, 29 Apr 2019 10:37:15 -0700 (PDT)
Received: from ovpn-121-162.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id 74sm4710182qta.15.2019.04.29.10.37.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 10:37:15 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: catalin.marinas@arm.com,
	will.deacon@arm.com
Subject: [PATCH 1/2] arm64: fix pte_unmap() -Wunused-but-set-variable
Date: Mon, 29 Apr 2019 13:37:01 -0400
Message-Id: <20190429173702.31389-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103717_238355_45EBD929 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Qian Cai <cai@lca.pw>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many compilation warnings due to pte_unmap() compiles away. Fixed it by
making it an static inline function.

mm/gup.c: In function 'gup_pte_range':
mm/gup.c:1727:16: warning: variable 'ptem' set but not used
[-Wunused-but-set-variable]
mm/gup.c: At top level:
mm/memory.c: In function 'copy_pte_range':
mm/memory.c:821:24: warning: variable 'orig_dst_pte' set but not used
[-Wunused-but-set-variable]
mm/memory.c:821:9: warning: variable 'orig_src_pte' set but not used
[-Wunused-but-set-variable]
mm/swap_state.c: In function 'swap_ra_info':
mm/swap_state.c:641:15: warning: variable 'orig_pte' set but not used
[-Wunused-but-set-variable]
mm/madvise.c: In function 'madvise_free_pte_range':
mm/madvise.c:318:9: warning: variable 'orig_pte' set but not used
[-Wunused-but-set-variable]

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/include/asm/pgtable.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index de70c1eabf33..74ebe9693714 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -478,6 +478,8 @@ static inline phys_addr_t pmd_page_paddr(pmd_t pmd)
 	return __pmd_to_phys(pmd);
 }
 
+static inline void pte_unmap(pte_t *pte) { }
+
 /* Find an entry in the third-level page table. */
 #define pte_index(addr)		(((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
 
@@ -486,7 +488,6 @@ static inline phys_addr_t pmd_page_paddr(pmd_t pmd)
 
 #define pte_offset_map(dir,addr)	pte_offset_kernel((dir), (addr))
 #define pte_offset_map_nested(dir,addr)	pte_offset_kernel((dir), (addr))
-#define pte_unmap(pte)			do { } while (0)
 #define pte_unmap_nested(pte)		do { } while (0)
 
 #define pte_set_fixmap(addr)		((pte_t *)set_fixmap_offset(FIX_PTE, addr))
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
