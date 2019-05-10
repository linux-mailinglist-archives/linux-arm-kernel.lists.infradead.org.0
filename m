Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E5E1A2A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 19:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gjfa5WuCLVWZlxEFIW5XYnaUv+5aZql++w2THp85evw=; b=GwhiyLE0dt7xcGuqnK0qAsP3K
	fSMqwdu7CR1JPpdPYKFxTdNuu/Iq8ufo5xSSzrVB1/z5gwVtvKL9at9JL7SZ0EyuKJCvgmkRk0uGy
	gPIfdlGhh0ISesk7HZn3zX6q9aDE3pnKTPD3czp5rJkExdSpuwEsXX+qKzQ/i/ibU2uXneXu11hOg
	YXOOXmLesNUlkGy8CyaCJYouZ/PgmXuC/3HBBr9enojvpBptAWebHecNrGwaWI8ahhBE58PC34YTG
	Xzr7RmaneeLjTi0W+dcrrvLg501JsNA0vYRHZoFTnapjc9dEPv2oKrCrXliH/7ujomR77BfZVIsnv
	VNluE5cgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP9fj-0006wQ-Mj; Fri, 10 May 2019 17:51:03 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP9fb-0006rv-LK
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 17:50:57 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd5b9d80001>; Fri, 10 May 2019 10:50:17 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 10 May 2019 10:50:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 10 May 2019 10:50:54 -0700
Received: from [10.25.74.39] (172.20.13.39) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 10 May
 2019 17:50:47 +0000
Subject: Re: [PATCH V5 03/16] PCI: Export pcie_bus_config symbol
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-4-vidyas@nvidia.com> <20190503110732.GC32400@ulmo>
 <80616ff5-d7a5-84a4-a71b-569e340d128c@nvidia.com>
 <20190510164623.GI235064@google.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <484cd585-d576-e6c3-d222-0b2391b5a7fe@nvidia.com>
Date: Fri, 10 May 2019 23:20:43 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510164623.GI235064@google.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557510617; bh=myxHy02oeX5AFakgSkoBUPpIXZQF5FReGyngp+QG/u0=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=LMcRy5S166FLGtxfqcO+toaJpYUnD4e+CrVuppvw4S+Dm/q83pCZNYDN80M1mJuEs
 LHP0skMkOUQopt85C1oiICVHMZwQeHZ9+uDI/ofI0VyyfIwK7XJFP4jLQyKQuaeyBT
 12M9svhEKJ1HHd2DtuqN1JkYHK2rwyOEH4ZjUlJU6hecw7kmw9Jl4ELXLQSf1KKfuZ
 XKqocV0TQsFwz23Ygjdnu+AClov70ObYWrGPmnPFcvCM4TGSG3lepgKZ0bGmsNdnIo
 ublwi58Ci9Pv3Iq4f4PSsXm8o+qm6C/xhu2dgNvg5hoecoMQuyaVpf6D6CI953czm5
 cCtwW0U1kKmCg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_105055_715702_CBE06FB1 
X-CRM114-Status: GOOD (  22.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Manikanta Maddireddy <mmaddireddy@nvidia.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 Krishna Thota <kthota@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sagar.tv@gmail.com" <sagar.tv@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/10/2019 10:16 PM, Bjorn Helgaas wrote:
> Hi Vidya,
> 
> On Fri, May 10, 2019 at 11:51:24AM +0530, Vidya Sagar wrote:
>>> -----Original Message-----
>>> From: linux-pci-owner@vger.kernel.org <linux-pci-owner@vger.kernel.org> On
>>> Behalf Of Thierry Reding
>>> Sent: Friday, May 3, 2019 4:38 PM
>>> To: Vidya Sagar <vidyas@nvidia.com>
>>> On Wed, Apr 24, 2019 at 10:49:51AM +0530, Vidya Sagar wrote:
>>>> Export pcie_bus_config to enable host controller drivers setting it to
>>>> a specific configuration be able to build as loadable modules
>>>>
>>>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> 
>>> It doesn't look to me like this is something that host controller drivers are
>>> supposed to change. This is set via the pci kernel command- line parameter,
>>> meaning it's a way of tuning the system configuration.
>>> Drivers should not be allowed to override this after the fact.
>>>
>>> Why do we need to set this?
>> Here is the reason I'm doing it.
>> First things first, Tegra194 supports MPS up to 256 bytes.
>> Assume there are two endpoints with MPS supported up to
>> a) 128 bytes (Ex:- Realtek NIC with 8168 controller)
>> b) 256 bytes (Ex:- Kingston NVMe drive)
>> Now, leaving "pcie_bus_config" untouched in the driver sets it to
>> PCIE_BUS_DEFAULT by default. With this setting, for both (a) and (b),
>> MPS is set to 128, which means, even though Tegra194 supports 256 MPS, it is not
>> set to 256 even in case of (b) thereby not using RP's 256 MPS feature.
>> If I explicitly set pcie_bus_config=PCIE_BUS_PERFORMACE in the code, then 256 MPS is set when
>> (b) is connected, but when (a) is connected, for root port MPS 256 is set and for
>> endpoint MPS 128 is set, because of which root port tries to send packets with 256
>> payload that breaks functionality of Realtek NIC card.
>> The best option I've found out is that when I set 256 in PCI_EXP_DEVCTL of root port
>> explicitly before link up and use pcie_bus_config=PCIE_BUS_SAFE, then, I get the best of both
>> PCIE_BUS_DEFAULT and PCIE_BUS_PERFORMANCE i.e. with (a) connected, MPS is set to 128 in both RP
>> and EP and with (b) connected, MPS is set to 256 in both RP and EP.
>>
>> So, is it like, pcie_bus_config shouldn't be set to anything explicitly in the driver and depending on the
>> platform and what is connected to root port, kernel parameter can be passed with appropriate setting?
> 
> Host controller drivers shouldn't change this unless there's some host
> controller defect that means the generic code can't do the right
> thing.  Even then, I'd prefer that the host controller driver merely
> set a quirk bit that describes the defect, e.g., "mps_*_broken".  Then
> the generic code could pay attention to that and we wouldn't have to
> make "pcie_bus_config" a part of the ABI.
> 
>  From your description, it sounds like there's nothing actually wrong
> with the Tegra194 hardware, but the generic code isn't as smart about
> setting MPS as it possibly could be.  My solution to that would be to
> make the generic code smarter so everybody can benefit.
> 
> Bjorn
Thanks Bjorn for your take on this. I'll drop this patch from the current series
and make a note to optimize PCIE_BUS_DEFAULT to do a better job of setting
MPS in the best possible way.

> 
>>>> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c index
>>>> f5ff01dc4b13..731f78508601 100644
>>>> --- a/drivers/pci/pci.c
>>>> +++ b/drivers/pci/pci.c
>>>> @@ -94,6 +94,7 @@ unsigned long pci_hotplug_mem_size =
>>>> DEFAULT_HOTPLUG_MEM_SIZE;  unsigned long pci_hotplug_bus_size =
>>>> DEFAULT_HOTPLUG_BUS_SIZE;
>>>>
>>>>   enum pcie_bus_config_types pcie_bus_config = PCIE_BUS_DEFAULT;
>>>> +EXPORT_SYMBOL_GPL(pcie_bus_config);
>>>>
>>>>   /*
>>>>    * The default CLS is used if arch didn't set CLS explicitly and not
>>>> --
>>>> 2.17.1
>>>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
