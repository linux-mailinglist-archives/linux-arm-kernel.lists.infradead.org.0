Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A3D922AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3b+KghQvIP39QBgjyOg9vxm5dzDkAoZOZ4SJeaznjRg=; b=GZJrlAX2tlGQy3
	1Aff86fu9l6PisfKl42oTaZ6ryi5niR2JvBHa7i8uvUh9dJLvtSt+sGUgfXkdgPn5zlglI/BmQztM
	Izbca4CweaHD1cJjBxFkF6RdiLXOkKFiMHKE52Ge37iFhE/u1P+OMAlCBlrJZb3O0o+nq0YGJn7ML
	Uv84d3ygNjrVrkOKs/97gk81Es+oETDgKsIyMTlR8dEJV/F/PQ8HfcbY+i+z1iU1SgD8sJ3ZcTBbj
	+v9jSq1jfsOeWVtg+xx5cpW8LWV/6qYM0V2VtIiLPUMew3ub789S8zjfe79A8LbyVmoz0+ljq0ZR9
	Mhae6o+o4kEiwJbQn2jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzg5z-00087h-9n; Mon, 19 Aug 2019 11:45:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzg5l-00087G-Ik; Mon, 19 Aug 2019 11:44:54 +0000
X-UUID: 5d1f264749b64147b1a58a88c1db915a-20190819
X-UUID: 5d1f264749b64147b1a58a88c1db915a-20190819
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1685596577; Mon, 19 Aug 2019 03:44:49 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 04:44:48 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 19:44:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 19 Aug 2019 19:44:47 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
 Andrey Konovalov <andreyknvl@google.com>
Subject: [PATCH] arm64: kasan: fix phys_to_virt() false positive on tag-based
 kasan
Date: Mon, 19 Aug 2019 19:44:20 +0800
Message-ID: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_044453_619520_C5DCA87A 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
but it will modify pointer tag into 0xff, so there is a false positive.

When enable tag-based kasan, phys_to_virt() function need to rewrite
its original pointer tag in order to avoid kasan report an incorrect
memory corruption.

BUG: KASAN: double-free or invalid-free in __arm_v7s_unmap+0x720/0xda4
Pointer tag: [ff], memory tag: [c1]

Call trace:
 dump_backtrace+0x0/0x1d4
 show_stack+0x14/0x1c
 dump_stack+0xe8/0x140
 print_address_description+0x80/0x2f0
 kasan_report_invalid_free+0x58/0x74
 __kasan_slab_free+0x1e4/0x220
 kasan_slab_free+0xc/0x18
 kmem_cache_free+0xfc/0x884
 __arm_v7s_unmap+0x720/0xda4
 __arm_v7s_map+0xc8/0x774
 arm_v7s_map+0x80/0x158
 mtk_iommu_map+0xb4/0xe0
 iommu_map+0x154/0x450
 iommu_map_sg+0xe4/0x150
 iommu_dma_map_sg+0x214/0x4ec
 __iommu_map_sg_attrs+0xf0/0x110
 ion_map_dma_buf+0xe8/0x114
 dma_buf_map_attachment+0x4c/0x80
 disp_sync_prepare_buf+0x378/0x820
 _ioctl_prepare_buffer+0x130/0x870
 mtk_disp_mgr_ioctl+0x5c4/0xab0
 do_vfs_ioctl+0x8e0/0x15a4
 __arm64_sys_ioctl+0x8c/0xb4
 el0_svc_common+0xe4/0x1e0
 el0_svc_handler+0x30/0x3c
 el0_svc+0x8/0xc

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
 arch/arm64/include/asm/kasan.h  |  1 -
 arch/arm64/include/asm/memory.h | 10 ++++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kasan.h b/arch/arm64/include/asm/kasan.h
index b52aacd2c526..59894cafad60 100644
--- a/arch/arm64/include/asm/kasan.h
+++ b/arch/arm64/include/asm/kasan.h
@@ -5,7 +5,6 @@
 #ifndef __ASSEMBLY__
 
 #include <linux/linkage.h>
-#include <asm/memory.h>
 #include <asm/pgtable-types.h>
 
 #define arch_kasan_set_tag(addr, tag)	__tag_set(addr, tag)
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 8ffcf5a512bb..75af5ba9ff22 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -171,6 +171,7 @@
 
 #include <linux/bitops.h>
 #include <linux/mmdebug.h>
+#include <asm/kasan.h>
 
 extern s64			memstart_addr;
 /* PHYS_OFFSET - the physical address of the start of memory. */
@@ -282,7 +283,16 @@ static inline phys_addr_t virt_to_phys(const volatile void *x)
 #define phys_to_virt phys_to_virt
 static inline void *phys_to_virt(phys_addr_t x)
 {
+#ifdef CONFIG_KASAN_SW_TAGS
+	unsigned long addr = __phys_to_virt(x);
+	u8 *tag = (void *)(addr >> KASAN_SHADOW_SCALE_SHIFT)
+				+ KASAN_SHADOW_OFFSET;
+
+	addr = __tag_set(addr, *tag);
+	return (void *)addr;
+#else
 	return (void *)(__phys_to_virt(x));
+#endif
 }
 
 /*
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
