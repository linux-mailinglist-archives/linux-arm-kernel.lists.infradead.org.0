Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A955B172CFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfvESUUxhNiNVM8jz9HGSkTFunTCy2GzQ0brPO6TQCQ=; b=TdoJ5aLcmkD3Z2
	QEP19De2yCzCPsgdpjI9g9hXjnAPAVPdjKq/pMD4jCoaS5rTesXe1cC5zD0FdmxRb8HRQucuvOJSf
	/M4AvsIvETiDOOozAd1zG3vTXQtv13qfcwMqNbu2YLdfmlFwO6O/ZEjXGI9bQE7TEQhbM9KL7DkF3
	ZKqWUhnBiKoXwbdkw/AnezR6FJdMPhQA+oyiYnPenMWutSmInYj+xC4d5TcXprSu6g+0NsgxKN70X
	bPGaZ9Pb6dobInOX1mm2Txq4gEMTkHmCi2Iungvxqqu2ZhImtfINTYqtyFkdR1GNjJ/uI197+Wypb
	3CSAGFd5uHB2GFauYfrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TPm-0000jX-Hr; Fri, 28 Feb 2020 00:22:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TPc-0000if-NL
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:21:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4876431B;
 Thu, 27 Feb 2020 16:21:51 -0800 (PST)
Received: from [192.168.3.111] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D5F33F819;
 Thu, 27 Feb 2020 16:21:49 -0800 (PST)
Subject: Re: [PATCH v2 11/13] dt-bindings: ipmi: Convert IPMI-SMIC bindings to
 json-schema
To: Rob Herring <robh@kernel.org>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-12-andre.przywara@arm.com>
 <20200227222145.GF26010@bogus>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Autocrypt: addr=andre.przywara@arm.com; prefer-encrypt=mutual; keydata=
 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
 i4aIXCH3Wv6K
Organization: ARM Ltd.
Message-ID: <270389bf-3a6e-6e89-624f-006cace493ae@arm.com>
Date: Fri, 28 Feb 2020 00:21:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200227222145.GF26010@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162152_860522_903A39AB 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Corey Minyard <minyard@acm.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 openipmi-developer@lists.sourceforge.net, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/02/2020 22:21, Rob Herring wrote:

Hi,

> On Thu, Feb 27, 2020 at 06:22:08PM +0000, Andre Przywara wrote:
>> Convert the generic IPMI controller bindings to DT schema format
>> using json-schema.
>>
>> I removed the formerly mandatory device-type property, since this
>> is deprecated in the DT spec, except for the legacy CPU and memory
>> nodes.
> 
> Yes, but it is still used by the ipmi driver to match on, so we should 
> keep it.

Oh, indeed, I missed that. Should we:
- Remove the .type field from the driver.
- Mark/comment this as deprecated in the bindings, but
- Keep in it in the DTs.
to limit proliferation of device_type usage?

> 
>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>> Cc: Corey Minyard <minyard@acm.org>
>> Cc: openipmi-developer@lists.sourceforge.net
>> ---
>>  .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 ---------
>>  .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 56 +++++++++++++++++++
>>  2 files changed, 56 insertions(+), 25 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
>>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt b/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
>> deleted file mode 100644
>> index d5f1a877ed3e..000000000000
>> --- a/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
>> +++ /dev/null
>> @@ -1,25 +0,0 @@
>> -IPMI device
>> -
>> -Required properties:
>> -- compatible: should be one of ipmi-kcs, ipmi-smic, or ipmi-bt
>> -- device_type: should be ipmi
>> -- reg: Address and length of the register set for the device
>> -
>> -Optional properties:
>> -- interrupts: The interrupt for the device.  Without this the interface
>> -	is polled.
>> -- reg-size - The size of the register.  Defaults to 1
>> -- reg-spacing - The number of bytes between register starts.  Defaults to 1
>> -- reg-shift - The amount to shift the registers to the right to get the data
>> -	into bit zero.
>> -
>> -Example:
>> -
>> -smic@fff3a000 {
>> -	compatible = "ipmi-smic";
>> -	device_type = "ipmi";
>> -	reg = <0xfff3a000 0x1000>;
>> -	interrupts = <0 24 4>;
>> -	reg-size = <4>;
>> -	reg-spacing = <4>;
>> -};
>> diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
>> new file mode 100644
>> index 000000000000..c859e0e959b9
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
>> @@ -0,0 +1,56 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> Anything I wrote which should be most of the series, you can relicense 
> to:
> 
> (GPL-2.0-only OR BSD-2-Clause)

Oh, good point. I copied the header from some file I picked.

> 
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/ipmi/ipmi-smic.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: IPMI device bindings
>> +
>> +description: IPMI device bindings
>> +
>> +maintainers:
>> +  - Corey Minyard <cminyard@mvista.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - ipmi-kcs
>> +      - ipmi-smic
>> +      - ipmi-bt
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    description: Interface is polled if this property is omitted.
>> +    maxItems: 1
>> +
>> +  reg-size:
>> +    description: The access width of the register in bytes. Defaults to 1.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - enum: [1, 2, 4, 8]
> 
> Does 8 really work?

The driver supports it, at least on architectures providing readq.

> 
>> +
>> +  reg-spacing:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: The number of bytes between register starts. Defaults to 1.
>> +
>> +  reg-shift:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: |
>> +      The amount of bits to shift the register content to the right to get
>> +      the data into bit zero.
> 
> either 24 or 56 would be the max, right?

True, will limit this to 56.

Thanks!
Andre

> 
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +examples:
>> +  - |
>> +    smic@fff3a000 {
>> +        compatible = "ipmi-smic";
>> +        reg = <0xfff3a000 0x1000>;
>> +        interrupts = <0 24 4>;
>> +        reg-size = <4>;
>> +        reg-spacing = <4>;
>> +    };
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
