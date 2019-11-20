Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B881042D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeEdxz1at/m4Ejs86FP2Is5SXSpSl2XntH+mTvFT9jg=; b=rDB5oE63zQB9wt
	ry4gh9NirMxCFeT0+IjlEc/IQN5d2vXI9wk+lf1NzsSfZBlGf0uCZwdqtYqSFdBNSm7h94TliWTKc
	zZeGzP+Ke3Lx+EAOW7MbG9nor8vKqS9dLGsMvZMT7IH5+RFzkvGlypOOswzgldVuFQLRRgC6M7mng
	r5vSZPsq3wd1eL2g1vAaK1R1FvEaq0IT7DongxUz+Jw9Y2E3jTEmJpASlr62VAQJO9KD5iHVg1hWa
	JszfWLGW/4Cbvz/rDGnPMlPz4k7WePThSaXHe/ZjYJO6/PG1WwHdb+DZp41pYJbmhYI7UTFqM1iKB
	3iLtEZoqhFmf26D0fmwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUKu-0007rr-ON; Wed, 20 Nov 2019 18:04:16 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUKk-0007rL-2u
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:04:07 +0000
Received: by mail-oi1-f193.google.com with SMTP id e9so584425oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 10:04:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wn4WhuGPefkkdG2RHoEX8ty8q6GNTGVjdrwviU5xCaA=;
 b=TTJL0qjBk56x3iV0UiiqVOJZi+RX+n1C5qx+fmoY2yNS4WEr9hRQ55UsEXcVV+2uo6
 BzA2wkfSk5VcgNeniUrvftyiruykheTUEOLn+fRwJ7tZDFgEpoDJpzxmnN283BCSCFV2
 QiO8X2zOo6wI3KuAYf/cwMOndxsPaUnoUCzNyQ6wPl7nhVUuSsi4bxTvvRxzpsW6i7k0
 FtffUfbJ6gdI7vAquQiCkw3sxytvgqy8/8qhmM9h5uthkP2nThUVyemzjEJWxpHDJaBz
 ZbDy9ztWGqynemhnIW17u0waqWXpaAfe5NfcK+dWV2u9S9+NZm+bGFqTK48PmpvJxysm
 az0g==
X-Gm-Message-State: APjAAAVSfWmUZv6ktPQ3N3K36t5KvVrTMN6z5f+PFt0t8KSaemochfWG
 sXEtXNXmmtiAKINBBVmxiA==
X-Google-Smtp-Source: APXvYqw6wtYV4YE9M25DCBt2w6sGKd1fC52lp5UjSjGEUK/AJNWBT/0Aw17mdvBlm+2sqn+sfEMYqQ==
X-Received: by 2002:aca:b602:: with SMTP id g2mr3811454oif.7.1574273044608;
 Wed, 20 Nov 2019 10:04:04 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z66sm8838593ota.54.2019.11.20.10.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 10:04:04 -0800 (PST)
Date: Wed, 20 Nov 2019 12:04:03 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: crypto: Convert stm32 QSPI bindings to
 json-schema
Message-ID: <20191120180403.GA11687@bogus>
References: <20191115142318.2909-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115142318.2909-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_100406_124546_7078F850 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, broonie@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 03:23:18PM +0100, Benjamin Gaignard wrote:
> Convert the STM32 QSPI binding to DT schema format using json-schema

Leftover 'crypto' in the subject.

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/spi/spi-stm32-qspi.txt     | 47 -----------
>  .../devicetree/bindings/spi/st,stm32-qspi.yaml     | 91 ++++++++++++++++++++++
>  2 files changed, 91 insertions(+), 47 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml

[...]

> diff --git a/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
> new file mode 100644
> index 000000000000..955405d39966
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/st,stm32-qspi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Quad Serial Peripheral Interface (QSPI) bindings
> +
> +maintainers:
> +  - Christophe Kerello <christophe.kerello@st.com>
> +  - Patrice Chotard <patrice.chotard@st.com>
> +
> +allOf:
> +  - $ref: "spi-controller.yaml#"
> +
> +properties:
> +  compatible:
> +    const: st,stm32f469-qspi
> +
> +  reg:
> +    items:
> +      - description: registers
> +      - description: memory mapping
> +    minItems: 2
> +    maxItems: 2

Implied by the 'items' length.

> +
> +  reg-names:
> +    items:
> +     - const: qspi
> +     - const: qspi_mm
> +    minItems: 2
> +    maxItems: 2

Implied by the 'items' length.

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
> +    items:
> +      - description: tx DMA channel
> +      - description: rx DMA channel
> +    minItems: 2
> +    maxItems: 2

Implied by the 'items' length.

> +
> +  dma-names:
> +    items:
> +      - const: tx
> +      - const: rx
> +    minItems: 2
> +    maxItems: 2

Implied by the 'items' length.

> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - interrupts
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    spi@58003000 {
> +      compatible = "st,stm32f469-qspi";
> +      reg = <0x58003000 0x1000>, <0x70000000 0x10000000>;
> +      reg-names = "qspi", "qspi_mm";
> +      interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
> +      dmas = <&mdma1 22 0x10 0x100002 0x0 0x0>,
> +             <&mdma1 22 0x10 0x100008 0x0 0x0>;
> +      dma-names = "tx", "rx";
> +      clocks = <&rcc QSPI_K>;
> +      resets = <&rcc QSPI_R>;
> +
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      flash@0 {
> +        compatible = "jedec,spi-nor";
> +        reg = <0>;
> +        spi-rx-bus-width = <4>;
> +        spi-max-frequency = <108000000>;
> +      };
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
