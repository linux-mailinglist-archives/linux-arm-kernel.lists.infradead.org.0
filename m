Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D263899084
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QOGyC+1nmOtbQofb/9pBRNilqenvs3D49LyZ2oMkVI=; b=Oy3ExfBNHIvQAJ
	0pITendoslczTRbA23PLmFNrMJtz4ctTErKwUw/0lQUjxUT/IuA1980qeEcE1wlNAWWkqHvEd45zh
	TJTgLbRBCWDtLvMRdj7TK3NpX7JAoPaSwEWjsHCqcP/ZkPOAlsRfl8hkxoBfcJngRLjCDIsvnO9mu
	FFqgimb2As9C50pYhFYExo8R2qKpbXnH/XmpF8VMDUs3e/DByIfKDDMgXfEoKYlGkjrlGfpjxG627
	ec8AhBG/5BIN0+xLkAZ21DVswKGOgG7ldAbHPON0JMQbo267lLyWnM3FfgKxwN0+qE55IWvyfolmR
	HNQspKiV4PP/bDQOyYdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kAS-0004jg-Ae; Thu, 22 Aug 2019 10:18:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kAG-0004jJ-Nc; Thu, 22 Aug 2019 10:17:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EA0A206BB;
 Thu, 22 Aug 2019 10:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566469076;
 bh=D5zRVu+USg1+RS1lEwQnNpD4UWyIvPicvP8SU5txo7M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U+kQlDk/quo+7he7VCs7KWCgcPH6jsj+XqyXsFL1nkatram4CncWOWeCdSKn/rY/g
 +iRxXCIDdDiMiWHQcq6VRQ1qG5uB7ctPdIy7P/MENCTB0Hu4QpP11xguJp+ZhYENWW
 9LXMLpxz8xM/2PO8Erokk4mm7xsc+uOJrVaKRsdI=
Date: Thu, 22 Aug 2019 11:17:50 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
Message-ID: <20190822101749.3kwzd5lb7zinsord@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
 <1566464186.11621.7.camel@mhfsdcap03>
 <10d5122d-3375-161b-9356-2ddfc1c835bd@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10d5122d-3375-161b-9356-2ddfc1c835bd@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_031756_813769_46C45035 
X-CRM114-Status: GOOD (  23.03  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 srv_heupstream@mediatek.com, Tomasz Figa <tfiga@google.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 anan.sun@mediatek.com, Matthias Kaehlcke <mka@chromium.org>,
 Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 11:08:58AM +0100, Robin Murphy wrote:
> On 2019-08-22 9:56 am, Yong Wu wrote:
> > On Wed, 2019-08-21 at 16:24 +0100, Will Deacon wrote:
> > > On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
> > > > MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
> > > > the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
> > > > respectively. Meanwhile the iova still is 32bits.
> > > > 
> > > > Regarding whether the pagetable address could be over 4GB, the mt8183
> > > > support it while the previous mt8173 don't, thus keep it as is.
> > > > 
> > > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > > ---
> > > >   drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
> > > >   include/linux/io-pgtable.h         |  7 +++----
> > > >   2 files changed, 28 insertions(+), 11 deletions(-)
> > > 
> > > [...]
> > > 
> > > > @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> > > >   {
> > > >   	struct arm_v7s_io_pgtable *data;
> > > > -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> > > > +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> > > > +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> > > > +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> > > 
> > > Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
> > > ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?
> > 
> > Here I only simply skip the oas checking for our case. then which way do
> > your prefer?  something like you commented before:?
> > 
> > 
> > 	if (cfg->ias > ARM_V7S_ADDR_BITS)
> > 		return NULL;
> > 
> > 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT) {
> > 		if (!IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT))
> > 			cfg->oas = min(cfg->oas, ARM_V7S_ADDR_BITS);
> > 		else if (cfg->oas > 34)
> > 			return NULL;
> > 	} else if (cfg->oas > ARM_V7S_ADDR_BITS) {
> > 		return NULL;
> > 	}
> 
> All it should take is something like:
> 
> 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)
> 		max_oas = 34;
> 	else
> 		max_oas = 32;
> 	if (cfg->oas > max_oas)
> 		return NULL;
> 
> or even just:
> 
> 	if (cfg->oas > 32 ||
> 	    (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT && cfg->oas > 34))
> 		return NULL;
> 
> (and if we prefer the latter style, perhaps we could introduce some kind of
> "is_mtk_4gb()" helper to save on verbosity)

I wondered the same thing, but another place we'd want the check is in
iopte_to_paddr() which probably needs the PHYS_ADDR_T check to avoid GCC
warnings, although I didn't try it.

So if we did:

static bool cfg_mtk_ext_enabled(struct io_pgtable_cfg *cfg)
{
	return IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT) &&
	       cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT;
}

Then I suppose we could do this in _alloc():

	if (cfg->oas > cfg_mtk_ext_enabled(cfg) ? 34 : ARM_V7S_ADDR_BITS)
		return NULL;

and then this in iopte_to_paddr():

	[...]

	paddr = pte & mask;
	if (!cfg_mtk_ext_enabled(cfg))
		return paddr;

	if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
		paddr |= ...

	[...]

What do you reckon?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
