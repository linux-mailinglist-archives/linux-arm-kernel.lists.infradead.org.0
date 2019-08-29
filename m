Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C468A1EC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oSnN5SWUGTkqwrPCvKZ57NvXUyya5RdsDgR815CRrPw=; b=GJ6w0uurtAJF3uTq96sRhNjHi
	7Gaujib8pIbvuDHyZNv4dupLStQJhC/15GzMlqpYpb9RImJIa/iXW2qEZ+WYteTuq17EbbzIuS5QG
	CK7CYV6UO8wTCCDSewzfXXWlhJ8K6UYXnCTfnV4Xo6/PX3iCCrAYvHebmAJBdpQHtr8siSIyGmFD4
	NDO70aNnTViJX+R5KvbRMTuLPeRSDfX8SRvoBRgtpFVm/5MLYrL0BoAikr1TXq10XM7+qsW1bt2W9
	P4rejEvvLJOVGTJqZprxcgHJBe6NWAbEe0y8KSPlCOgDXdiTwTiIRtpfHUs/dWADagphXgdUnrDxd
	nIpzBlcrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MDg-0005eZ-Qk; Thu, 29 Aug 2019 15:20:16 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MCw-0005e4-3G
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:19:31 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d67ecfb0003>; Thu, 29 Aug 2019 08:19:23 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 29 Aug 2019 08:19:22 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 29 Aug 2019 08:19:22 -0700
Received: from [10.25.75.254] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 29 Aug
 2019 15:18:42 +0000
Subject: Re: [PATCH V3 2/6] dt-bindings: PCI: tegra: Add PCIe slot supplies
 regulator entries
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-3-vidyas@nvidia.com> <20190829120329.GC13187@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <cd106d64-e06c-e7a2-d807-f5f080625363@nvidia.com>
Date: Thu, 29 Aug 2019 20:48:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829120329.GC13187@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567091963; bh=26NeoQlEq36/bfgv16BwS5qeIh/4BBTWDJHJLCUv198=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=qD3OIyS/DUj7JJzCiNQrZXALOWvZUrW3IkW+LfcC2aBJi0hVvJ3ybkjO1QZletTa5
 xcoKk0bpSfnPkFNO6IKr/dXJlIV3ps1koC/7QqHqRnrEHH9+BMysNvxl0Ih2whZZF6
 bBsSdXcsH8DBcqgFjTJa8vgzjk5j2BVI9QHD1BVwGNWrcFT0XYIBhw4sWqnFmWsYAt
 ef+UmZetjTLW4UtCeAlGagfbpPDGf/Jsr8p7oEYFxhvvR56mE7wmWDDhOzjbKCJJcQ
 FY75nqBB+CZyocyU8VDhJQRb3gO7kZiBVmNPqmUZ9jC8ubUYGZEe9imw4xU5bj0OyQ
 RRwrhWYzA9KPQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_081930_258244_95C39AAA 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/29/2019 5:33 PM, Thierry Reding wrote:
> On Wed, Aug 28, 2019 at 10:58:46PM +0530, Vidya Sagar wrote:
>> Add optional bindings "vpcie3v3-supply" and "vpcie12v-supply" to describe
>> regulators of a PCIe slot's supplies 3.3V and 12V provided the platform
>> is designed to have regulator controlled slot supplies.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> V3:
>> * None
>>
>> V2:
>> * None
>>
>>   .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
>> index 0ac1b867ac24..b739f92da58e 100644
>> --- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
>> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
>> @@ -104,6 +104,12 @@ Optional properties:
>>      specified in microseconds
>>   - nvidia,aspm-l0s-entrance-latency-us: ASPM L0s entrance latency to be
>>      specified in microseconds
>> +- vpcie3v3-supply: A phandle to the regulator node that supplies 3.3V to the slot
>> +  if the platform has one such slot. (Ex:- x16 slot owned by C5 controller
>> +  in p2972-0000 platform).
>> +- vpcie12v-supply: A phandle to the regulator node that supplies 12V to the slot
>> +  if the platform has one such slot. (Ex:- x16 slot owned by C5 controller
>> +  in p2972-0000 platform).
> 
> There's an ongoing discussion regarding the use of optional power
> supplies and I'm wondering if we're not abusing this here. Why exactly
> are these regulators optional?
I made them optional because, the number and type of supplies typically depend on the
kind of slot the controller is owning. If it is a CEM slot, then, it needs 3.3V & 12V
supplies and if it is an M.2 Key-E/M slot, it needs only 3.3V supply. Also, if there are
on-board PCIe endpoint devices, supplies may vary again from vendor to vendor.
Considering all these, I made them optional instead of mandatory.
Also, I agree that regulator framework supplies a dummy regulator if we make them mandatory
but doesn't supply one, but it does so with a warning print in the log which I feel is
an unwanted alert and to avoid that one has to supply dummy/fixed regulators which again
seems an overkill when all of this can be addressed by making slot regulators optional.

> 
> The distinction is somewhat subtle, but the other way to look at
> modelling this in DT is that the supplies are in fact required, but may
> be connected to an always-on regulator with a fixed voltage. Or in some
> cases they may also be shorted to ground. In both cases the PCI
> controller, or rather the slot that the controller connects to, actually
> "requires" the supplies, it's just that we can get away without
> describing them because they can't be controlled anyway.
> 
> Looking at the PCI connector pinout for PCI Express, I do see a bunch of
> +3.3 V and +12 V pins. To me that indicates that the 3.3 V and 12 V
> supplies are indeed required for PCI slots. I'm not sure about devices
> that are directly connected to the PCI controller, though. I'll need to
> go look at some schematics to get a better understanding of these.
> 
> Bottom line: I'm wondering if we shouldn't really make these supplies
> mandatory and in case where we don't care either just leave them away
> (the regulator framework will supply a dummy regulator in that case) or
> hook them up to a fixed regulator if that matches the hardware design.
> 
> Any thoughts?
> 
> Thierry
> 
>>   
>>   Examples:
>>   =========
>> @@ -156,6 +162,8 @@ Tegra194:
>>   			  0xc2000000 0x18 0x00000000 0x18 0x00000000 0x4 0x00000000>;  /* prefetchable memory (16GB) */
>>   
>>   		vddio-pex-ctl-supply = <&vdd_1v8ao>;
>> +		vpcie3v3-supply = <&vdd_3v3_pcie>;
>> +		vpcie12v-supply = <&vdd_12v_pcie>;
>>   
>>   		phys = <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
>>   		       <&p2u_hsio_5>;
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
