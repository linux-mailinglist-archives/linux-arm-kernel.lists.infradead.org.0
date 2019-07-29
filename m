Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDD779B21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au3iz8xmSuCtsqdDdv/vXN/moiHHv6n4WeZMbVQKhIg=; b=Li3m5tx1T1L71d
	QRHX13ALiVGeeuFzB8jncQBivpMRp7SEKiYVIAWS2FVMhxbbJVoZ1t1Bu/2hd6VTnsa0ypjRCmMBK
	V9GDBCM8TOULc5DcFLPwiLnULKa3Ec3S9L5CGmN/PbIyzLq0djtmBmfGeNbniYBmpXj4W7PHJEKa8
	zfwXu/cEouuz+POZz6rHBKVB4BgSBENrOK4NHkrKOuiRpKdtPEs6BQWkeCaB264RFl9ZMf7bRRq8P
	o2zlhUp0tz+AfDSqgaQhazhYVu6XS9QWohFC9JQ5Fs3bHJJWQS/4HzHOJV6dtU9sD7tN1XvXTnfww
	eBIfZwmgKzcKUIFftiNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDGq-0005H5-Mi; Mon, 29 Jul 2019 21:33:28 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDGb-0005GG-DF
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:33:14 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d3f660d0000>; Mon, 29 Jul 2019 14:33:01 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 29 Jul 2019 14:33:10 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 29 Jul 2019 14:33:10 -0700
Received: from [10.26.11.172] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 29 Jul
 2019 21:33:06 +0000
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Jose Abreu <Jose.Abreu@synopsys.com>, Robin Murphy <robin.murphy@arm.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <7a79be5d-7ba2-c457-36d3-1ccef6572181@nvidia.com>
 <BYAPR12MB3269927AB1F67D46E150ED6BD3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
 <9e695f33-fd9f-a910-0891-2b63bd75e082@nvidia.com>
 <BYAPR12MB3269B4A401E4DA10A07515C7D3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
 <1e2ea942-28fe-15b9-f675-8d6585f9a33f@nvidia.com>
 <BYAPR12MB326922CDCB1D4B3D4A780CFDD3C30@BYAPR12MB3269.namprd12.prod.outlook.com>
 <MN2PR12MB327907D4A6FB378AC989571AD3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
 <b99b1e49-0cbc-2c66-6325-50fa6f263d91@nvidia.com>
 <MN2PR12MB327997BDF2EA5CEE00F45AC3D3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
 <fcf648d2-70cc-d734-871a-ca7f745791b7@arm.com>
 <MN2PR12MB3279ABF628C52883021123C5D3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <8a60361f-b914-93ef-0d80-92ae4ad8b808@nvidia.com>
Date: Mon, 29 Jul 2019 22:33:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <MN2PR12MB3279ABF628C52883021123C5D3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564435981; bh=+tXkvnJomdlQUldytIfFdlsTnBE+q42y36xSnoRaYvU=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=BuHiU6CuSm73jgRPvxOtqlowqNvcDo0RdVEDsM3mou7XM1jZUGREQyFZuANpF/PvP
 74z9Kajzmn7ZZkLJODbpWKiSvdL21YH+vAaT4lbeq0A48hDAGkx5dlYGbRySj7NVSl
 eeR8oEZNAaZmfNT/jAKBhIQ+ySqvcIJ+QGLGssZkoEGbiNaFn8PYEVr7Ogq3qxp6OC
 MGKfMF0rF+daOjLKHG4uwYzh0Z1m5F8/2SDgm4MUDbOQLBKmeq5ImF6yfeemzmZKpt
 Y8cvlCRKwGq0mSIJ3Pe9pq+Sm2pP0vRg32Z8tYF44uOAcTpCxzdqQDnj/bpHX1F7GO
 PyR6nJoawG9Ig==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_143313_463420_2210D742 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 29/07/2019 15:08, Jose Abreu wrote:

...

>>> Hi Catalin and Will,
>>>
>>> Sorry to add you in such a long thread but we are seeing a DMA issue
>>> with stmmac driver in an ARM64 platform with IOMMU enabled.
>>>
>>> The issue seems to be solved when buffers allocation for DMA based
>>> transfers are *not* mapped with the DMA_ATTR_SKIP_CPU_SYNC flag *OR*
>>> when IOMMU is disabled.
>>>
>>> Notice that after transfer is done we do use
>>> dma_sync_single_for_{cpu,device} and then we reuse *the same* page for
>>> another transfer.
>>>
>>> Can you please comment on whether DMA_ATTR_SKIP_CPU_SYNC can not be used
>>> in ARM64 platforms with IOMMU ?
>>
>> In terms of what they do, there should be no difference on arm64 between:
>>
>> dma_map_page(..., dir);
>> ...
>> dma_unmap_page(..., dir);
>>
>> and:
>>
>> dma_map_page_attrs(..., dir, DMA_ATTR_SKIP_CPU_SYNC);
>> dma_sync_single_for_device(..., dir);
>> ...
>> dma_sync_single_for_cpu(..., dir);
>> dma_unmap_page_attrs(..., dir, DMA_ATTR_SKIP_CPU_SYNC);
>>
>> provided that the first sync covers the whole buffer and any subsequent 
>> ones cover at least the parts of the buffer which may have changed. Plus 
>> for coherent hardware it's entirely moot either way.
> 
> Thanks for confirming. That's indeed what stmmac is doing when buffer is 
> received by syncing the packet size to CPU.
> 
>>
>> Given Jon's previous findings, I would lean towards the idea that 
>> performing the extra (redundant) cache maintenance plus barrier in 
>> dma_unmap is mostly just perturbing timing in the same way as the debug 
>> print which also made things seem OK.
> 
> Mikko said that Tegra186 is not coherent so we have to explicit flush 
> pipeline but I don't understand why sync_single() is not doing it ...
> 
> Jon, can you please remove *all* debug prints, hacks, etc ... and test 
> this one in attach with plain -net tree ?

So far I have just been testing on the mainline kernel branch. The issue
still persists after applying this on mainline. I can test on the -net
tree, but I am not sure that will make a difference.

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
