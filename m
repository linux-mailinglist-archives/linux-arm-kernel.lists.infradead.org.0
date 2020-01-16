Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2888113D904
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:29:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUQJPD3GuiWxhxbDPg1QQ0U9Rq4u0qHJ8vOnTg7lDiI=; b=E9vLD0TqV3Oz/q
	vhLUS4bFUySZEgRzsZKJA4pTN643Ya1wYAysbhb3gaCIuz6TmUsooYQRvcQ81pkENakOUXme8lSeV
	n/lVe3GA7wnbwTgBOkmtmH2pG1zzxnZ14xQhQFyxQ3A14W/xjy3JanKmKB/H2A40ZnqhfcP0VT3XT
	V4Ewi0pkBXkBeaoX2Toqem8ZfO60i4pCBWFDSDYFxXPNWLlRsucl6ya9ygv595DS1He2jFvHRYjnS
	5S2bMeBbyhPePMI11d8bgn+vUTIsAnpebpJLkBbDn/Y8HDBKXNUxvHxc63UdnPaXR8LP0r913EUSc
	JtRRvvXklNAu4k7F8zjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3LL-0004oq-U5; Thu, 16 Jan 2020 11:29:43 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3L7-0004nt-S3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:29:33 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00GBTLp4025258;
 Thu, 16 Jan 2020 05:29:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579174161;
 bh=HoTADZtgqSuVtIDvlRPiDukZa+j2J/mrL6Wj0SyC6jI=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=xC9TEoestm/zX+cXsk+U5M1RVszaN7BgXWgTmSPvKSpo7BtHTndJk7VL/4D+xlgpd
 kb5PrdJaCuRZ/DHlnUaHNqePrEvTUmupxh74nB0MstnmXKgH0Jh7icksY4vEhSnbw7
 KMLBW1mjSIcZuHBsNe0kVVfLqQnJNqxDDoLQUHSY=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00GBTLbQ007664;
 Thu, 16 Jan 2020 05:29:21 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 16
 Jan 2020 05:29:21 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 16 Jan 2020 05:29:21 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00GBTGoa010158;
 Thu, 16 Jan 2020 05:29:19 -0600
Subject: Re: [PATCH v2 01/14] dt-bindings: PCI: cadence: Add PCIe RC/EP DT
 schema for Cadence PCIe
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh@kernel.org>
References: <20200106102058.19183-1-kishon@ti.com>
 <20200106102058.19183-2-kishon@ti.com> <20200108034314.GA5412@bogus>
 <3e2bfa1b-ff9e-93a0-a6b9-7985e0a76bf0@ti.com>
Message-ID: <025cc5cd-87a5-da64-9edd-536f7f7dac67@ti.com>
Date: Thu, 16 Jan 2020 17:01:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <3e2bfa1b-ff9e-93a0-a6b9-7985e0a76bf0@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_032929_987381_EDDF1233 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hi Rob,

On 08/01/20 11:05 AM, Kishon Vijay Abraham I wrote:
> Hi Rob,
> 
> On 08/01/20 9:13 AM, Rob Herring wrote:
>> On Mon, Jan 06, 2020 at 03:50:45PM +0530, Kishon Vijay Abraham I wrote:
>>> Add PCIe Host (RC) and Endpoint (EP) device tree schema for Cadence
>>> PCIe core library. Platforms using Cadence PCIe core can include the
>>> schemas added here in the platform specific schemas.
>>>
>>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>>> ---
>>>  .../devicetree/bindings/pci/cdns-pcie-ep.yaml | 20 ++++++++++++
>>>  .../bindings/pci/cdns-pcie-host.yaml          | 30 +++++++++++++++++
>>>  .../devicetree/bindings/pci/cdns-pcie.yaml    | 32 +++++++++++++++++++
>>>  3 files changed, 82 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml
>>>  create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
>>>  create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie.yaml
>>
>> Need to remove the old files.
>>
>> Note that I posted a conversion of Cadence host[1]. Yours goes further, 
>> but please compare and add anything mine has that yours doesn't.
>>
>> [1] https://lore.kernel.org/linux-pci/20191231193903.15929-2-robh@kernel.org/
> 
> Sure, I'll look at this.
> 
> Recently we converted Cadence driver to a library since the same Cadence
> core can be used by multiple vendors. Here I'm trying to add the
> bindings for Cadence core which can be included in the platform specific
> schema.
> 
> So the existing cdns,cdns-pcie-host.yaml which is a Cadence platform
> using Cadence core should include cdns-pcie-host.yaml.
> 
> "[PATCH v2 10/14] dt-bindings: PCI: Add host mode dt-bindings for TI's
> J721E SoC" in this series includes "cdns-pcie-host.yaml" for TI platform
> using Cadence core.
> 
> That's why in the schema added here you don't see the compatible since
> that will be added in platform specific schema.

