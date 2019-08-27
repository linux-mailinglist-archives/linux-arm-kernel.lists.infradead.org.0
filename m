Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA32C9E76C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMv2jajbMJeB1WndvFTpP29co6x2oyqL/eSMCANTsV0=; b=RQvpWhVtIsi2fS
	pV5OcpPYeQ2oj9bE9Z5oKEjD+ie9H17eqhOwBvkhuG11W1a97lBCFzuItvEGQRJymnfB25ZcX+fPc
	D61sMLMswGWrZDiAZ/IpDzxrCRR0i+1SRftoCxXOonu4Z+91hi8U5u4dFgHf2ckymritoSRS+3wlE
	TuWT1N0E6akrAOf8KOc52kseJ8Znb81BSpfxtm5sU8PS3RK49Mf8iCSXIWPv14RaocBZzq8UdSmaZ
	D+4f50HPw5UKc3gkVJeO8Nf4m5MJSC6c8VuOiCeUG+o485dD5zMNxsJZ0kMdvZek4xCRca5DSsXSf
	sECRZHfptV3WZ1ebkueA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aLi-0002Sh-4M; Tue, 27 Aug 2019 12:13:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2aLR-0002SK-4v
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:13:06 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FB302186A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 12:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566907984;
 bh=aonEiOoI4N7zGZiyonXbquCAFE0htrxfMdE5k4O5cvI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pk0OU1+LKCEsFAI5jInaf3ETd9t+tKrlFrvSWdPics5nhYt38Ds5jNxZw06XHYlei
 mEwKTE+wc/OqH6l5AhkueGzgccaXeJkTZc+Z3+v9B+0XewwFKwPLnaLyt8/ZV98bIr
 aocgVJAWzo0zDg43Xev2Qi1QgbjSSIsQ+5oHLaH0=
Received: by mail-qk1-f179.google.com with SMTP id m2so16720734qki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 05:13:04 -0700 (PDT)
X-Gm-Message-State: APjAAAWiF/F2KOiXbE3IuMxlm0lOuurOmKW/h+vbTKWccv3aCcWpzcKl
 i5S9Oo0NG1GfEXKwm0ZPh0GryZdBAuz6cU4EYg==
X-Google-Smtp-Source: APXvYqyobVuBJkxtt2J5Vqgl94929NSQZpwVLIffBY9bHymUp0I31gQKCn9/grMijIqD8+Buj7d1FFkojRRMupXUPvk=
X-Received: by 2002:a37:8905:: with SMTP id l5mr3754099qkd.152.1566907983749; 
 Tue, 27 Aug 2019 05:13:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
 <20190822172426.25879-5-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190822172426.25879-5-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 07:12:51 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLg1G6iCYSLOjBMNheURQ-Ew9hEnvaz=iNxwxQ0L1iGfg@mail.gmail.com>
Message-ID: <CAL_JsqLg1G6iCYSLOjBMNheURQ-Ew9hEnvaz=iNxwxQ0L1iGfg@mail.gmail.com>
Subject: Re: [PATCH v4 4/8] dt-bindings: clock: Add devicetree binding for
 BM1880 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_051305_228570_1C2FA70B 
X-CRM114-Status: GOOD (  17.54  )
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

On Thu, Aug 22, 2019 at 12:25 PM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Add YAML devicetree binding for Bitmain BM1880 SoC.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../bindings/clock/bitmain,bm1880-clk.yaml    | 74 +++++++++++++++++
>  include/dt-bindings/clock/bm1880-clock.h      | 82 +++++++++++++++++++
>  2 files changed, 156 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
>  create mode 100644 include/dt-bindings/clock/bm1880-clock.h
>
> diff --git a/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
> new file mode 100644
> index 000000000000..31c48dcf5b8e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: GPL-2.0+

Dual license please.

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
> +    const: bitmain,bm1880-clk
> +
> +  reg:
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
> +
> +  clock-names:
> +    const: osc
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

additionalProperties: false


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
> +         clocks = <&clk 45>, <&clk 46>;
> +         clock-names = "baudclk", "apb_pclk";
> +         interrupts = <0 9 4>;
> +         reg-shift = <2>;
> +         reg-io-width = <4>;
> +    };
> +
> +...
> diff --git a/include/dt-bindings/clock/bm1880-clock.h b/include/dt-bindings/clock/bm1880-clock.h
> new file mode 100644
> index 000000000000..b46732361b25
> --- /dev/null
> +++ b/include/dt-bindings/clock/bm1880-clock.h
> @@ -0,0 +1,82 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
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
