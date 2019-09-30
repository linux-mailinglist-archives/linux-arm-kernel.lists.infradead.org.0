Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2848C1FAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RLmIfNjIN6h0VUvY5MXGfookLnH0aKnuirfe92pRXuw=; b=P/6+LKxu0tGPJQ
	rptY0L4CunYvO4C5ob2Ghm49rLuMeFAmPNYTcrSn0yt05qku+OSmzyHgJ8iphxKPfCSuzdk/PhxOB
	n1XvdbvTIQSr/yW4Q4BZca+O8pqlhmnlXdStDQT9jU0GFMuJ2Hj5GC0sdnvVwZ7ZPTp9KG88B3ODe
	d0D9wUEcnex6VlBv34ZhKWGWdqBZIAVSkno8RARKPjfDjpQRxt1GgAcnAtZdwIXLpp4okoEfibqit
	BwqqWWQ1GEBicHeBetZDg8fP2NsbQWz5VdfbF3EIc+OczJxHdv2CsG90YRmQqIOfEotrY06BpDB4W
	3Cmyrj90LKevNjFWerZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEtQX-0000eI-PM; Mon, 30 Sep 2019 11:01:13 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEtQP-0000ck-5z
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:01:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cGRUeRzJYgrBzc/mNI8VaqCKUKhkN9WudDwuAJ2HuIs=; b=nYlbWsGhHVKH65dfkLG+nv4Tl
 h21trEmPEYFbUxPV1s9Cm/PZ3rEc9FKdqfBhpJGMPT+vp25iMFZa/mr+LPATi9t0vtNIOH06pQZMR
 VdYdUIPc9oZgGUdsGf2IBgg4AU07pKn8bzRyjcHnF3jVooQsCJ5z0TbmJyQZaPuF7wTLYYtbCnBx4
 Xw5gApX3PlGXVw6kulgpjwOtu4dPkk4tBCdxKXhiiI8GopxEYUf4dntzJEHzZLtil7E4wFNcs9bGq
 eStG03XpmpEhlGr5CZaYBBh3Z6A+METlEZHYsVoRl+gNPr9iKmhWMsbZ1po78+RwhWjandlApkG2k
 VPGsS/rnA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49984)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iEtQD-00048k-Ey; Mon, 30 Sep 2019 12:00:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iEtQ8-0007BU-0A; Mon, 30 Sep 2019 12:00:48 +0100
Date: Mon, 30 Sep 2019 12:00:47 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: SMMU performance
Message-ID: <20190930110047.GF25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_040105_373969_613DC0DF 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While using iperf on a platform using the ARM SMMU (v2), I notice the
following behaviour on v5.3 with Will's iommu patch set merged, kernel
lock debugging disabled.

With iommu.passthrough=1, three consecutive runs:
[  3]  0.0-10.0 sec  4.51 GBytes  3.87 Gbits/sec
[  3]  0.0-10.0 sec  4.53 GBytes  3.89 Gbits/sec
[  3]  0.0-10.0 sec  4.49 GBytes  3.86 Gbits/sec

With iommu.passthrough=0:
[  3]  0.0-10.0 sec  1.77 GBytes  1.52 Gbits/sec
[  3]  0.0-10.0 sec  1.82 GBytes  1.56 Gbits/sec
[  3]  0.0-10.0 sec  1.69 GBytes  1.45 Gbits/sec

Running perf record -a -g ... followed by perf report --no-children
shows:

-   15.72%  iperf            [kernel.vmlinux]    [k] _raw_spin_unlock_irqrestor
   - _raw_spin_unlock_irqrestore
      - 8.95% arm_smmu_tlb_sync_context
           arm_smmu_iotlb_sync
         - __iommu_dma_unmap
            + 4.54% iommu_dma_unmap_sg
            + 4.41% iommu_dma_unmap_page
      - 2.92% alloc_iova_fast
         - iommu_dma_alloc_iova.isra.26
            + 1.54% iommu_dma_map_sg
            + 1.38% __iommu_dma_map
      - 2.64% free_iova_fast
           iommu_dma_free_iova
         - __iommu_dma_unmap
            + 1.35% iommu_dma_unmap_sg
            + 1.29% iommu_dma_unmap_page

which seems to be pointing to the SMMU code as a bottleneck.

Will suggests that his iommu changes (in his for-joerg/arm-smmu/updates
branch), allows IOMMU driver modifications that may have a beneficial
effect.  Any thoughts?

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