Does this approach look fine to you?

Thanks
Kishon

>>
>>>
>>> diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml
>>> new file mode 100644
>>> index 000000000000..36aaae5931c3
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml
>>> @@ -0,0 +1,20 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
>>> +%YAML 1.2
>>> +--
>>> +$id: "http://devicetree.org/schemas/pci/cdns-pcie-ep.yaml#"
>>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>>> +
>>> +title: Cadence PCIe Endpoint
>>> +
>>> +maintainers:
>>> +  - Tom Joseph <tjoseph@cadence.com>
>>> +
>>> +allOf:
>>> +  - $ref: "cdns-pcie.yaml#"
>>> +
>>> +properties:
>>> +  max-functions:
>>> +    description: Maximum number of functions that can be configured (default 1)
>>> +    allOf:
>>> +      - $ref: /schemas/types.yaml#/definitions/uint8
>>> diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
>>> new file mode 100644
>>> index 000000000000..78261bc4f0c5
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
>>> @@ -0,0 +1,30 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
>>> +%YAML 1.2
>>> +---
>>> +$id: "http://devicetree.org/schemas/pci/cdns-pcie-host.yaml#"
>>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>>> +
>>> +title: Cadence PCIe Host
>>> +
>>> +maintainers:
>>> +  - Tom Joseph <tjoseph@cadence.com>
>>> +
>>> +allOf:
>>> +  - $ref: "/schemas/pci/pci-bus.yaml#"
>>> +  - $ref: "cdns-pcie.yaml#"
>>> +
>>> +properties:
>>> +  vendor-id:
>>> +    description: The PCI vendor ID (16 bits, default is design dependent)
>>> +
>>> +  device-id:
>>> +    description: The PCI device ID (16 bits, default is design dependent)
>>
>> While these got defined here as 16-bits, these should be fixed to 32-bit 
>> because they are established properties for a long time.
>>
>>> +
>>> +  cdns,no-bar-match-nbits:
>>> +    description: Set into the no BAR match register to configure the number
>>> +      of least significant bits kept during inbound (PCIe -> AXI) address
>>> +      translations (default 32)
>>> +    allOf:
>>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>>
>> What about compatible?
>>
>>> +
>>> diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie.yaml
>>> new file mode 100644
>>> index 000000000000..497d3dc2e6f2
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/pci/cdns-pcie.yaml
>>> @@ -0,0 +1,32 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
>>> +%YAML 1.2
>>> +---
>>> +$id: "http://devicetree.org/schemas/pci/cdns-pcie.yaml#"
>>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>>> +
>>> +title: Cadence PCIe Core
>>> +
>>> +maintainers:
>>> +  - Tom Joseph <tjoseph@cadence.com>
>>> +
>>> +properties:
>>> +  max-link-speed:
>>> +    minimum: 1
>>> +    maximum: 3
>>> +
>>> +  num-lanes:
>>> +    minimum: 1
>>> +    maximum: 2
>>
>> Needs a type.
>>
>> The Cadence IP can't support x4, x8, or x16?
> 
> I'll fix this. I assume these can be overwritten in platform specific
> schema files?
> 
> Thanks
> Kishon
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
