Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DDD7DD6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rk4kksBzcz/iX7oBKrEKtJVJGbeWIbT319FD30ROMAw=; b=X8QjkkmBqaoA6K
	MgkQhAffnOlftsaBSlYDsN13my8qoEs+hf0RymBaLHYSq0USboTdaA/5TVlvVIQBEArxqsPTrfMRs
	Rte6R4dGwqh4JkAkLM0CKjg1wz8KHIDwzdT42rfs6CYIRAZGPrB4Ohb1wy7a/Pg7Fhtm71LokYobq
	bboloUtC895YG5rApgWPzgxiqhINVxw/9iraY3PwDBQ9RBs9V6c/p+ribYYE/fFCje2ZS2/bSc+QH
	qdld7Bry4vD3VUCJvZJwyum7fYYkoEc5mEgRYWw24/6iVmi7jFcOgMUmmewj/J/8Qbj4iTvNH7A0x
	5vQYgsGjQiV/TV5V/zEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBkw-0007yg-LK; Thu, 01 Aug 2019 14:08:34 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBkm-0007xt-Hp; Thu, 01 Aug 2019 14:08:25 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7FDE168AFE; Thu,  1 Aug 2019 16:08:20 +0200 (CEST)
Date: Thu, 1 Aug 2019 16:08:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 8/8] mm: comment arm64's usage of 'enum zone_type'
Message-ID: <20190801140820.GC23435@lst.de>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-9-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731154752.16557-9-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_070824_742657_E3584E76 
X-CRM114-Status: UNSURE (   9.29  )
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, f.fainelli@gmail.com, will@kernel.org,
 eric@anholt.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 frowand.list@gmail.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, wahrenst@gmx.net,
 mbrugger@suse.com, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 05:47:51PM +0200, Nicolas Saenz Julienne wrote:
> +	 * Architecture			Limit
> +	 * ----------------------------------
> +	 * parisc, ia64, sparc, arm64	<4G
> +	 * s390, powerpc		<2G
> +	 * arm				Various
> +	 * alpha			Unlimited or 0-16MB.
>  	 *
>  	 * i386, x86_64 and multiple other arches
> -	 * 			<16M.
> +	 *				<16M.

powerpc is also Various now, arm64 isn't really < 4G, ia64 only uses
ZONE_DMA32 these days, and parisc doesn't seem to use neither ZONE_DMA
nor ZONE_DMA32.

Based on that I'm not sure the list really makes much sense.

>  	 */
>  	ZONE_DMA,
>  #endif
>  #ifdef CONFIG_ZONE_DMA32
>  	/*
> -	 * x86_64 needs two ZONE_DMAs because it supports devices that are
> -	 * only able to do DMA to the lower 16M but also 32 bit devices that
> -	 * can only do DMA areas below 4G.
> +	 * x86_64 and arm64 need two ZONE_DMAs because they support devices
> +	 * that are only able to DMA a fraction of the 32 bit addressable
> +	 * memory area, but also devices that are limited to that whole 32 bit
> +	 * area.
>  	 */
>  	ZONE_DMA32,

Maybe just say various architectures instead of mentioning specific
ones?  Something like "Some 64-bit platforms need.."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
