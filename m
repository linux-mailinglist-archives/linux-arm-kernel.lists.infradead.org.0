Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A80A911A92F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6e5oJ5yPVro24CS+9peXg3iNqvz5GRVKaH//l2W6Z8M=; b=X1rPyovym7IlSV
	bEzT3LW2+W3z6YXzGut0iuY/5NB80v7UI/b44+sR/pBsEWxIEhM/9EjKWeUtVJl0nXyGp4WrbXk8R
	PTifbn7RTDg7+kqFbeSiOJ7mG69xIpoPNjftY25Rra/ghB7l7AuhegPIe93+QmLr3hOCN/We3nXPa
	DwparlqV0Um3oIW3d0pqlgQojInYN+p9nDSzrgY11wH1E2MDSXJ25ly9YVbqpKK5TUsVr8+Twp8lm
	yQwyx1VBNvx/dR861ccHTkLHhNOj5t0XnFBvggk+5n9skYoYCzd/QNVvNY7nosuMTg6G+aUKhMi9o
	6VzHSmtr2oMhh4LHqWiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezSa-0006iA-Sp; Wed, 11 Dec 2019 10:43:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezSO-0006fe-Nb
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:43:03 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 681BD206A5;
 Wed, 11 Dec 2019 10:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576060979;
 bh=NwJI8msRaERbqP+3FROGHItAhebPYHeQra0pErfd+Qg=;
 h=From:To:Cc:Subject:Date:From;
 b=YJ3TyVj4V42lqastwnlH3q7SPKVkxsHtkR/zNjNbXIgUeX/zx4hjAkPvV0xZiRTqj
 TKFGpfbZJT+J+2a5UnSsMLXsqKbj2JqewlFqPK8Pv8zCDZ+1JTJCsgDrEYUYRmIHCy
 1mU3k8vai7etAb4HZK3bwXiyuEQ9/9/Km6hnYzIM=
Received: by wens.tw (Postfix, from userid 1000)
 id C74DB5FCD1; Wed, 11 Dec 2019 18:42:56 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: dma-api: fix max_pfn off-by-one error in
 __dma_supported()
Date: Wed, 11 Dec 2019 18:41:52 +0800
Message-Id: <20191211104152.26496-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_024300_816807_9263A80E 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

max_pfn, as set in arch/arm/mm/init.c:

    static void __init find_limits(unsigned long *min,
				   unsigned long *max_low,
				   unsigned long *max_high)
    {
	    *max_low = PFN_DOWN(memblock_get_current_limit());
	    *min = PFN_UP(memblock_start_of_DRAM());
	    *max_high = PFN_DOWN(memblock_end_of_DRAM());
    }

with memblock_end_of_DRAM() pointing to the next byte after DRAM. As
such, max_pfn points to the PFN after the end of DRAM.

Thus when using max_pfn to check DMA masks, we should subtract one
when checking DMA ranges against it.

Commit 8bf1268f48ad ("ARM: dma-api: fix off-by-one error in
__dma_supported()") fixed the same issue, but missed this spot.

This issue was found while working on the sun4i-csi v4l2 driver on the
Allwinner R40 SoC. On Allwinner SoCs, DRAM is offset at 0x40000000,
and we are starting to use of_dma_configure() with the "dma-ranges"
property in the device tree to have the DMA API handle the offset.

In this particular instance, dma-ranges was set to the same range as
the actual available (2 GiB) DRAM. The following error appeared when
the driver attempted to allocate a buffer:

    sun4i-csi 1c09000.csi: Coherent DMA mask 0x7fffffff (pfn 0x40000-0xc0000)
    covers a smaller range of system memory than the DMA zone pfn 0x0-0xc0001
    sun4i-csi 1c09000.csi: dma_alloc_coherent of size 307200 failed

Fixing the off-by-one error makes things work.

Fixes: 11a5aa32562e ("ARM: dma-mapping: check DMA mask against available memory")
Fixes: 9f28cde0bc64 ("ARM: another fix for the DMA mapping checks")
Fixes: ab746573c405 ("ARM: dma-mapping: allow larger DMA mask than supported")
Cc: <stable@vger.kernel.org>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/mm/dma-mapping.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index e822af0d9219..f4daafdbac56 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -227,12 +227,12 @@ static int __dma_supported(struct device *dev, u64 mask, bool warn)
 	 * Translate the device's DMA mask to a PFN limit.  This
 	 * PFN number includes the page which we can DMA to.
 	 */
-	if (dma_to_pfn(dev, mask) < max_dma_pfn) {
+	if (dma_to_pfn(dev, mask) < max_dma_pfn - 1) {
 		if (warn)
 			dev_warn(dev, "Coherent DMA mask %#llx (pfn %#lx-%#lx) covers a smaller range of system memory than the DMA zone pfn 0x0-%#lx\n",
 				 mask,
 				 dma_to_pfn(dev, 0), dma_to_pfn(dev, mask) + 1,
-				 max_dma_pfn + 1);
+				 max_dma_pfn);
 		return 0;
 	}
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
