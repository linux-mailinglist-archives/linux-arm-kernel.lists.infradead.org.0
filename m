Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67811135FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23aUbJLfQwpMsgMETRENgbrn29PqH8uzFTKjtalExWk=; b=Yj9MqgXFb2qrt9
	/UKkq4Azeie3S4QuILhbQgdVwgOyuLj/pdVXMcK4RAtPsJgPyEcpzBFay/0nR2XfTds3d6jcvDLvh
	IfFOqr+QXtrnG6Ee1LWncs1FDYLyE5reWOexPvak7R4yZanf1Mxcs2WVz+vgFC5mB4n6yM9qeMeaH
	T2sfPM2tp/tvK+DDLP+wZx+K2lERb0ogQoVslkz2w/3QAjIyXv2HobJ3eIYr/3UcTNLcptd8066+o
	JeFGdrZZ23uIvJgD/RSFzwZaoZaXXnE3qv44NHvmoBRBveH33gs7pcpaWIqGn+GeuaAALMHh3xxec
	FG0QXL7KAp5JC9G4LN5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaiK-0007WJ-6y; Wed, 04 Dec 2019 19:53:32 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaiA-0007Vl-LI
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:53:24 +0000
Received: by mail-ot1-f65.google.com with SMTP id o9so405523ote.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 11:53:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VErAFhUGRb0cNxhhu1eTo9w0H41l+9thkMVm9GG9tXc=;
 b=Vbv/oiMzT/7uApafPX3WtQc1I8cqlFRamnoUlxEZDo6kEOEkuT91uTKeRbnF4zkUUz
 hUXevY3vTZ5hEi5Fl+wC6RbY9Vi6GJNYbUO0T7ve6GJRUzfpNTtkE+qeWT6RKkQXw4Vi
 fWvpriHajGm8OzN4h1kcTIEFi0klSmXdcxNRfO+OaIWwWZJHwLeNjhGK+9XTjlGGYm9e
 46tmrPu/qVKngcGPO33NGSFGA0TokexsSegHEdX9InqFUPzNYFW5J4o5JWGIZbF4+S60
 BMOpr5uHRvQc1e9Fy334hvhb0ax8lP2Vj+khn43LmL1nXuBBOsvdzmGUbGm4K0Zi1WRn
 HBxg==
X-Gm-Message-State: APjAAAUbuG/OtNfZ5h6m7qfvp/kgmRR4app5cvWRw6yJnYF3N79SGTD3
 vzXBKx3TF5oRh3RY27VNCA==
X-Google-Smtp-Source: APXvYqxcpDfq7UKMVa3zk4+HKd/+0nlN8Z8TpaOkq3Ac+qhC2WwGHINTz7n/nZbH9FKtcKaUylVVCg==
X-Received: by 2002:a9d:73c8:: with SMTP id m8mr4065348otk.34.1575489201937;
 Wed, 04 Dec 2019 11:53:21 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r6sm2514506otd.66.2019.12.04.11.53.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:53:21 -0800 (PST)
Date: Wed, 4 Dec 2019 13:53:20 -0600
From: Rob Herring <robh@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: clock: Add bindings for versal clock
 driver
Message-ID: <20191204195320.GA7173@bogus>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1574415814-19797-2-git-send-email-rajan.vaja@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574415814-19797-2-git-send-email-rajan.vaja@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_115322_697910_75A0C81D 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, tejas.patel@xilinx.com, linux-kernel@vger.kernel.org,
 gustavo@embeddedor.com, sboyd@kernel.org, nava.manne@xilinx.com,
 mturquette@baylibre.com, michal.simek@xilinx.com, m.tretter@pengutronix.de,
 devicetree@vger.kernel.org, mdf@kernel.org,
 linux-arm-kernel@lists.infradead.org, jolly.shah@xilinx.com,
 linux-clk@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 01:43:29AM -0800, Rajan Vaja wrote:
> Add documentation to describe Xilinx Versal clock driver
> bindings.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
> Changes in v2:
>  - Correct description.
>  - Add "select: false" field to avoid failing when firmware schema is
>    available.
>  - Remove "_clk" from clock names.
>  - Remove minItems and maxItems fields.
> 
> NOTE: firmware dt-bindings in yaml format will be added in a separate
>       change and $ref of this yaml to firmware will be added.
> ---
>  .../devicetree/bindings/clock/xlnx,versal-clk.yaml |  64 +++++++++++
>  include/dt-bindings/clock/xlnx-versal-clk.h        | 123 +++++++++++++++++++++
>  2 files changed, 187 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
>  create mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> new file mode 100644
> index 0000000..a1f47cf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: GPL-2.0

