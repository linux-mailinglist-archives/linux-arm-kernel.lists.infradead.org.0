Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653AC1C5A6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X1VWXDkQ7vNzLHrqM4z2vyC1igNdmChd6I9FqAghd/8=; b=YUDpneHzkhiEAvbiRKnl2AY8r
	BP8n/cd/hYKrswFVA9LkAt3P1fYzrxrwO8HppxyY2sytNgBm5gFCJuzGRbr3W29BXk1HA0pLINXW9
	QfPR28r7m5Ux3VRuchRzkHR5utTJTUO0NBVP+hKMGsVx4zbUcD99BUeTHO2RcHfQ5xbZ2jOH7GzuG
	XhR63nL/k5HxR98YRt/iTU096KkIKpXeB/u1ui5IB8kOlB8sci2GPzLZs48rVabUGXB+ZZhp9ITTL
	NLAmPfWni0nn27suutNYWzzsy4gey+7jYUSroUa5iEtGVnGSGRchlTEj07Y3nw6rXGJnKnPlrpu3w
	NSF2KdW3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVz6V-00038u-AS; Tue, 05 May 2020 15:03:27 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVz4P-0002Id-A6
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:01:19 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045F1C1I031325;
 Tue, 5 May 2020 10:01:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588690872;
 bh=ZZFdDWeTsz/9HB3a494CXlZiESp5CsosOcPmdUx8LtM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=qcqHS2nY07j+wCv1M/3KTC3g2EnGG+DAHPwI6xaz6xzFjZBgJlPPcwr+SQsCA/4NA
 rcEv6GYE3ng2zJbpGIZH0eMfh1894sij91bQhmv3VM6BLU8xpGCrhGpg4ZECZoE48O
 mZcUTMmb6b4PUddR00Nq+YADYKiT1o42bxMCryA4=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045F1CHI017837;
 Tue, 5 May 2020 10:01:12 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 10:01:11 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 10:01:12 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045F16vw000319;
 Tue, 5 May 2020 10:01:08 -0500
Subject: Re: [PATCH net-next 1/7] dt-binding: ti: am65x: document common
 platform time sync cpts module
To: Rob Herring <robh@kernel.org>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-2-grygorii.strashko@ti.com>
 <20200505040419.GA8509@bogus>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <b8bb1076-e345-5146-62d3-e1da1d35da4f@ti.com>
Date: Tue, 5 May 2020 18:01:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505040419.GA8509@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080117_491763_86AE13C2 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/05/2020 07:04, Rob Herring wrote:
> On Fri, May 01, 2020 at 11:50:05PM +0300, Grygorii Strashko wrote:
>> Document device tree bindings for TI AM654/J721E SoC The Common Platform
>> Time Sync (CPTS) module. The CPTS module is used to facilitate host control
>> of time sync operations. Main features of CPTS module are:
>>    - selection of multiple external clock sources
>>    - 64-bit timestamp mode in ns with ppm and nudge adjustment.
>>    - control of time sync events via interrupt or polling
>>    - hardware timestamp of ext. events (HWx_TS_PUSH)
>>    - periodic generator function outputs (TS_GENFx)
>>    - PPS in combination with timesync router
>>    - Depending on integration it enables compliance with the IEEE 1588-2008
>> standard for a precision clock synchronization protocol, Ethernet Enhanced
>> Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
>> Measurement (PTM).
>>
>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>> ---
>>   .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   |   7 +
>>   .../bindings/net/ti,k3-am654-cpts.yaml        | 152 ++++++++++++++++++
>>   2 files changed, 159 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
>> index 78bf511e2892..0f3fde45e200 100644
>> --- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
>> +++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
>> @@ -144,6 +144,13 @@ patternProperties:
>>       description:
>>         CPSW MDIO bus.
>>   
>> +  "^cpts$":

ok

> 
> Fixed strings go under 'properties'.
> 
>> +    type: object
>> +    allOf:
>> +      - $ref: "ti,am654-cpts.yaml#"
>> +    description:
>> +      CPSW Common Platform Time Sync (CPTS) module.
>> +
>>   required:
>>     - compatible
>>     - reg
>> diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
>> new file mode 100644
>> index 000000000000..1b535d41e5c6
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
>> @@ -0,0 +1,152 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/net/ti,am654-cpts.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: The TI AM654x/J721E Common Platform Time Sync (CPTS) module Device Tree Bindings
>> +
>> +maintainers:
>> +  - Grygorii Strashko <grygorii.strashko@ti.com>
>> +  - Sekhar Nori <nsekhar@ti.com>
>> +
>> +description: |+
>> +  The TI AM654x/J721E CPTS module is used to facilitate host control of time
>> +  sync operations.
>> +  Main features of CPTS module are
>> +  - selection of multiple external clock sources
>> +  - Software control of time sync events via interrupt or polling
>> +  - 64-bit timestamp mode in ns with PPM and nudge adjustment.
>> +  - hardware timestamp push inputs (HWx_TS_PUSH)
>> +  - timestamp counter compare output (TS_COMP)
>> +  - timestamp counter bit output (TS_SYNC)
>> +  - periodic Generator function outputs (TS_GENFx)
>> +  - Ethernet Enhanced Scheduled Traffic Operations (CPTS_ESTFn) (TSN)
>> +  - external hardware timestamp push inputs (HWx_TS_PUSH) timestamping
>> +
>> +   Depending on integration it enables compliance with the IEEE 1588-2008
>> +   standard for a precision clock synchronization protocol, Ethernet Enhanced
>> +   Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
>> +   Measurement (PTM).
>> +
>> +  TI AM654x/J721E SoCs has several similar CPTS modules integrated into the
>> +  different parts of the system which could be synchronized with each other
>> +  - Main CPTS
>> +  - MCU CPSW CPTS with IEEE 1588-2008 support
>> +  - PCIe subsystem CPTS for PTM support
>> +
>> +  Depending on CPTS module integration and when CPTS is integral part of
>> +  another module (MCU CPSW for example) "compatible" and "reg" can
>> +  be omitted - parent module is fully responsible for CPTS enabling and
>> +  configuration.
> 
> That's fine, but you should still have compatible and reg.

