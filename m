Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A702D431E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bl+JYgEWvN+NGRpB5/F+d0V6uYwTZbHidJr1MY7NLLw=; b=gMODO3tlAsXzPB
	JVnfMHS2OHHzVfNTc0kLftrEVfScLyG1FxDQsVPyHsiZgC66asfFcmH5R0iV8LCtD4/8pXh0ZRBhJ
	8PUHDoUlLlOoOp7BVkuU3RRVnjUciLjgKSBUYtes8LaNRTiiOy1La/5QbAVoRxNWePFfqi8URlLjT
	zDOkbbzpM5K9g5SdLyueOifuKKJ4wR5vU4Rq2vN4e8DWdEUjN5r94BCfXI2VH9I2PFsspmVlKa3EI
	CYeXj6pQr7GtsGVfuEHibenQxLfw70wZN2HxynqBZXsUOuTmO9alDfdQCRJuG/l56WcVDUV9l0LUx
	wPLkabjNLP4oAl6NRRAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIw6u-0006wF-V4; Fri, 11 Oct 2019 14:41:40 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIw6k-0006vm-Ix
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:41:32 +0000
Received: by mail-ot1-f66.google.com with SMTP id c10so8151483otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 07:41:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TKLBwidlY8Z3JTq5wxCnvHpvRsZmPGpUIR8JC3vLZ08=;
 b=KlEQNpKYlXx2k0kOkGWc+5zpJFtcHkmZ74xCzOUzeV5cerrLMBzvigcqSl3/AHiD8M
 /pB1dbr2RmY+Kl9UsiTYGqZZmt8N5zWowYzC5Hm9RlfssBDTPqGeEbHrSK5Ek0VpwZ98
 f5JBksm1kdebQzfIXew6rRX6sIMmSpPDB3pns3dm9m5InHP97NVp4lQ0ElvzueNJ+bvJ
 BTCvtUmBg+7XNdo6D8IRzAHH7zgofHrD21upm2B0LtvvRhBrg0O3EoQIJzi2PspxElRy
 LjKsdHYkjgxXtkdQTJ6/Tg1pib+D09rkJ/X/AZVi/1ZO8TSukwA9yETLbVpne6fwhtpQ
 qd5w==
X-Gm-Message-State: APjAAAXNq715O/GD5Wq/eEh0dKFJMrHFaWCixVp6lwF54P2UcNNLDWCd
 Ijy2RWRuSD+NEcDmENhtfA==
X-Google-Smtp-Source: APXvYqzPDmMOHoPxKw0K4wdBgFxJQJ0ExuW4XED8tlQ8I9P4txCzqKFc3qva5tX8kT2AJFqdUPh2mQ==
X-Received: by 2002:a9d:6d11:: with SMTP id o17mr9430840otp.333.1570804889780; 
 Fri, 11 Oct 2019 07:41:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r3sm2642930otk.31.2019.10.11.07.41.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 07:41:29 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:41:28 -0500
From: Rob Herring <robh@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 4/6] dt-bindings: media: Add Allwinner H3 Deinterlace
 binding
Message-ID: <20191011144128.GA24245@bogus>
References: <20190929161653.160158-1-jernej.skrabec@siol.net>
 <20190929161653.160158-5-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929161653.160158-5-jernej.skrabec@siol.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_074130_625718_59534BCB 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 hverkuil@xs4all.nl, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 29, 2019 at 06:16:51PM +0200, Jernej Skrabec wrote:
> Allwinner H3 Deinterlace core is used for deinterlacing interlaced video
> content. Core can also be found on some later SoCs, like H5 and R40.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../media/allwinner,sun8i-h3-deinterlace.yaml | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
> new file mode 100644
> index 000000000000..55a5d4e4f0f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/allwinner,sun8i-h3-deinterlace.yaml#

Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml: $id: path/filename 'arm/allwinner,sun8i-h3-deinterlace.yaml' doesn't match actual filename
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.example.dts] Error 1
Makefile:1282: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

With that fixed,

Reviewed-by: Rob Herring <robh@kernel.org>

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner H3 Deinterlace Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +description: |-
> +  The Allwinner H3 and later has a deinterlace core used for
> +  deinterlacing interlaced video content.
> +
> +properties:
> +  compatible:
> +    const: allwinner,sun8i-h3-deinterlace
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Deinterlace interface clock
> +      - description: Deinterlace module clock
> +      - description: Deinterlace DRAM clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +      - const: ram
> +
> +  resets:
> +    maxItems: 1
> +
> +  interconnects:
> +    maxItems: 1
> +
> +  interconnect-names:
> +    const: dma-mem
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/sun8i-h3-ccu.h>
> +    #include <dt-bindings/reset/sun8i-h3-ccu.h>
> +
> +    deinterlace: deinterlace@1400000 {
> +        compatible = "allwinner,sun8i-h3-deinterlace";
> +        reg = <0x01400000 0x20000>;
> +        clocks = <&ccu CLK_BUS_DEINTERLACE>,
> +                 <&ccu CLK_DEINTERLACE>,
> +                 <&ccu CLK_DRAM_DEINTERLACE>;
> +        clock-names = "bus", "mod", "ram";
> +        resets = <&ccu RST_BUS_DEINTERLACE>;
> +        interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
> +        interconnects = <&mbus 9>;
> +        interconnect-names = "dma-mem";
> +    };
> +
> +...
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
