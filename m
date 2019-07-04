Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C661C5FD08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 20:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b17W1akdj/GhU1o1IOPlWdnVQvVx/MxEagsOM+sJiI8=; b=fPOANH2nBWpBeB
	WTetpTKlZshMvP4XnxYXqLa/PfcLRllklZIcukgI+clQbWTdfDcwHsrBpOFtvlZ6B5c2+God4Jvw/
	iqHI3V6mwInJOzracMoepNqzK3s2AHSb7i7Jds8o28GC25CgH/kw3EcU+TdKvV+EeY6KpY6pmvPzw
	z4rT++MQS5MfQyY5M3+7lzZOFrAOInRHBJP6GLQuGo1UoK19vNHWIj4sSKcxNogcTLsrtxDk7tUS9
	avfygbioODtsM33qAhV0w3FLB8/RnUa2mvJ9KzyNBDP2KocDiNIkV2+8yaWIzFkFZAcYAmO5Yex4h
	xHT/8sdST5LvfiXjJs3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj6bF-0002j4-6I; Thu, 04 Jul 2019 18:36:53 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj6ab-0002Y7-65; Thu, 04 Jul 2019 18:36:15 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x64Ia5PO086916;
 Thu, 4 Jul 2019 13:36:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562265365;
 bh=4JPL9pnm+iB2iTUZQC/vFrSNpJCZTCAhwh/sCW9W0hg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=RiGaM3sZYABJcMlEOQsoFKMXW95tlVPvdN9xHnN3UWdFVEiueQnnJMoFd+jd87Tj7
 KBQQ3EjQwQD46s54gHhKfLow4caRNZZDTSXqdDjvaCNP4RqOfB/OMRWbu+mlTEFI4M
 bWU0Tfg37Z2drLzHzo5m4xnA6TOUQHBqFm2tBa9k=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x64Ia51u127311
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 4 Jul 2019 13:36:05 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 4 Jul
 2019 13:36:04 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 4 Jul 2019 13:36:04 -0500
Received: from [10.250.132.195] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x64IZwM5127168;
 Thu, 4 Jul 2019 13:35:59 -0500
Subject: Re: [PATCH v8 3/5] mtd: Add support for HyperBus memory devices
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, Boris Brezillon
 <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>, Richard
 Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
References: <20190625075746.10439-1-vigneshr@ti.com>
 <20190625075746.10439-4-vigneshr@ti.com>
 <31657fd1-c1c9-7672-14c1-e6f67eee6ac1@cogentembedded.com>
 <5009c418-a051-a42a-f78a-360f7230dd2b@ti.com>
 <8e870356-90ba-4762-b1fd-8a13ce6ebcc8@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <45f0beda-08a6-5db7-a8f1-a63b6e879b81@ti.com>
Date: Fri, 5 Jul 2019 00:05:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <8e870356-90ba-4762-b1fd-8a13ce6ebcc8@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_113613_375848_3B50C219 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Tokunori Ikegami <ikegami.t@gmail.com>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03-Jul-19 11:44 PM, Sergei Shtylyov wrote:
> Hello!
> 
> On 07/03/2019 07:41 AM, Vignesh Raghavendra wrote:
> 
>>>> Cypress' HyperBus is Low Signal Count, High Performance Double Data Rate
>>>> Bus interface between a host system master and one or more slave
>>>> interfaces. HyperBus is used to connect microprocessor, microcontroller,
>>>> or ASIC devices with random access NOR flash memory (called HyperFlash)
>>>> or self refresh DRAM (called HyperRAM).
>>>>
>>>> Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
>>>> signal and either Single-ended clock(3.0V parts) or Differential clock
>>>> (1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
>>>> At bus level, it follows a separate protocol described in HyperBus
>>>> specification[1].
>>>>
>>>> HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
>>>> to that of existing parallel NORs. Since HyperBus is x8 DDR bus,
>>>> its equivalent to x16 parallel NOR flash with respect to bits per clock
>>>> cycle. But HyperBus operates at >166MHz frequencies.
>>>> HyperRAM provides direct random read/write access to flash memory
>>>> array.
>>>>
>>>> But, HyperBus memory controllers seem to abstract implementation details
>>>> and expose a simple MMIO interface to access connected flash.
>>>>
>>>> Add support for registering HyperFlash devices with MTD framework. MTD
>>>> maps framework along with CFI chip support framework are used to support
>>>> communicating with flash.
>>>>
>>>> Framework is modelled along the lines of spi-nor framework. HyperBus
>>>> memory controller (HBMC) drivers calls hyperbus_register_device() to
>>>> register a single HyperFlash device. HyperFlash core parses MMIO access
>>>> information from DT, sets up the map_info struct, probes CFI flash and
>>>> registers it with MTD framework.
>>>>
>>>> Some HBMC masters need calibration/training sequence[3] to be carried
>>>> out, in order for DLL inside the controller to lock, by reading a known
>>>> string/pattern. This is done by repeatedly reading CFI Query
>>>> Identification String. Calibration needs to be done before trying to detect
>>>> flash as part of CFI flash probe.
>>>>
>>>> HyperRAM is not supported at the moment.
>>>>
>>>> HyperBus specification can be found at[1]
>>>> HyperFlash datasheet can be found at[2]
>>>>
>>>> [1] https://www.cypress.com/file/213356/download
>>>> [2] https://www.cypress.com/file/213346/download
>>>> [3] http://www.ti.com/lit/ug/spruid7b/spruid7b.pdf
>>>>     Table 12-5741. HyperFlash Access Sequence
>>>>
>>>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
>>> [...]
>>>
>>>    I have at least created my HyperBus driver and unfortunately I'm having serious
> 
>    At last. :-)
> 

