Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB805FCBAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 18:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHh4y/Hr5wPFul6odTIS8jD75UkCP7I2N5Xhyu9qtnE=; b=c76pOUymML7GH5
	SPmTf6L+KlXaiiHgjloF9Fc5hiBuvmuQwMV5vq+Ndd77OKaZgLZM/cMTCzolNP3QZnh3/f9+2lGwy
	KcxbVNps/ChjpUlyKldWR7WEeDalMqC/96q9uOAQ3/qmSw0VWjPDvSN3EAaECRfBigkpRrQVg4c0i
	Ql4Ag6SHsiW74LHU6H/J6pMFqmFEae7eOTCWXCieW8emKZ2O7vqmd1KmrFyBgo0KlNJGoaPAuNV0m
	7oc70hg4n90ppak0khbXxRzCneDIPAxajNvPHwtNk++gLeArb9erTS2qwjsBDGD0Fg+HPSLX+JtGx
	BThwHgtk4MGExfRJBQ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVIlu-0001MT-St; Thu, 14 Nov 2019 17:19:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVIla-0001FW-TE
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 17:18:48 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D15A2072C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 17:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573751925;
 bh=ocz46gTCP/NUGPTiVuVJqGTutFbDRHy1wr+ZIMUnIJY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FEltqMdfOa5s52eVq2HDJrCWY63pFr+eHadBHw1DVPLEAbhcAhRYFLbOR4NBVLJOA
 U6JM/AfIJ9xq46+VbVjsuRKMHAsC4jkyCbI2duqLtUcj+iTIWEqphmPj10YvKLY7qM
 j6fMRfMgAtoWRJIXpIcU0JimN8FIb592KhgMDKjw=
Received: by mail-qk1-f169.google.com with SMTP id 71so5671868qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 09:18:45 -0800 (PST)
X-Gm-Message-State: APjAAAUsEn+v37C4Rbv/ni2tCPgr8WDSnbQA5N5+//cPBVpn7CfvJHTC
 ocjBj7KZUEUNLIc9fj5xg1BNr7/ExOrMDygwHw==
X-Google-Smtp-Source: APXvYqydolbw7U1IFwsmCdguELeny4+5hB8lSGa1lqgOoHuaINM81p54+J/thh41N+0dOQJlAExq8K8modx+6jO6l6Y=
X-Received: by 2002:a37:30b:: with SMTP id 11mr8607360qkd.254.1573751924338;
 Thu, 14 Nov 2019 09:18:44 -0800 (PST)
MIME-Version: 1.0
References: <20191114164104.22782-1-alexandre.torgue@st.com>
In-Reply-To: <20191114164104.22782-1-alexandre.torgue@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 14 Nov 2019 11:18:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKJZwJ0MyRp37Y-F0ujPdVEKARd8qcUCN1xmawpkiffLg@mail.gmail.com>
Message-ID: <CAL_JsqKJZwJ0MyRp37Y-F0ujPdVEKARd8qcUCN1xmawpkiffLg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert stm32-exti to
 json-schema
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_091847_042571_7DBE9C71 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 10:41 AM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
> Convert the STM32 external interrupt controller (EXTI) binding to DT
> schema format using json-schema.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> ---
>
> Hi Rob,
>
> I planned to use "additionalProperties: false" for this schema but as I add a
> property under condition, I got an error (property added under contion seems
> to be detected as an "additional" property and then error is raised).
>
> Is there a way to fix that ?

See below.

>
> regards
> Alex
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt
> deleted file mode 100644
> index cd01b2292ec6..000000000000
> --- a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -STM32 External Interrupt Controller
> -
> -Required properties:
> -
> -- compatible: Should be:
> -    "st,stm32-exti"
> -    "st,stm32h7-exti"
> -    "st,stm32mp1-exti"
> -- reg: Specifies base physical address and size of the registers
> -- interrupt-controller: Indentifies the node as an interrupt controller
> -- #interrupt-cells: Specifies the number of cells to encode an interrupt
> -  specifier, shall be 2
> -- interrupts: interrupts references to primary interrupt controller
> -  (only needed for exti controller with multiple exti under
> -  same parent interrupt: st,stm32-exti and st,stm32h7-exti)
> -
> -Optional properties:
> -
> -- hwlocks: reference to a phandle of a hardware spinlock provider node.
> -
> -Example:
> -
> -exti: interrupt-controller@40013c00 {
> -       compatible = "st,stm32-exti";
> -       interrupt-controller;
> -       #interrupt-cells = <2>;
> -       reg = <0x40013C00 0x400>;
> -       interrupts = <1>, <2>, <3>, <6>, <7>, <8>, <9>, <10>, <23>, <40>, <41>, <42>, <62>, <76>;
> -};
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
> new file mode 100644
> index 000000000000..39be37e1e532
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: GPL-2.0

If ST has copyright on the old binding, can you add BSD here.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/st,stm32-exti.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STM32 External Interrupt Controller Device Tree Bindings
> +
> +maintainers:
> +  - Alexandre Torgue <alexandre.torgue@st.com>
> +  - Ludovic Barre <ludovic.barre@st.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +        - enum:
> +          - st,stm32-exti
> +          - st,stm32h7-exti
> +      - items:
> +        - enum:
> +          - st,stm32mp1-exti
> +        - const: syscon
> +
> +  "#interrupt-cells":
> +    const: 2
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +  hwlocks:
> +    maxItems: 1
> +    description:
> +      Reference to a phandle of a hardware spinlock provider node.
> +
> +required:
> +  - "#interrupt-cells"
> +  - compatible
> +  - reg
> +  - interrupt-controller
> +
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - st,stm32-exti
> +              - st,stm32h7-exti
> +    then:
> +      properties:
> +        interrupts:
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/uint32-array

Standard property, doesn't need a type. You just need 'maxItems' or an
'items' list if the index is not meaningful. This appears to be the
former case.

> +          description:
> +            Interrupts references to primary interrupt controller
> +      required:
> +        - interrupts

You can move the definition to the main section as you only need
'required' here. That should fix your additionalProperties issue.

In hindsight, the mp1 case probably should have used interrupt-map.

> +
> +examples:
> +  - |
> +    //Example 1
> +    exti1: interrupt-controller@5000d000 {
> +        compatible = "st,stm32mp1-exti", "syscon";
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +        reg = <0x5000d000 0x400>;
> +    };
> +
> +    //Example 2
> +    exti2: interrupt-controller@40013c00 {
> +        compatible = "st,stm32-exti";
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +        reg = <0x40013C00 0x400>;
> +        interrupts = <1>, <2>, <3>, <6>, <7>, <8>, <9>, <10>, <23>, <40>, <41>, <42>, <62>, <76>;
> +    };
> +
> +...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
