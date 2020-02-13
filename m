Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9F915BF16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 14:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5I6DqGTz5tOGZIrNlbK8VhW3L09tQhplsPPSSGmrwgI=; b=Z7sEFUbN6gXC/JFbhhl8sNK/6
	UnlX8Yxz307cVMLMnJz549GIbHQVSxU7hdmoIp8DQIA7wG3nOB3jXlLjHm0u1KxbzzUzt0xbiBJD/
	uJgYMSqQ9eAXZCsj4YNxyxyc+lHNil9R4TMQdY4ZAldflhp7Dzd3lSvE+xf7fUOkDcWUPBB1QvPZz
	n+xqVilUSLMR7UYvxZidKywQY96v3HHDR+TxQ5Ie3ImffVAVtFY4yz+sDl5/PEZZ1db4TzpM3eTxR
	ChxzWCyAtGWLVgcs/nK33ogT8NwnWHdT9Jwreht4j6NLWQE3TMNDqxTMbkjhAYEU0JhySJfXG6Vwu
	hLlq6L0CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ERI-00009R-P1; Thu, 13 Feb 2020 13:21:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ERA-000088-DQ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 13:21:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 958BA1FB;
 Thu, 13 Feb 2020 05:21:44 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20A203F6CF;
 Thu, 13 Feb 2020 05:21:44 -0800 (PST)
Subject: Re: [PATCH 1/2] bus: Add DT bindings for Integrator/AP logical modules
To: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <20200213124620.34982-1-linus.walleij@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8dc141ce-d866-6a4b-48af-68c259461b5b@arm.com>
Date: Thu, 13 Feb 2020 13:21:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200213124620.34982-1-linus.walleij@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_052148_544935_6F2225EC 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On 13/02/2020 12:46 pm, Linus Walleij wrote:
> This adds YAML device tree bindings for the Integrator/AP
> logical modules. These are plug-in tiles used typically for
> FPGA prototyping.

Linguistic nit: s/logical/logic/g (for both patches)

> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>   .../bindings/bus/arm,integrator-ap-lm.yaml    | 89 +++++++++++++++++++
>   1 file changed, 89 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> new file mode 100644
> index 000000000000..dfabfa466c05
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/arm,integrator-ap-lm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Integrator/AP Logical Module extension bus
> +
> +maintainers:
> +  - Linus Walleij <linusw@kernel.org>
> +
> +description: The Integrator/AP is a prototyping platform and as such has a
> +  site for stacking up to four logical modules (LM) designed specifically for
> +  use with this platform. A special system controller register can be read to
> +  determine if a logical module is connected at index 0, 1, 2 or 3. The logical
> +  module connector is described in this binding. The logical modules per se
> +  then have their own specific per-module bindings and they will be described
> +  as subnodes under this logical module extension bus.
> +
> +properties:
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 1
> +
> +  compatible:
> +    items:
> +      - const: arm,integrator-ap-lm
> +
> +  ranges: true
> +  dma-ranges: true
> +
> +patternProperties:
> +  "^.*@[0-3],[0-9a-f]+$":
> +    description: Nodes on the Logical Module bus represent logical modules
> +      and are named with index,relative-address. The first module is at
> +      0x00000000, the second at 0x10000000 and so on until the top of the
> +      memory of the system at 0xffffffff.
> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +
> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    external-bus@c0000000 {
> +      compatible = "arm,integrator-ap-lm";
> +      #address-cells = <2>;
> +      #size-cells = <1>;
> +      ranges = <0 0x0 0xc0000000 0x10000000>,
> +               <1 0x0 0xd0000000 0x10000000>,
> +               <2 0x0 0xe0000000 0x10000000>,
> +               <3 0x0 0xf0000000 0x10000000>;
> +      dma-ranges = <0 0x0 0xc0000000 0x10000000>,
> +               <1 0x0 0xd0000000 0x10000000>,
> +               <2 0x0 0xe0000000 0x10000000>,
> +               <3 0x0 0xf0000000 0x10000000>;

Is that dma-ranges mapping definitely appropriate? My impression from 
skimming the AP manual is that logic module masters would all see SDRAM 
through the 2GB-3GB alias region, independent of how their slaves are 
decoding incoming accesses. Even in the case of peer-to-peer accesses 
between logic modules, I'd imagine that the process of obtaining the 
target address to program would inherently go through the "ranges" 
translation and result in an 'absolute' PA anyway.

Robin.

> +      im-pd1@0,0 {
> +        compatible = "simple-bus";
> +        ranges = <0 0 0 0x10000000>;
> +        dma-ranges = <0 0 0 0x10000000>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        uart@c0100000 {
> +          compatible = "arm,pl011", "arm,primecell";
> +          reg = <0x00100000 0x1000>;
> +          interrupts-extended = <&impd1_vic 1>;
> +        };
> +
> +        impd1_vic: interrupt-controller@c3000000 {
> +          compatible = "arm,pl192-vic";
> +          interrupt-controller;
> +          #interrupt-cells = <1>;
> +          reg = <0x03000000 0x1000>;
> +          valid-mask = <0x00000bff>;
> +          interrupts-extended = <&pic 9>;
> +        };
> +      };
> +    };
> +
> +additionalProperties: false
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
