Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2049CC75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 11:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JbIKxGa4dE58Ad52+K6Hv4M3UR03F6Chw655huRCjI=; b=FfPS7DXTE6w1KH
	UgvKTUk+dDpc7lylQssvm7Zp7f9XMrnTXciHSxUQorza0GoO6/rP0nCUU1ZlV9JwtKlrpRH1pEqgU
	Cm4XeqXWo4KmjfW3PMfxRYvWkxseYqmJrsCYZpOsE6nYbn1SzOiZZyY2zWu4N01nOnrgLZDC8Z9Vl
	jHVx1SdtkkxJqVNcFT78SodH3dwIL85epsBALMLmiMBpW2hBMPsiwtrKXnT+l9mc9UXCk/GZqqNnd
	yf7YjB/HZn9NwtGv2sf+NegD125phbwRHVo9OumHHiBVwjNaWbBcaOeYMXBMQQHoUvafNl0dI5GD7
	USfrt8i4nLTt7MGcgUSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2BAh-0005RK-Eu; Mon, 26 Aug 2019 09:20:20 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2BAW-0005Ce-L6
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 09:20:09 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 46384227A81; Mon, 26 Aug 2019 11:20:01 +0200 (CEST)
Date: Mon, 26 Aug 2019 11:20:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [Xen-devel] [PATCH 01/11] xen/arm: use dma-noncoherent.h calls
 for xen-swiotlb cache maintainance
Message-ID: <20190826092001.GA13476@lst.de>
References: <20190816130013.31154-1-hch@lst.de>
 <20190816130013.31154-2-hch@lst.de>
 <65248838-f273-6097-22f4-e5809078ddba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <65248838-f273-6097-22f4-e5809078ddba@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_022008_844044_B291C063 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 12:45:17PM +0100, Julien Grall wrote:
> On 8/16/19 2:00 PM, Christoph Hellwig wrote:
>> +static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
>> +	     dma_addr_t dev_addr, unsigned long offset, size_t size,
>> +	     enum dma_data_direction dir, unsigned long attrs)
>> +{
>> +	unsigned long page_pfn = page_to_xen_pfn(page);
>> +	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
>> +	unsigned long compound_pages =
>> +		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
>> +	bool local = (page_pfn <= dev_pfn) &&
>> +		(dev_pfn - page_pfn < compound_pages);
>> +
>
> The Arm version as a comment here. Could we retain it?

I've added it in this patch, altough the rewrites later on mean it will
go away in favour of a new comment elsewhere anyway.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
