Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E114664880
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IEeJjehte97NAYEoq1wKxDHtp25z4NK2S34dtQScis=; b=F6vQcIG6ZkAnqt
	xL20iGQB/7H6zIJPAZaWLCCcryi3WoHKrw7Z6viq4XwDmrGwHNpnPa4surhtLPLNBeBaisLDg3Oqu
	ZienSecokYE//rdwXD6uVXBMxoqRA8vUPFmD3bRowkcoPq7HNzWALgTOtdYRfYKKgdFXE9hm6mINs
	RrLFYW5mCckJGbvrY74FiER0/rrTAeFLUoCsNrTmUDyJSqJxZKO3CNq2ZJga6GnpvASvQ62CUUPUc
	D3cSFAqbFhieET90oWJusovr0L5/EGLhFQwYgogLgOGaNlU5jLvHRPltxa6aKwd6VNQwiZWUR78lp
	0KM+2B1L1DHXXVzE9QjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDiZ-0001nf-SR; Wed, 10 Jul 2019 14:37:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDiM-0001mc-6I; Wed, 10 Jul 2019 14:36:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1998D20651;
 Wed, 10 Jul 2019 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562769417;
 bh=JpLBi/wvSqPSVyE7XiTBNxyTryULw8xtjJ4a7enA2+4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cBR7Me1MIN0v9K0+Jn0Agboor87D+JAELf7o39AuQiGedDSI9g6Hb3ynHzfYMpP57
 r6gKH89Gk5AevaNGtflTPMQvg26XFy4vcVl7Ctahl8iLClpyT/LXiS4XccwGZ3nojX
 wsVgfmjZewYJnpQsbQzxPL59Mn3/jUtRue0cowJ4=
Date: Wed, 10 Jul 2019 15:36:50 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v8 07/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
Message-ID: <20190710143649.w5dplhzdpi3bxp7e@willie-the-truck>
References: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
 <1561774167-24141-8-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561774167-24141-8-git-send-email-yong.wu@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_073658_267968_82F7A381 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 29, 2019 at 10:09:13AM +0800, Yong Wu wrote:
> MediaTek extend the arm v7s descriptor to support the dram over 4GB.
> 
> In the mt2712 and mt8173, it's called "4GB mode", the physical address
> is from 0x4000_0000 to 0x1_3fff_ffff, but from EMI point of view, it
> is remapped to high address from 0x1_0000_0000 to 0x1_ffff_ffff, the
> bit32 is always enabled. thus, in the M4U, we always enable the bit9
> for all PTEs which means to enable bit32 of physical address.
> 
> but in mt8183, M4U support the dram from 0x4000_0000 to 0x3_ffff_ffff
> which isn't remaped. We extend the PTEs: the bit9 represent bit32 of
> PA and the bit4 represent bit33 of PA. Meanwhile the iova still is
> 32bits.

What happens if bit4 is set in the pte for mt2712 or mt8173? Perhaps the
io-pgtable backend should be allowing oas > 32 when
IO_PGTABLE_QUIRK_ARM_MTK_4GB is set, and then enforcing that itself.

> In order to unify code, in the "4GB mode", we add the bit32 for the
> physical address manually in our driver.
> 
> Correspondingly, Adding bit32 and bit33 for the PA in the iova_to_phys
> has to been moved into v7s.
> 
> Regarding whether the pagetable address could be over 4GB, the mt8183
> support it while the previous mt8173 don't. thus keep it as is.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
> Comparing with the previous one:
> 1). Add a new patch "iommu/mediatek: Fix iova_to_phys PA start for 4GB
> mode" before this one. Thus rebase it.
> A little difference: in the 4gb mode, we add bit32 for PA. and the PA got
> from iova_to_phys always have bit32 here, thus we should adjust it to locate
> the valid pa.
> 2). Add this code suggested from Evan.
>  if (!data->plat_data->has_4gb_mode)
> 	       data->enable_4GB = false;
> ---
>  drivers/iommu/io-pgtable-arm-v7s.c | 31 ++++++++++++++++++++++++-------
>  drivers/iommu/mtk_iommu.c          | 29 ++++++++++++++++++-----------
>  drivers/iommu/mtk_iommu.h          |  1 +
>  3 files changed, 43 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
> index 94c38db..4077822 100644
> --- a/drivers/iommu/io-pgtable-arm-v7s.c
> +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> @@ -123,7 +123,9 @@
>  #define ARM_V7S_TEX_MASK		0x7
>  #define ARM_V7S_ATTR_TEX(val)		(((val) & ARM_V7S_TEX_MASK) << ARM_V7S_TEX_SHIFT)
>  
> -#define ARM_V7S_ATTR_MTK_4GB		BIT(9) /* MTK extend it for 4GB mode */
> +/* MediaTek extend the two bits below for over 4GB mode */
> +#define ARM_V7S_ATTR_MTK_PA_BIT32	BIT(9)
> +#define ARM_V7S_ATTR_MTK_PA_BIT33	BIT(4)
>  
>  /* *well, except for TEX on level 2 large pages, of course :( */
>  #define ARM_V7S_CONT_PAGE_TEX_SHIFT	6
> @@ -190,13 +192,22 @@ static dma_addr_t __arm_v7s_dma_addr(void *pages)
>  static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
>  				    struct io_pgtable_cfg *cfg)
>  {
> -	return paddr & ARM_V7S_LVL_MASK(lvl);
> +	arm_v7s_iopte pte = paddr & ARM_V7S_LVL_MASK(lvl);
> +
> +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB) {
> +		if (paddr & BIT_ULL(32))
> +			pte |= ARM_V7S_ATTR_MTK_PA_BIT32;
> +		if (paddr & BIT_ULL(33))
> +			pte |= ARM_V7S_ATTR_MTK_PA_BIT33;
> +	}
> +	return pte;
>  }
>  
>  static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
>  				  struct io_pgtable_cfg *cfg)
>  {
>  	arm_v7s_iopte mask;
> +	phys_addr_t paddr;
>  
>  	if (ARM_V7S_PTE_IS_TABLE(pte, lvl))
>  		mask = ARM_V7S_TABLE_MASK;
> @@ -205,7 +216,14 @@ static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
>  	else
>  		mask = ARM_V7S_LVL_MASK(lvl);
>  
> -	return pte & mask;
> +	paddr = pte & mask;
> +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB) {
> +		if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
> +			paddr |= BIT_ULL(32);
> +		if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
> +			paddr |= BIT_ULL(33);
> +	}
> +	return paddr;

I think this relies on CONFIG_PHYS_ADDR_T_64BIT, which isn't always set on
32-bit ARM.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
