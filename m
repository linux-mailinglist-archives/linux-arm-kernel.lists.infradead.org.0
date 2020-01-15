Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC70513C743
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:19:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ry6RtLsWcHBy/3ShKGO8ix8HlZE8I6RRAFdAsNkypCI=; b=oI3qXpjUKe9U/J
	Y8LeETa5KHQhWN1a6RLtyXpwo5Qe4zLJSMsp/s68RdpFLBr0gkMeTWK8zeAzyvdhnJu/HfPqKyWb0
	UJynGisTnH7SyDhTRKyoLCdFlv0MEAty1dbq9QHPeAFC3gZSzYjDgVeEZdcercrso/akSHCpX8nM2
	sIjkgyi4CKd6F7CY8aDV1hAKcdZhSKdoOvQLbH6aZ3lIRK2zelPMHM8Cnx2cfmWKKggwocZdTBskh
	J9ZVLWaZ9dyEt+bljOyJgYYg0L2ldLFMfEipTx9yfwVgOqP2DCsBsJR4BXc5FLH6GUDe6zKNVnO1R
	6LHSnH33ytlJb4I6RoYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkS3-0004gV-Eb; Wed, 15 Jan 2020 15:19:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkRp-0004fS-BA; Wed, 15 Jan 2020 15:19:12 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF0E424679;
 Wed, 15 Jan 2020 15:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579101549;
 bh=9fd40CcaGI6cWpHZqU/yIPuhJQktGKOinNy8wSPMGzU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hPOyLzthFNGE32NfBFtYYkNK3eDgOaaBz0HKqcBTrGmtvzZ1YzjuNDlGruyTSz9ae
 d7erGkP7WxB0DbHXKHgaptLE6rsVq2JKjCR3dQb5U7Q5GIRiGFvSyjA1bhF1XTCjLJ
 6SiWUJieVKpNHduugiPGzvU+WB46WiiTSYv+BA40=
Received: by mail-qk1-f182.google.com with SMTP id k6so15955884qki.5;
 Wed, 15 Jan 2020 07:19:08 -0800 (PST)
X-Gm-Message-State: APjAAAWcqflQnq565Kzj0xI+Cs8mlOkcGAK09LZLxQQHKcTD/SeOfu0D
 zxeIHETNC+LQU6nE+9UgOh2OtzukFJ+V0lqFOw==
X-Google-Smtp-Source: APXvYqyN8g7pSkmCg1vlfsZZaysMWT3v4Sz80/kQhpNjtL9wRuGIv82iL272dibRm6hdlkYlcWUOz2DhUOSMuY+m7/w=
X-Received: by 2002:a37:a70b:: with SMTP id q11mr22845608qke.393.1579101547856; 
 Wed, 15 Jan 2020 07:19:07 -0800 (PST)
MIME-Version: 1.0
References: <20200114213809.27166-1-jbx6244@gmail.com>
 <20200114213809.27166-2-jbx6244@gmail.com>
