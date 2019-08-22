Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720529920B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIzHYjWAZ1ujIosmuAcaqBYGDQgBPlloXNFnfkm02cM=; b=fi2d2nkIi1B//H
	S3DbYMxb4rkdXhRmtiAp5uN22SErbKdIo4u2dDpwkmMREdFDnCDpZDmWulwOd3vH5XbKmB1MxOy0S
	1uOlDuqey1F11/VfoJGXSO5SoxJzdjcK1MKHHtDEUe9gkhrsLKbYW1eJIYS4Qvh1Zwa9RaDwkwq2+
	8L/Jmi7c0Fnc7vKNxw3g3HWacSzFjwlqWgzWv1rd3m+C1mG3V045x27klMdOnZBihQrBRZdpNfHFg
	zRGrPrevieCdpnkXAgjtSGIvkZdp6I0V1tX3pktLk6qLQa636lAqTJIxRRorz69+cDKH5QWNWiFoO
	1wXwE5GloWHlQ0mDT7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lH3-0003wK-G4; Thu, 22 Aug 2019 11:29:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lGm-0003vT-4c; Thu, 22 Aug 2019 11:28:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC96F206DD;
 Thu, 22 Aug 2019 11:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566473323;
 bh=aBkIxbh8H3Md/T5wqzLj1FFJMdZskQl8pfMvLAQCue8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cRqKwnFB3bV6vcqeK1ELh9lo1EZIXzFUSvjWaooDsaBrAF6sZVylgUg+B+9AUI0HK
 LZs/kPtu6YgpNmp0nV0mH/J+jRGEqw1Y0uypY9rP1OvK/xTDzVppBV4oBQ7FT0uZ+x
 hJWF8o5esN6BksMzW4J0W0RDz5436nqzasB9fZAA=
Date: Thu, 22 Aug 2019 12:28:36 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
Message-ID: <20190822112836.efodtwu3souq3uwa@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
 <1566464186.11621.7.camel@mhfsdcap03>
 <10d5122d-3375-161b-9356-2ddfc1c835bd@arm.com>
 <20190822101749.3kwzd5lb7zinsord@willie-the-truck>
 <e6652176-763d-5298-9e10-8c1fbe1b3c0d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6652176-763d-5298-9e10-8c1fbe1b3c0d@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_042844_226865_9F8C42C6 
X-CRM114-Status: GOOD (  28.51  )
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

On Thu, Aug 22, 2019 at 11:57:11AM +0100, Robin Murphy wrote:
> On 2019-08-22 11:17 am, Will Deacon wrote:
> > On Thu, Aug 22, 2019 at 11:08:58AM +0100, Robin Murphy wrote:
> > > On 2019-08-22 9:56 am, Yong Wu wrote:
> > > > On Wed, 2019-08-21 at 16:24 +0100, Will Deacon wrote:
> > > > > On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
> > > > > > MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
> > > > > > the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
> > > > > > respectively. Meanwhile the iova still is 32bits.
> > > > > > 
> > > > > > Regarding whether the pagetable address could be over 4GB, the mt8183
> > > > > > support it while the previous mt8173 don't, thus keep it as is.
> > > > > > 
> > > > > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > > > > ---
> > > > > >    drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
> > > > > >    include/linux/io-pgtable.h         |  7 +++----
> > > > > >    2 files changed, 28 insertions(+), 11 deletions(-)
> > > > > 
> > > > > [...]
> > > > > 
> > > > > > @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> > > > > >    {
> > > > > >    	struct arm_v7s_io_pgtable *data;
> > > > > > -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> > > > > > +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> > > > > > +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> > > > > > +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> > > > > 
> > > > > Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
> > > > > ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?
> > > > 
> > > > Here I only simply skip the oas checking for our case. then which way do
> > > > your prefer?  something like you commented before:?
> > > > 
> > > > 
> > > > 	if (cfg->ias > ARM_V7S_ADDR_BITS)
> > > > 		return NULL;
> > > > 
> > > > 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT) {
> > > > 		if (!IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT))
> > > > 			cfg->oas = min(cfg->oas, ARM_V7S_ADDR_BITS);
> > > > 		else if (cfg->oas > 34)
> > > > 			return NULL;
> > > > 	} else if (cfg->oas > ARM_V7S_ADDR_BITS) {
> > > > 		return NULL;
> > > > 	}
> > > 
> > > All it should take is something like:
> > > 
> > > 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)
> > > 		max_oas = 34;
> > > 	else
> > > 		max_oas = 32;
> > > 	if (cfg->oas > max_oas)
> > > 		return NULL;
> > > 
> > > or even just:
> > > 
> > > 	if (cfg->oas > 32 ||
> > > 	    (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT && cfg->oas > 34))
> > > 		return NULL;
> > > 
> > > (and if we prefer the latter style, perhaps we could introduce some kind of
> > > "is_mtk_4gb()" helper to save on verbosity)
> > 
> > I wondered the same thing, but another place we'd want the check is in
> > iopte_to_paddr() which probably needs the PHYS_ADDR_T check to avoid GCC
> > warnings, although I didn't try it.
> 
> I'm pretty sure I confirmed that "paddr |= BIT_ULL(32)" doesn't warn when
> phys_addt_t is 32-bit - it's well-defined unsigned integer truncation after
> all, and if GCC starts warning about all the valid no-op code it optimises
> away then it's going to run up against IS_ENABLED() first and foremost ;)

You're quite right, although we live in a world where GCC shouts at us about
missing comments in switch statements so I think my worry was justified!

> > So if we did:
> > 
> > static bool cfg_mtk_ext_enabled(struct io_pgtable_cfg *cfg)
> > {
> > 	return IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT) &&
> > 	       cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT;
> > }
> > 
> > Then I suppose we could do this in _alloc():
> > 
> > 	if (cfg->oas > cfg_mtk_ext_enabled(cfg) ? 34 : ARM_V7S_ADDR_BITS)
> > 		return NULL;

^^ Apparantly, I left the bracketting here as an exercise to the reader.

> > 
> > and then this in iopte_to_paddr():
> > 
> > 	[...]
> > 
> > 	paddr = pte & mask;
> > 	if (!cfg_mtk_ext_enabled(cfg))
> > 		return paddr;
> > 
> > 	if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
> > 		paddr |= ...
> > 
> > 	[...]
> > 
> > What do you reckon?
> 
> Yeah, that's the general shape of things I was picturing - I'm not that
> fussed about the PHYS_ADDR_T_64BIT thing, especially if it's wrapped up in
> just one place, so if you do want to keep it as belt-and-braces I'll just
> consider it a slight code size optimisation for 32-bit builds.

Ok, great. Yong Wu -- are you ok respinning with the above + missing
brackets?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