So, I guess driver works for limited memory size?

>>> issues with the design of the support core (see below)...
>>>
>>> [...]
>>>> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
>>>> new file mode 100644
>>>> index 000000000000..63a9e64895bc
>>>> --- /dev/null
>>>> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
>>>> @@ -0,0 +1,154 @@
>>> [...]
>>>> +int hyperbus_register_device(struct hyperbus_device *hbdev)
>>>> +{
>>>> +	const struct hyperbus_ops *ops;
>>>> +	struct hyperbus_ctlr *ctlr;
>>>> +	struct device_node *np;
>>>> +	struct map_info *map;
>>>> +	struct resource res;
>>>> +	struct device *dev;
>>>> +	int ret;
>>>> +
>>>> +	if (!hbdev || !hbdev->np || !hbdev->ctlr || !hbdev->ctlr->dev) {
>>>> +		pr_err("hyperbus: please fill all the necessary fields!\n");
>>>> +		return -EINVAL;
>>>> +	}
>>>> +
>>>> +	np = hbdev->np;
>>>> +	ctlr = hbdev->ctlr;
>>>> +	if (!of_device_is_compatible(np, "cypress,hyperflash"))
>>>> +		return -ENODEV;
>>>> +
>>>> +	hbdev->memtype = HYPERFLASH;
>>>> +
>>>> +	ret = of_address_to_resource(np, 0, &res);
>>>
>>>    Hm, I doubt that the HB devices are wholly mapped into memory space, that seems
>>> like a property of the HB controller. In my case, the flash device in the DT has
>>> only single-cell "reg" prop (equal to the chip select #). Then this function returns 
>>> -EINVAL and the registration fails. Also, in my case such mapping is R/O, not R/W.
>>>
>>
>> You could declare R/O MMIO region in controla and set up a translation using ranges
>> from slave's reg CS based reg mapping like:
> 
>    No, not all HB controllers work the same (simple) way as yours. In case of RPC-IF,
> the direct read map is a 64 MiB window into a possibly larger flash chip, it has a
> register supplying address bits 25:31...

Okay, this limitation was not made clear earlier. I thought RPC-IF also
supported MMIO accesses for all reads

I will look into changes needed to support HB controllers that don't
have MMIO interface next week.

Regards
Vignesh

> 
>> +	hbmc: hyperbus@47034000 {
>> +		compatible = "ti,am654-hbmc";
>> +		reg = <0x0 0x47034000 0x0 0x100>,
>> +			<0x5 0x00000000 0x1 0x0000000>;
>> +		#address-cells = <2>;
>> +		#size-cells = <1>;
>> +		ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
>> +			 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
>> +
>> +		/* Slave flash node */
>> +		flash@0,0 {
>> +			compatible = "cypress,hyperflash", "cfi-flash";
>> +			reg = <0x0 0x0 0x4000000>;
>> +		};
>> +	};
>>
>> If you use just CS# how would you handle CS to MMIO region mapping? 
>> Does both CS use the same MMIO base for reads?
> 
>    The RPC-IF HF mode only has a single CS signal.
> 

I see...

> [...]
> 
> MBR, Sergei
> 

Regards
Vignesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
