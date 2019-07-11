Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3641656E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhVmdi66nHVKdwOLkfyVbnaK+otQ7hGUS/qNVOfoI8U=; b=hwH5T06iztb5Gm
	aUkFroVAh41J14Ukao05MkfgJtG+C1qsymIRQpszAqfGNUOZdEh0xbEWc75DkFYHPBkPjaWsPPySo
	hKJZveWOpq9AcpmMpVEpunlKSyNXn6IhjM1/XvchXo+lwkQABI6fBhspuUNETNzd+XjeBxOTHdMSJ
	z99egnfDCv7RhoEGCU1CfullWvtpKHyqkcgKDTu0hs+8dioIo3oMBeqveIoXfuMm2xLzh9tqD7eAl
	hdisXEnAHpdJJ+nLKH82hEv0Lz/F8/Kgg97TKX342HZvQZ7dZzruYFPi3l7m/7qbU8TlenETeLcV5
	3f7bVrnJSbEB1RiXkXfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYEj-0008Lo-To; Thu, 11 Jul 2019 12:31:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYEa-0008Ky-Pb; Thu, 11 Jul 2019 12:31:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F26FC20872;
 Thu, 11 Jul 2019 12:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562848296;
 bh=taKYFaL4w66TAwI7MPXQRwN1YVw6ACtaT/WEv3sNJm4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I8t08CD65eN+1vdURSKrXiClbKBzmqV8BxOEB+RYrcsXeEC7JGnv38XHWFNfuEhZe
 Fg3LNEGKB0Iy9Pmb7WmH+bzDCXLlNMZfPl3pfgJFwSxLmeRBm8cerDcIEVHkJX0JpZ
 TevDVShZM2RAlid5HYXefWAbG56bGpv9Y1KjKVJo=
Date: Thu, 11 Jul 2019 13:31:29 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v8 07/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
Message-ID: <20190711123129.da4rg35b54u4svfw@willie-the-truck>
References: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
 <1561774167-24141-8-git-send-email-yong.wu@mediatek.com>
 <20190710143649.w5dplhzdpi3bxp7e@willie-the-truck>
 <1562846036.31342.10.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562846036.31342.10.camel@mhfsdcap03>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_053136_866215_7B0BD4B4 
X-CRM114-Status: GOOD (  27.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Jul 11, 2019 at 07:53:56PM +0800, Yong Wu wrote:
> On Wed, 2019-07-10 at 15:36 +0100, Will Deacon wrote:
> > On Sat, Jun 29, 2019 at 10:09:13AM +0800, Yong Wu wrote:
> > > MediaTek extend the arm v7s descriptor to support the dram over 4GB.
> > > 
> > > In the mt2712 and mt8173, it's called "4GB mode", the physical address
> > > is from 0x4000_0000 to 0x1_3fff_ffff, but from EMI point of view, it
> > > is remapped to high address from 0x1_0000_0000 to 0x1_ffff_ffff, the
> > > bit32 is always enabled. thus, in the M4U, we always enable the bit9
> > > for all PTEs which means to enable bit32 of physical address.
> > > 
> > > but in mt8183, M4U support the dram from 0x4000_0000 to 0x3_ffff_ffff
> > > which isn't remaped. We extend the PTEs: the bit9 represent bit32 of
> > > PA and the bit4 represent bit33 of PA. Meanwhile the iova still is
> > > 32bits.
> > 
> > What happens if bit4 is set in the pte for mt2712 or mt8173? Perhaps the
> 
> bit4 is ignored in mt2712 and mt8173(No effect).
> 
> > io-pgtable backend should be allowing oas > 32 when
> > IO_PGTABLE_QUIRK_ARM_MTK_4GB is set, and then enforcing that itself.
> 
> About oas, It looks the oas doesn't work in current the v7s. 
> 
> How about I add a new simple preparing patch like this(copy from
> io-pgtable-arm.c)?

This looks like the right sort of idea. Basically, I was thinking that you
can use the oas in conjunction with the quirk to specify whether or not
your two magic bits should be set. You could also then cap the oas using
the size of phys_addr_t to deal with my other comment.

Finally, I was hoping you could drop the |= BIT_ULL(32) and the &=
~BIT_ULL(32) bits of the mtk driver if the pgtable code now accepts higher
addresses. Did that not work out?
> 
> ==========================================
> --- a/drivers/iommu/io-pgtable-arm-v7s.c
> +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> @@ -495,7 +495,8 @@ static int arm_v7s_map(struct io_pgtable_ops *ops,
> unsigned long iova,
>         if (!(prot & (IOMMU_READ | IOMMU_WRITE)))
>                 return 0;
> 
> -       if (WARN_ON(upper_32_bits(iova) || upper_32_bits(paddr)))
> +       if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
> +                   paddr >= (1ULL << data->iop.cfg.oas)))
>                 return -ERANGE;
> 
> ===============================================
> 
> Then, change the oas in MTK 4GB mode, like this:
> 
> ================================================
> --- a/drivers/iommu/io-pgtable-arm-v7s.c
> +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> @@ -721,7 +721,9 @@ static struct io_pgtable
> *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
>  {
>         struct arm_v7s_io_pgtable *data;
> 
> -       if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas >
> ARM_V7S_ADDR_BITS)
> +       if (cfg->ias > ARM_V7S_ADDR_BITS ||
> +           (cfg->oas > ARM_V7S_ADDR_BITS &&
> +            !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB)))

This should probably still be capped at 34 bits.

> > > +	paddr = pte & mask;
> > > +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB) {
> > > +		if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
> > > +			paddr |= BIT_ULL(32);
> > > +		if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
> > > +			paddr |= BIT_ULL(33);
> > > +	}
> > > +	return paddr;
> > 
> > I think this relies on CONFIG_PHYS_ADDR_T_64BIT, which isn't always set on
> > 32-bit ARM.
> 
> This was discussed at [1]. Robin commented that this is not needed and
> build won't complain about this.

It's not so much the build I was worried about, but more that we'd silently
be doing the wrong thing and I think we can fix that as I mentioned above.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
