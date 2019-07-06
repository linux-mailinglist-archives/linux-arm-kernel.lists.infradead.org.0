Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780B660F42
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 08:47:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HpPA0sz03Y9nB7V5Ek5DgHCeuxf9+VhD9muNwvJO85U=; b=inM
	KeKJ89zuBLNZPU9mCHBv/V8LI58vfgtY1/FCxobGBDPgl1DZIn6oLKsp4vloz7VhlT0Kiu7QsVPmg
	BgECtUulyjZy74R/OS2a40ZC1tdivpfHvvswqW+KeprWUhh2IwmelB7yK93lFYJygc4tTdJU/KQ99
	C71i6lWKFnBKbe9wzu9jITIXo3dTPc+dN7zJVKxOdnLImEQ+acHppyl1/esty+V/3sIMiOFCBtYhJ
	N4u1Jwa1CNeYmpL04932c9u9fnMCMnNFj5UAg7726Dyjz4AB1FaykAlh3qunf/youZe9SL/yhgVal
	/8RIe4bnME09aYg2fdYoKuFQw1TT4Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjeU2-0003h6-OJ; Sat, 06 Jul 2019 06:47:42 +0000
Received: from mxhk.zte.com.cn ([63.217.80.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjeTr-0003fb-8C
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 06:47:33 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.30.14.239])
 by Forcepoint Email with ESMTPS id 18AAF49C2BE7C4472856;
 Sat,  6 Jul 2019 14:47:10 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
 by mse-fl2.zte.com.cn with ESMTP id x666ko2S087166;
 Sat, 6 Jul 2019 14:46:50 +0800 (GMT-8)
 (envelope-from huang.junhua@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
 by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
 with ESMTP id 2019070614473487-2126688 ;
 Sat, 6 Jul 2019 14:47:34 +0800 
From: Junhua Huang <huang.junhua@zte.com.cn>
To: catalin.marinas@arm.com
Subject: [PATCH v2] arm64: mm: free the initrd reserved memblock in a aligned
 manner
Date: Sat, 6 Jul 2019 14:41:15 +0800
Message-Id: <1562395275-10772-1-git-send-email-huang.junhua@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release
 8.5.3FP6|November 21, 2013) at 2019-07-06 14:47:34,
 Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17, 2016) at
 2019-07-06 14:46:57, Serialize complete at 2019-07-06 14:46:57
X-MAIL: mse-fl2.zte.com.cn x666ko2S087166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_234731_447856_41F0B103 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [63.217.80.70 listed in list.dnswl.org]
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
Cc: wang.yi59@zte.com.cn, f.fainelli@gmail.com, jiang.xuexin@zte.com.cn,
 david@redhat.com, robin.murphy@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rppt@linux.vnet.ibm.com, xue.zhihong@zte.com.cn,
 hannes@cmpxchg.org, Junhua Huang <huang.junhua@zte.com.cn>,
 akpm@linux-foundation.org, logang@deltatee.com,
 linux-arm-kernel@lists.infradead.org, ghackmann@android.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We should free the initrd reserved memblock in an aligned manner, 
because the initrd reserves the memblock in an aligned manner 
in arm64_memblock_init(). 
Otherwise there are some fragments in memblock_reserved regions
after free_initrd_mem(). e.g.:
/sys/kernel/debug/memblock # cat reserved 
   0: 0x0000000080080000..0x00000000817fafff
   1: 0x0000000083400000..0x0000000083ffffff
   2: 0x0000000090000000..0x000000009000407f
   3: 0x00000000b0000000..0x00000000b000003f
   4: 0x00000000b26184ea..0x00000000b2618fff
The fragments like the ranges from b0000000 to b000003f and 
from b26184ea to b2618fff should be freed.

And we can do free_reserved_area() after memblock_free(),
as free_reserved_area() calls __free_pages(), once we've done 
that it could be allocated somewhere else, 
but memblock and iomem still say this is reserved memory.

Signed-off-by: Junhua Huang <huang.junhua@zte.com.cn>
---
v2: fix the start/end typo to free the same memory that we reserved
and remove the blank line.

 arch/arm64/mm/init.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index d2adffb81b5d..2e9e42d06362 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -580,8 +580,12 @@ void free_initmem(void)
 #ifdef CONFIG_BLK_DEV_INITRD
 void __init free_initrd_mem(unsigned long start, unsigned long end)
 {
+	unsigned long aligned_start, aligned_end;
+
+	aligned_start = __virt_to_phys(start) & PAGE_MASK;
+	aligned_end = PAGE_ALIGN(__virt_to_phys(end));
+	memblock_free(aligned_start, aligned_end - aligned_start);
 	free_reserved_area((void *)start, (void *)end, 0, "initrd");
-	memblock_free(__virt_to_phys(start), end - start);
 }
 #endif
 
-- 
2.15.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
