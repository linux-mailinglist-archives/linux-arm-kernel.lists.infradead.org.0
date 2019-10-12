Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A757D52AD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 23:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W1Bay1mAj1yFotyWDVng95tpuJytjmRcDadXYNiGpD8=; b=uli
	DabmfnZEbAGkrhwCAMgNM6Ls20gHA3mt4PIYLXDBpRLYcPIfiu37IsTTdFU4yFAwnk+OEoOUVwc0y
	E8kf4Wfgrf1Xa8mAduz1jECuYlsXemw6Vrx9LIU4IFT/o/jR3xxJv1YOyxV8gWaSDoI5vmBPafDIm
	JMnBd+n+tXwNeu7/EPwX4YvF5ObAbZQFSfvKaOHpYh6/t5eD9YWzuGxysfOSLmVOKyodyf9sZS956
	LBXml7n16PyPOMvbwxC4sk6P9BRj+qh000RjIXpF3ATSGD6Mm9rJ/q1tyc7XvJXGNtqnr2M4ENS9r
	YAU04OTPh++QNGDSq6C2qNfEUulXHyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJOyu-0006pA-VY; Sat, 12 Oct 2019 21:31:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJOyn-0006o4-Ov
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 21:31:15 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2863A20700;
 Sat, 12 Oct 2019 21:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570915870;
 bh=OHyj5bDPQVGUT3OAq33STpc0n0zo2JvrtJXGizaQcDY=;
 h=From:To:Cc:Subject:Date:From;
 b=vu47EcJeCFg9jYw+oumKYKxLlJhGtj+LBscpj0cCbgcfqWendWjFUBnPb9d7UXyU8
 fozUFlb1gn+IEfL0TkG5M9th+YM1wqEDBdX2xjWVXFis+BaWkID414k8OGXdcLV0sd
 z1fL/pyGWzYUI4MjFbxiEEIq3qPcDEc/7TTmhbR0=
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] mm: memblock: do not enforce current limit for memblock_phys*
 family
Date: Sun, 13 Oct 2019 00:31:01 +0300
Message-Id: <1570915861-17633-1-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_143113_834291_C2C27E71 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, etnaviv@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Fabio Estevam <festevam@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Adam Ford <aford173@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

Until commit 92d12f9544b7 ("memblock: refactor internal allocation
functions") the maximal address for memblock allocations was forced to
memblock.current_limit only for the allocation functions returning virtual
address. The changes introduced by that commit moved the limit enforcement
into the allocation core and as a result the allocation functions returning
physical address also started to limit allocations to
memblock.current_limit.

This caused breakage of etnaviv GPU driver:

[    3.682347] etnaviv etnaviv: bound 130000.gpu (ops gpu_ops)
[    3.688669] etnaviv etnaviv: bound 134000.gpu (ops gpu_ops)
[    3.695099] etnaviv etnaviv: bound 2204000.gpu (ops gpu_ops)
[    3.700800] etnaviv-gpu 130000.gpu: model: GC2000, revision: 5108
[    3.723013] etnaviv-gpu 130000.gpu: command buffer outside valid
memory window
[    3.731308] etnaviv-gpu 134000.gpu: model: GC320, revision: 5007
[    3.752437] etnaviv-gpu 134000.gpu: command buffer outside valid
memory window
[    3.760583] etnaviv-gpu 2204000.gpu: model: GC355, revision: 1215
[    3.766766] etnaviv-gpu 2204000.gpu: Ignoring GPU with VG and FE2.0

Restore the behaviour of memblock_phys* family so that these functions will
not enforce memblock.current_limit.

Fixes: 92d12f9544b7 ("memblock: refactor internal allocation functions")
Reported-by: Adam Ford <aford173@gmail.com>
Tested-by: Adam Ford <aford173@gmail.com> #imx6q-logicpd
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 mm/memblock.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/mm/memblock.c b/mm/memblock.c
index 7d4f61a..c4b16ca 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1356,9 +1356,6 @@ static phys_addr_t __init memblock_alloc_range_nid(phys_addr_t size,
 		align = SMP_CACHE_BYTES;
 	}
 
-	if (end > memblock.current_limit)
-		end = memblock.current_limit;
-
 again:
 	found = memblock_find_in_range_node(size, align, start, end, nid,
 					    flags);
@@ -1469,6 +1466,9 @@ static void * __init memblock_alloc_internal(
 	if (WARN_ON_ONCE(slab_is_available()))
 		return kzalloc_node(size, GFP_NOWAIT, nid);
 
+	if (max_addr > memblock.current_limit)
+		max_addr = memblock.current_limit;
+
 	alloc = memblock_alloc_range_nid(size, align, min_addr, max_addr, nid);
 
 	/* retry allocation without lower limit */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