I'll add reg as below. But compatible is an issue, because
k3-am654-cpsw-nuss call of_platform_populate() to create mdio device.
But for CPTS I do not want to create device as k3-am654-cpsw-nuss uses direct
function calls to CPTS.

Will it be correct to switch to of_platform_device_create() instead of
of_platform_populate()?

> 
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^cpts(@.*|-[0-9a-f])*$"
>> +
>> +  compatible:
>> +    oneOf:
>> +      - const: ti,am65-cpts
>> +      - const: ti,j721e-cpts
>> +
>> +  reg:
>> +    maxItems: 1
>> +    description:
>> +       The physical base address and size of CPTS IO range
> 
> Wrong indentation.
> 
>> +
>> +  reg-names:
>> +    items:
>> +      - const: cpts
> 
> Don't really need *-names when there's only one and you haven't picked
> very meaningful names.

Could I keep it if you don't mind?

> 
>> +
>> +  clocks:
>> +    description: CPTS reference clock
>> +
>> +  clock-names:
>> +    items:
>> +      - const: cpts
>> +
>> +  interrupts-extended:
> 
> Use 'interrupts' here, the tooling will fixup things to allow both.
> 

[...]

>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +    cpts@310d0000 {
>> +         compatible = "ti,am65-cpts";
>> +         reg = <0x0 0x310d0000 0x0 0x400>;
>> +         reg-names = "cpts";
>> +         clocks = <&main_cpts_mux>;
>> +         clock-names = "cpts";
>> +         interrupts-extended = <&k3_irq 163 0 IRQ_TYPE_LEVEL_HIGH>;
>> +         interrupt-names = "cpts";
>> +         ti,cpts-periodic-outputs = <6>;
>> +         ti,cpts-ext-ts-inputs = <8>;
>> +
>> +         main_cpts_mux: refclk-mux {
>> +               #clock-cells = <0>;
>> +               clocks = <&k3_clks 118 5>, <&k3_clks 118 11>,
>> +                        <&k3_clks 157 91>, <&k3_clks 157 77>,
>> +                        <&k3_clks 157 102>, <&k3_clks 157 80>,
>> +                        <&k3_clks 120 3>, <&k3_clks 121 3>;
>> +               assigned-clocks = <&main_cpts_mux>;
>> +               assigned-clock-parents = <&k3_clks 118 11>;
>> +         };
>> +    };
>> +  - |
>> +
>> +    cpts {
>> +             clocks = <&k3_clks 18 2>;
>> +             clock-names = "cpts";
>> +             interrupts-extended = <&gic500 GIC_SPI 858 IRQ_TYPE_LEVEL_HIGH>;
>> +             interrupt-names = "cpts";
>> +             ti,cpts-ext-ts-inputs = <4>;
>> +             ti,cpts-periodic-outputs = <2>;
> 
> How is this example accessed?

I'll move it in .../bindings/net/ti,k3-am654-cpsw-nuss.yaml as below

--- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
@@ -143,7 +143,7 @@ patternProperties:
      description:
        CPSW MDIO bus.
  
-  "^cpts$":
+  "^cpts(@.*|-[0-9a-f])*$":
      type: object
      allOf:
        - $ref: "ti,am654-cpts.yaml#"
@@ -170,6 +170,8 @@ examples:
      #include <dt-bindings/pinctrl/k3.h>
      #include <dt-bindings/soc/ti,sci_pm_domain.h>
      #include <dt-bindings/net/ti-dp83867.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
  
      mcu_cpsw: ethernet@46000000 {
          compatible = "ti,am654-cpsw-nuss";
@@ -228,4 +230,14 @@ examples:
                      ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
                };
          };
+
+       cpts@3d000 {
+             reg = <0x0 0x3d000 0x0 0x400>;
+             clocks = <&k3_clks 18 2>;
+             clock-names = "cpts";
+             interrupts-extended = <&gic500 GIC_SPI 858 IRQ_TYPE_LEVEL_HIGH>;
+             interrupt-names = "cpts";
+             ti,cpts-ext-ts-inputs = <4>;
+             ti,cpts-periodic-outputs = <2>;
+       };
      };
diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
index 1b535d41e5c6..1f7fdbab3191 100644
--- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
@@ -140,13 +140,3 @@ examples:
                 assigned-clock-parents = <&k3_clks 118 11>;
           };
      };
-  - |
-
-    cpts {
-             clocks = <&k3_clks 18 2>;
-             clock-names = "cpts";
-             interrupts-extended = <&gic500 GIC_SPI 858 IRQ_TYPE_LEVEL_HIGH>;
-             interrupt-names = "cpts";
-             ti,cpts-ext-ts-inputs = <4>;
-             ti,cpts-periodic-outputs = <2>;
-    };




-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
