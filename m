Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFB86BF2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMqa8UUrw+NTdpJn7tHWZn+8s3S2idQQHcxk2rF5Z98=; b=QizmSkuIdWZPjR
	d16NzYsWf1n9a7lEuMUAVDFH6LHR1N1x1j2h80JLc1YoidMKbckB82fcB/hok4iX6nVbIYWK0fHh3
	MH8do/4sPSKH+iioF8VUki76sNKpNjmoCW9Yx1yYhEGsUKac5PI47jwA75z4T6zpyZfboRSe90iX8
	L4RpnM6FevWH9k2/ZkMXc8e//TckkNVuzyukeNjMMQjZQTltWqSbLxjjyYqKwgdbSObZrsLTKeHjf
	9vMxlqTaoYqJC3/YRnIzDdCstGLjLzltTetfInO9cUqttGdrqqukaceGVGFhiMt3N80f6g+eH8BXC
	Gh2P26uFqj+dTzS/tYrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlvB-0004Zb-4o; Wed, 17 Jul 2019 15:32:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnluH-0003k3-67
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 15:31:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E2425AF95;
 Wed, 17 Jul 2019 15:31:47 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC 4/4] arm64: mm: set direct_dma_min_mask according to dma-ranges
Date: Wed, 17 Jul 2019 17:31:35 +0200
Message-Id: <20190717153135.15507-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190717153135.15507-1-nsaenzjulienne@suse.de>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_083149_367937_BDEEF529 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, catalin.marinas@arm.com,
 phil@raspberrypi.org, robin.murphy@arm.com, Jisheng.Zhang@synaptics.com,
 mbrugger@suse.com, will@kernel.org, hch@lst.de,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we parse the dma-ranges during initialization we can fine-tune
the DMA mask used by the direct DMA implementation.

We set the mask based on the size of the DMA addressable memory, and if
bigger than 4GB we force it to DMA_BIT_MASK(32) as it's always been.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm64/mm/init.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 5708adf0db52..f8af2c99667c 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -52,6 +52,8 @@ EXPORT_SYMBOL(memstart_addr);
 
 phys_addr_t arm64_dma_phys_limit __ro_after_init;
 
+extern u64 dma_direct_min_mask;
+
 #ifdef CONFIG_KEXEC_CORE
 /*
  * reserve_crashkernel() - reserves memory for crash kernel
@@ -198,8 +200,12 @@ static int __init early_init_dt_scan_dma_ranges(unsigned long node,
 	if (size > (1ULL << 32))
 		size = 1ULL << 32;
 
-	if (*dma_phys_limit > (phys_addr + size))
+	if (*dma_phys_limit > (phys_addr + size)) {
+		/* Set min DMA mask in case is was smaller than 32 */
+		dma_direct_min_mask = size - 1;
+
 		*dma_phys_limit = phys_addr + size;
+	}
 
 	return 0;
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
