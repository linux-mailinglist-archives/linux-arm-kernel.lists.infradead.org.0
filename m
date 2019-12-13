Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145F311ED01
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcPrqaXHcn4EBF+5wcnd6POvwX0NNvVJQWuJI87YK8c=; b=sHxr/B5z+oivNb
	WFlMT20pgXpHrakg+jxdriVurwaRj3CspcUJUVmzWCQAygWpRsaJYwNIUUiVC5D7L5rWB8wyo64fd
	+GOwbMOtjeeZiIxuiw0kRLyLdSfrye6eA2ot7nOyG+h+0uesjRjglRvD9az3XW1R1CxFdYyH+rQw0
	uAtRJ4cZ0c3dmOe3AUVDpIwp8LSGtbUsgmzpt5stt+0YwaVSLtXC6QsAnLvwwe+PP+HAI8Fbk7ihp
	zJ9gCbrobzps0qGCF697WcRmlH/VIvyqHBI9DkX+AGdFz9XgPHnFqvToiH5qQk50aHifOVil1aBb9
	OkLDk6qkXiVFI+9s/tvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifsem-0002la-N7; Fri, 13 Dec 2019 21:39:28 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifsee-0002kd-Fq
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 21:39:22 +0000
Received: by mail-oi1-f195.google.com with SMTP id x14so1934205oic.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 13:39:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SCYACv29dkJEimAeryd7NAUvfts7axPZD4KOPwPhHhU=;
 b=eBYgeEfNxI9vArB9ui8/hMdBuV8Z44v06Dg64CjFUeS68Fel/0dh1cilulAyg9GLv0
 dO6NdhgGMMVBQqXEOtpjYZQwbsN42nQh2dPDvtT/nLU0KcRArGTbQmCLbf3VsaVGW2US
 tFiQcQEd2jW1ecKIEEhUGhg+DQVir1hRTLPil+S5Kd4Ma7pWNTFAjCqzCH4s15pZftIp
 IRIPQUVjEt0W+FJUON17RDRnDXNIO8R5agkcWGNIin2gALdm6PsFQKcaXo8+a+E3GQ7P
 elMk6hX2kcUzfa5fEsCfekgTvipYQdX1WDEBAwLbNJibFgDxiQX8/wAe5KVbObfR154K
 giDw==
X-Gm-Message-State: APjAAAWL8IDisOaptNc1hFmbMZabUsLwDMBxay4js+eRQCtJeeKpUasN
 32vjVhbw+/YcEvOvyizNUw==
X-Google-Smtp-Source: APXvYqx8lp9CVw+D5kPH+eRXIzKkrTm4GjWilZZXwORT3uNCoTfc2EDpKa5QD1/v0PHo3VOao+xSTg==
X-Received: by 2002:aca:d706:: with SMTP id o6mr8416194oig.19.1576273158143;
 Fri, 13 Dec 2019 13:39:18 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b3sm3687774oie.25.2019.12.13.13.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 13:39:17 -0800 (PST)
