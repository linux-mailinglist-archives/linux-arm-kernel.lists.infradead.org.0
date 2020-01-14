Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCC813A275
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzcNwbi+weg7HD5DpgcEstZRxYemFS5Yozt2vkX5gVw=; b=fRuciApXh6ZURR
	n//xtWdT6tO4XS5WCOg48+Tx1YimC7+EgJxZuolH6q+ZxI6fgZPHzE91vvC6l82eHZeTD3ipQ0miQ
	I4F+/Dl1Rq9puh7Se5sJxjCC5bURSkqB8+T7HQAGYkndS8OrqenCDukWiCPNrhUJ16EzIPuFRSkqS
	8inKzhAM+qJNr/NcrWCnJcxw+CVwx32LDCkJy8s+p1eqn8LE0vfKEX/LwBTTq4Q8g5ixHKe2vuVgR
	duZ2O5A9UAxP270VaK2RLTiG+30nbRmnUpghlGc+/z/CsGUBygfqdcTrtQy3Ja7sb/TGHXFiTrklJ
	ERrBgPiNnP4WjqistFrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHBp-0000uP-OI; Tue, 14 Jan 2020 08:04:41 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHBb-0000u3-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 08:04:29 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00E84Nnt023901;
 Tue, 14 Jan 2020 02:04:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578989063;
 bh=cbHr/XtYl1ScNrcV2l/fytPkg8e7XLp+hKaJC5xcA5M=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Qpn+Nc+hZAYmCuYJmhvuT3utn0oZSLH5/pT4T5QQK5Ayyz7T6IG9dp6ab1FPifyMI
 ixt3kOM9ESJNfQNxUskldwRJnaEK5yb2UhAofqAE5qW4UHGJHMZKCs9T486LB4PUOc
 qyjHJRdvdVB44GMF7i9b51YzGkKLKVaSHNgg5CqQ=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00E84Nmo048181
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Jan 2020 02:04:23 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 14
 Jan 2020 02:04:23 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 14 Jan 2020 02:04:23 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00E84JKi050975;
 Tue, 14 Jan 2020 02:04:21 -0600
Subject: Re: [PATCH v5 13/14] dt-bindings: phy: Document WIZ (SERDES wrapper)
 bindings
To: Rob Herring <robh+dt@kernel.org>
References: <20191216095712.13266-14-kishon@ti.com>
 <20200102095631.1165-1-kishon@ti.com>
 <CAL_JsqJVmyXirczaWJb4hCsnVjXYt6ki22sBLe5D0240x4Xtzw@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <41a76196-827b-52dc-5d72-46b8e21f2107@ti.com>
