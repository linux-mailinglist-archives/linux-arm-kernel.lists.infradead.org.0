Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145D794DBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNla+++udQwS17B/8PN2vBdKy+jG8V+PrtUjVwrPa6Y=; b=EAVG+0CgvwwsWz
	ynU/Ybfoao/FRdFYjskLq9CpM3jJJ8QNQznUN4a6zAyl9J+YQIj/Vip6Eq0t/C1jQaR4TGGxTnDWP
	Tv5zeS6RzBB8AAQMCPbjwDJmI0zp/qsf5YTEqWL/9BQMS78qFSE1CiAIevQzr8bjhmLs3vNROX2fh
	FhKSU+biVjr4zjORF3b52OXXhUWlbb4M/QOzjs9fChRavdTn0wanwRKVjI8gtWIhPUnJzlJNPuSLv
	QoDVnlBq6PvKZPaJ42P6mDrieEaqhHA9T5iW6nNS9jlulTW0xf0b/VF8xCkoWh3xJ62/yF1q/R77l
	CIvuqnXTxvzpMG8Rmu3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznBe-00050Z-Al; Mon, 19 Aug 2019 19:19:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznBP-00050E-Uf
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:19:13 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68CA922CF4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 19:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566242351;
 bh=m5k/dKgxoNFL9CE5OJQ0J1mAEZhAcE7RlJlTNYGMXKg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=adKdACk3DG6n7olLKxlOA2FQFwp1c6on+rtkK7ffmaevSA4JaVJHFULggsUQlV2FY
 AF/paJwiGMo9PSin48AYUyKQH6SzOxMDUU/o8NKamQkLlFN/jkU9D1hdNPij4CA44+
 22GZw1P+uBi+1Z01/+XByyeX/Tw2aBUDFp0bCWMM=
Received: by mail-qk1-f174.google.com with SMTP id m2so2383189qki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:19:11 -0700 (PDT)
X-Gm-Message-State: APjAAAUUv67UBsX9FcqMvhOAug9O9omwoU2tzyA5tltsjmXEt7GZna+u
 2lOTX6EpkX7PkyDUAkxfHj1Q66qO1kT8mTa3TQ==
X-Google-Smtp-Source: APXvYqwywCKFrxUGXe1dzDKOKdn7UDjBT7BeQlquV4HYXItFVBdeO9hnhuqf/A3ZQAmkFttswCEwRJJ+KNdEqPku1R0=
X-Received: by 2002:a37:d8f:: with SMTP id 137mr21547412qkn.254.1566242350541; 
 Mon, 19 Aug 2019 12:19:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
 <20190819130143.18778-5-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190819130143.18778-5-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 19 Aug 2019 14:18:59 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL7iXWU9YS-_8HkEZRgqPE8WkAm85Sai=Kx-wV8hD-3HA@mail.gmail.com>
Message-ID: <CAL_JsqL7iXWU9YS-_8HkEZRgqPE8WkAm85Sai=Kx-wV8hD-3HA@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] dt-bindings: clock: Add devicetree binding for
 BM1880 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_121912_035164_626B0443 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 darren.tsao@bitmain.com, haitao.suo@bitmain.com, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 8:02 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Add YAML devicetree binding for Bitmain BM1880 SoC.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../bindings/clock/bitmain,bm1880-clk.yaml    | 83 +++++++++++++++++++
>  include/dt-bindings/clock/bm1880-clock.h      | 82 ++++++++++++++++++
>  2 files changed, 165 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
>  create mode 100644 include/dt-bindings/clock/bm1880-clock.h
>
> diff --git a/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
> new file mode 100644
> index 000000000000..a457f996287d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/clock/bitmain,bm1880-clk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Bitmain BM1880 Clock Controller
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +description: |
> +  The Bitmain BM1880 clock controller generates and supplies clock to
> +  various peripherals within the SoC.
> +
> +  This binding uses common clock bindings
> +  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - bitmain,bm1880-clk

Just 'const: bitmain,bm1880-clk' is enough.

> +
> +  reg:
> +    minItems: 2
> +    maxItems: 2

These 2 are implied by the items list and can be dropped.

> +    items:
> +      - description: pll registers
> +      - description: system registers
> +
> +  reg-names:
> +    items:
> +      - const: pll
> +      - const: sys
> +
> +  clocks:
> +    maxItems: 1
> +    description: Phandle of the input reference clock

Don't need a description if there's only one entry.

> +
> +  clock-names:
> +    maxItems: 1
> +    items:
> +      - const: osc

Just:

clock-names:
  const: osc

