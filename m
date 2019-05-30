Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384982E9E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 02:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bRdTdy8wWqZcJYKcYsMwzMtAeis2ohpAwXnkjG9DabY=; b=TRj
	VZkdK3Jus9qNMx2yStMsHgvjh7gm8p+kCMslxGRj/KGmWBceAHCo1HTy8LGsLGtXa+YFqlZe2xPWl
	nfSSV8MGQ4NHzMFDGWiN6UZe2SB1M3/iBy/grvT3JiIcts6GuKqkZZyYEeZI74GFD8TWicBCYvC9I
	bhe4dkEmPueANbsFN01gfdWz48hj/2i2/A66RKMCnD1aKMrsEL6EzthUkhK9LFvw34s4dXhZv3tN4
	OoqU+jcZYOucRSWA7stupibcTSoAV1ThPUakDnO9LHufI1+UFrTlsg2rB7TzeyOn36EW0ihKQRyew
	BpLEFm98FY0X79QOkjn51kaWwyn16zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW9MA-0002xC-QU; Thu, 30 May 2019 00:55:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW9M3-0002wW-Lc
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 00:55:41 +0000
Received: by mail-pg1-x541.google.com with SMTP id 20so920175pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 17:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=j+S8VH4EYGO4/qvjEKOLjTRlvJPXtPKggpnmCuwYCJk=;
 b=hnIAhEAw1B8+HSc8nBdWkvnzdk8JnD7G3XYLuJBXKpPwdofWkmlKry4oTqv+eCRfIw
 AWVq6NO+DTSJFdxnY24J3LI/0pjWkRqZltSgfEVJh1yFk43ZkCkn/f9f0mrxFH9G2fqT
 bxS3d0SymmwS0yM/8EwfMgyB2TVJPRmiBTyVAVpOl9Xqz/xSiZC5G1BadL+K10JCniUu
 yxIXfVwptGqpPMKI6Gu2mhgCQyTZfQ7VIdV/+jUWW/QTyKXu0nsXsRiJgAZPIYjm55O2
 ZpEmUrzUwfGMhn82kpSq98ms7bPhVYvIMWvn8s7kXolT63MjlLDfSl/GKRXEGet7pG4D
 Wurg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=j+S8VH4EYGO4/qvjEKOLjTRlvJPXtPKggpnmCuwYCJk=;
 b=Yx2Vshz1L7ajSf6HztKSg8thebgpxygVHV+MR/l99ZroNO6SlMcyg1BYJLA3JURY2U
 bi01bOtYIxhMkfkNYW1/hOeLGB5QRfTr9ephKDo4TbtTpuyuEvMmI8ARkTDGiqyEXYTX
 TbDSQ0kjpxLjjPVhMuFwPbJ0koGiLVka//TvIqWtBSfQuUp6dhF/EyZ00Omap1/fY1k8
 M/v8nvgLc+5vkWcJmi0X1zu05ENWF6us/kysU9TdQ8ziZTqeNGpJcb/vRp1ZLgBt3C77
 St79fL0cYejvbDh34Y7rgq7/ZSplZzkShOOwk79JZPOMcskcgPLjjPfgFuxQ/SG2bBl9
 GdzA==
X-Gm-Message-State: APjAAAWIASwoXKv1hGjfTj1hG0jMpS8U7SZJfnsJ20njz5+aL99xdO0H
 OcvWfOcNb8TxrSdAYB6GUrg=
X-Google-Smtp-Source: APXvYqxtuX8YgbcCnGunpbCj925iJH5WENQwQbWXCUKu3KUBzqJBUASxoDUJLPWti79LI/QU+rkNGg==
X-Received: by 2002:a62:5103:: with SMTP id f3mr684368pfb.146.1559177737572;
 Wed, 29 May 2019 17:55:37 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id l12sm490223pgq.26.2019.05.29.17.55.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 17:55:37 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de, robin.murphy@arm.com, m.szyprowski@samsung.com,
 natechancellor@gmail.com
Subject: [PATCH] dma-contiguous: Fix !CONFIG_DMA_CMA version of dma_{alloc,
 free}_contiguous()
Date: Wed, 29 May 2019 17:54:25 -0700
Message-Id: <20190530005425.7184-1-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_175539_736203_11266392 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: chris@zankel.net, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 sfr@canb.auug.org.au, tony@atomide.com, catalin.marinas@arm.com,
 joro@8bytes.org, will.deacon@arm.com, linux@armlinux.org.uk,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 jcmvbkbc@gmail.com, wsa+renesas@sang-engineering.com,
 dann.frazier@canonical.com, akpm@linux-foundation.org, treding@nvidia.com,
 dwmw2@infradead.org, iamjoonsoo.kim@lge.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit fdaeec198ada ("dma-contiguous: add dma_{alloc,free}_contiguous()
helpers") adds a pair of new helper functions so as to abstract code in
the dma-direct (and other places in the future), however it breaks QEMU
boot feature using x86_64 defconfig.

That's because x86_64 defconfig has CONFIG_DMA_CMA=n so those two newly
introduced helper functions are empty in their !CONFIG_DMA_CMA version,
while previously the platform independent dma-direct code had fallback
alloc_pages_node() and __free_pages().

So this patch fixes it by adding alloc_pages_node() and __free_pages()
in the !CONFIG_DMA_CMA version of the two helper functions.

Tested with below QEMU command:
  qemu-system-x86_64 -m 512m \
      -drive file=images/x86_64/rootfs.ext4,format=raw,if=ide \
      -append 'console=ttyS0 root=/dev/sda' -nographic \
      -kernel arch/x86_64/boot/bzImage

with the rootfs from the below link:
  https://github.com/ClangBuiltLinux/continuous-integration/raw/master/images/x86_64/rootfs.ext4

Fixes: fdaeec198ada ("dma-contiguous: add dma_{alloc,free}_contiguous() helpers")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
---
 include/linux/dma-contiguous.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
index 428f3b7b1c42..c05d4e661489 100644
--- a/include/linux/dma-contiguous.h
+++ b/include/linux/dma-contiguous.h
@@ -50,6 +50,7 @@
 #ifdef __KERNEL__
 
 #include <linux/device.h>
+#include <linux/mm.h>
 
 struct cma;
 struct page;
@@ -155,15 +156,20 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
 	return false;
 }
 
+/* Use fallback alloc() and free() when CONFIG_DMA_CMA=n */
 static inline struct page *dma_alloc_contiguous(struct device *dev, size_t size,
 		gfp_t gfp)
 {
-	return NULL;
+	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
+	size_t align = get_order(PAGE_ALIGN(size));
+
+	return alloc_pages_node(node, gfp, align);
 }
 
 static inline void dma_free_contiguous(struct device *dev, struct page *page,
 		size_t size)
 {
+	__free_pages(page, get_order(size));
 }
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
