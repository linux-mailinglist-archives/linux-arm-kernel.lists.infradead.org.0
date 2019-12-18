Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB3C1257C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wQ2mCqE9gTa/SgOfvk2WFsRauO4aHvh32DqCMkiH158=; b=a2Tz7d+Ob/YJKkyiVnLCuxTlN
	7I5ND9dhd+PKhzIG5Ep2ZdFTzKTxGs5cvdF6gPLPG3UoLWVikrStAZPZbVvyuNe544JZaoNMdVXNQ
	PkKHks6b7CZXbMDu+YY/D1xlbVG2o1rygBIIBlClV83gNg/oyFzFujDxMjDTIQVXnfVV9iGo6Ry41
	ksyBTIc+nN7NyQNzrYnlPllPepIK/QsnnMVIWWp8Y6gGn0KQQdwuiOU+phVSTZ9U1F79A3G73Q1Ha
	PBETEUju0DxUavNnAckMrdddnqYxdIR4FGX3SWFVtPeQbc+Ndllrt9ey1jsKN9OmXv93d3M4oL9qq
	jwYN5aNBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihilk-0004sZ-7X; Wed, 18 Dec 2019 23:30:16 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihilW-0004Hy-7X
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:30:03 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 15:30:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="365890260"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.143])
 ([10.7.153.143])
 by orsmga004.jf.intel.com with ESMTP; 18 Dec 2019 15:30:01 -0800
Subject: Re: [PATCH v11 07/14] dt-bindings: peci: add NPCM PECI documentation
To: Rob Herring <robh@kernel.org>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-8-jae.hyun.yoo@linux.intel.com>
 <20191218144206.GA26118@bogus>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <a86e253a-5ef6-f448-0c0b-15be0467a9ef@linux.intel.com>
Date: Wed, 18 Dec 2019 15:30:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218144206.GA26118@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_153002_295793_D6E491D1 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
 Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Eric Sandeen <sandeen@redhat.com>,
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
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 12/18/2019 6:42 AM, Rob Herring wrote:
> On Wed, Dec 11, 2019 at 11:46:17AM -0800, Jae Hyun Yoo wrote:
>> From: Tomer Maimon <tmaimon77@gmail.com>
>>
>> Added device tree binding documentation for Nuvoton BMC
>> NPCM Platform Environment Control Interface(PECI).
>>
>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>> ---
>> Changes since v10:
>> - Newly added in v11.
>>
>>   .../devicetree/bindings/peci/peci-npcm.yaml   | 102 ++++++++++++++++++
>>   1 file changed, 102 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/peci/peci-npcm.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/peci/peci-npcm.yaml b/Documentation/devicetree/bindings/peci/peci-npcm.yaml
>> new file mode 100644
>> index 000000000000..bcd5626e68e7
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/peci/peci-npcm.yaml
>> @@ -0,0 +1,102 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/peci/peci-npcm.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Nuvoton NPCM PECI Bus Device Tree Bindings
>> +
>> +maintainers:
>> +  - Tomer Maimon <tmaimon77@gmail.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: nuvoton,npcm750-peci # for the NPCM7XX BMC.
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  "#address-cells":
>> +    # Required to define a client address.
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    # Required to define a client address.
>> +    const: 0
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    # PECI reference clock.
>> +    maxItems: 1
>> +
>> +  cmd-timeout-ms:
>> +    # Command timeout in units of ms.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
> 
> You can drop this as standard units already have a type.

I'm assuming you pointed the timeout-ms as one of standard
units, right? I'll drop this ref.

>> +      - minimum: 1
>> +        maximum: 60000
>> +        default: 1000
>> +
>> +  pull-down:
>> +    description: |
>> +      Defines the PECI I/O internal pull down operation.
>> +        0: pull down always enable
>> +        1: pull down only during transactions.
>> +        2: pull down always disable.
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - minimum: 0
>> +        maximum: 2
>> +        default: 0
>> +
>> +  host-neg-bit-rate:
>> +    description: |
>> +      Define host negotiation bit rate divider.
>> +      the host negotiation bit rate calculate with formula:
>> +      clock frequency[Hz] / [4 x {host-neg-bit-rate + 1}]
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - minimum: 7
>> +        maximum: 31
>> +        default: 15
>> +
>> +  high-volt-range:
>> +    description: |
>> +      Adapts PECI I/O interface to voltage range.
>> +        0: PECI I/O interface voltage range of 0.8-1.06V (default)
>> +        1: PECI I/O interface voltage range of 0.95-1.26V
>> +    type: boolean
> 
> These last 4 properties are vendor specific or PECI common. For the
> former, needs a vendor prefix. For the latter, needs to be moved to
> common location.

These are Nuvoton vendor specifics. I'll add prefix for them and will
check Aspeed bindings too.

Thanks a lot for your review!

-Jae

>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - interrupts
>> +  - clocks
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/nuvoton,npcm7xx-clock.h>
>> +    peci: bus@100000 {
>> +        compatible = "simple-bus";
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0x0 0x100000 0x200>;
>> +
>> +        peci0: peci-bus@0 {
>> +            compatible = "nuvoton,npcm750-peci";
>> +            reg = <0x0 0x200>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
>> +            clocks = <&clk NPCM7XX_CLK_APB3>;
>> +            cmd-timeout-ms = <1000>;
>> +            pull-down = <0>;
>> +            host-neg-bit-rate = <15>;
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
