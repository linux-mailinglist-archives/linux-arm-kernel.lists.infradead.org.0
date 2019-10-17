Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CC6DB76E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 21:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsUarnxFmNxZJNA/EUsQbluk60oAbmsS8vnQPr59Mp8=; b=gVWXggEpeKVOw1
	LWAovnGjApOXhF6lKbYEIJfI0clxeTnWVg3JuHMxdB0hbAk4iIUvq4xQGn9y4tnFLjLPibwx7C3O3
	wU3IjxdVxKAiFwNtDZXdSuj1/vwk7d43DiBrhnKswqzqSe5ph5vFBoIPxDwTh1PuzC4D0IWjrbV+F
	1ozVQv5EiKNsXPxilY8Avz8MUvfF9e9EYbS7eHz1tVFYITjsYOPfo9OPsbJVSytHyK/6H64haJPRw
	Xf9llhFJGRoLSHHgZJRXg61CPgI7ADMdOyGAfsh1c2DlFJwU1/4x2P+8g5Si4GZOv3x7sgS8Ic80l
	CQHx9LiiiZEsOcksDDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLBOF-0006oh-JO; Thu, 17 Oct 2019 19:24:51 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLBO4-0006oH-8d
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 19:24:41 +0000
Received: by mail-oi1-f194.google.com with SMTP id i16so3168358oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 12:24:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JbxUD4/Ch48OCt7IQSmlYFRVjr2GA3XCWfDDRfU4VJU=;
 b=HkEqJvhhFU1SoKoQqSe4uaq4HmiZfdqnyeBQEVExsxqI/stVoC5JhkptqNfIWlYKWW
 a9zLLjuqIwyZc5My7yule7h7SMCRb6bsyBU4b0nK/iQorPjrsGk3OpI0P+3lfp2YrtK8
 VZhak3ABL2Dd4UzTpHYOWST8P4OJ0zvvJeHuaVqkfcikfX1hywRYmBQB1JXju5tvxJXH
 fB1D8izV76Xc5Yrzkw5Xyt02SyhqFBvgRQo+1b8WKrVgW2H2vStioVwBswYeRDnmS/8N
 cmlcRCzCbKSZpBmXHrq35Cu6OltjclQ9Q6WLOf38wqpsnOzxwQOxd55xkLxM8bgsS3Yc
 9DDw==
X-Gm-Message-State: APjAAAXVLuyeWwN4Bnzm+aE3aJveOmeMWgvJjLNsx5fpNfVErUen7Fmi
 x4xGfvTWrx6FvkXPgvVyzg==
X-Google-Smtp-Source: APXvYqz00kRIlvZzcsK3LPl7hBlSHEH3J1/iOr9YAPvYkaFiiR1Q8p/7vSBVdqGPIDLLZFBz4i9Gjg==
X-Received: by 2002:aca:ef85:: with SMTP id n127mr4771640oih.42.1571340279227; 
 Thu, 17 Oct 2019 12:24:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s6sm818858otr.5.2019.10.17.12.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 12:24:38 -0700 (PDT)
Date: Thu, 17 Oct 2019 14:24:37 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
Message-ID: <20191017192437.GA24080@bogus>
References: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
 <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_122440_304896_2AD5D477 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sbranden@broadcom.com,
 linux-gpio@vger.kernel.org, rjui@broadcom.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 04:10:50PM +1300, Chris Packham wrote:
> This GPIO controller is present on a number of Broadcom switch ASICs
> with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
> blocks but different enough to require a separate driver.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
> 
> Notes:
>     Changes in v2:
>     - Document as DT schema
>     - Include ngpios, #gpio-cells and gpio-controller properties
> 
>  .../bindings/gpio/brcm,xgs-iproc.yaml         | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
> new file mode 100644
> index 000000000000..71998551209e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/brcm,xgs-iproc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom XGS iProc GPIO controller
> +
> +maintainers:
> +  - Chris Packham <chris.packham@alliedtelesis.co.nz>
> +
> +description: |
> +  This controller is the Chip Common A GPIO present on a number of Broadcom
> +  switch ASICs with integrated SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,iproc-gpio-cca

enum vs. const usage depends on whether you think you'll add more 
compatibles.

> +
> +  reg:
> +    minItems: 2
> +    maxItems: 2
> +    description:
> +      The first region defines the base I/O address containing
> +      the GPIO controller registers. The second region defines
> +      the I/O address containing the Chip Common A interrupt
> +      registers.

items:
  - description: the I/O address containing the GPIO controller 
      registers
  - description: the I/O address containing the Chip Common A interrupt 
      registers

And minItems/maxItems can be implicit.

> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +      const: 2
> +
> +  ngpios:
> +    $ref: /schemas/types.yaml#/definitions/uint32

Common property, doesn't need a type definition. Also, it would have to 
be under an 'allOf' to actually work.

> +    minimum: 0
> +    maximum: 32
> +
> +  interrupt-controller:
> +    type: boolean

Just 'interrupt-controller: true'

> +
> +  '#interrupt-cells':
> +    const: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#gpio-cells"
> +  - gpio-controller
> +
> +allOf:
> + - if:
> +     properties:
> +       interrupt-controller:
> +         contains:
> +           const: true
> +   then:
> +     required:
> +       - interrupts
> +       - '#interrupt-cells'

This is mostly handled in the core schema already and 'dependencies' 
works better for this anyways. All you need here is:

dependencies:
  interrupt-controller: [ interrupts ]

> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    gpio@18000060 {
> +        compatible = "brcm,iproc-gpio-cca";
> +        #gpio-cells = <2>;
> +        reg = <0x18000060 0x50>,
> +              <0x18000000 0x50>;
> +        ngpios = <12>;
> +        gpio-controller;
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +        interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +
> +
> +...
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
