Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DBF1B71E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 15:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ngYHfu/7j+EcZnH8GoUs0Y24ZsSM3oBYqXF0dZ+BCto=; b=ZNBraItzRDc44mSCj87T/OnZG
	kOUGyclyZhkHnsk6XM4QI0deF1G1ZmqHhC3KuoChDkGFw2DAca/IEY2pkw3EJAl3Gub5TAIqhblMz
	dzaX617qXHOA9tOfIuwzS6/dsXKEflbjuN1dxR9MGZP/U2xEfV61RUF1dQSpQH5HAIc6nQhaMJnpE
	LAabKBNb2Hzo0GmVu88STUxOiPWHeU4/Jwn1b7IHUQHHPW4BcjigR8NdQYE1IPzEd9Mk4rvunT3Cy
	peR6kuc3Veo5PcSQ/v+kUorX1MQ4qD/gtONq6nwElWZ7sOqbj63lYW4Y+YBGKNEfGY+d8NV8yelom
	pKqdlIhfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQB7s-0006DJ-N4; Mon, 13 May 2019 13:36:20 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQB7k-0006Cw-PV
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 13:36:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C1F980D;
 Mon, 13 May 2019 06:36:10 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C91D3F71E;
 Mon, 13 May 2019 06:36:09 -0700 (PDT)
Subject: Re: [ARM SMMU] Dynamic StreamID allocation
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Will Deacon <will.deacon@arm.com>,
 Joerg Roedel <joro@8bytes.org>
References: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <f0c3abd6-7b9f-8b68-14fa-3c6cf393ddc9@arm.com>
 <VI1PR0401MB249699B9BA183B18997532D0F10F0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <662f966d-aad9-10a4-7326-374c0bb26020@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <702f90c6-8016-8478-9443-af34e4dd8336@arm.com>
Date: Mon, 13 May 2019 14:36:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <662f966d-aad9-10a4-7326-374c0bb26020@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_063612_839120_B8E902A2 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/05/2019 13:42, Jean-Philippe Brucker wrote:
> On 13/05/2019 08:09, Pankaj Bansal wrote:
>> Hi Jean,
>>
>>> -----Original Message-----
>>> From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
>>> Sent: Friday, 10 May, 2019 07:07 PM
>>> To: Pankaj Bansal <pankaj.bansal@nxp.com>; Will Deacon
>>> <will.deacon@arm.com>; Robin Murphy <robin.murphy@arm.com>; Joerg
>>> Roedel <joro@8bytes.org>
>>> Cc: iommu@lists.linux-foundation.org; Varun Sethi <V.Sethi@nxp.com>; linux-
>>> arm-kernel@lists.infradead.org; Nipun Gupta <nipun.gupta@nxp.com>
>>> Subject: Re: [ARM SMMU] Dynamic StreamID allocation
>>>
>>> On 10/05/2019 13:33, Pankaj Bansal wrote:
>>>> Hi Will/Robin/Joerg,
>>>>
>>>> I am s/w engineer from NXP India Pvt. Ltd.
>>>> We are using SMMU-V3 in one of NXP SOC.
>>>> I have a question about the SMMU Stream ID allocation in linux.
>>>>
>>>> Right now the Stream IDs allocated to a device are mapped via device tree to
>>> the device.
>>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felix
>>>> ir.bootlin.com%2Flinux%2Flatest%2Fsource%2FDocumentation%2Fdevicetree%
>>>> 2Fbindings%2Fiommu%2Farm%2Csmmu-
>>> v3.txt%23L39&amp;data=02%7C01%7Cpankaj
>>>> .bansal%40nxp.com%7C3cbe8bd4827e425afd0f08d6d54c925e%7C686ea1d3b
>>> c2b4c6
>>>>
>>> fa92cd99c5c301635%7C0%7C0%7C636930922220665343&amp;sdata=vIG5u5n
>>> XR5iRp
>>>> uuuGjeFxKBtA5f5ohf91znXX0QWm1c%3D&amp;reserved=0
>>>>
>>>> As the device tree is passed from bootloader to linux, we detect all the stream
>>> IDs needed by a device in bootloader and add their IDs in respective device
>>> nodes.
>>>> For each PCIE Endpoint (a unique BDF (Bus Device Function)) on PCIE bus, we
>>> are assigning a unique Stream ID in bootloader.
>>>>
>>>> However, this poses an issue with PCIE hot plug.
>>>> If we plug in a pcie device while linux is running, a unique BDF is assigned to
>>> the device, for which there is no stream ID in device tree.
>>>>
>>>> How can this problem be solved in linux?
>>>
>>> Assuming the streamID associated to a BDF is predictable (streamID = BDF
>>> + constant), using the iommu-map property should just work:
>>>
>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Felixir.boo
>>> tlin.com%2Flinux%2Flatest%2Fsource%2FDocumentation%2Fdevicetree%2Fbind
>>> ings%2Fpci%2Fpci-
>>> iommu.txt&amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7C3cbe8bd482
>>> 7e425afd0f08d6d54c925e%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0
>>> %7C636930922220665343&amp;sdata=GkkovEnvhd5dN%2BGdh%2FnKCyW5Cd
>>> EnLDP3cWTrk%2B%2FO7EQ%3D&amp;reserved=0
>>>
>>> It describes the streamIDs of all possible BDFs, including hotplugged functions.
>>
>> You mean that we should increase the "length" parameter (in (rid-base,iommu,iommu-base,length) touple) ?
>> This would cater to any *new* Bus Device Function being detected on PCIE bus?
>> Is that right ?
> 
> No, the iommu-map solution only works when you can predict at boot time
> which streamID will correspond to any BDF, for example if the PCIe
> controller or firmware automatically assigns streamID = BDF.
> 
>> Right now when we make iommu-map in bootloader, we are giving one RID per BDF:
>> https://elixir.bootlin.com/u-boot/latest/source/drivers/pci/pcie_layerscape_fixup.c#L168
> 
> Right, that won't work with hotplug. You can't derive a unique streamID
> from any BDF at boot, if the streamID range is limited to 16 values on
> this hardware.

