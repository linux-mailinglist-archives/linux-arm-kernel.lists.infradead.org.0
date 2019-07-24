Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB70873389
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMzYB28wJ6JTgdxg7h+5fW6wcMzEIhf5IQHNKnDVaXw=; b=tibMXvAQxiVOsi
	Zs8GupmL8Tx0+394AGMLNYlCOkHcIR9uy3DrshHMuTeVbb0NU9Pbbidm0okq8SP80xeA0oPhzp7C0
	WPR9fEuzpLy6Q7s0w/6x7d/304NV2/FGDdQYXQMHdME7pB+wx9oqXn41ez29Gx3XH14Di8TXQ36LO
	tPnYwRKT4pOJeao+k6tLU7BZPFHKyByGkE226AJUAp1N9q/jKkmY/iXqyv4eMXNfBPAlteJf9GAoy
	NJWpOo/16KAzZq+eVZka1q5Rgce+0o8p/iPkLVADUPAWPfMfNwZ4cF5CRjFiF48kFSzdJA30PJpUz
	CMo7LtZcyIpaMMHddB0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJyU-0004tU-2B; Wed, 24 Jul 2019 16:18:42 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJyJ-0004ss-TH
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:18:33 +0000
Received: by mail-io1-f68.google.com with SMTP id h6so4257463iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 09:18:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NiEvOyYVhlLilgSFE1mlRwHXS6W3gSeLb1b8lQMXBOQ=;
 b=Q84ZL5O4bHEChCeqjovhMlIJQJx/HAfnTGwu8P0UbK8oS74xsfeocqF8WjRAaj18Sl
 jVyy6b9wtM833MNX2CZ2q0e9b5/AJ41dbq+hqRSyM7pY8iOECJjB4LkgrWKUFimyx5Ky
 rCTQ9MqLwnSHFj606qDY+31C6TH3ONVlmmazDPrNM5Dd+j63PfmGbYYDFFsghYBRpMsN
 q7dna81onb1fDmhOvzCmCTO8mzFLqg0kJ03oOx2FvG1axJ0Jgd3WBE3hhGlZVO8yuMy6
 mjHgCTGE+BfHyggUkHzDD0QsBF7h8RqfM1SLV9PMtGa+zo5at7xSLN6Q/gxBWNZLUHA1
 ZaQw==
X-Gm-Message-State: APjAAAXMJD4dJJofmEeOk+Q8JXRnyElLkgDPmSMKqBJXv65pZEI9apvD
 8E7sFNAEV2tut7SdDyhFYQ==
X-Google-Smtp-Source: APXvYqx80bAdAvJF00+PN/mFyPi4UNJY/h6LQp8Akm1NxxdhOq+ov9gIYj6vopYyGsh5Ktydz/4jiQ==
X-Received: by 2002:a6b:6012:: with SMTP id r18mr77134590iog.241.1563985110886; 
 Wed, 24 Jul 2019 09:18:30 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id m4sm41525223iok.68.2019.07.24.09.18.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 09:18:30 -0700 (PDT)
Date: Wed, 24 Jul 2019 10:18:29 -0600
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/5] dt-bindings: clock: Add Bitmain BM1880 SoC clock
 controller binding
Message-ID: <20190724161829.GA26249@bogus>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
 <20190705151440.20844-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705151440.20844-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_091831_954555_C815BC92 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, haitao.suo@bitmain.com,
 fisher.cheng@bitmain.com, alec.lin@bitmain.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 08:44:36PM +0530, Manivannan Sadhasivam wrote:
> Add devicetree binding for Bitmain BM1880 SoC clock controller.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../bindings/clock/bitmain,bm1880-clk.txt     | 47 +++++++++++
>  include/dt-bindings/clock/bm1880-clock.h      | 82 +++++++++++++++++++
>  2 files changed, 129 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
>  create mode 100644 include/dt-bindings/clock/bm1880-clock.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
> new file mode 100644
> index 000000000000..9c967095d430
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
> @@ -0,0 +1,47 @@
> +* Bitmain BM1880 Clock Controller
> +
> +The Bitmain BM1880 clock controler generates and supplies clock to

checkpatch.pl reports a spelling error...

