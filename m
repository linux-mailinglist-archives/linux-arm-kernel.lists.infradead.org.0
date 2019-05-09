Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C37B18E5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 18:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Em11tEemNWcj4epdvHeSr8VhX0wUpLEs+xjFhGM+hPc=; b=KbQLc3IIIVL6QI
	LNHXUWXSaYAfH2XoEqD36GRR+ZQ5QNneGbOFB9f4eN2uRyHcsWQwLJ1V6ADEjQ6RAVqTgbqy+gNFq
	h5zzbXuSb4T0ROWo0GdmQU5Xv0tetJYNdtRvltA55XmmL4o5pV0mLMw6wao1xOIneDgo8ynohwtmr
	NgbUzvVHimCWvb3UHZ9ncRgOclUFGuWIROmFHtHXhk1uhXNL/0WS1qEHWQKHmj8h8KzCTp8WmFbjX
	Q/hCotGX/5SN8HNL7xGt0qIgyrP/YAkvmo100nTVqBwTlOosfVPnTtwvhKby+tKgK6h6ZVmVd/UzJ
	82bq+Z8uP8/rReC72/SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOmB2-0004Te-38; Thu, 09 May 2019 16:45:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOmAu-0004Ss-5c
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 16:45:42 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C8DD217D9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  9 May 2019 16:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557420339;
 bh=ti2Pek/iquiif92Df5BclO+djaCzPGqiZlhrmVnICjQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DpVtm2lPhXf+cJoMzcjhfphctUoxRYXZPaIdo9sYBivg/1oxH8CieYwgJ4KT/2VRk
 E2XOPUEqo5ndK0pZyMEzen++0dnLHO3RQH3p/C7ES0EAk141K7Z3Xqe9UjAroK1xsS
 ScmsGlYCgaFSnb7Etl3UOXVoIW+Zm15i+nYAPUKU=
Received: by mail-qk1-f176.google.com with SMTP id n68so1882734qka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 09:45:39 -0700 (PDT)
X-Gm-Message-State: APjAAAUpmK/7kUrN5+BIdSVxMoYRLPugmB54wlSRJ4pK5jqqFf7Xm7hw
 qW/58CgQu9sh69O/xyY9FUt+EV0QX5hqT5/vXg==
X-Google-Smtp-Source: APXvYqyUErHoDeEa56kJAwG+8oSySUX1WknT+7ZqaIbDtx25xFAqi9U2R31PxidnuC2URaM1xaYMRzlav1ayGNnWjfs=
X-Received: by 2002:a37:c42:: with SMTP id 63mr3339328qkm.326.1557420338522;
 Thu, 09 May 2019 09:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <68d3fb999d16e49696e832e1d1a6bcd7b76a6e8d.1557389988.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <68d3fb999d16e49696e832e1d1a6bcd7b76a6e8d.1557389988.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 9 May 2019 11:45:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJi0iwM61anziC-cHXp0PL2AEtXiWFCLn943vTxK5eeig@mail.gmail.com>
Message-ID: <CAL_JsqJi0iwM61anziC-cHXp0PL2AEtXiWFCLn943vTxK5eeig@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: Add YAML schemas for the generic
 MMC options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_094540_253018_302F9D1D 
