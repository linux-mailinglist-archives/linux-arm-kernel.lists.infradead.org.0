Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A42EAA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIzw7rMXwJo+pWODTfi9PHiQ2IOZ4Cz6zCIB2mD72g0=; b=EaDY9CCaMX6Rve
	O1gSWWfzeBhiP4qWrsG9jvF7QRYzmqXk6QnJGVWT3LKi75FG88G2/wObI2ubr3GptPMJiZCgXsZnL
	X3kygwLj4AJrmybOk/UK1zqPvPzyMrmRiKXtgQ6jsGUgt+uWSCJSyarKzzowSIesakJmrMf9m2qQ+
	Yko5cNXAV//6we4pj5R3yZD9RrqjOHmbJ7idUyNN03xDPUG07dQI3cCVBEb+BnUkQx4Y1lcUHD/GC
	xrH92miYKcXeAVepf+57Nl32/IwloR2f5Pl/+ijh8GUrRxXGxpa68PphaZoS0nkiJOE8lf/GPNOUd
	QnQMjlvTESTWmTineBkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLBg9-00050K-0l; Mon, 29 Apr 2019 19:11:05 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLBg2-0004za-Ge
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:10:59 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 9DC0668AFE; Mon, 29 Apr 2019 21:10:40 +0200 (CEST)
Date: Mon, 29 Apr 2019 21:10:40 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 11/26] iommu/dma: Factor out remapped pages lookup
Message-ID: <20190429191040.GC5637@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-12-hch@lst.de>
 <f8c04947-0ddb-17c5-8918-5859aabc220c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8c04947-0ddb-17c5-8918-5859aabc220c@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_121058_702412_578DA04E 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 02:05:46PM +0100, Robin Murphy wrote:
> On 22/04/2019 18:59, Christoph Hellwig wrote:
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> Since we duplicate the find_vm_area() logic a few times in places where
>> we only care aboute the pages, factor out a helper to abstract it.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> [hch: don't warn when not finding a region, as we'll rely on that later]
>
> Yeah, I did think about that and the things which it might make a little 
> easier, but preserved it as-is for the sake of keeping my modifications 
> quick and simple. TBH I'm now feeling more inclined to drop the WARNs 
> entirely at this point, since it's not like there's ever been any general 
> guarantee that freeing the wrong thing shouldn't just crash, but that's 
> something we can easily come back to later if need be.

Ok, I've dropped the warnings.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