> +various peripherals within the SoC.
> +
> +Required Properties:
> +
> +- compatible: Should be "bitmain,bm1880-clk"
> +- reg :	Register address and size of PLL and SYS control domains
> +- reg-names : Register domain names: "pll" and "sys"
> +- clocks : Phandle of the input reference clock.
> +- #clock-cells: Should be 1.
> +
> +Each clock is assigned an identifier, and client nodes can use this identifier
> +to specify the clock which they consume.
> +
> +All available clocks are defined as preprocessor macros in corresponding
> +dt-bindings/clock/bm1880-clock.h header and can be used in device tree sources.
> +
> +External clocks:
> +
> +The osc clock used as the input for the plls is generated outside the SoC.
> +It is expected that it is defined using standard clock bindings as "osc".
> +
> +Example: 
> +
> +        clk: clock-controller@800 {

Usually the unit-address is from the first entry.

> +                compatible = "bitmain,bm1880-clk";
> +                reg = <0xe8 0x0c>,<0x800 0xb0>;

space                                ^

> +                reg-names = "pll", "sys";
> +                clocks = <&osc>;
> +                #clock-cells = <1>;
> +        };
> +
> +Example: UART controller node that consumes clock generated by the clock
> +controller:
> +
> +        uart0: serial@58018000 {
> +                compatible = "snps,dw-apb-uart";
> +                reg = <0x0 0x58018000 0x0 0x2000>;
> +                clocks = <&clk BM1880_CLK_UART_500M>;
> +                         <&clk BM1880_CLK_APB_UART>;
> +                clock-names = "baudclk", "apb_pclk";
> +                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +                reg-shift = <2>;
> +                reg-io-width = <4>;
> +        };
> diff --git a/include/dt-bindings/clock/bm1880-clock.h b/include/dt-bindings/clock/bm1880-clock.h
> new file mode 100644
> index 000000000000..764472b9a4fd
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
> +#define BM1880_CLK_OSC			0
> +#define BM1880_CLK_MPLL			1
> +#define BM1880_CLK_SPLL			2
> +#define BM1880_CLK_FPLL			3
> +#define BM1880_CLK_DDRPLL 		4

space before tab

> +#define BM1880_CLK_A53			5
> +#define BM1880_CLK_50M_A53		6
> +#define BM1880_CLK_AHB_ROM		7
> +#define BM1880_CLK_AXI_SRAM		8
> +#define BM1880_CLK_DDR_AXI		9
> +#define BM1880_CLK_EFUSE		10
> +#define BM1880_CLK_APB_EFUSE		11
> +#define BM1880_CLK_AXI5_EMMC		12
> +#define BM1880_CLK_EMMC			13
> +#define BM1880_CLK_100K_EMMC		14
> +#define BM1880_CLK_AXI5_SD		15
> +#define BM1880_CLK_SD			16
> +#define BM1880_CLK_100K_SD		17
> +#define BM1880_CLK_500M_ETH0		18
> +#define BM1880_CLK_AXI4_ETH0		19
> +#define BM1880_CLK_500M_ETH1		20
> +#define BM1880_CLK_AXI4_ETH1		21
> +#define BM1880_CLK_AXI1_GDMA		22
> +#define BM1880_CLK_APB_GPIO		23
> +#define BM1880_CLK_APB_GPIO_INTR	24
> +#define BM1880_CLK_GPIO_DB		25
> +#define BM1880_CLK_AXI1_MINER		26
> +#define BM1880_CLK_AHB_SF		27
> +#define BM1880_CLK_SDMA_AXI		28
> +#define BM1880_CLK_SDMA_AUD		29
> +#define BM1880_CLK_APB_I2C		30
> +#define BM1880_CLK_APB_WDT		31
> +#define BM1880_CLK_APB_JPEG		32
> +#define BM1880_CLK_JPEG_AXI		33
> +#define BM1880_CLK_AXI5_NF		34
> +#define BM1880_CLK_APB_NF		35
> +#define BM1880_CLK_NF			36
> +#define BM1880_CLK_APB_PWM		37
> +#define BM1880_CLK_DIV_0_RV		38
> +#define BM1880_CLK_DIV_1_RV		39
> +#define BM1880_CLK_MUX_RV		40
> +#define BM1880_CLK_RV			41
> +#define BM1880_CLK_APB_SPI		42
> +#define BM1880_CLK_TPU_AXI		43
> +#define BM1880_CLK_DIV_UART_500M	44
> +#define BM1880_CLK_UART_500M		45
> +#define BM1880_CLK_APB_UART		46
> +#define BM1880_CLK_APB_I2S		47
> +#define BM1880_CLK_AXI4_USB		48
> +#define BM1880_CLK_APB_USB		49
> +#define BM1880_CLK_125M_USB		50
> +#define BM1880_CLK_33K_USB		51
> +#define BM1880_CLK_DIV_12M_USB		52
> +#define BM1880_CLK_12M_USB		53
> +#define BM1880_CLK_APB_VIDEO		54
> +#define BM1880_CLK_VIDEO_AXI		55
> +#define BM1880_CLK_VPP_AXI		56
> +#define BM1880_CLK_APB_VPP		57
> +#define BM1880_CLK_DIV_0_AXI1		58
> +#define BM1880_CLK_DIV_1_AXI1		59
> +#define BM1880_CLK_AXI1			60
> +#define BM1880_CLK_AXI2			61
> +#define BM1880_CLK_AXI3			62
> +#define BM1880_CLK_AXI4			63
> +#define BM1880_CLK_AXI5			64
> +#define BM1880_CLK_DIV_0_AXI6		65
> +#define BM1880_CLK_DIV_1_AXI6		66
> +#define BM1880_CLK_MUX_AXI6		67
> +#define BM1880_CLK_AXI6			68
> +#define BM1880_NR_CLKS			69
> +
> +#endif /* __DT_BINDINGS_CLOCK_BM1880_H */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
