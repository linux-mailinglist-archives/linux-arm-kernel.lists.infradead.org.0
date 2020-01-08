Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945D0133C80
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GH5260ezVdoVygEoEZ3Fi9pyOYf1zH/8xW7EvMPrHZc=; b=oVnbxq4Ht9YVWp
	dwTFc9LRKKByhPg1A01CCvwnQgCvL6NoVVSSRJCvgZ/m9i6NVN+rVt5nJYArli+y/pTZrMABYORKa
	UkAbotlW+7uwDHebWzGkbiIfZ1/tFAnT2Qo5uOsjo/HZlsi/EgycOwcYgnc25T1JMRU1EayH2r71s
	775uSj5p9SCPExqzZBkLeWn6zNGTuUuYoLI301xbAHrwBW5kdoiGV17fxCogqFv4sx18+N4pP3yBo
	kjPl7MR66o5gRdevZ1QesZiACQQF7l4DO+hoeSRvz5GRzgSKC3On6fOQKPBOd6ITTzucscuSeLXML
	83Vfz71V6nOFJvOrVcKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6Cj-0000QN-Fa; Wed, 08 Jan 2020 07:56:37 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6Cb-0000PK-K1
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:56:31 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0087uIfs049960;
 Wed, 8 Jan 2020 01:56:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578470179;
 bh=KhpU0u2bEtnbSBp/blmXJmSlFWzazsyzwOWjBb3p9KM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=pSo54nAUYeoghyNG2Vp0JJ4+ERQGPp7VcdfLFMh/PGgBvfSTc/km0YN787idyLnrU
 +BElqlIjyPCsML+/9157zyIDMEptsY4k5CRUOKZSjjGT5YrRTHpcxm5PoVRlncAG6R
 kR2N8SO9eFWv50Y3nayWz1aT1g5eyAjiWZXFxMa4=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0087uIvj092817
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 8 Jan 2020 01:56:18 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 8 Jan
 2020 01:56:18 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 8 Jan 2020 01:56:18 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0087uG3g067723;
 Wed, 8 Jan 2020 01:56:16 -0600
Subject: Re: [PATCH v2] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
To: Rob Herring <robh@kernel.org>, Maxime Ripard <maxime@cerno.tech>
References: <20200103152824.47383-1-maxime@cerno.tech>
 <20200104221321.GA11672@bogus> <20200106092724.pi2kbui7zayrhhzi@gilmour.lan>
 <20200106215129.GB11672@bogus>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <b0777c04-c21c-3737-7957-4dda37b85838@ti.com>
Date: Wed, 8 Jan 2020 13:28:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200106215129.GB11672@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_235629_738595_7113588C 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/01/20 3:21 AM, Rob Herring wrote:
> On Mon, Jan 06, 2020 at 10:27:24AM +0100, Maxime Ripard wrote:
>> Hi Rob,
>>
>> On Sat, Jan 04, 2020 at 03:13:21PM -0700, Rob Herring wrote:
>>> On Fri, Jan 03, 2020 at 04:28:24PM +0100, Maxime Ripard wrote:
>>>> The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
>>>> with a matching Device Tree binding.
>>>>
>>>> Now that we have the DT validation in place, let's convert the device tree
>>>> bindings for that controller over to a YAML schemas.
>>>>
>>>> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
>>>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>>>>
>>>> ---
>>>>
>>>> Changes from v1:
>>>>   - Added r-b tag from chen-yu
>>>> ---
>>>>  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
>>>>  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
>>>>  2 files changed, 135 insertions(+), 37 deletions(-)
>>>>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
>>>>  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
>>>> new file mode 100644
>>>> index 000000000000..ded7d6f0a119
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
>>>> @@ -0,0 +1,135 @@
>>>> +# SPDX-License-Identifier: GPL-2.0
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Allwinner A80 USB PHY Device Tree Bindings
>>>> +
>>>> +maintainers:
>>>> +  - Chen-Yu Tsai <wens@csie.org>
>>>> +  - Maxime Ripard <mripard@kernel.org>
>>>> +
>>>> +properties:
>>>> +  "#phy-cells":
>>>> +    const: 0
>>>> +
>>>> +  compatible:
>>>> +    const: allwinner,sun9i-a80-usb-phy
>>>> +
>>>> +  reg:
>>>> +    maxItems: 1
>>>> +
>>>> +  clocks:
>>>> +    anyOf:
>>>> +      - description: Main PHY Clock
>>>> +
>>>> +      - items:
>>>> +          - description: Main PHY clock
>>>> +          - description: HSIC 12MHz clock
>>>> +          - description: HSIC 480MHz clock
>>>
>>> Rather than anyOf, just 'minItems: 1' would work here. Though I guess
>>> this disallows 2 items.
>>
>> Yeah, 2 items is not allowed so I wanted to prevent that.
>>
>>>> +
>>>> +  clock-names:
>>>> +    oneOf:
>>>> +      - const: phy
>>>> +
>>>> +      - items:
>>>> +          - const: phy
>>>> +          - const: hsic_12M
>>>> +          - const: hsic_480M
>>>> +
>>>> +  resets:
>>>> +    anyOf:
>>>> +      - description: Normal USB PHY reset
>>>> +
>>>> +      - items:
>>>> +          - description: Normal USB PHY reset
>>>> +          - description: HSIC Reset
>>>> +
>>>> +  reset-names:
>>>> +    oneOf:
>>>> +      - const: phy
>>>> +
>>>> +      - items:
>>>> +          - const: phy
>>>> +          - const: hsic
>>>> +
>>>> +  phy_type:
>>>> +    const: hsic
>>>> +    description:
>>>> +      When absent, the PHY type will be assumed to be normal USB.
>>>> +
>>>> +  phy-supply:
>>>> +    description:
>>>> +      Regulator that powers VBUS
>>>> +
>>>> +required:
>>>> +  - "#phy-cells"
>>>> +  - compatible
>>>> +  - reg
>>>> +  - clocks
>>>> +  - clock-names
>>>> +  - resets
>>>> +  - reset-names
>>>> +
>>>> +additionalProperties: false
>>>> +
>>>> +if:
>>>> +  properties:
>>>> +    phy_type:
>>>> +      const: hsic
>>>> +
>>>> +  required:
>>>> +    - phy_type
>>>> +
>>>> +then:
>>>> +  properties:
>>>> +    clocks:
>>>> +      maxItems: 3
>>>> +
>>>> +    clock-names:
>>>> +      maxItems: 3
>>>> +
>>>> +    resets:
>>>> +      maxItems: 2
>>>> +
>>>> +    reset-names:
>>>> +      maxItems: 2
>>>
>>> Do you intend that only a single item is allowed when not HSIC? If so,
>>> that's not what is happening.
>>
>> That's intentional indeed, the former binding was making the hsic
>> clocks and resets mandatory when the phy was in HSIC mode, but only
>> recommending listing them otherwise. Maybe we can change that in the
>> future, but that seems out of scope for a conversion.
> 
> Okay. In that case,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

merged, thanks!

-Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
