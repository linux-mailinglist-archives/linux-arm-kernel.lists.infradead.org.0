Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AC11F54CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 14:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5DsjgjIBHVpDGLwZ211AnllMO4TNe3RphTjOf2mw2oY=; b=q3YeuJk6YR/VmtfskANv0eSAy7
	WFsIuLWdH8KY6pcRL4CR7R8CEMm5bLYMW8yLN8eUQvJtzN1KUu8M89Yq6QFZqG15P5IhWuH9a6GpV
	fFucn3Av9LKVt3WEV/LsHf06ahq3vawZpTx3qiM9jzGV1g3N/ASCorIZRE/1PYbC2Xi2jUidTgURI
	1HKEcG+ZXYoBYG1i+g+Vl0TxhRkFUQcrUBup0bGTuvWTg/HJBP3F7a7pkAcVJBWAX/2F5rP22ouAV
	+/RLkinrRu5Xs3wkVwMoc2E7dpSU+y2xSxF5/0FGDfhhQLDlG9io6pgiU351NRY/cH1RLNkq/1Hyz
	riNs6EAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jizpi-00016M-4m; Wed, 10 Jun 2020 12:27:54 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizpY-00015x-QH
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 12:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591792064; x=1623328064;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=QiFuJl1R5fgwI47VUdUxy1XjRtgrcDqvma+iH44NFSk=;
 b=hnRHTdJronscFR2yTjdh97Lj7hS7DuvbTw98YNO51LZ3UXc/1VMvT8iB
 tL32XQg6qZmB6lfLXpoB2+hle/VHVqO0638F1CEGsBCKwtcezoAnTve40
 UtUMcouuRqBCG2vZROnAdGnkLkF3n4xEH4so9O9shjaHuRwzWkSXN++Dg
 nAX7PHQHVJ+VPaqQzE/QaSkUOXkRjHN0YWkIxvvNbhEGsAoBZYHFFM+e1
 XzF4NOtkHPx8N+c74t5M1N2DM2VmSRzs38MnZhCez0+lm1Ql7QT9DniJX
 /3Ff2ZGW35ZOcUDC3V/+4FNzDYCCEapg/1X7uBVSRMVOABLrnwaMGtED2 Q==;
IronPort-SDR: 0d4g912uhVPOIXVwiNumUIxOuwQwPv1k6y8Nq0I/CzHL1DwOmpG02rnaDxCk0Xul9ey7Wz6RVN
 MoGmGnZ+EQRMel+AUBLPvkn7ON7+DX3N23NsBUbSe4kf82ZfGLZHOVKqaD2P/bCFZobnMwyTGW
 Mk/GSb29bEgBZO+qe3ATVlY/gWm3VEHHqjYkS8fUrMoicwslgxm0AquKfxlA4tXmFapYTg87ht
 IqeLuIZL/Xyzue7miwmvTsqASQip6ZlkRDLZm2sBWdIJbnx0uIdzdqdMkwOrhoL/map1dFX0IR
 qI4=
X-IronPort-AV: E=Sophos;i="5.73,496,1583218800"; d="scan'208";a="15250796"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2020 05:27:36 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Wed, 10 Jun 2020 05:27:35 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3
 via Frontend Transport; Wed, 10 Jun 2020 05:27:32 -0700
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-7-lars.povlsen@microchip.com>
 <20200602230738.mz2y6i2kjagyt7tk@mobilestation>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH 06/10] dt-bindings: spi: spi-dw-mchp: Add Sparx5 support
In-Reply-To: <20200602230738.mz2y6i2kjagyt7tk@mobilestation>
Date: Wed, 10 Jun 2020 14:27:31 +0200
Message-ID: <87d067hzrg.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_052744_938913_77221045 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.71.154.253 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Serge Semin writes:

