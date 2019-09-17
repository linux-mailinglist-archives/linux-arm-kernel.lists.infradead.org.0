Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DEDB4EB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vfKZNLfCsa7OMtNSINo46ZxbHHuEHLi7lkfjo/JV4eU=; b=R03Vm6gDcT/fxkp0/D12SJVy6
	Gt6AAjn0JEFlxY5Db86xMz8JDe4rXN9nKhX3nRVfxgSlnveMVKqj2FZsKn8g48+LC1PlTg0xi9+X4
	u891IKEYSMF1JZYiO79CnFnsH5RzwT1kcvIco3aRVRo9sMM7pJV0Q95DikmpGVSB3h5ojyjjK+u7D
	7egDeQB8EIcJe8+vagOop355aBcsfZJ5cwomWb/VkvxjHkBbUOjWhrGSS1HYsh53iIU5a5fDKbI5Y
	C8OHLZkDP6Tm+D0UJUINucnYcQvBV544MrGiyEN2ae2Indnb++RgCiD7vayK1KV64BuN/CfRAMHVJ
	CqyktLQzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAD8v-00069s-Bj; Tue, 17 Sep 2019 13:03:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAD8W-00064M-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:03:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 535241000;
 Tue, 17 Sep 2019 06:03:10 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A05543F67D;
 Tue, 17 Sep 2019 06:03:09 -0700 (PDT)
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Adrian Hunter <adrian.hunter@intel.com>, Will Deacon <will.deacon@arm.com>
References: <20190916171509.GG25745@shell.armlinux.org.uk>
 <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1406d22f-fd2e-f101-3efb-63cc52e9ac5f@arm.com>
Date: Tue, 17 Sep 2019 14:03:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190917123326.GN25745@shell.armlinux.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_060316_129515_E1B91EDC 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mmc@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 13:33, Russell King - ARM Linux admin wrote:
[...]
> Further debug shows:
> 
> coherent=0 - sdhci device is not cache coherent
> swapper pgtable: 4k pages, 39-bit VAs, pgdp=0000000081cac000
> [ffffff8010fd5200] pgd=000000237ffff003, pud=000000237ffff003,
> pmd=000000237fffb003, pte=00e800236d62270f
> 
> The mapping for the ADMA table seems to be using MAIR index 3, which is
> MT_MEMORY_NC, so should be non-cacheable.
> 
> vmallocinfo:
> 0xffffff8010fd5000-0xffffff8010fd7000    8192 dma_direct_alloc+0x4c/0x54
> user
> 
> So this memory has been remapped.  Could there be an alias that has
> cache lines still in the cache for the physical address, and could we
> be hitting those cache lines while accessing through a non-cacheable
> mapping?  (On 32-bit ARM, this is "unpredictable" and this problem
> definitely _feels_ like it has unpredictable attributes!)
> 
> Also, given that this memory is mapped NC, then surely
> __dma_flush_area() should have no effect?  However, it _does_ have the
> effect of reliably solving the problem, which to me implies that there
> _are_ cache lines in this NC mapping.

The non-cacheable mapping of the descriptor table will still have its 
cacheable linear map alias, so it's quite likely that the invalidate 
aspect of __dma_flush_area(), rather than the clean, is what's making 
the difference - if using __dma_clean_area() instead doesn't help, it 
would more or less confirm that.

One possibility in that case is that you might actually have the rare 
backwards coherency problem - if the device *is* actually snooping the 
cache, then it could hit lines which were speculatively prefetched via 
the cacheable alias before the descriptors were fully written, rather 
than the up-to-date data which went straight to RAM via the NC mapping. 
I'd try declaring the device as "dma-coherent" to see if that's actually 
true (and it should become pretty obvious if it isn't).

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