Date: Fri, 13 Dec 2019 15:39:16 -0600
From: Rob Herring <robh@kernel.org>
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>
Subject: Re: [PATCH] dt-bindings: stm32: convert mlahb to json-schema
Message-ID: <20191213213916.GA1292@bogus>
References: <20191128154603.6911-1-arnaud.pouliquen@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128154603.6911-1-arnaud.pouliquen@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_133920_527824_8BDAFB51 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 04:46:03PM +0100, Arnaud Pouliquen wrote:
> Convert the ML-AHB bus bindings to DT schema format using json-schema
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
> Notice that this patch requests an update of the simple-bus schema to add
> the support of the "dma-ranges" property.
> A Pull request has been sent in parallel to the dt-schema github repo:
> https://github.com/devicetree-org/dt-schema/pull/30
> 
> To remind the topic around the use of "dma-ranges" please
> refer to following discussion: https://lkml.org/lkml/2019/4/3/1261
> ---
>  .../devicetree/bindings/arm/stm32/mlahb.txt   | 37 ----------
>  .../bindings/arm/stm32/st,mlahb.yaml          | 69 +++++++++++++++++++
>  2 files changed, 69 insertions(+), 37 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/mlahb.txt b/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
> deleted file mode 100644
> index 25307aa1eb9b..000000000000
> --- a/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -ML-AHB interconnect bindings
> -
> -These bindings describe the STM32 SoCs ML-AHB interconnect bus which connects
> -a Cortex-M subsystem with dedicated memories.
> -The MCU SRAM and RETRAM memory parts can be accessed through different addresses
> -(see "RAM aliases" in [1]) using different buses (see [2]) : balancing the
> -Cortex-M firmware accesses among those ports allows to tune the system
> -performance.
> -
> -[1]: https://www.st.com/resource/en/reference_manual/dm00327659.pdf
> -[2]: https://wiki.st.com/stm32mpu/wiki/STM32MP15_RAM_mapping
> -
> -Required properties:
> -- compatible: should be "simple-bus"
> -- dma-ranges: describes memory addresses translation between the local CPU and
> -	   the remote Cortex-M processor. Each memory region, is declared with
> -	   3 parameters:
> -		 - param 1: device base address (Cortex-M processor address)
> -		 - param 2: physical base address (local CPU address)
> -		 - param 3: size of the memory region.
> -
> -The Cortex-M remote processor accessed via the mlahb interconnect is described
> -by a child node.
> -
> -Example:
> -mlahb {
> -	compatible = "simple-bus";
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	dma-ranges = <0x00000000 0x38000000 0x10000>,
> -		     <0x10000000 0x10000000 0x60000>,
> -		     <0x30000000 0x30000000 0x60000>;
> -
> -	m4_rproc: m4@10000000 {
> -		...
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml b/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
> new file mode 100644
> index 000000000000..8ad3f7c7f9ab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/arm/stm32/st,mlahb.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: STMicroelectronics STM32 ML-AHB interconnect bindings
> +
> +maintainers:
> +  - Fabien Dessenne <fabien.dessenne@st.com>
> +  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
> +
> +description: |
> +  These bindings describe the STM32 SoCs ML-AHB interconnect bus which connects
> +  a Cortex-M subsystem with dedicated memories. The MCU SRAM and RETRAM memory
> +  parts can be accessed through different addresses (see "RAM aliases" in [1])
> +  using different buses (see [2]): balancing the Cortex-M firmware accesses
> +  among those ports allows to tune the system performance.
> +  [1]: https://www.st.com/resource/en/reference_manual/dm00327659.pdf
> +  [2]: https://wiki.st.com/stm32mpu/wiki/STM32MP15_RAM_mapping
> +
> +allOf:
> + - $ref: /schemas/simple-bus.yaml#
> +
> +properties:
> +  compatible:
> +    contains:
> +      enum:
> +        - st,mlahb
> +
> +  dma-ranges:
> +    description: |
> +      Describe memory addresses translation between the local CPU and the
> +      remote Cortex-M processor. Each memory region, is declared with
> +      3 parameters:
> +      - param 1: device base address (Cortex-M processor address)
> +      - param 2: physical base address (local CPU address)
> +      - param 3: size of the memory region.
> +    maxItems: 3
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - '#address-cells'
> +  - '#size-cells'
> +  - dma-ranges
> +
> +examples:
> +  - |
> +    mlahb: ahb {
> +      compatible = "st,mlahb", "simple-bus";
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      reg = <0x10000000 0x40000>;
> +      dma-ranges = <0x00000000 0x38000000 0x10000>,
> +                   <0x10000000 0x10000000 0x60000>,
> +                   <0x30000000 0x30000000 0x60000>;
> +

Fails to build:

builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/stm32/st,mlahb.example.dt.yaml: 
ahb: 'ranges' is a required property

Run 'make dt_binding_check'

> +      m4_rproc: m4@10000000 {
> +       reg = <0x10000000 0x40000>;
> +      };
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