For new bindings: (GPL-2.0-only OR BSD-2-Clause)

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/clock/xlnx,versal-clk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx Versal clock controller
> +
> +maintainers:
> +  - Michal Simek <michal.simek@xilinx.com>
> +  - Jolly Shah <jolly.shah@xilinx.com>
> +  - Rajan Vaja <rajan.vaja@xilinx.com>
> +
> +description: |
> +  The clock controller is a hardware block of Xilinx versal clock tree. It
> +  reads required input clock frequencies from the devicetree and acts as clock
> +  provider for all clock consumers of PS clocks.
> +
> +select: false
> +
> +properties:
> +  compatible:
> +    const: xlnx,versal-clk
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  clocks:
> +    description: List of clock specifiers which are external input
> +      clocks to the given clock controller.
> +    items:
> +      - description: reference clock
> +      - description: alternate reference clock
> +      - description: alternate reference clock for programmable logic
> +
> +  clock-names:
> +    items:
> +      - const: ref
> +      - const: alt_ref
> +      - const: pl_alt_ref
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    firmware {
> +      zynqmp_firmware: zynqmp-firmware {
> +        compatible = "xlnx,zynqmp-firmware";
> +        method = "smc";
> +        versal_clk: clock-controller {
> +          #clock-cells = <1>;
> +          compatible = "xlnx,versal-clk";
> +          clocks = <&ref>, <&alt_ref>, <&pl_alt_ref>;
> +          clock-names = "ref", "alt_ref", "pl_alt_ref";
> +        };
> +      };
> +    };
> +...
> diff --git a/include/dt-bindings/clock/xlnx-versal-clk.h b/include/dt-bindings/clock/xlnx-versal-clk.h
> new file mode 100644
> index 0000000..264d634
> --- /dev/null
> +++ b/include/dt-bindings/clock/xlnx-versal-clk.h
> @@ -0,0 +1,123 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + *  Copyright (C) 2019 Xilinx Inc.
> + *
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_VERSAL_H
> +#define _DT_BINDINGS_CLK_VERSAL_H
> +
> +#define PMC_PLL					1
> +#define APU_PLL					2
> +#define RPU_PLL					3
> +#define CPM_PLL					4
> +#define NOC_PLL					5
> +#define PLL_MAX					6
> +#define PMC_PRESRC				7
> +#define PMC_POSTCLK				8
> +#define PMC_PLL_OUT				9
> +#define PPLL					10
> +#define NOC_PRESRC				11
> +#define NOC_POSTCLK				12
> +#define NOC_PLL_OUT				13
> +#define NPLL					14
> +#define APU_PRESRC				15
> +#define APU_POSTCLK				16
> +#define APU_PLL_OUT				17
> +#define APLL					18
> +#define RPU_PRESRC				19
> +#define RPU_POSTCLK				20
> +#define RPU_PLL_OUT				21
> +#define RPLL					22
> +#define CPM_PRESRC				23
> +#define CPM_POSTCLK				24
> +#define CPM_PLL_OUT				25
> +#define CPLL					26
> +#define PPLL_TO_XPD				27
> +#define NPLL_TO_XPD				28
> +#define APLL_TO_XPD				29
> +#define RPLL_TO_XPD				30
> +#define EFUSE_REF				31
> +#define SYSMON_REF				32
> +#define IRO_SUSPEND_REF				33
> +#define USB_SUSPEND				34
> +#define SWITCH_TIMEOUT				35
> +#define RCLK_PMC				36
> +#define RCLK_LPD				37
> +#define WDT					38
> +#define TTC0					39
> +#define TTC1					40
> +#define TTC2					41
> +#define TTC3					42
> +#define GEM_TSU					43
> +#define GEM_TSU_LB				44
> +#define MUXED_IRO_DIV2				45
> +#define MUXED_IRO_DIV4				46
> +#define PSM_REF					47
> +#define GEM0_RX					48
> +#define GEM0_TX					49
> +#define GEM1_RX					50
> +#define GEM1_TX					51
> +#define CPM_CORE_REF				52
> +#define CPM_LSBUS_REF				53
> +#define CPM_DBG_REF				54
> +#define CPM_AUX0_REF				55
> +#define CPM_AUX1_REF				56
> +#define QSPI_REF				57
> +#define OSPI_REF				58
> +#define SDIO0_REF				59
> +#define SDIO1_REF				60
> +#define PMC_LSBUS_REF				61
> +#define I2C_REF					62
> +#define TEST_PATTERN_REF			63
> +#define DFT_OSC_REF				64
> +#define PMC_PL0_REF				65
> +#define PMC_PL1_REF				66
> +#define PMC_PL2_REF				67
> +#define PMC_PL3_REF				68
> +#define CFU_REF					69
> +#define SPARE_REF				70
> +#define NPI_REF					71
> +#define HSM0_REF				72
> +#define HSM1_REF				73
> +#define SD_DLL_REF				74
> +#define FPD_TOP_SWITCH				75
> +#define FPD_LSBUS				76
> +#define ACPU					77
> +#define DBG_TRACE				78
> +#define DBG_FPD					79
> +#define LPD_TOP_SWITCH				80
> +#define ADMA					81
> +#define LPD_LSBUS				82
> +#define CPU_R5					83
> +#define CPU_R5_CORE				84
> +#define CPU_R5_OCM				85
> +#define CPU_R5_OCM2				86
> +#define IOU_SWITCH				87
> +#define GEM0_REF				88
> +#define GEM1_REF				89
> +#define GEM_TSU_REF				90
> +#define USB0_BUS_REF				91
> +#define UART0_REF				92
> +#define UART1_REF				93
> +#define SPI0_REF				94
> +#define SPI1_REF				95
> +#define CAN0_REF				96
> +#define CAN1_REF				97
> +#define I2C0_REF				98
> +#define I2C1_REF				99
> +#define DBG_LPD					100
> +#define TIMESTAMP_REF				101
> +#define DBG_TSTMP				102
> +#define CPM_TOPSW_REF				103
> +#define USB3_DUAL_REF				104
> +#define OUTCLK_MAX				105
> +#define REF_CLK					106
> +#define PL_ALT_REF_CLK				107
> +#define MUXED_IRO				108
> +#define PL_EXT					109
> +#define PL_LB					110
> +#define MIO_50_OR_51				111
> +#define MIO_24_OR_25				112
> +
> +#endif
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
