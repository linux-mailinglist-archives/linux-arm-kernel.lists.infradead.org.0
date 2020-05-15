Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6191D5C18
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 00:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tUvyTB5xUFZzWmT2r+HPn+JH19nHGG80va3P3MBImlE=; b=B4u3QUx+WVExBUL7TbyqvG3WF
	fjMgeToHD3GjwniZ2+5rm4iU9fFSkB7aF3kAU9fyZkT0RmUGM/Kx63OiXwYGSCIr7EeevbikIaeAo
	VpnKJh1bl4JTurLfW4yaTZxpwgQcMa5udiNrKEEBIHul4cQCxJLgctnvyduIOkdnF6GA7fA1MsWXb
	7853b9uAu1rzO02CZIxeE2oinn8LNYFxiZ9EkJ0QFZYut2RBdRyquf839xfDCFijaOpiJfZYkuL49
	8iOU+65/HTfelZdvBnG39EzIkZPRPTE/1Xmy1hv6O+J8JECOc2Kd54NRGw3myEu9fcdyp1gxilgiY
	07VYI5/fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZiZK-0005De-3C; Fri, 15 May 2020 22:12:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZiZ9-0005D0-Ii
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 22:12:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48A031063;
 Fri, 15 May 2020 15:12:23 -0700 (PDT)
Received: from [10.57.27.64] (unknown [10.57.27.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B50A3F71E;
 Fri, 15 May 2020 15:12:20 -0700 (PDT)
Subject: Re: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
To: Song Bao Hua <song.bao.hua@hisilicon.com>, "hch@lst.de" <hch@lst.de>
References: <B926444035E5E2439431908E3842AFD249F263@DGGEMI525-MBS.china.huawei.com>
 <36d67d68-4381-c7a7-dcf1-6383bd9ae0ad@arm.com>
 <20200515144522.GA25652@lst.de>
 <B926444035E5E2439431908E3842AFD249F9F4@DGGEMI525-MBS.china.huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f403a17b-bc3d-436a-4711-93cd8d4537ba@arm.com>
Date: Fri, 15 May 2020 23:12:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <B926444035E5E2439431908E3842AFD249F9F4@DGGEMI525-MBS.china.huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_151227_711989_CE6A23D8 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "davidm@hpl.hp.com" <davidm@hpl.hp.com>,
 "ralf@oss.sgi.com" <ralf@oss.sgi.com>, Linuxarm <linuxarm@huawei.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "sailer@ife.ee.ethz.ch" <sailer@ife.ee.ethz.ch>,
 "Jay.Estabrook@compaq.com" <Jay.Estabrook@compaq.com>,
 "dagum@barrel.engr.sgi.com" <dagum@barrel.engr.sgi.com>,
 "andrea@suse.de" <andrea@suse.de>, "grundler@cup.hp.com" <grundler@cup.hp.com>,
 "jens.axboe@oracle.com" <jens.axboe@oracle.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-15 22:33, Song Bao Hua wrote:
>> Subject: Re: Constantly map and unmap of streaming DMA buffers with
>> IOMMU backend might cause serious performance problem
>>
>> On Fri, May 15, 2020 at 01:10:21PM +0100, Robin Murphy wrote:
>>>> Meanwhile, for the safety of buffers, lower-layer drivers need to make
>> certain the buffers have already been unmapped in iommu before those
>> buffers go back to buddy for other users.
>>>
>>> That sounds like it would only have benefit in a very small set of specific
>>> circumstances, and would be very difficult to generalise to buffers that
>>> are mapped via dma_map_page() or dma_map_single(). Furthermore, a
>>> high-level API that affects a low-level driver's interpretation of
>>> mid-layer API calls without the mid-layer's knowledge sounds like a hideous
>>> abomination of anti-design. If a mid-layer API lends itself to inefficiency
>>> at the lower level, it would seem a lot cleaner and more robust to extend
>>> *that* API for stateful buffer reuse. Failing that, it might possibly be
>>> appropriate to approach this at the driver level - many of the cleverer
>>> network drivers already implement buffer pools to recycle mapped SKBs
>>> internally, couldn't the "zip driver" simply try doing something like that
>>> for itself?
>>
>> Exactly.  If you upper consumer of the DMA API keeps reusing the same
>> pages just map them once and use dma_sync_* to transfer ownership as
>> needed.
> 
> The problem is that the lower-layer drivers don't know if upper consumer keeps reusing the same pages. They are running in different software layers.
> For example, Consumer is here in mm/zswap.c
> static int zswap_frontswap_store(unsigned type, pgoff_t offset,
> 				struct page *page)
> {
> 	...
> 	/* compress */
> 	dst = get_cpu_var(zswap_dstmem);
> 	...
> 	ret = crypto_comp_compress(tfm, src, PAGE_SIZE, dst, &dlen);
> 	...
> }
> 
> But the lower-layer driver is in drivers/crypto/...
> 
> Meanwhile, the lower-layer driver couldn't cache the pointers of buffer address coming from consumers to detect if the upper-layer is using the same page.
> Because the same page might come from different users or come from the different stages of the same user with different permissions.

Indeed the driver can't cache arbitrary pointers, but if typical buffers 
are small enough it can copy the data into its own already-mapped page, 
dma_sync it, and perform the DMA operation from there. That might even 
be more or less what your first suggestion was, but I'm still not quite 
sure.

> For example, consumer A uses the buffer as destination, then returns it to buddy, but consumer B gets the same buffer and uses it as source.
> 
> Another possibility is
> Consumer A uses the buffer, returns it to buddy, after some time, it allocates a buffer again, but gets the same buffer from buddy like before.
> 
> For the safety of the buffer, lower-layer driver must guarantee the buffer is unmapped when the buffer returns to buddy.
> 
> I think only the upper-layer consumer knows if it is reusing the buffer.

Right, and if reusing buffers is common in crypto callers, then there's 
an argument for "set up reusable buffer", "process updated buffer" and 
"clean up buffer" operations to be added to the crypto API itself, such 
that the underlying drivers can then optimise for DMA usage in a robust 
and obvious way if they want to (or just implement the setup and 
teardown as no-ops and still do a full map/unmap in each "process" call 
if they don't).

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
