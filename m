Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCEAC8AFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKsf2MtNr2I/JAJl42po/fsrbjMJ5G8hqjug2/EBM6s=; b=AhQxNARoYtZlNl
	SiV02H167SHtvp3uVd1+Gd8kerNT/dKb5fzuPxRY0N2UdCY1mA5pcx1YoZZi82SCS08eXQ0ONtYK0
	rJXVM1QbN2bgO9Ewa/5YD+tC8J2BNleWvZ+mbRsVMpAwqOSNTG7swjxwlLvhvvacDN7cpH1KIecf3
	uo+y31nS/OtwePC4sg5Gj9Jl8ql6YcFG3Le/2E+g1DA7kw/mnc+cCoWjKNxlt6xfVCHVYlJ94hArt
	adv3GQftiIf5QN4t5SwsmrzHP1d3khyVfAvuf41nfGENHnFqMw0LG+YXycPApqeE7C6xzgzAPDnrA
	hJpJZ0tgBwi1QmSye22w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfTi-0002Tx-V2; Wed, 02 Oct 2019 14:19:42 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfTI-0002Ez-Fr; Wed, 02 Oct 2019 14:19:18 +0000
Received: by mail-qt1-f195.google.com with SMTP id m15so26576336qtq.2;
 Wed, 02 Oct 2019 07:19:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/4BkNlRVIojwkaNlJiwgslAKNSOU+8zzG4UZka4qDBU=;
 b=tovEdX89D8ysCgpJEzw3NolTfw9FL+KhENmZ43JKQOzhF7jc0H7msV6yRqG0lL34yS
 TLVBzgjYULDGEwKRJJ9ug94JabTfCLAB03KigvThBlxgwTZPK6opVtwTUG/l/65MsIQF
 Vc9UNopC3V7B6gl9y1w1ktUMWh9sBmzgs6odWVPVa9oRFdQPCEMptVJDPxoOa0uxWQH4
 LT9IaOi/l+wrsKH4GTAnvnHtnpf+NavTpErgnxMZzmBb+odd3zePwf3/Q2TaftV5Np8I
 8uZGLkfA8/boLlr9jVB0hzKyVTWFxrjTb3sMqHA8MU4QnbTh0OwGWnCtn4Twg1AvejNw
 bwdw==
X-Gm-Message-State: APjAAAVl/RZ0km7rFOeUUd2GlIUXIedri04AX1sPhUVmaEj37dD98xXH
 PK4Fa2OpK9nI8j3fnSy9RA==
X-Google-Smtp-Source: APXvYqyiCJ1kbtSTzcBUjuOuqu8ar7W4uCqJ/bf5oUMfYFYLi0a4ONnP7ChHGR3HF15IPGyvftP9iw==
X-Received: by 2002:ac8:2c86:: with SMTP id 6mr4217724qtw.113.1570025954662;
 Wed, 02 Oct 2019 07:19:14 -0700 (PDT)
Received: from localhost ([132.205.230.8])
 by smtp.gmail.com with ESMTPSA id e7sm13698395qtb.94.2019.10.02.07.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 07:19:14 -0700 (PDT)
Date: Wed, 02 Oct 2019 09:19:11 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 1/6] dt-bindings: clock: add the Amlogic Meson8 DDR clock
 controller binding
Message-ID: <20191001235650.GA11980@bogus>
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
 <20190921151835.770263-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921151835.770263-2-martin.blumenstingl@googlemail.com>
X-Mutt-References: <20190921151835.770263-2-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_071916_532769_9B0AE872 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, narmstrong@baylibre.com,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 05:18:30PM +0200, Martin Blumenstingl wrote:
> Amlogic Meson8, Meson8b and Meson8m2 SoCs have a DDR clock controller in
> the MMCBUS registers. There is no public documentation on this, but the
> GPL u-boot sources from the Amlogic BSP show that:
> - it uses the same XTAL input as the main clock controller
> - it contains a PLL which seems to be implemented just like the other
>   PLLs in this SoC
> - there is a power-of-two PLL post-divider
> 
> Add the documentation and header file for this DDR clock controller.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../clock/amlogic,meson8-ddr-clkc.yaml        | 50 +++++++++++++++++++
>  include/dt-bindings/clock/meson8-ddr-clkc.h   |  4 ++
>  2 files changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
> new file mode 100644
> index 000000000000..bf3ca5888485
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: GPL-2.0

(GPL-2.0-only OR BSD-2-Clause) for new bindings please.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/amlogic,meson8-ddr-clkc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic DDR Clock Controller Device Tree Bindings
> +
> +maintainers:
> +  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson8-ddr-clkc
> +      - amlogic,meson8b-ddr-clkc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: xtal
> +
> +  "#clock-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#clock-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    ddr_clkc: clock-controller@400 {
> +      compatible = "amlogic,meson8-ddr-clkc";
> +      reg = <0x400 0x20>;
> +      clocks = <&xtal>;
> +      clock-names = "xtal";
> +      #clock-cells = <1>;
> +    };
> +
> +...
> diff --git a/include/dt-bindings/clock/meson8-ddr-clkc.h b/include/dt-bindings/clock/meson8-ddr-clkc.h
> new file mode 100644
> index 000000000000..a8e0fa2987ab
> --- /dev/null
> +++ b/include/dt-bindings/clock/meson8-ddr-clkc.h
> @@ -0,0 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#define DDR_CLKID_DDR_PLL_DCO			0
> +#define DDR_CLKID_DDR_PLL			1
> -- 
> 2.23.0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