> +
> +  '#clock-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - '#clock-cells'
> +
> +examples:
> +  # Clock controller node:
> +  - |
> +    clk: clock-controller@e8 {
> +        compatible = "bitmain,bm1880-clk";
> +        reg = <0xe8 0x0c>, <0x800 0xb0>;
> +        reg-names = "pll", "sys";
> +        clocks = <&osc>;
> +        clock-names = "osc";
> +        #clock-cells = <1>;
> +    };
> +
> +  # Example UART controller node that consumes clock generated by the clock controller:
> +  - |
> +    uart0: serial@58018000 {
> +         compatible = "snps,dw-apb-uart";
> +         reg = <0x0 0x58018000 0x0 0x2000>;
> +         clocks = <&clk BM1880_CLK_UART_500M>;
> +                  <&clk BM1880_CLK_APB_UART>;

This won't build without includes. Please run 'make dt_binding_check'
before you submit bindings.

> +         clock-names = "baudclk", "apb_pclk";
> +         interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +         reg-shift = <2>;
> +         reg-io-width = <4>;
> +    };
> +
> +...
> diff --git a/include/dt-bindings/clock/bm1880-clock.h b/include/dt-bindings/clock/bm1880-clock.h
> new file mode 100644
> index 000000000000..895646d66b07
> --- /dev/null
> +++ b/include/dt-bindings/clock/bm1880-clock.h
> @@ -0,0 +1,82 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Device Tree binding constants for Bitmain BM1880 SoC
> + *
> + * Copyright (c) 2019 Linaro Ltd.
> + */
> +
> +#ifndef __DT_BINDINGS_CLOCK_BM1880_H
> +#define __DT_BINDINGS_CLOCK_BM1880_H
> +
> +#define BM1880_CLK_OSC                 0
> +#define BM1880_CLK_MPLL                        1
> +#define BM1880_CLK_SPLL                        2
> +#define BM1880_CLK_FPLL                        3
> +#define BM1880_CLK_DDRPLL              4
> +#define BM1880_CLK_A53                 5
> +#define BM1880_CLK_50M_A53             6
> +#define BM1880_CLK_AHB_ROM             7
> +#define BM1880_CLK_AXI_SRAM            8
> +#define BM1880_CLK_DDR_AXI             9
> +#define BM1880_CLK_EFUSE               10
> +#define BM1880_CLK_APB_EFUSE           11
> +#define BM1880_CLK_AXI5_EMMC           12
> +#define BM1880_CLK_EMMC                        13
> +#define BM1880_CLK_100K_EMMC           14
> +#define BM1880_CLK_AXI5_SD             15
> +#define BM1880_CLK_SD                  16
> +#define BM1880_CLK_100K_SD             17
> +#define BM1880_CLK_500M_ETH0           18
> +#define BM1880_CLK_AXI4_ETH0           19
> +#define BM1880_CLK_500M_ETH1           20
> +#define BM1880_CLK_AXI4_ETH1           21
> +#define BM1880_CLK_AXI1_GDMA           22
> +#define BM1880_CLK_APB_GPIO            23
> +#define BM1880_CLK_APB_GPIO_INTR       24
> +#define BM1880_CLK_GPIO_DB             25
> +#define BM1880_CLK_AXI1_MINER          26
> +#define BM1880_CLK_AHB_SF              27
> +#define BM1880_CLK_SDMA_AXI            28
> +#define BM1880_CLK_SDMA_AUD            29
> +#define BM1880_CLK_APB_I2C             30
> +#define BM1880_CLK_APB_WDT             31
> +#define BM1880_CLK_APB_JPEG            32
> +#define BM1880_CLK_JPEG_AXI            33
> +#define BM1880_CLK_AXI5_NF             34
> +#define BM1880_CLK_APB_NF              35
> +#define BM1880_CLK_NF                  36
> +#define BM1880_CLK_APB_PWM             37
> +#define BM1880_CLK_DIV_0_RV            38
> +#define BM1880_CLK_DIV_1_RV            39
> +#define BM1880_CLK_MUX_RV              40
> +#define BM1880_CLK_RV                  41
> +#define BM1880_CLK_APB_SPI             42
> +#define BM1880_CLK_TPU_AXI             43
> +#define BM1880_CLK_DIV_UART_500M       44
> +#define BM1880_CLK_UART_500M           45
> +#define BM1880_CLK_APB_UART            46
> +#define BM1880_CLK_APB_I2S             47
> +#define BM1880_CLK_AXI4_USB            48
> +#define BM1880_CLK_APB_USB             49
> +#define BM1880_CLK_125M_USB            50
> +#define BM1880_CLK_33K_USB             51
> +#define BM1880_CLK_DIV_12M_USB         52
> +#define BM1880_CLK_12M_USB             53
> +#define BM1880_CLK_APB_VIDEO           54
> +#define BM1880_CLK_VIDEO_AXI           55
> +#define BM1880_CLK_VPP_AXI             56
> +#define BM1880_CLK_APB_VPP             57
> +#define BM1880_CLK_DIV_0_AXI1          58
> +#define BM1880_CLK_DIV_1_AXI1          59
> +#define BM1880_CLK_AXI1                        60
> +#define BM1880_CLK_AXI2                        61
> +#define BM1880_CLK_AXI3                        62
> +#define BM1880_CLK_AXI4                        63
> +#define BM1880_CLK_AXI5                        64
> +#define BM1880_CLK_DIV_0_AXI6          65
> +#define BM1880_CLK_DIV_1_AXI6          66
> +#define BM1880_CLK_MUX_AXI6            67
> +#define BM1880_CLK_AXI6                        68
> +#define BM1880_NR_CLKS                 69
> +
> +#endif /* __DT_BINDINGS_CLOCK_BM1880_H */
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
