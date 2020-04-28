Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267E61BCCAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6lGPwZnbWU4QpyWdTNl8ayLtdwktN9d+792WGwSn8k=; b=Zq2BTN+LqHTj+2
	vzUY7XAmo44U1yq/URL5hOFD64hKxChok6YP92Z4seQEKdcsAjXd2GcErg8HRnrjv27jVA1eNsV/d
	/F4jtsyC4tqyQZ9Emr17x59oG8vtuooswL0IAhOCalaPEuc6cOSkkcblre21vLjFcxBGdGyEQrUBp
	y7v/O3t7eqqoTIaxQp1H95z1ZTt8W5P8ShYLRtvXa58PZIQqYLGNFPtQNOWXiDMgJ4o1LlA01l5GN
	AWe7Z3KZHnVO042DZUfWWoR/nvY3MceLzhrh3desIPHDaX+5osM7m88DXyF0TqtGAP1iq/o9Q2b5v
	EqSs1tnGBlAzzOUu+eqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWCK-0001r7-Py; Tue, 28 Apr 2020 19:47:16 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTW9y-0005uQ-TN; Tue, 28 Apr 2020 19:44:50 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Subject: [PATCH 1/7] mm: Document x86 uses a linked list of pgds
Date: Tue, 28 Apr 2020 12:44:43 -0700
Message-Id: <20200428194449.22615-2-willy@infradead.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200428194449.22615-1-willy@infradead.org>
References: <20200428194449.22615-1-willy@infradead.org>
MIME-Version: 1.0
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Russell King <linux@armlinux.org.uk>, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Matthew Wilcox (Oracle)" <willy@infradead.org>

x86 uses page->lru of the pages used for pgds, but that's not immediately
obvious to anyone looking to make changes.  Add a struct list_head to
the union so it's clearly in use for pgds.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 include/linux/mm_types.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index 4aba6c0c2ba8..9bb34e2cd5a5 100644
--- a/include/linux/mm_types.h
+++ b/include/linux/mm_types.h
@@ -142,8 +142,13 @@ struct page {
 			struct list_head deferred_list;
 		};
 		struct {	/* Page table pages */
-			unsigned long _pt_pad_1;	/* compound_head */
-			pgtable_t pmd_huge_pte; /* protected by page->ptl */
+			union {
+				struct list_head pgd_list;	/* x86 */
+				struct {
+					unsigned long _pt_pad_1;
+					pgtable_t pmd_huge_pte;
+				};
+			};
 			unsigned long _pt_pad_2;	/* mapping */
 			union {
 				struct mm_struct *pt_mm; /* x86 pgds only */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
