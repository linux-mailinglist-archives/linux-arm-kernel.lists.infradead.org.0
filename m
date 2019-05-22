Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B6426780
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtdeVf7uFY3SvOVKslWdjVNgInpFtd1wm+ABjQtzIeM=; b=fTxPPkKE54BbDR
	8V4EIQ5yT7nqn7qLnR4/POS2VVRK03C1Eb4cqu+Ie/+3i06mLrr1aaLGfK+t6s278IoD45UwA29ct
	WV5rmKOs4X8yqWuw3LAIw/hRoII5SjhdrpYoK4sHqvaMZqEgWRMts6nM4a9FFD5IKw7pn5MBNV69T
	Vz7oRc16tk7NdAs2Vtplt6XK7lIi2JQoObLND+TX5wD6sKO6Lt2WcrFCDPdVhlaEm+kqbJuRJL8ta
	f8Mfk+4JIapJIOus4c8FORPx3iDkwk2KJYKmOe2lixxwtdEBCfjsb7GCeedpIIJS3+MIxj/9AvAUO
	NqYCLplAUaVt31csEbOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTcZ-0008Fx-GC; Wed, 22 May 2019 15:57:39 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTcS-0008FS-58
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:57:33 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 35D7268B05; Wed, 22 May 2019 17:57:09 +0200 (CEST)
Date: Wed, 22 May 2019 17:57:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 07/24] iommu/dma: Move domain lookup into
 __iommu_dma_{map, unmap}
Message-ID: <20190522155708.GA29904@lst.de>
References: <20190520072948.11412-1-hch@lst.de>
 <20190520072948.11412-8-hch@lst.de>
 <b2ef2d14-ec58-a1d6-1741-7834840498ee@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2ef2d14-ec58-a1d6-1741-7834840498ee@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_085732_347786_1509ACB0 
X-CRM114-Status: GOOD (  10.20  )
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
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 02:34:49PM +0100, Robin Murphy wrote:
> On 20/05/2019 08:29, Christoph Hellwig wrote:
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> Most of the callers don't care, and the couple that do already have the
>> domain to hand for other reasons are in slow paths where the (trivial)
>> overhead of a repeated lookup will be utterly immaterial.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> [hch: dropped the hunk touching iommu_dma_get_msi_page to avoid a
>>   conflict with another series]
>
> Since the MSI changes made it into 5.2, do you want to resurrect that hunk 
> here, or shall I spin it up as a follow-on patch?

Either way is fine with me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
