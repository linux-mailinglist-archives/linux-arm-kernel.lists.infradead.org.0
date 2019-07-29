Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A64789F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80UicRnLx5Vp76W2GI5CKA+wUZrkkkkzbwp35+vaYVM=; b=PgtW0HvVoUN/XK
	vz4ZChUjtWSqVX6G3agymuW6O73IsOKMkFhef9EB4MdeAje7zKaAGODqLUI3ZGGZwRYyCyK35k+nm
	wr6fY6bydfiKQxgSoJ6AmKr+tZSqtFtDvCCNXtVK6ThWTzBO0gTxHRyt8BTPpXa/Iv8xBSl4UNPm8
	AuwfJOvva8w+d70xx0z5MIxTpE9PlYndAWjkNBhwHMRHHqFm+VLufxT+l7pJ3HH841ZKwS1OVff3+
	xN42W/tDtQh2lREJEI5LyeEcC1XFPQBwsL45hZ11P92iSYPRg6k7r0bTxdEPCZrbdjQEUbJor5YTu
	S6LbY3JLl1Bbm7nhBlMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3JU-0002Eh-Q3; Mon, 29 Jul 2019 10:55:32 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3JM-0002EB-Q7
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:55:26 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d3ed0940000>; Mon, 29 Jul 2019 03:55:16 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 29 Jul 2019 03:55:23 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 29 Jul 2019 03:55:23 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 29 Jul
 2019 10:55:20 +0000
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Jose Abreu <Jose.Abreu@synopsys.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <7a79be5d-7ba2-c457-36d3-1ccef6572181@nvidia.com>
 <BYAPR12MB3269927AB1F67D46E150ED6BD3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
 <9e695f33-fd9f-a910-0891-2b63bd75e082@nvidia.com>
 <BYAPR12MB3269B4A401E4DA10A07515C7D3C10@BYAPR12MB3269.namprd12.prod.outlook.com>
 <1e2ea942-28fe-15b9-f675-8d6585f9a33f@nvidia.com>
 <BYAPR12MB326922CDCB1D4B3D4A780CFDD3C30@BYAPR12MB3269.namprd12.prod.outlook.com>
 <MN2PR12MB327907D4A6FB378AC989571AD3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <b99b1e49-0cbc-2c66-6325-50fa6f263d91@nvidia.com>
Date: Mon, 29 Jul 2019 11:55:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <MN2PR12MB327907D4A6FB378AC989571AD3DD0@MN2PR12MB3279.namprd12.prod.outlook.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564397716; bh=omDvOxcL+shZp/+aXr1xB3RKxxO5BazPvZPcci4EFmo=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=ar0IAPUIBvyLVDB7OfxBEElq9IxI3GlwIo/u0cfRm5nKXcpNqte6llsmeQm/AsVdP
 gnQGwqDf6FNqcNGx4W2M1Y4ce7rAEYBmOGFq2jYx7P7JwRQf4p1ML3QVow9yIumCp7
 gID5AZOb8ub1z/PCB/z1B7BAEer01kfYjKTfjhFLXpPMrrIUAuEHUzHoOVEebIILVs
 I2l1SUVpSY/CfoR7PmAveqXp5fnAfJpvAmjMhADK72H+A5MgxoQEd/6wdVmm1chZQJ
 SxsAyQe9hSmDAdA0Vzp+ImSAf1jhs6pqkVwPVs6MYoUtzbdPBf0TAGwA4oOtTDV44+
 aubzSqRST5vhA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_035524_855982_8A723CDA 
X-CRM114-Status: GOOD (  13.26  )
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
 Robin Murphy <robin.murphy@arm.com>, "David S .
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 29/07/2019 09:16, Jose Abreu wrote:
> From: Jose Abreu <joabreu@synopsys.com>
> Date: Jul/27/2019, 16:56:37 (UTC+00:00)
> 
>> From: Jon Hunter <jonathanh@nvidia.com>
>> Date: Jul/26/2019, 15:11:00 (UTC+00:00)
>>
>>>
>>> On 25/07/2019 16:12, Jose Abreu wrote:
>>>> From: Jon Hunter <jonathanh@nvidia.com>
>>>> Date: Jul/25/2019, 15:25:59 (UTC+00:00)
>>>>
>>>>>
>>>>> On 25/07/2019 14:26, Jose Abreu wrote:
>>>>>
>>>>> ...
>>>>>
>>>>>> Well, I wasn't expecting that :/
>>>>>>
>>>>>> Per documentation of barriers I think we should set descriptor fields 
>>>>>> and then barrier and finally ownership to HW so that remaining fields 
>>>>>> are coherent before owner is set.
>>>>>>
>>>>>> Anyway, can you also add a dma_rmb() after the call to 
>>>>>> stmmac_rx_status() ?
>>>>>
>>>>> Yes. I removed the debug print added the barrier, but that did not help.
>>>>
>>>> So, I was finally able to setup NFS using your replicated setup and I 
>>>> can't see the issue :(
>>>>
>>>> The only difference I have from yours is that I'm using TCP in NFS 
>>>> whilst you (I believe from the logs), use UDP.
>>>
>>> So I tried TCP by setting the kernel boot params to 'nfsvers=3' and
>>> 'proto=tcp' and this does appear to be more stable, but not 100% stable.
>>> It still appears to fail in the same place about 50% of the time.
>>>
>>>> You do have flow control active right ? And your HW FIFO size is >= 4k ?
>>>
>>> How can I verify if flow control is active?
>>
>> You can check it by dumping register MTL_RxQ_Operation_Mode (0xd30).

Where would be the appropriate place to dump this? After probe? Maybe
best if you can share a code snippet of where to dump this.

>> Can you also add IOMMU debug in file "drivers/iommu/iommu.c" ?

You can find a boot log here:

https://paste.ubuntu.com/p/qtRqtYKHGF/

> And, please try attached debug patch.

With this patch it appears to boot fine. So far no issues seen.

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
