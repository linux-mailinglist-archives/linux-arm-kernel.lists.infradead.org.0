Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010A816B089
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5ANt614J6MinA6J2eOX2YIFJ6LzIHTr9vOqXH4orxg=; b=N1kLuKznnBuIWP
	wOQUysm/A8hifOV1EdpbKtGbpfA0GVXrlHRrjQtnXqn+MpIpj6FmdqVkf3U8wG2O5LgHi8qCTQgKh
	rWHpXuHL8Iyg/ybrWcyfJJwdVp0JsDSuA2VIabFg7g2i72vdmL0CgJ2TiI2OSqGnWItJGinSj9I/7
	GT+QSvdNcsbY2ZgE+I6PKK4khJt2d7P51yRn3T9RczawCmiXrD8pg9Ync5K1+qvwqw/1dUf4W2ZGg
	jaJWAyiUqQ3PfwgdX96B0xYdEgN2GqXFr46CBL0pFg1kK/XnoT0WsgkpAjeWonDVJuOTOE0JtUaYt
	EqZNaUSLue+j0wNe9FDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JgY-0000pu-BK; Mon, 24 Feb 2020 19:46:34 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JfZ-0008Jo-U9
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:45:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4E85268B05; Mon, 24 Feb 2020 20:45:29 +0100 (CET)
Date: Mon, 24 Feb 2020 20:45:28 +0100
From: Christoph Hellwig <hch@lst.de>
To: Stafford Horne <shorne@gmail.com>
Subject: Re: [PATCH 2/2] openrisc: use the generic in-place uncached DMA
 allocator
Message-ID: <20200224194528.GA10155@lst.de>
References: <20200220170139.387354-1-hch@lst.de>
 <20200220170139.387354-3-hch@lst.de>
 <20200221221447.GA7926@lianli.shorne-pla.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221221447.GA7926@lianli.shorne-pla.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_114534_125519_96CD46A7 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jonas Bonn <jonas@southpole.se>, Mark Rutland <mark.rutland@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 07:14:47AM +0900, Stafford Horne wrote:
> On Thu, Feb 20, 2020 at 09:01:39AM -0800, Christoph Hellwig wrote:
> > Switch openrisc to use the dma-direct allocator and just provide the
> > hooks for setting memory uncached or cached.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> Reviewed-by: Stafford Horne <shorne@gmail.com>
> 
> Also, I test booted openrisc with linux 5.5 + these patches.  Thanks for
> continuing to shrink my code base.

I just resent a new version that changes how the hooks work based on
feedback from Robin.  Everything should work as-is, but if you have
some time to retest that would be great.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
