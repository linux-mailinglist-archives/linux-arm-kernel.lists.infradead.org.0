Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A895CDBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QWJmtG2sHU7UJXkajRQE0E3XKgX6bxUX1JoDp7w/+n4=; b=hH1
	hdUBCR9NzEB9kptMEq/oWk3yniOBKCBxRQc84eV5oZrHS+Lhexg1PG/eGfU7SxKB36scNmm49Bo+s
	40aYSNnvksiG0hcAUIwTPmkM5g5XDCm+CCZsKI2cG0lnJ510kPlXscDNEajZNIqs9w654+BbJz6JM
	FPC5NWW6gWhZcyXr1xPbUn4uVjVkWVbMCV6nMEdXYO0QKMx8ykQDgdd+vvr+FbYd8QD6xy8NBlYyr
	8IwfIYrU/GAyZpC0CZ9uMy206criDEGr5SbydHTBd6PqT9VtojwKqBRo/j0lDpWLlFDKjcaPajw4Z
	8ljCsFj7g3MoXhifhdznvJC1k6+ZlDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGCP-0006ri-Vn; Tue, 02 Jul 2019 10:39:45 +0000
Received: from mx7.zte.com.cn ([202.103.147.169] helo=mxct.zte.com.cn)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGC7-0005Dr-Dk
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:39:29 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.30.14.238])
 by Forcepoint Email with ESMTPS id AD43B7CD32A124E37288;
 Tue,  2 Jul 2019 18:37:16 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
 by mse-fl1.zte.com.cn with ESMTP id x62AaXJO076507;
 Tue, 2 Jul 2019 18:36:33 +0800 (GMT-8)
 (envelope-from wang.yi59@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
 by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
 with ESMTP id 2019070218364750-2029626 ;
 Tue, 2 Jul 2019 18:36:47 +0800 
From: Yi Wang <wang.yi59@zte.com.cn>
To: catalin.marinas@arm.com
Subject: [PATCH] remove the initrd resource in /proc/iomem as the initrd has
 freed the reserved memblock.
Date: Tue, 2 Jul 2019 18:34:53 +0800
Message-Id: <1562063693-1541-1-git-send-email-wang.yi59@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release
 8.5.3FP6|November 21, 2013) at 2019-07-02 18:36:47,
 Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17, 2016) at
 2019-07-02 18:36:36, Serialize complete at 2019-07-02 18:36:36
X-MAIL: mse-fl1.zte.com.cn x62AaXJO076507
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033927_724145_5DAC97E5 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.103.147.169 listed in list.dnswl.org]
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

From: Junhua Huang <huang.junhua@zte.com.cn>

The 'commit 50d7ba36b916 ("arm64: export memblock_reserve()d regions via /proc/iomem")'
show the reserved memblock in /proc/iomem. But the initrd's reserved memblock
will be freed in free_initrd_mem(), which executes after the reserve_memblock_reserved_regions().
So there are some incorrect information shown in /proc/iomem. e.g.:
80000000-bbdfffff : System RAM
  80080000-813effff : Kernel code
  813f0000-8156ffff : reserved
  81570000-817fcfff : Kernel data
  83400000-83ffffff : reserved
  90000000-90004fff : reserved
  b0000000-b2618fff : reserved
  b8c00000-bbbfffff : reserved
In this case, the range from b0000000 to b2618fff is reserved for initrd, which should be
clean from the resource tree after it was freed. As kexec-tool will collect the iomem reserved info 
and use it in second kernel, which causes error message generated a second time.

At the same time, we should free the reserved memblock in an aligned manner because 
the initrd reserves the memblock in an aligned manner in arm64_memblock_init(). 
Otherwise there are some fragments in memblock_reserved regions. e.g.:
/sys/kernel/debug/memblock # cat reserved 
   0: 0x0000000080080000..0x00000000817fafff
   1: 0x0000000083400000..0x0000000083ffffff
   2: 0x0000000090000000..0x000000009000407f
   3: 0x00000000b0000000..0x00000000b000003f
   4: 0x00000000b26184ea..0x00000000b2618fff
The fragments like the ranges from b0000000 to b000003f and from b26184ea to b2618fff 
should be freed.

Signed-off-by: Junhua Huang <huang.junhua@zte.com.cn>
---
 arch/arm64/mm/init.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index d2adffb81b5d..14ba8113eab5 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -580,8 +580,16 @@ void free_initmem(void)
 #ifdef CONFIG_BLK_DEV_INITRD
 void __init free_initrd_mem(unsigned long start, unsigned long end)
 {
+	struct resource *res = NULL;
+
 	free_reserved_area((void *)start, (void *)end, 0, "initrd");
-	memblock_free(__virt_to_phys(start), end - start);
+	start = __virt_to_phys(start) & PAGE_MASK;
+	end = PAGE_ALIGN(__virt_to_phys(end));
+	memblock_free(start, end - start);
+	res = lookup_resource(&iomem_resource, memblock_start_of_DRAM());
+	if (res != NULL)
+		__release_region(res, start, end - start);
+
 }
 #endif
 
-- 
2.15.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
