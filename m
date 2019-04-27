Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AA8B22B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 03:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0KmJ4e4R6VI9HqHdQByMDRdPYcDBw+iQ9ZpT3A3t2aE=; b=NZTsT6+VcO1xBd
	j4z3eG/sc+jMMygPD9v/IPqhlEKQNoqMxt8pzMQhGUyacrfVObjxa69PoOMohUm6NcCvjC7/esdyq
	t5D5zic3tvXNLiRr0Ge+hJuJ1XyVMO8rKMygWn0n66+tfJwGup1Gwzgsa4yYGt0sAux1KaoUJ7RAG
	XzA47PH+Tn/1DaNlcAGPgAdVvy3xYxpnQe7bEEJnf9T6SHV4F/quPTn5ZFdJIABgFEXBtwW2t5E8K
	Ohwy7DtZgP7DFGWY8tnmEdX9c4oZaPxI3hUTdxFK9UOy1uMugvv7Qjpn8s9kkhtVuS5WUZ68cfyU/
	l4/0mkb9ey2NJnNM+G+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKC9L-0003G2-If; Sat, 27 Apr 2019 01:29:07 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKC9E-000353-QG
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 01:29:02 +0000
Received: by mail-qk1-x744.google.com with SMTP id g1so3017772qki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Apr 2019 18:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oHeHzzA1NET7RP13gd+P20tu4K3AiVm8gbpCJItFTxQ=;
 b=PpwmZjpqiy7eZyc1O3V0XR2dEP6lpKzTHKB3B2rxoSWupwh8l/oYytCQu+S2iNsJN4
 2saDt0WgVllLtHQ72JFbfhl3ROUJ+UhHMyGuco/0hP6nshU8e/yP84WrDZzvd6+ZRf4P
 QyuMdgujPkQef+nxsmkbuGmrGCip1XA62j/I6AtkZBA8e06KmZRElG/rYFOw1ZNTJpjf
 uPxZkyUhyudoFXqYb5gib/hqD94nGJnPU7oaPruyrod6TNR8pLUvdicA97olrg+ng59O
 erfwBKu9Fb+P7ycClozdeNKF+n5ozaslTcpt8yM9lH2jqZ3msPkQUJPen4clJiBWwK6O
 cJhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oHeHzzA1NET7RP13gd+P20tu4K3AiVm8gbpCJItFTxQ=;
 b=oVRT4Gm29KBzWAdoOn8MpUM/Ba2Q+nnCMU99uu17rGdp8owAXzeBy3Fo5XBb4zIKL8
 1AToXdXVO0Bpa8ozmvN26QI9m0SaHfz/dWCui+vBZD/bJlLCOG4drKQdDmEYlh9JHePv
 wLbwb1pvmS+Op0bC3uzZb37o+0TLbBGIWUjuxbRiOtV4nKOi38M/CE/xQVSX4hiVekty
 I6x7Ub+pNPX73oVh3AHgFNxw+9Xfx7veJ3hBuaLGDNfRGi4zq88kJWwhJN+K3nA6Jclk
 sVqNplzNYxFt80qF7JJlOuY86h5Ev53Yg+8HCq6XL/7a+Ffb1C+hg1VxiU+vlml3lgdT
 WcQQ==
X-Gm-Message-State: APjAAAXyikaPowT5CyzxMDKNj6zOpAmte3JcD0onhgRTwT0vwR9TK2fF
 zp+Ok4tcX6GiyxGony4Yx/SxTTz4THo=
X-Google-Smtp-Source: APXvYqxnybOblYjuohhgwpoBuKlkjQnRfY3zET98yQwp3XRoPFFMiE8uV3r1H69pDpQl9LbPARlaig==
X-Received: by 2002:a37:49ce:: with SMTP id
 w197mr28382910qka.330.1556328536765; 
 Fri, 26 Apr 2019 18:28:56 -0700 (PDT)
Received: from ovpn-121-162.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id z8sm17641150qth.62.2019.04.26.18.28.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Apr 2019 18:28:56 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: catalin.marinas@arm.com,
	will.deacon@arm.com
Subject: [PATCH] arm64: fix pte_unmap() -Wunused-but-set-variable
Date: Fri, 26 Apr 2019 21:28:42 -0400
Message-Id: <20190427012842.93737-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_182900_903150_9C345F2D 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Also, remove pte_unmap_nested() as nobody uses it anymore since the
commit ece0e2b6406a ("mm: remove pte_*map_nested()").

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/include/asm/pgtable.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index de70c1eabf33..7543e345e078 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -478,6 +478,8 @@ static inline phys_addr_t pmd_page_paddr(pmd_t pmd)
 	return __pmd_to_phys(pmd);
 }
 
+static inline void pte_unmap(pte_t *pte) { }
+
 /* Find an entry in the third-level page table. */
 #define pte_index(addr)		(((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
 
@@ -486,8 +488,6 @@ static inline phys_addr_t pmd_page_paddr(pmd_t pmd)
 
 #define pte_offset_map(dir,addr)	pte_offset_kernel((dir), (addr))
 #define pte_offset_map_nested(dir,addr)	pte_offset_kernel((dir), (addr))
-#define pte_unmap(pte)			do { } while (0)
-#define pte_unmap_nested(pte)		do { } while (0)
 
 #define pte_set_fixmap(addr)		((pte_t *)set_fixmap_offset(FIX_PTE, addr))
 #define pte_set_fixmap_offset(pmd, addr)	pte_set_fixmap(pte_offset_phys(pmd, addr))
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
