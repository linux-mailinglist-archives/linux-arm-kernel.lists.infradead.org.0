Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 782288D668
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYrRqYAq8nddip5OKzCeX0x43sSlqYydRyxS1VIzM08=; b=RrI2PC8jTfuTRx
	1CbDbvHMGrfvhC6RqTkylxiTC9TWahZ0yJhDM1asdkLD/CxvfaEaXr5vgxvIfpIMQN2KW6W0xEUGo
	WmLSr+zjYWdLdx52ARVtiLkutUzoyLsyldSVVW9wgX2Hf8zlr2ki4AQi0/bcmCtXKPoXj1ejVW1n8
	BnDohai7No4sJXUkOj1dky4r7N2vu/Vrm8s0uzk0UKYvIJZizXyv046GNFDXmkC6D2aH6G/8R37Jp
	I8jJwi10OnP/YORbsg+wQl/eHo1HuwEIN5v30pj4kVDJrkmYBhpYYvErAx2wF0ypwV3T2vx7wDG2b
	mpvDYV2huDi6YoAq+EvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuSp-0005aB-Mg; Wed, 14 Aug 2019 14:41:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuSZ-0005Zn-Cj; Wed, 14 Aug 2019 14:41:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C5A12084F;
 Wed, 14 Aug 2019 14:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565793666;
 bh=jqAmDB/DdtSMeWfimuoJggpnAk0RJ3WaU75jDeIn5oo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rNsmFWWNEtepwSspPVPQj7tCrKE+6ilVhN23rjhA7f8T2B2i69Zs85I3qpC/pDSEY
 rqWqwiQfS1y9E4hWMQdJM/K+pyYE6AQ9CMK9ek75MNFaUo5/+LkNcKP4ySo17uqG16
 tpBkanURK0WmMPwYRrDuqri3s8x6EsmrAO4LX/AQ=
Date: Wed, 14 Aug 2019 15:41:00 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v9 08/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
Message-ID: <20190814144059.ruyc45yoqkwpbuga@willie-the-truck>
References: <1565423901-17008-1-git-send-email-yong.wu@mediatek.com>
 <1565423901-17008-9-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565423901-17008-9-git-send-email-yong.wu@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_074107_477677_EEA6E7AE 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yong Wu,

Sorry, but I'm still deeply confused by this patch.

On Sat, Aug 10, 2019 at 03:58:08PM +0800, Yong Wu wrote:
> MediaTek extend the arm v7s descriptor to support the dram over 4GB.
> 
> In the mt2712 and mt8173, it's called "4GB mode", the physical address
> is from 0x4000_0000 to 0x1_3fff_ffff, but from EMI point of view, it
> is remapped to high address from 0x1_0000_0000 to 0x1_ffff_ffff, the
> bit32 is always enabled. thus, in the M4U, we always enable the bit9
> for all PTEs which means to enable bit32 of physical address. Here is
> the detailed remap relationship in the "4GB mode":
> CPU PA         ->    HW PA
> 0x4000_0000          0x1_4000_0000 (Add bit32)
> 0x8000_0000          0x1_8000_0000 ...
> 0xc000_0000          0x1_c000_0000 ...
> 0x1_0000_0000        0x1_0000_0000 (No change)

So in this example, there are no PAs below 0x4000_0000 yet you later
add code to deal with that:

> +	/* Workaround for MTK 4GB Mode: Add BIT32 only when PA < 0x4000_0000.*/
> +	if (cfg->oas == ARM_V7S_MTK_4GB_OAS && paddr < 0x40000000UL)
> +		paddr |= BIT_ULL(32);

Why? Mainline currently doesn't do anything like this for the "4gb mode"
support as far as I can tell. In fact, we currently unconditionally set
bit 32 in the physical address returned by iova_to_phys() which wouldn't
match your CPU PAs listed above, so I'm confused about how this is supposed
to work.

The way I would like this quirk to work is that the io-pgtable code
basically sets bit 9 in the pte when bit 32 is set in the physical address,
and sets bit 4 in the pte when bit 33 is set in the physical address. It
would then do the opposite when converting a pte to a physical address.

That way, your driver can call the page table code directly with the high
addresses and we don't have to do any manual offsetting or range checking
in the page table code.

Please can you explain to me why the diff below doesn't work on top of
this series? I'm happy to chat on IRC if you think it would be easier,
because I have a horrible feeling that we've been talking past each other
and I'd like to see this support merged for 5.4.

Will

--->8

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index ab12ef5f8b03..d8d84617c822 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -184,7 +184,7 @@ static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
 	arm_v7s_iopte pte = paddr & ARM_V7S_LVL_MASK(lvl);
 
 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT) {
-		if ((paddr & BIT_ULL(32)) || cfg->oas == ARM_V7S_MTK_4GB_OAS)
+		if (paddr & BIT_ULL(32))
 			pte |= ARM_V7S_ATTR_MTK_PA_BIT32;
 		if (paddr & BIT_ULL(33))
 			pte |= ARM_V7S_ATTR_MTK_PA_BIT33;
@@ -206,17 +206,14 @@ static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
 		mask = ARM_V7S_LVL_MASK(lvl);
 
 	paddr = pte & mask;
-	if (cfg->oas == 32 || !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT))
-		return paddr;
 
-	if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
-		paddr |= BIT_ULL(33);
+	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT) {
+		if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
+			paddr |= BIT_ULL(32);
+		if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
+			paddr |= BIT_ULL(33);
+	}
 
-	/* Workaround for MTK 4GB Mode: Add BIT32 only when PA < 0x4000_0000.*/
-	if (cfg->oas == ARM_V7S_MTK_4GB_OAS && paddr < 0x40000000UL)
-		paddr |= BIT_ULL(32);
-	else if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
-		paddr |= BIT_ULL(32);
 	return paddr;
 }
 
diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index d5b9454352fd..3ae54dedede0 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -286,7 +286,7 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
 	if (!IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT))
 		dom->cfg.oas = 32;
 	else if (data->enable_4GB)
-		dom->cfg.oas = ARM_V7S_MTK_4GB_OAS;
+		dom->cfg.oas = 33;
 	else
 		dom->cfg.oas = 34;
 
diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
index 27337395bd42..a2a52c349fe4 100644
--- a/include/linux/io-pgtable.h
+++ b/include/linux/io-pgtable.h
@@ -113,8 +113,6 @@ struct io_pgtable_cfg {
 	};
 };
 
-#define ARM_V7S_MTK_4GB_OAS			33
-
 /**
  * struct io_pgtable_ops - Page table manipulation API for IOMMU drivers.
  *

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
