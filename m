Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AAF82ABD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 07:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsO6obcuD47dhHYtPr/ENxJklTwSot/OZI/0a9CKNcI=; b=Vr9C+QkKz8whEo
	oF6oUKWA9bmGexDHf6cheb1DckInTQV5kiSldJPndEKhLMuEn3lZz9gNL8wDwhpSZFbUqP0+kcqT9
	Eveys5f4Qw4Ex+vMDchCOQXbu9P9sr0C8uDCETmZLLdXMUPlCE2ViO0xNJO6/0dgTUmaTXohrLwc2
	s+YlD45Dn62qj75dKgByYHj5sKorBrhF9taYmSuvv42w59ucqFdBcojpjFHKM7HIQYdouMLGrehzM
	RppRnc5YAbQ4yHE8+HTp8B6EOWUeUWmW3gra/hJFhwyP5iUSaHwtWPYL593E4ofV0dsxkD8ry0Oqb
	D9LGi6vvpvy7BJpOggAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurmM-0000NQ-GE; Tue, 06 Aug 2019 05:12:58 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurmD-0000Mg-Cb
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 05:12:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8410D68B05; Tue,  6 Aug 2019 07:12:42 +0200 (CEST)
Date: Tue, 6 Aug 2019 07:12:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Gavin Li <gavinli@thegavinli.com>
Subject: Re: [PATCH 1/2] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190806051242.GA13269@lst.de>
References: <20190805080145.5694-1-hch@lst.de>
 <20190805080145.5694-2-hch@lst.de>
 <CAP_+7SzPdNCMKuuXMjHjpCzxsey2YWR_e6mTAWtNSZ6kKBvKFw@mail.gmail.com>
 <CA+GxvY5C_rrukCzC5K-h72bePyW8PS_Rfj3uxh-K6UrcAextUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+GxvY5C_rrukCzC5K-h72bePyW8PS_Rfj3uxh-K6UrcAextUQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_221249_575263_5B7DC7CD 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Gavin Li <git@thegavinli.com>, Shawn Anastasio <shawn@anastas.io>,
 Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 07:55:44PM -0700, Gavin Li wrote:
> >         /* create a coherent mapping */
> >         ret = dma_common_contiguous_remap(page, size, VM_USERMAP,
> > -                       arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs),
> > +                       dma_pgprot(dev, PAGE_KERNEL, attrs),
> >                         __builtin_return_address(0));
> >         if (!ret) {
> >                 __dma_direct_free_pages(dev, size, page);
> 
> Is dma_common_contiguous_remap() still necessary in the
> DMA_ATTR_NON_CONSISTENT case? I would presume it would be fine to just
> return a linearly mapped address in that case.

It would not be required for a real DMA_ATTR_NON_CONSISTENT
implementation.  But only parisc and mips actually properly implement
DMA_ATTR_NON_CONSISTENT, everyone ignores it.  Given that the API is
a little ill defined and I have a better replacement in the pipeline
I don't want to start implementing it for other architectures now.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