In-Reply-To: <20200114213809.27166-2-jbx6244@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 15 Jan 2020 09:18:56 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com>
Message-ID: <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com>
Subject: Re: [RFC PATCH v1 2/3] dt-bindings: mmc: convert synopsys dw-mshc
 bindings to yaml
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_071909_427684_463E5659 
X-CRM114-Status: GOOD (  25.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Convert the Synopsys designware mobile storage host controller
> device tree bindings to yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/mmc/synopsys-dw-mshc-common.yaml      |  81 ++++++++++++
>  .../devicetree/bindings/mmc/synopsys-dw-mshc.txt   | 141 ---------------------
>  .../devicetree/bindings/mmc/synopsys-dw-mshc.yaml  |  88 +++++++++++++
>  3 files changed, 169 insertions(+), 141 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
> new file mode 100644
> index 000000000..aae84a4bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
> @@ -0,0 +1,81 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys Designware Mobile Storage Host Controller Common Properties
> +
> +allOf:
> +  - $ref: "mmc-controller-common.yaml"
> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +properties:
> +  resets:
> +    maxItems: 1
> +    description:
> +      phandle + reset specifier pair, intended to represent hardware
> +      reset signal present internally in some host controller IC designs.
> +      See Documentation/devicetree/bindings/reset/reset.txt for details.

Drop the description. It has nothing unique to this binding.

> +
> +  reset-names:
> +    const: reset
> +    description:
> +      Request name for using "resets" property.
> +      (It will be used together with "resets" property.)

Drop.

> +
> +  clock-frequency:
> +    description:
> +      Should be the frequency (in Hz) of the ciu clock.  If this
> +      is specified and the ciu clock is specified then we'll try to set the ciu
> +      clock to this at probe time.
> +
> +  fifo-depth:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      The maximum size of the tx/rx fifo's. If this property is not
> +      specified, the default value of the fifo size is determined from the
> +      controller registers.
> +
> +  card-detect-delay:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - default: 0
> +    description:
> +      Delay in milli-seconds before detecting card after card
> +      insert event. The default value is 0.
> +
> +  data-addr:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Override fifo address with value provided by DT. The default FIFO reg
> +      offset is assumed as 0x100 (version < 0x240A) and 0x200(version >= 0x240A)
> +      by driver. If the controller does not follow this rule, please use
> +      this property to set fifo address in device tree.
> +
> +  fifo-watermark-aligned:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Data done irq is expected if data length is less than
> +      watermark in PIO mode. But fifo watermark is requested to be aligned
> +      with data length in some SoC so that TX/RX irq can be generated with
> +      data done irq. Add this watermark quirk to mark this requirement and
> +      force fifo watermark setting accordingly.
> +
> +  dmas:
> +    maxItems: 1
> +    description:
> +      List of DMA specifiers with the controller specific format as described
> +      in the generic DMA client binding.
> +      Refer to dma-controller.yaml for details.

Drop the description.

> +
> +  dma-names:
> +    const: rx-tx
> +    description:
> +      Request names for generic DMA client binding.
> +      Refer to dma-controller.yaml for details.

Drop

[...]

> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> new file mode 100644
> index 000000000..6f85a21d0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -0,0 +1,88 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys Designware Mobile Storage Host Controller Binding
> +
> +allOf:
> +  - $ref: "synopsys-dw-mshc-common.yaml"
> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: snps,dw-mshc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +    description:
> +      Handle to "biu" and "ciu" clocks for the
> +      bus interface unit clock and the card interface unit clock.
> +
> +  clock-names:
> +    items:
> +      - const: biu
> +      - const: ciu
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  # The MSHC controller node can be split into two portions, SoC specific and
> +  # board specific portions as listed below.

This split doesn't work because the examples are built and validated
now. It may happen to because all the props are optional, but the
board hunk goes unchecked. So please combine.

> +  - |
> +    dwmmc0@12200000 {
> +      compatible = "snps,dw-mshc";
> +      clocks = <&clock 351>, <&clock 132>;
> +      clock-names = "biu", "ciu";
> +      reg = <0x12200000 0x1000>;
> +      interrupts = <0 75 0>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      data-addr = <0x200>;
> +      fifo-watermark-aligned;
> +      resets = <&rst 20>;
> +      reset-names = "reset";
> +    };
> +  # [board specific internal DMA resources]
> +  - |
> +    dwmmc0@12200000 {
> +      clock-frequency = <400000000>;
> +      clock-freq-min-max = <400000 200000000>;
> +      broken-cd;
> +      fifo-depth = <0x80>;
> +      card-detect-delay = <200>;
> +      vmmc-supply = <&buck8>;
> +      bus-width = <8>;
> +      cap-mmc-highspeed;
> +      cap-sd-highspeed;
> +    };
> +  # [board specific generic DMA request binding]
> +  - |
> +    dwmmc0@12200000 {
> +      clock-frequency = <400000000>;
> +      clock-freq-min-max = <400000 200000000>;
> +      broken-cd;
> +      fifo-depth = <0x80>;
> +      card-detect-delay = <200>;
> +      vmmc-supply = <&buck8>;
> +      bus-width = <8>;
> +      cap-mmc-highspeed;
> +      cap-sd-highspeed;
> +      dmas = <&pdma 12>;
> +      dma-names = "rx-tx";
> +    };
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
