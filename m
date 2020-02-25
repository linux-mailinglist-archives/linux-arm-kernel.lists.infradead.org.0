Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D733C16ED8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68VRkYC6oMRUEZ+lZha1sZJC/KYiKvmBi2/IQiN2wys=; b=ol7Xmd1tafXBTN
	BHbwdj3QY6YxyJg6RO+W1//AHt73Jd5AELTO1u/7mfCT+kxpU4a5eiz635EtoqK75j8x6sPn1o+3S
	V8gwE8D/8rdJ2NCctvhEBOqDK7mWHL70PTcIPkN14o2zlEZ24FxPtioECH5x9W9Zy8BCJqtn3SQIk
	YUe/sUQwvHGb0/sYtvCQmTkIUcrAfeInqRkWWY4SlJmliTJR+naa5G1/7+PX6oW/b9stbJpg9sSrQ
	Z6IkrFanDT/3fZDutqobreVFyQ43wtK5ndmaXNDXpLKF4kjGJIB55V0attRpSjG0JNnQecW+SVMur
	pzL4Y0G0Sd6G46Ou9YUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eg0-00017n-1I; Tue, 25 Feb 2020 18:11:24 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6efs-00017U-76
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 18:11:17 +0000
Received: by mail-ot1-f66.google.com with SMTP id r16so425242otd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 10:11:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kLYxrjCSIrvwr8R9F0r9sUCzkoOdlkpR4nvrMhQsxSk=;
 b=GjLgO+gnzhN3z4e3vwAKU4UIhcqlMJFjBSurfmYlHqS+hQe5qo4At3vh91K7gezVm8
 gbEWyOxT0LtnTIHgJf6505pbRRB35kBZRhyP6sfV+j6oKp9pfzqaaq+0i9K4ElKJ3WpY
 xXX/35vD8I/IzWmeZ33/k6ku/mPG/Sqi5hKaISkkaoIDQkVp2DfzWOAApGiVxKOkH8Dk
 a/rLppxzpGEPMrDArTJ3jhywXrfhhUZAr63GyBH0Ri3y4ole8y09qEkevkOZe6BqeMXY
 3OSg4yB/7XpsTiCjZotsj47azvt6lfZEk4UdO8NQUPWt5Y+iHFkfBre+kKvyvNI/ntlo
 bbug==
X-Gm-Message-State: APjAAAXxZo4M4GcqZZi4IhzPYp/fF9JjC3yHfHoEXqZZyCGp+r5OV6q5
 zc+9Fn/6xJaky2XvuxshY2i0/Mo=
X-Google-Smtp-Source: APXvYqyc+26w8sK7Uzc0BxJvFH3kWVvKtOCAA09eVdjhDvUtHWVC6pi5Gw40zaZKtvYwrirh3AJMjA==
X-Received: by 2002:a9d:7410:: with SMTP id n16mr47046974otk.23.1582654275254; 
 Tue, 25 Feb 2020 10:11:15 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 32sm5906620ott.38.2020.02.25.10.11.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:11:14 -0800 (PST)
Received: (nullmailer pid 26920 invoked by uid 1000);
 Tue, 25 Feb 2020 18:11:14 -0000
Date: Tue, 25 Feb 2020 12:11:14 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2 v2] bus: Add DT bindings for Integrator/AP logic
 modules
Message-ID: <20200225181114.GA16296@bogus>
References: <20200219150833.126058-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219150833.126058-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101116_257508_3F6C5325 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 04:08:33PM +0100, Linus Walleij wrote:
> This adds YAML device tree bindings for the Integrator/AP
> logic modules. These are plug-in tiles used typically for
> FPGA prototyping.
> 
> Cc: devicetree@vger.kernel.org
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Fix Logical->Logic spelling error
> - Set generic names for bus and serial
> - Just map the addresses 1:1 and use empty ranges, as the
>   LM's don't really translate the address.
> - Provide proper DMA ranges: the LM modules see the RAM at
>   the system-wide alias @80000000 rather than 1:1.
> - Drop the reg from the bus node (we just need the ranges)
> - Make the regexp for the bus node such that @address is
>   optional, as we don't require any reg on the node
> ---
>  .../bindings/bus/arm,integrator-ap-lm.yaml    | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> new file mode 100644
> index 000000000000..5db5267410a6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/arm,integrator-ap-lm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Integrator/AP Logic Module extension bus
> +
> +maintainers:
> +  - Linus Walleij <linusw@kernel.org>
> +
> +description: The Integrator/AP is a prototyping platform and as such has a
> +  site for stacking up to four logic modules (LM) designed specifically for
> +  use with this platform. A special system controller register can be read to
> +  determine if a logic module is connected at index 0, 1, 2 or 3. The logic
> +  module connector is described in this binding. The logic modules per se
> +  then have their own specific per-module bindings and they will be described
> +  as subnodes under this logic module extension bus.
> +
> +properties:
> +  "#address-cells":
> +    const: 1
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
> +  "^bus(@[0-9a-f]*)?$":
> +    description: Nodes on the Logic Module bus represent logic modules
> +      and are named with bus. The first module is at 0xc0000000, the second
> +      at 0xd0000000 and so on until the top of the memory of the system at
> +      0xffffffff. All information about the memory used by the module is
> +      in ranges and dma-ranges.
> +    type: object
> +
> +    required:
> +      - compatible
> +
> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    bus@c0000000 {
> +      compatible = "arm,integrator-ap-lm";
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges;

ranges = <0xc0000000 0xc0000000 0x10000000>;

Because you have a unit-address.

> +      dma-ranges;
> +
> +      bus {

bus@c0000000

Though, now I'm wondering this shouldn't just be 1 level with:

compatible = "arm,integrator-ap-lm", "simple-bus";

> +        compatible = "simple-bus";
> +        ranges = <0x00000000 0xc0000000 0x10000000>;
> +        /* The Logic Modules sees the Core Module 0 RAM @80000000 */
> +        dma-ranges = <0x00000000 0x80000000 0x10000000>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        serial@00100000 {

Drop leading 0s.

> +          compatible = "arm,pl011", "arm,primecell";
> +          reg = <0x00100000 0x1000>;
> +          interrupts-extended = <&impd1_vic 1>;
> +        };
> +
> +        impd1_vic: interrupt-controller@03000000 {

Drop leading 0s.

Try 'make W=1 dt_binding_check' as that will warn on all these things.

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
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
