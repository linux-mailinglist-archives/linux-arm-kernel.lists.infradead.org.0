Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953721257AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b7iM8gDCKaFAIX12VgLg3TjJa2KpCv4GiRu6r6wjMIM=; b=iYfQ2b+AWpnNXlsodpspAY1sU
	zEhzqasB+3HZQ8pPF45qAuudvkeVenVCyuTd/lFUVOqlWKibj+G1dXWFHZlm6a9HiIbOjN0fR5b/I
	5Yb2akDzRT9++VD3DavUDHYhECb/zMQNp3Enz23I5MVv72ce5hh/VAtCA4cLCBAf4pocpeA5X+sAv
	8ywNmT8TOilFPq9DFSZLJOCrySL4kaGsKe1s3XDFLYuGM5vj3Aad8L8U7sRHAZ9zSqPqUf9QLFRbA
	L/RU6tO26RkybP1LTYINhKjliVM3Uv2RRk374Iwiucoyl70YLCl4JPEGYHpAi7ziUq8uxLfe0K9bE
	+5dSsk0rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihidw-0000dv-Ux; Wed, 18 Dec 2019 23:22:12 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihidm-0000dA-Ux
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:22:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 15:22:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="365889145"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.143])
 ([10.7.153.143])
 by orsmga004.jf.intel.com with ESMTP; 18 Dec 2019 15:21:56 -0800
Subject: Re: [PATCH v11 04/14] dt-bindings: Add bindings document of Aspeed
 PECI adapter
To: Rob Herring <robh@kernel.org>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-5-jae.hyun.yoo@linux.intel.com>
 <20191218025702.GA18998@bogus>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <c203251d-125a-0d41-927d-0ce237622f71@linux.intel.com>
Date: Wed, 18 Dec 2019 15:21:56 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218025702.GA18998@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_152203_044357_2F4D55ED 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Randy Dunlap <rdunlap@infradead.org>,
 Tomer Maimon <tmaimon77@gmail.com>, devicetree@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Milton Miller II <miltonm@us.ibm.com>,
 Frederic Barrat <fbarrat@linux.vnet.ibm.com>, Pavel Machek <pavel@ucw.cz>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, openbmc@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Joel Stanley <joel@jms.id.au>, "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 David Kershner <david.kershner@unisys.com>, Guenter Roeck <linux@roeck-us.net>,
 Wu Hao <hao.wu@intel.com>, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Arnd Bergmann <arnd@arndb.de>,
 Philippe Ombredanne <pombredanne@nexb.com>, Johan Hovold <johan@kernel.org>,
 Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sagar Dharia <sdharia@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
 Ryan Chen <ryan_chen@aspeedtech.com>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 12/17/2019 6:57 PM, Rob Herring wrote:
> On Wed, Dec 11, 2019 at 11:46:14AM -0800, Jae Hyun Yoo wrote:
>> This commit adds bindings document of Aspeed PECI adapter for ASPEED
>> AST24xx/25xx/26xx SoCs.
>>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Joel Stanley <joel@jms.id.au>
>> Cc: Andrew Jeffery <andrew@aj.id.au>
>> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Cc: Jason M Biils <jason.m.bills@linux.intel.com>
>> Cc: Milton Miller II <miltonm@us.ibm.com>
>> Cc: Pavel Machek <pavel@ucw.cz>
>> Cc: Robin Murphy <robin.murphy@arm.com>
>> Cc: Ryan Chen <ryan_chen@aspeedtech.com>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> ---
>> Changes since v10:
>> - Changed documents format to DT schema format so I dropped all review tags.
>>    Please review it again.
>>
>>   .../devicetree/bindings/peci/peci-aspeed.yaml | 124 ++++++++++++++++++
>>   1 file changed, 124 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/peci/peci-aspeed.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/peci/peci-aspeed.yaml b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
>> new file mode 100644
>> index 000000000000..0f5c2993fe9b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
>> @@ -0,0 +1,124 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/peci/peci-aspeed.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Aspeed PECI Bus Device Tree Bindings
>> +
>> +maintainers:
>> +  - Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - aspeed,ast2400-peci
>> +      - aspeed,ast2500-peci
>> +      - aspeed,ast2600-peci
>> +
>> +  reg:
>> +    maxItems: 1
>> +
> 
>> +  "#address-cells":
>> +    # Required to define a client address.
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    # Required to define a client address.
>> +    const: 0
> 
> These 2 can be defined by the bus schema.

I see. I'll add these to peci-bus schema.

>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    description: |
> 
> You can drop the '|' if there's no formatting to preserve.

Will check this for all bindings in this patch set.

>> +      Clock source for PECI controller. Should reference the external
>> +      oscillator clock.
>> +    maxItems: 1
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +  clock-frequency:
>> +    # Operation frequency of PECI controller in units of Hz.
>> +    minimum: 187500
>> +    maximum: 24000000
>> +
>> +  msg-timing:
>> +    description: |
>> +      Message timing negotiation period. This value will determine the period
>> +      of message timing negotiation to be issued by PECI controller. The unit
>> +      of the programmed value is four times of PECI clock period.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - minimum: 0
>> +        maximum: 255
>> +        default: 1
>> +
>> +  addr-timing:
>> +    description: |
>> +      Address timing negotiation period. This value will determine the period
>> +      of address timing negotiation to be issued by PECI controller. The unit
>> +      of the programmed value is four times of PECI clock period.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - minimum: 0
>> +        maximum: 255
>> +        default: 1
>> +
>> +  rd-sampling-point:
>> +    description: |
>> +      Read sampling point selection. The whole period of a bit time will be
>> +      divided into 16 time frames. This value will determine the time frame
>> +      in which the controller will sample PECI signal for data read back.
>> +      Usually in the middle of a bit time is the best.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - minimum: 0
>> +        maximum: 15
>> +        default: 8
>> +
>> +  cmd-timeout-ms:
>> +    # Command timeout in units of ms.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - minimum: 1
>> +        maximum: 60000
>> +        default: 1000
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - interrupts
>> +  - clocks
>> +  - resets
>> +  - clock-frequency
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/ast2600-clock.h>
>> +    peci: bus@1e78b000 {
>> +        compatible = "simple-bus";
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0x0 0x1e78b000 0x60>;
> 
> You can drop this node in the examples.

I see. Will drop the parent node in this example.

Thanks a lot for your review!

-Jae

>> +
>> +        peci0: peci-bus@0 {
>> +            compatible = "aspeed,ast2600-peci";
>> +            reg = <0x0 0x100>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
>> +            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
>> +            resets = <&syscon ASPEED_RESET_PECI>;
>> +            clock-frequency = <24000000>;
>> +            msg-timing = <1>;
>> +            addr-timing = <1>;
>> +            rd-sampling-point = <8>;
>> +            cmd-timeout-ms = <1000>;
>> +        };
>> +    };
>> +...
>> -- 
>> 2.17.1
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