Furthermore, does U-Boot enumerate all possible SR-IOV capabilities, or 
is this already broken regardless of hotplug?

> Maybe you could move this allocator to the Linux Layerscape driver, and
> call iommu_fwspec_add_ids() from there, rather than using iommu-map? Not
> sure how feasible that is, but it might still be the simplest.

Assuming there's still the same silly 7-bit limitation as LS2085, you 
could in theory carve out that entire space of ICIDs to allow a static 
mapping like this:

	iommu-map-mask = <0x0f07>;
	iommu-map = <0x000 &smmu 0x00 0x8>,
		    <0x100 &smmu 0x08 0x8>,
		    <0x200 &smmu 0x10 0x8>,
		    <0x300 &smmu 0x18 0x8>,
		    <0x400 &smmu 0x20 0x8>,
		    <0x500 &smmu 0x28 0x8>,
		    <0x600 &smmu 0x30 0x8>,
		    <0x700 &smmu 0x38 0x8>,
		    <0x800 &smmu 0x40 0x8>,
		    <0x900 &smmu 0x48 0x8>,
		    <0xa00 &smmu 0x50 0x8>,
		    <0xb00 &smmu 0x58 0x8>,
		    <0xc00 &smmu 0x60 0x8>,
		    <0xd00 &smmu 0x68 0x8>,
		    <0xe00 &smmu 0x70 0x8>,
		    <0xf00 &smmu 0x78 0x8>;

That gives you 16 buses before IDs start aliasing awkwardly (any devices 
sharing a bus will alias per-function, but that's probably acceptable 
since they'd likely get grouped together anyway).

Either way the IOMMU layer itself is actually relatively easy-going 
these days. Even with the existing approach, if you could just update 
Linux's internal idea of the firmware data before the bus_add_device() 
call happens for the hotplugged device, then things should just work. 
You're also going to face the exact same problem for ITS Device IDs, 
though, and things may be less forgiving there.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
