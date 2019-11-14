Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397A7FCD82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFbRjrElo26Twyy7cmIB5raxurzBC6KvJz1dAHjRbIM=; b=kTCN+3Rb1HgZND
	1cb406d3iyF2TnOvWoe3tIwJCfaYXusI06eaPnE/C7fnelppFQukP1XdWI5CIe+lt63s2JlI3rPZa
	88Lo8aJdzCHsilKnjluLv7TIh2HZSTfd2GnY59tGPtT9lXYbaC0P4zy0lLXO9+R92eIdy+E2pVokG
	AynhqBY2vdcbVze26eCP5v8R9zFdOjrNS0roa0mgcrVhD6RvYTFvG5oTbMiy9OzoFOPnCc0Yi5mmG
	NmjYM/aRDmuEZdII0j4Irm9J5ZxyEDJn4vnMEN/WQgZO1tVnYZkHEdC1JEGLwQLEdlpAmubBHKK9w
	pkwCtQ95fJOe7nqj4tTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJqK-0000r2-UB; Thu, 14 Nov 2019 18:27:44 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJqC-0000qD-B0
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:27:37 +0000
Received: by mail-oi1-f196.google.com with SMTP id s71so6149767oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:27:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=twe/TbVlMQqA0NWuHIJXSk1zCx0TbbBAWPGwk4fJz3k=;
 b=Gau2YkiHw/XaK0UH4GEHtmYGB8b2ECv3/iHzwgt/UDpAZvge1dcvb2bQsxnRtu4Hyo
 hAhFKWM8HAViR8KcugwYB5ypr61Du1w3MgKrwVZjdLwB0IoK2SKkgXesEbUhQrWdQ05D
 wVHSBNSCT943QYXpI3gVEWY5Mp8gCB4LYySVzA+r+o1+XnEWSZ+Cw1teCtcO4P4Q+zQO
 9G0B8UCeitx8/6Gc3SWeBG0JepV9Iz+iSu/QHWs+zUgfg0bYV0HjWnTNJS0AiW10qZo9
 51ZvTt4CvqNlA8vLyjmHrqYDbmgpzBJodU/byqTwyLMm6h8jO0rD0xurdlvAr9SsGZRd
 5m8Q==
X-Gm-Message-State: APjAAAXqpXEEOs+/x/bFDfQjOkG6Zqj/H5srrEFjiXwdc6xu0p3ZsheA
 +2rAu/IsHm/JOBwgiMsBRJHu/Ng=
X-Google-Smtp-Source: APXvYqxjHDltMccuMM6xqJnU+foScbYCONfgYx5qcm1q2S77o/X9u6AVwhK8Rqvkr5ZeEzckeIplDw==
X-Received: by 2002:a05:6808:352:: with SMTP id
 j18mr4809540oie.67.1573756054717; 
 Thu, 14 Nov 2019 10:27:34 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e19sm2020116otj.51.2019.11.14.10.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:27:34 -0800 (PST)
Date: Thu, 14 Nov 2019 12:27:33 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: crypto: Convert stm32 HASH bindings to
 json-schema
Message-ID: <20191114182733.GA21785@bogus>
References: <20191108125244.23001-1-benjamin.gaignard@st.com>
 <20191108125244.23001-3-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108125244.23001-3-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_102736_381032_E449CD37 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, lionel.debieve@st.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 herbert@gondor.apana.org.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 01:52:44PM +0100, Benjamin Gaignard wrote:
> Convert the STM32 HASH binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/crypto/st,stm32-hash.txt   | 30 ----------
>  .../devicetree/bindings/crypto/st,stm32-hash.yaml  | 64 ++++++++++++++++++++++
>  2 files changed, 64 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-hash.txt
>  create mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> 
> diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-hash.txt b/Documentation/devicetree/bindings/crypto/st,stm32-hash.txt
> deleted file mode 100644
> index 04fc246f02f7..000000000000
> --- a/Documentation/devicetree/bindings/crypto/st,stm32-hash.txt
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -* STMicroelectronics STM32 HASH
> -
> -Required properties:
> -- compatible: Should contain entries for this and backward compatible
> -  HASH versions:
> -  - "st,stm32f456-hash" for stm32 F456.
> -  - "st,stm32f756-hash" for stm32 F756.
> -- reg: The address and length of the peripheral registers space
> -- interrupts: the interrupt specifier for the HASH
> -- clocks: The input clock of the HASH instance
> -
> -Optional properties:
> -- resets: The input reset of the HASH instance
> -- dmas: DMA specifiers for the HASH. See the DMA client binding,
> -	 Documentation/devicetree/bindings/dma/dma.txt
> -- dma-names: DMA request name. Should be "in" if a dma is present.
> -- dma-maxburst: Set number of maximum dma burst supported
> -
> -Example:
> -
> -hash1: hash@50060400 {
> -	compatible = "st,stm32f756-hash";
> -	reg = <0x50060400 0x400>;
> -	interrupts = <80>;
> -	clocks = <&rcc 0 STM32F7_AHB2_CLOCK(HASH)>;
> -	resets = <&rcc STM32F7_AHB2_RESET(HASH)>;
> -	dmas = <&dma2 7 2 0x400 0x0>;
> -	dma-names = "in";
> -	dma-maxburst = <0>;
> -};
> diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> new file mode 100644
> index 000000000000..3c09c9899021
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/st,stm32-hash.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 HASH bindings
> +
> +maintainers:
> +  - Lionel Debieve <lionel.debieve@st.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32f456-hash
> +      - st,stm32f756-hash
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    items:
> +      - const: in
> +
> +  dma-maxburst:
> +    description: Set number of maximum dma burst supported

Needs a type ref and some constraints. What's the default?

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    hash@54002000 {
> +      compatible = "st,stm32f756-hash";
> +      reg = <0x54002000 0x400>;
> +      interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&rcc HASH1>;
> +      resets = <&rcc HASH1_R>;
> +      dmas = <&mdma1 31 0x10 0x1000A02 0x0 0x0>;
> +      dma-names = "in";
> +      dma-maxburst = <2>;
> +    };
> +
> +...
> -- 
> 2.15.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
