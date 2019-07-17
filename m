Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7898E6BE2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 16:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSZethrlHlyHQwMuNp/SfkEkvfN+/wxKmx2KI3JkmVc=; b=nRh22WVcUYIMR+
	J+5xaOuW8jg9JoyftzUY+EvzSLysv4kZQS3zl1oqC4pm/89K0JursGGPlW4EjY+DXnL5rSE5U7G2f
	mzWa4H1TvB94RGHAtzWLIANI/vqHb4n1NzvsmjCoZ5MnJtbigqd/nmFJPR8UZxOiDSR1Ivc3rYU/C
	exgkqkP2bklXknZaur+w28dfBVf/dWViZkrq5Vga0zXcG7TSalcGoQxRdyvNGxt7QEXCGgRqO9vZK
	AsXLs8603TM5GgGk6KAnyWZUOfh04SR/ektQ9YyLTRfZxEu+ApH3eC0aX3wUAtovbs/oF6ol9QgJw
	Y27kFVr3bRncSgXL6W/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnkqg-0000GB-FS; Wed, 17 Jul 2019 14:24:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnkqR-0000Dx-CC; Wed, 17 Jul 2019 14:23:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8568E21743;
 Wed, 17 Jul 2019 14:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563373426;
 bh=GlgM6Flb7U5FvLBrim3MfffxSY9Cf03irtwOwK4KS08=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nEGGSoDItNpMBm7fRxdhPxrr5B8dn0+K1xshnV+ZF9QLHM9kqfyNzbDovXpkWgi6k
 L1J4PtnDOWbmj7aboaApmgn03y0Svo7KOZS+F8Ko1wo7KUVWvLev86ahSBecZnjw41
 6fwNTWZl/I9y305D5xAlquohPhYf8EeD99abhAPI=
Date: Wed, 17 Jul 2019 15:23:40 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v8 07/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
Message-ID: <20190717142339.wltamw6wktwixqqn@willie-the-truck>
References: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
 <1561774167-24141-8-git-send-email-yong.wu@mediatek.com>
 <20190710143649.w5dplhzdpi3bxp7e@willie-the-truck>
 <1562846036.31342.10.camel@mhfsdcap03>
 <20190711123129.da4rg35b54u4svfw@willie-the-truck>
 <1563079280.31342.22.camel@mhfsdcap03>
 <20190715095156.xczfkbm6zpjueq32@willie-the-truck>
 <1563367459.31342.34.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563367459.31342.34.camel@mhfsdcap03>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_072347_461948_96234FBD 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, Tomasz Figa <tfiga@google.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 chao.hao@mediatek.com, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 08:44:19PM +0800, Yong Wu wrote:
> On Mon, 2019-07-15 at 10:51 +0100, Will Deacon wrote:
> > On Sun, Jul 14, 2019 at 12:41:20PM +0800, Yong Wu wrote:
> > > @@ -742,7 +763,9 @@ static struct io_pgtable
> > > *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> > >  {
> > >  	struct arm_v7s_io_pgtable *data;
> > >  
> > > -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> > > +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> > > +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> > > +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> > >  		return NULL;
> > 
> > I think you can rework this to do something like:
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
> > 
> > so that we clamp the oas when phys_addr_t is 32-bit for you. That should
> > allow you to remove lots of the checking from iopte_to_paddr() too if you
> > check against oas in the map() function.
> > 
> > Does that make sense?
> 
> Of course I'm ok for this. I'm only afraid that this function has
> already 3 checking "if (x) return NULL", Here we add a new one and so
> many lines... Maybe the user should guarantee the right value of oas.
> How about move it into mtk_iommu.c?
> 
> About the checking of iopte_to_paddr, I can not remove them. I know it
> may be a bit special and not readable. Hmm, I guess I should use a MACRO
> instead of the hard code 33 for the special 4GB mode case.

Why can't you just do something like:

	if (!(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT))
		return paddr;

	if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
		paddr |= BIT_ULL(33);

	if (pte & ARM_V&S_ATTR_MTK_PA_BIT32)
		paddr |= BIT_ULL(32);

	return paddr;

The diff I sent previously sanitises the oas at init time, and then you
can just enforce it in map().

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
