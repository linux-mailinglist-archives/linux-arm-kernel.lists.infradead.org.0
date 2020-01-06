Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7146131B1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 23:13:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZ0AWJ2iaoIQHgy6XYVoGMGqjsaSJ1i8OlVuZNgak08=; b=g5LHXCXNz2jtpy
	azYX90rsHwrHFhAyB3DtdP1SHHVm3AH88Lj/V7G21nCV3sTOKWY0BZfJUy3imwgDqA6GoyoJeydJ6
	pIKD5n26kH4kDFk2Zky4TmOf0R4ij8T1cKblkPoNBFpa+WjUpgQgNrJlJl6VTmahzENzn6Ccj84NQ
	Z6AQlNpf71d7NICq6zI9kTdW68+vXikquflvBnJAty4uR6wVeCBof8Wl2vQzsMbpm9xJ9RIDBTk2g
	wqGVkVOTe5NQsOuHMRx7pFejn2iqHWCIhMh44VYatV1Az8O72SddhuXLGo0/vwCjptCDgwlwimZzV
	M0Ep1uW5bdGghYUHBtIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioacP-0004fB-Gs; Mon, 06 Jan 2020 22:13:01 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioacG-0004er-Ej
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 22:12:54 +0000
Received: by mail-ot1-f67.google.com with SMTP id 59so73604879otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 14:12:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CLp8AWOq/ppcpPg4zoNMmXmjnqf4+B8gtYz+J6bqL0A=;
 b=mnxrhjgJrMo8t+jzD0j2nTwOZFI+gcMPdBYQQaVJd2UsT6Re5ANMdVc4KuoxAQX6uR
 7hkvZYH30x1LVW18T4bBXnrZtnJJyXJpiNOfWxIr+mvLnaZd79fninL/X9sU0ZgZ0t2b
 VPwfWS7+kMAH7JrZeVt97JCy/rXakRvsEoUFbkEzMLNU7TBSWNPZNrhE6YE6csk8Rrwl
 7RF7YSvvTA+WF7EBpuMpJV1yMx1ylJiPDW3Zg7z9m9siV778oQDjdGZo6PjPr2AQMAxs
 acfemmJ02g+l2gQ6AkBIk4oRdACzKWuwpXvIxtdR8cW6CgmI/pQK19r63c3Ma9iBkiy3
 bNPQ==
X-Gm-Message-State: APjAAAU/PWRuKjptytNmCnbHtYDZ8RwJzGOODk1Khz6mY4FnDvL0DZ+v
 k2BviqlwlM5JPsq18PbBoFGhhIA=
X-Google-Smtp-Source: APXvYqxPM9XTf0jRoTQxGTzx9aBemHH61hL62yxJz+ehBYm5WKCNCTrRNrONeevzfcMmgtkhPDI/AA==
X-Received: by 2002:a9d:478:: with SMTP id 111mr115947243otc.359.1578348771359; 
 Mon, 06 Jan 2020 14:12:51 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net.
 [70.5.121.225])
 by smtp.gmail.com with ESMTPSA id j10sm19552417otr.64.2020.01.06.14.12.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 14:12:50 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22043f
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 06 Jan 2020 16:12:46 -0600
Date: Mon, 6 Jan 2020 16:12:46 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MP
Message-ID: <20200106221246.GA17055@bogus>
References: <1578302992-5723-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578302992-5723-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_141252_490274_17CE9EA8 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linus.walleij@linaro.org,
 stefan@agner.ch, bjorn.andersson@linaro.org, leonard.crestez@nxp.com,
 will@kernel.org, abel.vesa@nxp.com, festevam@gmail.com,
 marcin.juszkiewicz@linaro.org, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org, maxime@cerno.tech,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, kernel@pengutronix.de,
 olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 05:29:50PM +0800, Anson Huang wrote:
> Add binding doc for i.MX8MP pinctrl driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> ---
> Changes since V2:
> 	- use DT schema instead of txt for binding doc.
> ---
>  .../bindings/pinctrl/fsl,imx8mp-pinctrl.yaml       |  65 ++
>  arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h     | 931 +++++++++++++++++++++
>  2 files changed, 996 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
> new file mode 100644
> index 0000000..cdb6c21
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/fsl,imx8mp-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale IMX8MP IOMUX Controller
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description:
> +  Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this directory
> +  for common binding part and usage.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8mp-iomuxc
> +
> +# Client device subnode's properties
> +patternProperties:
> +  '-grp$':
> +    type: object
> +    description:
> +      Pinctrl node's client devices use subnodes for desired pin configuration.
> +      Client device subnodes use below standard properties.
> +
> +    properties:
> +      fsl,pins:
> +        $ref: /schemas/types.yaml#/definitions/string

string or...

> +        description:
> +          each entry consists of 6 integers and represents the mux and config

integers?

> +          setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
> +          mux_val input_val> are specified using a PIN_FUNC_ID macro, which can
> +          be found in <arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h>. The last
> +          integer CONFIG is the pad setting value like pull-up on this pin. Please
> +          refer to i.MX8M Plus Reference Manual for detailed CONFIG settings.
> +
> +    required:
> +      - fsl,pins
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  # Pinmux controller node
> +  - |
> +    iomuxc: pinctrl@30330000 {
> +        compatible = "fsl,imx8mp-iomuxc";
> +        reg = <0x30330000 0x10000>;
> +
> +        pinctrl_uart2: uart2grp {
> +            fsl,pins = <
> +                MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x49
> +                MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x49

Run 'make dt_binding_check'. Doesn't build:

Error: Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.example.dts:23.21-22 syntax error
FATAL ERROR: Unable to parse input tree

> +            >;
> +        };
> +    };
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
