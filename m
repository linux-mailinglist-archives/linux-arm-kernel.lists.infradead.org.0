Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA692104504
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:26:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nu/tS+R7cSbjkG+wnE/XW6EQfcHANposoIkWIlKy/i0=; b=ntNPosm9MeO/tb
	Mq/WFpaHWeBJcc0JjxZkaGPDQs5RjaCMwCdsJIEvV7ZKIDd3tj8mOJ/x5dceSizplkMeaAPDCEz/V
	/csV2RhrqAVSjm/WCumGHL9eEtNnN9DDZHSBeJwLm9rR1EFkCa7ZAY3vZjsJ91vqpa7yFIiH5jeCW
	FpgDA4QQ3XlLlM6LeHK+dDknlnSHeVwJ5oOQw961xrZ5Exe8XWQ/9tH8wt1gN/Q+z26nenoebxo1W
	Dh2Kj3U/H4dtCVF1g/HD7OgIDYn1AHQBrWgPsEGeiKH4eIFNhFH/dkQm6nwkgrRPQ8Qbela625uFq
	+vDiHiDeKe27lj9aMBKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWYo-0003d5-Ne; Wed, 20 Nov 2019 20:26:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWYe-0003cW-Rt
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:26:38 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B99DB20898
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 20:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574281595;
 bh=AEVIorR6/VAlI4BJXRw6tPbken7vkQ0aTtyblIbcMdo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YsO2Djb3qDyV5DUI+gOfSBEoyXrLr4bGjbyQsw4ZyMIjgrbsGPYPzv+oYJneg+R/Q
 lBr2gXtZLDWn8l/hjcPNRxT8TShMH2IIMvdXNP3uImH3y+gg4xiIQvklZTexnD3O2v
 ZO3RzynVtL7N12dcNqyMglcvuVYYyjb/NP0T1OEA=
Received: by mail-qt1-f176.google.com with SMTP id g50so1004754qtb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:26:35 -0800 (PST)
X-Gm-Message-State: APjAAAXYT4V/bwNIO5FEnS+3qMc4RhVqHz0YQ3LMgkRS+8Vsy5R+cTAc
 UIRmISw2oFO0BdDXFRn0tPsbgHnT1Jy4zttX9A==
X-Google-Smtp-Source: APXvYqx7fnGdtnkeuRvwWhsOVISMRdUYUIw3lX6FCbHTqaZSFv6tvBQHF5T6swA1/jBii4Jde8nmZdXen76KVGu+rkc=
X-Received: by 2002:ac8:73ce:: with SMTP id v14mr4714242qtp.136.1574281594774; 
 Wed, 20 Nov 2019 12:26:34 -0800 (PST)
MIME-Version: 1.0
References: <20191118101420.23610-1-arnaud.pouliquen@st.com>
In-Reply-To: <20191118101420.23610-1-arnaud.pouliquen@st.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 20 Nov 2019 14:26:23 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+42wx1AJO=jXXBhmaKMkBq-RtoF+kxVjS2z9fSwhcaEQ@mail.gmail.com>
Message-ID: <CAL_Jsq+42wx1AJO=jXXBhmaKMkBq-RtoF+kxVjS2z9fSwhcaEQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mailbox: convert stm32-ipcc to json-schema
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122636_946510_11E46AF2 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 4:15 AM Arnaud Pouliquen
<arnaud.pouliquen@st.com> wrote:
>
> Convert the STM32 IPCC bindings to DT schema format using
> json-schema
>
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
>  .../bindings/mailbox/st,stm32-ipcc.yaml       | 91 +++++++++++++++++++
>  .../bindings/mailbox/stm32-ipcc.txt           | 47 ----------
>  2 files changed, 91 insertions(+), 47 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt

Thanks for helping me find 2 meta-schema errors. :) Please update
dt-schema and re-run 'make dt_binding_check'.

> diff --git a/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
> new file mode 100644
> index 000000000000..90157d4deac1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/mailbox/st,stm32-ipcc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: STMicroelectronics STM32 IPC controller bindings
> +
> +description:
> +  The IPCC block provides a non blocking signaling mechanism to post and
> +  retrieve messages in an atomic way between two processors.
> +  It provides the signaling for N bidirectionnal channels. The number of
> +  channels (N) can be read from a dedicated register.
> +
> +maintainers:
> +  - Fabien Dessenne <fabien.dessenne@st.com>
> +  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp1-ipcc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +     maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: rx channel occupied
> +      - description: tx channel free
> +      - description: wakeup source
> +    minItems: 2
> +    maxItems: 3
> +
> +  interrupt-names:
> +    items:
> +      enums: [ rx, tx, wakeup ]

'enums' is not a valid keyword. 'enum' is valid, but his should be in
a defined order (so a list of items).

> +    minItems: 2
> +    maxItems: 3
> +
> +  wakeup-source:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Enables wake up of host system on wakeup IRQ assertion.

Just 'true' is enough here. Assume we have a common definition.

> +
> +  "#mbox-cells":
> +    const: 1
> +
> +  st,proc-id:
> +    description: Processor id using the mailbox (0 or 1)
> +    allOf:
> +      - minimum: 0
> +      - maximum: 1

'enum: [ 0, 1 ]' is more concise.

Also, needs a $ref to the type.

> +      - default: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - st,proc-id
> +  - clocks
> +  - interrupt-names
> +  - "#mbox-cells"
> +
> +oneOf:
> +  - required:
> +      - interrupts
> +  - required:
> +      - interrupts-extended

The tooling takes care of this for you. Just list 'interrupts' as required.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    ipcc: mailbox@4c001000 {
> +      compatible = "st,stm32mp1-ipcc";
> +      #mbox-cells = <1>;
> +      reg = <0x4c001000 0x400>;
> +      st,proc-id = <0>;
> +      interrupts-extended = <&intc GIC_SPI 100 IRQ_TYPE_NONE>,
> +                     <&intc GIC_SPI 101 IRQ_TYPE_NONE>,
> +                     <&aiec 62 1>;
> +      interrupt-names = "rx", "tx", "wakeup";
> +      clocks = <&rcc_clk IPCC>;
> +      wakeup-source;
> +    };
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
