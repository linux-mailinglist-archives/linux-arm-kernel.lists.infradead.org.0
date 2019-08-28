Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61529FF12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vMNnvAMORLN1BT3YT7KLl5X9FRUDnREdFs9DdokCI8k=; b=aehZRftTf4LV2jpgJlmduIAHk
	vIL649TYCup7ZNGSvn77nMf5I19pCp3cp546cUIQMOUrACfpi8lQxL48caAWnqhZXvbiDW6lfmJ27
	Vf2GqadloCXRdApYOeeX1M2sym6TMIu0iplMSpso1R1lc1kJTCpc1Q00xGlw2M3ZTkrasEoPhoG+h
	Y4vLvsjWLHQJlSDWxoKQRbEhOOVJ/uIuJHBchmMdl3TQM3pHokdzX3fWxVsbI1Xvk3Qhtg9HiPJdJ
	5OLtBDX0I7nL6mLaPQU7sW5Kik46HXgLJjDrybe0CLVmqNwVR+cZ1kXm0a4gcbMbPZvtYLxcGnpD/
	kihwgpNTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2uoQ-0001Xr-AX; Wed, 28 Aug 2019 10:04:22 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2uoF-0001XT-Pm
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:04:13 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d66519a0000>; Wed, 28 Aug 2019 03:04:10 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 28 Aug 2019 03:04:10 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 28 Aug 2019 03:04:10 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 10:04:09 +0000
Received: from [10.24.46.191] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 10:04:04 +0000
Subject: Re: [PATCH 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194 in
 p2972-0000 platform
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190826073143.4582-1-vidyas@nvidia.com>
 <20190828091028.GB2917@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <57b55bde-0f59-27ef-8bd3-13408d6d4493@nvidia.com>
Date: Wed, 28 Aug 2019 15:34:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828091028.GB2917@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_030411_850689_000161B0 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/28/2019 2:40 PM, Thierry Reding wrote:
> On Mon, Aug 26, 2019 at 01:01:37PM +0530, Vidya Sagar wrote:
>> This patch series enables Tegra194's C5 controller which owns x16 slot in
>> p2972-0000 platform. C5 controller's PERST# and CLKREQ# are not configured as
>> output and bi-directional signals by default and hence they need to be
>> configured explicitly. Also, x16 slot's 3.3V and 12V supplies are controlled
>> through GPIOs and hence they need to be enabled through regulator framework.
>> This patch series adds required infrastructural support to address both the
>> aforementioned requirements.
>> Testing done on p2972-0000 platform
>> - Able to enumerate devices connected to x16 slot (owned by C5 controller)
>> - Enumerated device's functionality verified
>> - Suspend-Resume sequence is verified with device connected to x16 slot
>>
>> Vidya Sagar (6):
>>    dt-bindings: PCI: tegra: Add sideband pins configuration entries
>>    arm64: tegra: Add configuration for PCIe C5 sideband signals
>>    PCI: tegra: Add support to configure sideband pins
>>    dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
>>    arm64: tegra: Add PCIe slot supply information in p2972-0000 platform
>>    PCI: tegra: Add support to enable slot regulators
> 
> Hi Vidya,
> 
> when you resend with review comments addressed, can you please reorder
> the patches slightly? I think it's more natural to order them like this:
> 
>      dt-bindings: PCI: tegra: Add sideband pins configuration entries
>      PCI: tegra: Add support to configure sideband pins
>      dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
>      PCI: tegra: Add support to enable slot regulators
>      arm64: tegra: Add configuration for PCIe C5 sideband signals
>      arm64: tegra: Add PCIe slot supply information in p2972-0000 platform
> 
> Or perhaps even like this:
> 
>      dt-bindings: PCI: tegra: Add sideband pins configuration entries
>      dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
>      PCI: tegra: Add support to configure sideband pins
>      PCI: tegra: Add support to enable slot regulators
>      arm64: tegra: Add configuration for PCIe C5 sideband signals
>      arm64: tegra: Add PCIe slot supply information in p2972-0000 platform
> 
> That makes it more obvious that patches 1-2 need an Acked-by from Rob
> and patches 1-4 need to go through Lorenzo's tree and that I'll pick up
> patches 5-6.Sure.
I'll do that.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
	t=1566986650; bh=fKSn9tEu0u/7kvehjleUQGVzZJJHx0MojZ9eQ2aJqWM=;
	h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
	 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
	 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
	 Content-Transfer-Encoding;
	b=aSDWQiNYeJefaP3hT1F2Kc9CSOb6AJPVC1NOPnn4rLtaj7EOJb+j70r/h4+I3bKEk
	 N6siO4F51Zz49OC3S0601fPefcag3AJZZQEdvrpk3pIhqGZ+62QMXTeG4f7t/ETsLY
	 TPYf5ksG6Kb8vxeUEAY6ATiHOIhjJhbLjRn/uJ/Oat+8ZRv3VgTOtujSHpzsKf1rTz
	 gJZbRa8GsOlGBEvMoc7xxgRDx1/GzUqaHw8T8GqLV/JDOW9qNy44TVpHkk4Exc7g5+
	 bM5zCyghflgpfG+ZMzbwZEkd1b4gDyPfxYL2J+AzEjgQyVsBSU6+nXSjJg65VfzSd6
	 bM8cWEfkmyeMA==

Thanks,
Vidya Sagar

> 
> Thierry
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