Date: Tue, 14 Jan 2020 13:36:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJVmyXirczaWJb4hCsnVjXYt6ki22sBLe5D0240x4Xtzw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_000428_099850_3F5CD1EE 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jyri Sarha <jsarha@ti.com>, Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 13/01/20 11:29 PM, Rob Herring wrote:
> On Thu, Jan 2, 2020 at 3:54 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> Add DT binding documentation for WIZ (SERDES wrapper). WIZ is *NOT* a
>> PHY but a wrapper used to configure some of the input signals to the
>> SERDES. It is used with both Sierra(16G) and Torrent(10G) serdes.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> [jsarha@ti.com: Add separate compatible for Sierra(16G) and Torrent(10G)
>>  SERDES]
>> Signed-off-by: Jyri Sarha <jsarha@ti.com>
>> ---
>> Changes from v4:
>> *) Fixed the indentation as suggested by Rob v4
>>
>>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 204 ++++++++++++++++++
>>  1 file changed, 204 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
>> new file mode 100644
>> index 000000000000..e010ea46b88d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
>> @@ -0,0 +1,204 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +# Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/phy/ti,phy-j721e-wiz.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +title: TI J721E WIZ (SERDES Wrapper)
>> +
>> +maintainers:
>> +  - Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - ti,j721e-wiz-16g
>> +      - ti,j721e-wiz-10g
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 3
>> +    description: clock-specifier to represent input to the WIZ
>> +
>> +  clock-names:
>> +    items:
>> +      - const: fck
>> +      - const: core_ref_clk
>> +      - const: ext_ref_clk
>> +
>> +  num-lanes:
>> +    minimum: 1
>> +    maximum: 4
>> +
>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 1
>> +
>> +  "#reset-cells":
>> +    const: 1
>> +
>> +  ranges: true
>> +
>> +  assigned-clocks:
>> +    maxItems: 2
>> +
>> +  assigned-clock-parents:
>> +    maxItems: 2
>> +
>> +patternProperties:
>> +  "^pll[0|1]-refclk$":
>> +    type: object
>> +    description: |
>> +      WIZ node should have subnodes for each of the PLLs present in
>> +      the SERDES.
>> +    properties:
>> +      clocks:
>> +        maxItems: 2
>> +        description: Phandle to clock nodes representing the two inputs to PLL.
>> +
>> +      "#clock-cells":
>> +        const: 0
>> +
>> +      assigned-clocks:
>> +        maxItems: 1
>> +
>> +      assigned-clock-parents:
>> +        maxItems: 1
>> +
>> +    required:
>> +      - clocks
>> +      - "#clock-cells"
>> +      - assigned-clocks
>> +      - assigned-clock-parents
>> +
>> +  "^cmn-refclk1?-dig-div$":
>> +    type: object
>> +    description:
>> +      WIZ node should have subnodes for each of the PMA common refclock
>> +      provided by the SERDES.
>> +    properties:
>> +      clocks:
>> +        maxItems: 1
>> +        description: Phandle to the clock node representing the input to the
>> +          divider clock.
>> +
>> +      "#clock-cells":
>> +        const: 0
>> +
>> +    required:
>> +      - clocks
>> +      - "#clock-cells"
>> +
>> +  "^refclk-dig$":
>> +    type: object
>> +    description: |
>> +      WIZ node should have subnode for refclk_dig to select the reference
>> +      clock source for the reference clock used in the PHY and PMA digital
>> +      logic.
>> +    properties:
>> +      clocks:
>> +        maxItems: 4
>> +        description: Phandle to four clock nodes representing the inputs to
>> +          refclk_dig
>> +
>> +      "#clock-cells":
>> +        const: 0
>> +
>> +      assigned-clocks:
>> +        maxItems: 1
>> +
>> +      assigned-clock-parents:
>> +        maxItems: 1
>> +
>> +    required:
>> +      - clocks
>> +      - "#clock-cells"
>> +      - assigned-clocks
>> +      - assigned-clock-parents
>> +
>> +  "^serdes@[0-9a-f]+$":
>> +    type: object
>> +    description: |
>> +      WIZ node should have '1' subnode for the SERDES. It could be either
>> +      Sierra SERDES or Torrent SERDES. Sierra SERDES should follow the
>> +      bindings specified in
>> +      Documentation/devicetree/bindings/phy/phy-cadence-sierra.txt
>> +      Torrent SERDES should follow the bindings specified in
>> +      Documentation/devicetree/bindings/phy/phy-cadence-dp.txt
>> +
>> +required:
>> +  - compatible
>> +  - power-domains
>> +  - clocks
>> +  - clock-names
>> +  - num-lanes
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - "#reset-cells"
>> +  - ranges
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
>> +
>> +    wiz@5000000 {
>> +           compatible = "ti,j721e-wiz-16g";
>> +           #address-cells = <1>;
>> +           #size-cells = <1>;
>> +           power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
>> +           clocks = <&k3_clks 292 5>, <&k3_clks 292 11>, <&dummy_cmn_refclk>;
>> +           clock-names = "fck", "core_ref_clk", "ext_ref_clk";
>> +           assigned-clocks = <&k3_clks 292 11>, <&k3_clks 292 0>;
>> +           assigned-clock-parents = <&k3_clks 292 15>, <&k3_clks 292 4>;
>> +           num-lanes = <2>;
>> +           #reset-cells = <1>;
>> +           ranges = <0x5000000 0x0 0x5000000 0x10000>;
> 
> This fails in linux-next:
> 
> Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.example.dts:30.16-59:
> Warning (ranges_format): /example-0/wiz@50
> 00000:ranges: "ranges" property has invalid length (16 bytes) (parent
> #address-cells == 1, child #address-cells == 1, #
> size-cells == 1)
> 
> Please fix.

Fixed and pushed.

Thanks
Kishon
> 
> Rob
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
