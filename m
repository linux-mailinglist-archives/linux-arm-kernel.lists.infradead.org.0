Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182F49803F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXEFro14hihMRld+gQygY8WiD554diQaiabcTjHMay8=; b=SOjasMZ3PV3DKf
	ai3ZOsKhdJpNFaNUrFmhqg+v1EpeT7awWt4HZs31a1DQf952I2BLIdq+eFTDTGRvVDvYsKEoMd+QI
	t24gX3U7RwI7+Uqgowfk3vmHmiqylCAvojjXp5hPu0eiTCGbzw/AfunPOQKmWWfaUqj8mlfeoGcf8
	JGLD/sImutlEYNC1/8ZdUNG71ilnu9geMMk66KahQd8cyFYEjuStbWNZQ5K2rRhHQirdCYvIrQSU5
	g54NBTlB5CVl8YCjYcT7ZXFsIuYNvyrbJdzHJd4beBK6MrMVvZzBhhOqVE40HNRO4ZtjAdl5BjNNF
	XZJKYb3x/SiS+t8QvBeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Tai-0003LT-Eh; Wed, 21 Aug 2019 16:36:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Taa-0003Kz-Ch; Wed, 21 Aug 2019 16:36:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3D2D216F4;
 Wed, 21 Aug 2019 16:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566405360;
 bh=523UKRpEYgVnK4n6qoJT/UA2T1eyXvRGlZiSMko8S2I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=THQSoGVckn9loJO2YK6n0hW8Zr+qYViNc6L7hieM8yM6BUPTRpUCVjjlXy5iJ/abQ
 /8sxz9km+kjRuL5G/1sDfv+VWpOPpsABw8SxC1NN+XfRv9hH04pSbCObu9foGya4yP
 3u+NJzArrkquuRd6l3iLVqK/x7qHKusaX9b/v5io=
Date: Wed, 21 Aug 2019 17:35:54 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
Message-ID: <20190821163553.ymlk5fcgd6ntnpss@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
 <22a79977-5074-7af1-97b8-8a3e549b23c1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22a79977-5074-7af1-97b8-8a3e549b23c1@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_093600_451622_595902ED 
X-CRM114-Status: GOOD (  18.71  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 anan.sun@mediatek.com, Matthias Kaehlcke <mka@chromium.org>,
 Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:34:27PM +0100, Robin Murphy wrote:
> On 21/08/2019 16:24, Will Deacon wrote:
> > On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
> > > MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
> > > the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
> > > respectively. Meanwhile the iova still is 32bits.
> > > 
> > > Regarding whether the pagetable address could be over 4GB, the mt8183
> > > support it while the previous mt8173 don't, thus keep it as is.
> > > 
> > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > ---
> > >   drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
> > >   include/linux/io-pgtable.h         |  7 +++----
> > >   2 files changed, 28 insertions(+), 11 deletions(-)
> > 
> > [...]
> > 
> > > @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> > >   {
> > >   	struct arm_v7s_io_pgtable *data;
> > > -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> > > +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> > > +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> > > +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> > 
> > Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
> > ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?
> 
> You mean oas, right? I believe the hardware *does* actually support a 32-bit
> ias as well, but we shouldn't pretend to support that while
> __arm_v7s_alloc_table() still only knows how to allocate normal-sized
> tables.

Sorry, yes, oas.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