> On Wed, May 13, 2020 at 04:00:27PM +0200, Lars Povlsen wrote:
>> This add DT bindings for the Sparx5 SPI driver.
>
> This whole file can be easily merged in to the generic DW APB SSI DT
> binding file. Just use "if: properties: compatible: const: ..." construction
> to distinguish ocelot, jaguar, sparx5 and non-sparx5 nodes.
>
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  .../bindings/spi/mscc,ocelot-spi.yaml         | 49 +++++++++++++++----
>>  1 file changed, 39 insertions(+), 10 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
>> index a3ac0fa576553..8beecde4b0880 100644
>> --- a/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
>> +++ b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
>> @@ -23,15 +23,23 @@ properties:
>>      enum:
>>        - mscc,ocelot-spi
>>        - mscc,jaguar2-spi
>> +      - microchip,sparx5-spi
>>
>>    interrupts:
>>      maxItems: 1
>>
>>    reg:
>>      minItems: 2
>> -    items:
>> -      - description: Designware SPI registers
>> -      - description: CS override registers
>> +    maxItems: 3
>> +    oneOf:
>> +      - items:
>> +          - description: Designware SPI registers
>> +          - description: CS override registers (Not sparx5).
>> +      - items:
>> +          - description: Designware SPI registers
>> +          - description: CS override registers (Not sparx5).
>> +          - description: Direct mapped SPI read area. If provided, the
>> +              driver will register spi_mem_op's to take advantage of it.
>>
>>    clocks:
>>      maxItems: 1
>> @@ -43,6 +51,23 @@ properties:
>>         enum: [ 2, 4 ]
>>      maxItems: 1
>>
>
>> +  spi-rx-delay-us:
>> +    description: |
>> +      The delay (in usec) of the RX signal sample position. This can
>> +      be used to tne the RX timing in order to acheive higher
>> +      speeds. This is used for all devices on the bus.
>> +    default: 0
>> +    maxItems: 1
>
> spi-rx-delay-us is defined for a particular SPI-slave. Please see the
> DT binding file: Documentation/devicetree/bindings/spi/spi-controller.yaml .
> Although as I suggested before this delay isn't what the Dw APB SSI RX sample
> delay functionality does. Probably a vendor-specific property would be better
> here. But I'd also define it on a SPI-slave basis, not for all devices on the
> bus.

Right, I was hunting for something "similar". As pointed out, this is
really different in nature, and the unit is also too coarse.

I will change this to "snps,rx-sample-delay-ns" as suggested in your
other comments.

>
>> +
>> +  interface-mapping-mask:
>> +    description: |
>> +      On the Sparx5 variant, two different busses are connected to the
>> +      controller. This property is a mask per chip-select, indicating
>> +      whether the CS should go to one or the other interface.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    default: 0
>> +    maxItems: 1
>
> As Mark rightfully suggested this seems like an SPI-slave related property, then
> most likely it should be defined on the SPI-slave basis (probably as a bool
> property). Additionally it's vendor-specific, so the property name should be
> accordingly prefixed.

Yes, I'll change this to a per-device property. I need the same for the
above as well.

>
>> +
>>  required:
>>    - compatible
>>    - reg
>> @@ -50,11 +75,15 @@ required:
>>
>>  examples:
>>    - |
>> -    spi0: spi@101000 {
>> -      compatible = "mscc,ocelot-spi";
>> -      #address-cells = <1>;
>> -      #size-cells = <0>;
>> -      reg = <0x101000 0x100>, <0x3c 0x18>;
>> -      interrupts = <9>;
>> -      clocks = <&ahb_clk>;
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    spi0: spi@600104000 {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +        compatible = "microchip,sparx5-spi";
>
>> +        reg = <0x00104000 0x40>, <0 0>, <0x3000000 0x4000000>;
>
> I have a doubt that defining an empty reg region is a good idea, since you can
> detect the reg requirements by the node compatible string.

Yes, its probably better that way. It looks ugly too :-)

Thanks for your comments!

---Lars


> -Sergey
>
>> +        num-cs = <16>;
>> +        reg-io-width = <4>;
>> +        reg-shift = <2>;
>> +        clocks = <&ahb_clk>;
>> +        interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
>>      };
>> --
>> 2.26.2
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
