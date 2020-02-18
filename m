Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A6E162610
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fY2Ru9tN1G+Nzol+FZMtKg0MuTkcsNZmB/hfT4TdvHk=; b=p6tKHnN19kpkVZ
	+tIbmMSri+DW8xlzXVDBbrKByEz/5ZyXUjyXVaTLqRmkrmET+r8u0DE+A1B9CmidYJBSXSM2YxTip
	KkPkTwDDNki1jsCTI91jqmA280jQ7xTdn6x1LHXtNlYrzQtFpbPVbJca3sYVon41wxMdCTQZFIfvd
	6isOOzl3PcxehGxDeg8b2iiy8ciRZaNsYXsaqcA7Lnl2ePT5rs1Hg7dAE7noc5qnKLH4/VvrI8IPZ
	/DAsqXqHMYCBANW6964O/lfyy6latrV0nv+OBDhy7LEs8n4Ac4Da1HFgG75LKf73NbVvxE4YlaV4l
	zkCAzlcec9+R3yqThkEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j41wN-00022c-Fy; Tue, 18 Feb 2020 12:25:27 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j41wD-00021q-S8
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:25:19 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D4EEA935B4138836A188;
 Tue, 18 Feb 2020 20:25:07 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Tue, 18 Feb 2020
 20:24:58 +0800
Subject: Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
To: "Pankaj Bansal (OSS)" <pankaj.bansal@oss.nxp.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
References: <VI1PR04MB5135D7D8597D33DB76DA05BDB0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <615c6807-c018-92c9-b66a-8afdda183699@huawei.com>
Date: Tue, 18 Feb 2020 20:24:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB5135D7D8597D33DB76DA05BDB0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_042518_076228_F58BD2AE 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>,
 "nleeder@codeaurora.org" <nleeder@codeaurora.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Will
 Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "jon@solid-run.com" <jon@solid-run.com>, Russell
 King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pankaj,

On 2020/2/18 16:00, Pankaj Bansal (OSS) wrote:
[...]
>>>> Side note: would you mind removing the email headers (as above) in your
>>>> replies please ?
>>
>> Read the question above please.
>>
>> [...]
>>
>>>>> As stated above, in Linux MC is a bus (just like PCI bus, AMBA bus etc)
>>>>> There can be multiple devices attached to this bus. Moreover, we can
>>>> dynamically create/destroy these devices.
>>>>> Now, we want to represent this BUS (not individual devices connected to
>> bus)
>>>> in IORT table.
>>>>> The only possible way right now we see is that we describe it as Named
>>>> components having a pool of ID mappings.
>>>>> As and when devices are created and attached to bus, we sift through this
>> pool
>>>> to correctly determine the output ID for the device.
>>>>> Now the input ID that we provide, can come from device itself.
>>>>> Then we can use the Platform MSI framework for MC bus devices.
>>>>
>>>> So are you asking me if that's OK ? Or there is something you can't
>>>> describe with IORT ?
>>>
>>> I am asking if that would be acceptable?
>>> i.e. we represent MC bus as Named component is IORT table with a pool of IDs
>> (without single ID mapping flag)
>>> and then we use the Platform MSI framework for all children devices of MC
>> bus.
>>> Note that it would require the Platform MSI layer to correctly pass an input id
>> for a platform device to IORT layer.
>>
>> How is this solved in DT ? You don't seem to need any DT binding on top
>> of the msi-parent property, which is equivalent to IORT single mappings
>> AFAICS so I would like to understand the whole DT flow (so that I
>> understand how this FSL bus works) before commenting any further.
> 
> In DT case, we create the domain DOMAIN_BUS_FSL_MC_MSI for MC bus and it's children.
> And then when MC child device is created, we search the "msi-parent" property from the MC
> DT node and get the ITS associated with MC bus. Then we search DOMAIN_BUS_FSL_MC_MSI
> on that ITS. Once we find the domain, we can call msi_domain_alloc_irqs for that domain.
> 
> This is exactly what we tried to do initially with ACPI. But the searching DOMAIN_BUS_FSL_MC_MSI
> associated to an ITS, is something that is part of drivers/acpi/arm64/iort.c.
> (similar to DOMAIN_BUS_PLATFORM_MSI and DOMAIN_BUS_PCI_MSI)

Can you have a look at mbigen driver (drivers/irqchip/irq-mbigen.c) to see if
it helps you?

mbigen is an irq converter to convert device's wired interrupts into MSI
(connecting to ITS), which will alloc a bunch of MSIs from ITS platform MSI
domain at the setup.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
