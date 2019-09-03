Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87ADA67C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 13:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZiI/bQ991Jj6zB+kvRUaCOoxEmo4E9uxY4RcM9FyweE=; b=itOqg9WYcaNajvL2xcFF9Mbdh
	mv8AtK4RY0swsmmzDR32vz7TVYWtxg5D/Y5gCR30tZz5JsZ4wp+thHLMSO4RU0W0QMpA2osJ7KUDH
	0dVSN+j2KaY8zEm/eBQMZuFeFczNe6NXuy9W52bIyAraogwKnlyhXhMHsQcAT+5hxMtnhpwihwecY
	w+C9dp0vRTlAtY2YbQ2tUP9uO1Fnb4S1Y9UyRQs1XXkyFIKLtlXOPj6KWWFgGgqEC6inRAwuxnO/l
	f4y9w6Bck1un4ZMYzkFe6PASbQgBbpgu8Z6nSHGITTDAcgYhaymbSfCc+JGfZOqxA/A/W6wUrBddX
	pAmKLABCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57JB-00018P-GH; Tue, 03 Sep 2019 11:49:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57Ix-00015I-QZ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 11:49:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9715BAF68;
 Tue,  3 Sep 2019 11:48:34 +0000 (UTC)
Subject: Re: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
To: Christoph Hellwig <hch@infradead.org>,
 Stefano Stabellini <sstabellini@kernel.org>
References: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
 <d7477406-a8a0-5c3c-13dc-2c84e27b8afa@arm.com>
 <20190830085807.GA15771@infradead.org>
 <alpine.DEB.2.21.1908301926500.21347@sstabellini-ThinkPad-T480s>
 <20190902155732.GA8311@infradead.org>
From: Juergen Gross <jgross@suse.com>
Message-ID: <8e81051f-ad50-7b4e-2e88-c685ade6b240@suse.com>
Date: Tue, 3 Sep 2019 13:48:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902155732.GA8311@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_044900_009273_E8D8697B 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peng Fan <peng.fan@nxp.com>, "will@kernel.org" <will@kernel.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Julien Grall <Julien.Grall@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 boris.ostrovsky@oracle.com, nd <nd@arm.com>,
 Robin Murphy <Robin.Murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02.09.19 17:57, Christoph Hellwig wrote:
> On Fri, Aug 30, 2019 at 07:40:42PM -0700, Stefano Stabellini wrote:
>> + Juergen, Boris
>>
>> On Fri, 30 Aug 2019, Christoph Hellwig wrote:
>>> Can we take a step back and figure out what we want to do here?
>>>
>>> AFAICS this function allocates memory for the swiotlb-xen buffer,
>>> and that means it must be <= 32-bit addressable to satisfy the DMA API
>>> guarantees.  That means we generally want to use GFP_DMA32 everywhere
>>> that exists, but on systems with odd zones we might want to dip into
>>> GFP_DMA.  This also means swiotlb-xen doesn't actually do the right
>>> thing on x86 at the moment.  So shouldn't we just have one common
>>> routine in swiotlb-xen.c that checks if we have CONFIG_ZONE_DMA32
>>> set, then try GFP_DMA32, and if not check if CONFIG_ZONE_DMA is set
>>> and then try that, else default to GFP_KERNEL?
>>
>> Yes, for ARM/ARM64 it makes a lot of sense given that dom0 is 1:1 mapped
>> (pseudo-physical == physical).  I'll let Juergen and Boris comment on
>> the x86 side of things, but on x86 PV Dom0 is not 1:1 mapped so
>> GFP_DMA32 is probably not meaningful.
> 
> But is it actually harmful?  If the GFP_DMA32 doesn't hurt we could
> just use it there.  Or if that seems to ugly we can make the dma
> flags dependents on a XEN_1TO1_MAPPED config option set by arm/arm64.
> 

I'd rather have it only if needed. Especially on X86 PV dom0 I'd like to
avoid GFP_DMA32 as memory below 4GB (guest physical) might be rather
scarce in some configurations.

I think X86 PVH dom0 should need GFP_DMA32, too, as the limit is related
to the address as communicated to the device (before being translated by
the IOMMU), right? This would mean on a X86 kernel configured to support
PV and PVH the test for setting GFP_DMA32 can't depend on a config
option alone, it needs to be dynamic.

BTW, for PV guests the DMA address width is handled via
xen_create_contiguous_region().


Juergen

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
