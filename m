Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00530E386D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ijwl1gwTmKXa4EH1gWsXFjBBVP4IciHJHlcW+hPTtyo=; b=QCup399oUIjsGBgRFDEax0yzM
	mPPyvBxlEADtn7t3W+uR2Jiose/lyVe8wNTrZsEF8wJQUWQfyyrTpjkbiJjRAVA4gpWNIWvGyM9m6
	TWWvkOxJCoiWDzwa3bX0Ntd+cD6TGyt0inUBxowG3/bAs6EZJ9J/0khs5LHgtI4m2FN4FsOmk1RFM
	eB0CkGcQEomAIph8jdqvx4yVIftCxiUwY0zwV6GrUFlQ+R17nGn8JDqi7pXOvE3Wb8V37kj6xrEeT
	Ilod+emX0f3cxJi0VLuQYtJ4r3E9jqE6IQ2o3DdM3Dl1YVQibuSZ+JR5hIHOqJHY/Pn8luvoCK38P
	7k1pYe55w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgCH-0001Vs-Lm; Thu, 24 Oct 2019 16:42:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg98-00064Y-8u
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:39:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id g24so3572658wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=6airdfmWbPo+9H8q8yF8Fow5EQ+bKYy5OYJZbu/8klg=;
 b=OT4cDmsUunbscfxvhDw+rIVX2AsuGIv9mDVd9Lz1JmIYVvwuXSxmr+inrLJOCkaPlp
 Z57x8PvO+vWADTq1pOJQK78YuP5oUWFPIpmVNDmTi+yAc0QbSG2tr9ojk+PQ6S98bUxo
 egLtniHBPwO+5iTboWMsWoM/TMqXQFup6d2H4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6airdfmWbPo+9H8q8yF8Fow5EQ+bKYy5OYJZbu/8klg=;
 b=WfO8RMEjnOtRKoXI4SPKYBEiuK4lWeisyhRltztW4c2yrapfq03VsB8Dc/3CWW0SZh
 tl/zKk+fgp0njiPrNO++O2WEfwW1HzgYql+O3Oc5NUDEtJFImm2XoH4byFjOuRvDENRq
 Jh6UGUPepaJ5nuMvHjPejYdFY2xCs7G2oTjQoZ2nVfhAXElGkics0B7kVyibtSDHvxlq
 4HICd1jmkXct/acAiU+7QnNsX2ZbJjtvRTW3cEu28dc/cOAA2X+dEUrkh6IZQYftmOVa
 2Yl0LfQWqSD1BQTbWq/AGDiufoDVb4Uuk7VCmOYrkQt8e4fZSXKRibYQoVOoItdhlqjM
 HpTQ==
X-Gm-Message-State: APjAAAVr8CicqfuYaDfL+1ei+ZY/9Ibpdlq3nxwPir4YwbQ8Pn+jMn9r
 YuZ4T5NvHiBean7gzGnm9KIim0K8iGL3YJhd
X-Google-Smtp-Source: APXvYqz3vCdn5X+pVSPFYILymZ7NnZuRiPFSO7yPCexT8xbKvyQr1f9rcrSOfkcoYmxikGkdR5xgng==
X-Received: by 2002:a1c:48c4:: with SMTP id v187mr5904648wma.27.1571935172517; 
 Thu, 24 Oct 2019 09:39:32 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id x7sm37064980wrg.63.2019.10.24.09.39.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Oct 2019 09:39:31 -0700 (PDT)
Subject: Re: [PATCH v3 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
References: <20191024004816.5539-1-chris.packham@alliedtelesis.co.nz>
 <20191024004816.5539-2-chris.packham@alliedtelesis.co.nz>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <db6d6cc7-6844-7079-7115-da1eb9c1feac@broadcom.com>
Date: Thu, 24 Oct 2019 09:39:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024004816.5539-2-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093934_464029_6F00D87C 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

On 2019-10-23 5:48 p.m., Chris Packham wrote:
> This GPIO controller is present on a number of Broadcom switch ASICs
> with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
> blocks but different enough to require a separate driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>
> Notes:
>      Changes in v3:
>      - incorporate review comments from Rob and Bart
>      
>      Changes in v2:
>      - Document as DT schema
>      - Include ngpios, #gpio-cells and gpio-controller properties
>
>   .../bindings/gpio/brcm,xgs-iproc.yaml         | 70 +++++++++++++++++++
>   1 file changed, 70 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
>
> diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
> new file mode 100644
> index 000000000000..ec1fd3a64aa2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
This doc needs to have gpio in the name to make all other gpio binding 
documents.
ie.
brcm,xgs-iproc-gpio.yaml.
> @@ -0,0 +1,70 @@
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
> +    const: brcm,iproc-gpio-cca
> +
> +  reg:
> +    items:
> +      - description: the I/O address containing the GPIO controller
> +                     registers.
> +      - description: the I/O address containing the Chip Common A interrupt
> +                     registers.
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +      const: 2
> +
> +  ngpios:
> +    minimum: 0
> +    maximum: 32
> +
> +  interrupt-controller: true
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
> +dependencies:
> +  interrupt-controller: [ interrupts ]
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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
