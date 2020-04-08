Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE121A23CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDqFxJ0CDHu/+sPbGYjvITsEqKyOsr8qj048uBuOV7E=; b=OIXjptLcoVS95t
	dEa0HcPqsHt9Sf3wo9w/EGrt5MHBkb4sea/OhnUCJBXqLlsCdQS9asJMDzawdbsMTdFp2bWPLOaeF
	lTfdvFwsItKFWXCrQIxJl2yLUSun1yy7yFM0oevUjnEv3ReOrYN33mLGWlIMD7lulfyVgnIMYLH6o
	/OcZKAkr8GMlgapVAvV/u6DSDVn3Z0sK544n40PVJCnPOiM1cOBQeAtyw9EkKmM+xM+uHmZjYuXrE
	BIn3pI0/Ro04WC1BsAdDWH9L6cZcGZVetg2tIT5POvExYA1AboGscgpdd/mY1git20mVAnDpLAvVL
	ZHY6hjqXDJ0g0X+ARCpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBM9-0003Ws-Bs; Wed, 08 Apr 2020 14:07:05 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBM0-0003WD-Ap
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:06:58 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A412A2CC; Wed,  8 Apr 2020 16:06:50 +0200 (CEST)
Date: Wed, 8 Apr 2020 16:06:49 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 2/4] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200408140649.GI3103@8bytes.org>
References: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
 <6864f0f28825bb7a2ec1c0d811a4aacdecf5f945.1582222496.git-series.maxime@cerno.tech>
 <20200302153606.GB6540@8bytes.org>
 <20200401114710.doioefzmjhte7jwu@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401114710.doioefzmjhte7jwu@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_070656_523879_72E89AFD 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Wed, Apr 01, 2020 at 01:47:10PM +0200, Maxime Ripard wrote:
> As far as I understand it, the page table can be accessed concurrently
> since the framework doesn't seem to provide any serialization /
> locking, shouldn't we have some locks to prevent concurrent access?

The dma-iommu code makes sure that there are no concurrent accesses to
the same address-range of the page-table, but there can (and will) be
concurrent accesses to the same page-table, just for different parts of
the address space.

Making this lock-less usually involves updating non-leaf page-table
entries using atomic compare-exchange instructions.

> > > +	*pte_addr = sun50i_mk_pte(paddr, prot);
> > > +	sun50i_table_flush(sun50i_domain, pte_addr, 1);
> >
> > This maps only one page, right? But the function needs to map up to
> > 'size' as given in the parameter list.
> 
> It does, but pgsize_bitmap is set to 4k only (since the hardware only
> supports that), so we would have multiple calls to map, each time with
> a single page judging from:
> https://elixir.bootlin.com/linux/latest/source/drivers/iommu/iommu.c#L1948
> 
> Right?

Okay, you are right here. Just note that when this function is called
for every 4k page it should better be fast and avoid slow things like
TLB flushes.

> The vendor driver was doing something along those lines and I wanted
> to be conservative with the cache management if we didn't run into
> performances issues, but I'll convert to the iotlb callbacks then.

Yeah, that definitly helps performance.

Regards,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