X-CRM114-Status: GOOD (  34.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 3:21 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The MMC controllers have a bunch of generic options that are needed in a
> device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 342 +++++++-
>  Documentation/devicetree/bindings/mmc/mmc.txt             | 177 +----
>  2 files changed, 342 insertions(+), 177 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/mmc-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mmc/mmc.txt
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> new file mode 100644
> index 000000000000..d06f1764f02e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -0,0 +1,342 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/mmc-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SPI Controller Generic Binding

SPI?

> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +description: |
> +  These properties are common to multiple MMC host controllers. Any host
> +  that requires the respective functionality should implement them using
> +  these definitions.
> +
> +properties:
> +  $nodename:
> +    pattern: "^mmc(@.*)?$"
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  # Card Detection.
> +  # If none of these properties are supplied, the host native card
> +  # detect will be used. Only one of them should be provided.
> +
> +  broken-cd:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      There is no card detection available; polling must be used.
> +
> +  cd-gpios:
> +    description:
> +      The card detection will be done using the GPIO provided.
> +
> +  non-removable:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Non-removable slot (like eMMC); assume always present.
> +
> +  # Other properties
> +
> +  bus-width:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [1, 4, 8]
> +      - default: 1

This works, but make enum and default a single schema.

> +    description:
> +      Number of data lines.
> +
> +  max-frequency:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 400000
> +      - maximum: 200000000
> +    description:
> +      Maximum operating frequency of the bus.
> +
> +  disable-wp:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      When set, no physical write-protect line is present. This
> +      property should only be specified when the controller has a
> +      dedicated write-protect detection logic. If a GPIO is always
> +      used for the write-protect detection. If a GPIO is always used
> +      for the write-protect detection logic, it is sufficient to not
> +      specify the wp-gpios property in the absence of a write-protect
> +      line.
> +
> +  wp-inverted:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      The CD line polarity is inverted.

s/CD/write protect/

> +
> +  wp-gpios:
> +    description:
> +      GPIO to use for the write-protect detection.
> +
> +  cd-debounce-delay-ms:
> +    $ref: /schemas/types.yaml#/definitions/uint32

Anything using a unit suffix is already typed.

> +    description:
> +      Set delay time before detecting card after card insert
> +      interrupt.
> +
> +  cd-inverted:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      The CD line polarity is inverted.
> +
> +  no-1-8-v:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      When specified, denotes that 1.8V card voltage is not supported
> +      on this system, even if the controller claims it.
> +
> +  cap-sd-highspeed:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      SD high-speed timing is supported.
> +
> +  cap-mmc-highspeed:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      MMC high-speed timing is supported.
> +
> +  sd-uhs-sdr12:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      SD UHS SDR12 speed is supported.
> +
> +  sd-uhs-sdr25:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      SD UHS SDR25 speed is supported.
> +
> +  sd-uhs-sdr50:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      SD UHS SDR50 speed is supported.
> +
> +  sd-uhs-sdr104:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      SD UHS SDR104 speed is supported.
> +
> +  sd-uhs-ddr50:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      SD UHS DDR50 speed is supported.
> +
> +  cap-power-off-card:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Powering off the card is safe.
> +
> +  cap-mmc-hw-reset:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC hardware reset is supported
> +
> +  cap-sdio-irq:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      enable SDIO IRQ signalling on this interface
> +
> +  full-pwr-cycle:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Full power cycle of the card is supported.
> +
> +  mmc-ddr-1_2v:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC high-speed DDR mode (1.2V I/O) is supported.
> +
> +  mmc-ddr-1_8v:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC high-speed DDR mode (1.8V I/O) is supported.
> +
> +  mmc-ddr-3_3v:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC high-speed DDR mode (3.3V I/O) is supported.
> +
> +  mmc-hs200-1_2v:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC HS200 mode (1.2V I/O) is supported.
> +
> +  mmc-hs200-1_8v:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC HS200 mode (1.8V I/O) is supported.
> +
> +  mmc-hs400-1_2v:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC HS400 mode (1.2V I/O) is supported.
> +
> +  mmc-hs400-1_8v:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC HS400 mode (1.8V I/O) is supported.
> +
> +  mmc-hs400-enhanced-strobe:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      eMMC HS400 enhanced strobe mode is supported
> +
> +  dsr:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 65535

0xffff is clearer IMO

> +    description:
> +      Value the card Driver Stage Register (DSR) should be programmed
> +      with.
> +
> +  no-sdio:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Controller is limited to send SDIO commands during
> +      initialization.
> +
> +  no-sd:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Controller is limited to send SD commands during initialization.
> +
> +  no-mmc:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Controller is limited to send MMC commands during
> +      initialization.
> +
> +  fixed-emmc-driver-type:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 4
> +    description:
> +      For non-removable eMMC, enforce this driver type. The value is
> +      the driver type as specified in the eMMC specification (table
> +      206 in spec version 5.1)
> +
> +  post-power-on-delay-ms:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - default: 10
> +    description:
> +      It was invented for MMC pwrseq-simple which could be referred to
> +      mmc-pwrseq-simple.txt. But now it\'s reused as a tunable delay
> +      waiting for I/O signalling and card power supply to be stable,
> +      regardless of whether pwrseq-simple is used. Default to 10ms if
> +      no available.
> +
> +  supports-cqe:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      The presence of this property indicates that the corresponding
> +      MMC host controller supports HW command queue feature.
> +
> +  disable-cqe-dcmd:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      The presence of this property indicates that the MMC
> +      controller\'s command queue engine (CQE) does not support direct
> +      commands (DCMDs).
> +
> +  keep-power-in-suspend:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      SDIO only. Preserves card power during a suspend/resume cycle.
> +
> +  # Deprecated: enable-sdio-wakeup
> +  wakeup-source:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      SDIO only. Enables wake up of host system on SDIO IRQ assertion.
> +
> +  vmmc-supply:
> +    description:
> +      Supply for the card power
> +
> +  vqmmc-supply:
> +    description:
> +      Supply for the bus IO line power
> +
> +  mmc-pwrseq:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      System-on-Chip designs may specify a specific MMC power
> +      sequence. To successfully detect an (e)MMC/SD/SDIO card, that
> +      power sequence must be maintained while initializing the card.
> +
> +patternProperties:
> +  "^.*@[0-9]+$":
> +    properties:
> +      reg:
> +        maxItems: 1
> +        minimum: 0
> +        maximum: 7

I don't think this works. You need:

      reg:
        items:
          - description: Must contain the SDIO function number of the function
              this subnode describes. A value of 0 denotes the memory SD
              function, values from 1 to 7 denote the SDIO functions.
            minimum: 0
            maximum: 7

> +        description:
> +          Must contain the SDIO function number of the function this
> +          subnode describes. A value of 0 denotes the memory SD
> +          function, values from 1 to 7 denote the SDIO functions.
> +
> +      broken-hpi:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          Use this to indicate that the mmc-card has a broken hpi
> +          implementation, and that hpi should not be used.
> +
> +    required:
> +      - reg
> +
> +dependencies:
> +  cd-inverted: [ cd-gpios ]

The note (which you dropped) says 'cd-inverted' applies for built-in CD too.

At least that is what I take "Polarity of dedicated pins can be
specified, using *-inverted properties." to mean.

> +  cd-debounce-delay-ms: [ cd-gpios ]
> +  wp-inverted: [ wp-gpios ]
> +  fixed-emmc-driver-type: [ non-removable ]
> +
> +examples:
> +  - |
> +    sdhci@ab000000 {
> +        compatible = "sdhci";
> +        reg = <0xab000000 0x200>;
> +        interrupts = <23>;
> +        bus-width = <4>;
> +        cd-gpios = <&gpio 69 0>;
> +        cd-inverted;
> +        wp-gpios = <&gpio 70 0>;
> +        max-frequency = <50000000>;
> +        keep-power-in-suspend;
> +        wakeup-source;
> +        mmc-pwrseq = <&sdhci0_pwrseq>;
> +    };
> +
> +  - |
> +    mmc3: mmc@1c12000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&mmc3_pins_a>;
> +        vmmc-supply = <&reg_vmmc3>;
> +        bus-width = <4>;
> +        non-removable;
> +        mmc-pwrseq = <&sdhci0_pwrseq>;
> +
> +        brcmf: bcrmf@1 {
> +            reg = <1>;
> +            compatible = "brcm,bcm43xx-fmac";
> +            interrupt-parent = <&pio>;
> +            interrupts = <10 8>;
> +            interrupt-names = "host-wake";
> +        };
> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
