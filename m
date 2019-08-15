Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868578E8E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GPp7Fa43QXvII3jtSMUvDdUaH3sp761Q778wgug69Q=; b=PhJI+LFdTs6RFT
	gpnkL+gTLWDlQzyVIteNJY3PbpqRB8ivaHygElHEzg3JbpajVhQpfdfmLhCWU5e5vi1M26bq/226D
	ykTI+a2ks7EoCi8VGdZVjdnN/hbN9aaNUkwtq2iDzC/h00aE4oABnOJE49pMhRIQuHGqHrUBgfNiP
	xgBAl5ZKCGSIkG3OYibaFY4H63eszlpaeijaXJohuQPrguBJx6czVKhMZoxfc6aT/woD51YKqVWNY
	R5gJZOzIPPzhhwqgCzAKqwvx6xcDT+sVb6nYSF9A518/itzs5rAnF9OAohXvuEIXkOo5gIfGJjCtP
	cVeiW00S+6DF+bCQ+RAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyCqw-0001JC-LU; Thu, 15 Aug 2019 10:19:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyCqL-0001HK-Bn; Thu, 15 Aug 2019 10:18:54 +0000
X-UUID: e5c3dfcf143342f49bf2e005f4ca2b51-20190815
X-UUID: e5c3dfcf143342f49bf2e005f4ca2b51-20190815
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1208038479; Thu, 15 Aug 2019 02:18:49 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 15 Aug 2019 03:18:47 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 15 Aug 2019 18:18:39 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 15 Aug 2019 18:18:42 +0800
Message-ID: <1565864318.14278.4.camel@mhfsdcap03>
Subject: Re: [PATCH v9 08/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB
 Mode
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>
Date: Thu, 15 Aug 2019 18:18:38 +0800
In-Reply-To: <20190815095123.rzgtpklvhtjlqir4@willie-the-truck>
References: <1565423901-17008-1-git-send-email-yong.wu@mediatek.com>
 <1565423901-17008-9-git-send-email-yong.wu@mediatek.com>
 <20190814144059.ruyc45yoqkwpbuga@willie-the-truck>
 <1565858869.12818.51.camel@mhfsdcap03>
 <20190815095123.rzgtpklvhtjlqir4@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E025A19421E7A1D3E1417135ABBC09AAB1F444894762B73446C1A1D4F4AC54C82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_031853_411117_3339BF54 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org, Evan
 Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-15 at 10:51 +0100, Will Deacon wrote:
> On Thu, Aug 15, 2019 at 04:47:49PM +0800, Yong Wu wrote:
> > On Wed, 2019-08-14 at 15:41 +0100, Will Deacon wrote:
> > > On Sat, Aug 10, 2019 at 03:58:08PM +0800, Yong Wu wrote:
> > > > MediaTek extend the arm v7s descriptor to support the dram over 4GB.
> > > > 
> > > > In the mt2712 and mt8173, it's called "4GB mode", the physical address
> > > > is from 0x4000_0000 to 0x1_3fff_ffff, but from EMI point of view, it
> > > > is remapped to high address from 0x1_0000_0000 to 0x1_ffff_ffff, the
> > > > bit32 is always enabled. thus, in the M4U, we always enable the bit9
> > > > for all PTEs which means to enable bit32 of physical address. Here is
> > > > the detailed remap relationship in the "4GB mode":
> > > > CPU PA         ->    HW PA
> > > > 0x4000_0000          0x1_4000_0000 (Add bit32)
> > > > 0x8000_0000          0x1_8000_0000 ...
> > > > 0xc000_0000          0x1_c000_0000 ...
> > > > 0x1_0000_0000        0x1_0000_0000 (No change)
> > > 
> > > So in this example, there are no PAs below 0x4000_0000 yet you later
> > > add code to deal with that:
> > > 
> > > > +	/* Workaround for MTK 4GB Mode: Add BIT32 only when PA < 0x4000_0000.*/
> > > > +	if (cfg->oas == ARM_V7S_MTK_4GB_OAS && paddr < 0x40000000UL)
> > > > +		paddr |= BIT_ULL(32);
> > > 
> > > Why? Mainline currently doesn't do anything like this for the "4gb mode"
> > > support as far as I can tell. In fact, we currently unconditionally set
> > > bit 32 in the physical address returned by iova_to_phys() which wouldn't
> > > match your CPU PAs listed above, so I'm confused about how this is supposed
> > > to work.
> > 
> > Actually current mainline have a bug for this. So I tried to use another
> > special patch[1] for it in v8.
> 
> If you're fixing a bug in mainline, I'd prefer to see that as a separate
> patch.
> 
> > But the issue is not critical since MediaTek multimedia consumer(v4l2
> > and drm) don't call iommu_iova_to_phys currently.
> > 
> > > 
> > > The way I would like this quirk to work is that the io-pgtable code
> > > basically sets bit 9 in the pte when bit 32 is set in the physical address,
> > > and sets bit 4 in the pte when bit 33 is set in the physical address. It
> > > would then do the opposite when converting a pte to a physical address.
> > > 
> > > That way, your driver can call the page table code directly with the high
> > > addresses and we don't have to do any manual offsetting or range checking
> > > in the page table code.
> > 
> > In this case, the mt8183 can work successfully while the "4gb
> > mode"(mt8173/mt2712) can not.
> > 
> > In the "4gb mode", As the remap relationship above, we should always add
> > bit32 in pte as we did in [2]. and need add bit32 in the
> > "iova_to_phys"(Not always add.). That means the "4gb mode" has a special
> > flow:
> > a. Always add bit32 in paddr_to_iopte.
> > b. Add bit32 only when PA < 0x40000000 in iopte_to_paddr.
> 
> I think this is probably at the heart of my misunderstanding. What is so
> special about PAs (is this HW PA or CPU PA?) below 0x40000000? Is this RAM
> or something else?

SRAM and HW register that IOMMU can not access.

(sorry, My mailbox has something wrong.)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
