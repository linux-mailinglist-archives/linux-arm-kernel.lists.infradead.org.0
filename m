Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2239E1F9E80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFai1EWFWvZmPMLfYd3gO61A/0usBbS70S4xxC2pxTI=; b=ozS7fgUBKThBoH
	SoMPVZ50Lp/2h//Y7xPhLCg5mXwR4ouFZaUiKmnwVQuNyIoTyEfCn8IRhGIwJti60gUhrvay8Cpih
	XIE/8hKIUCtIlZ+crkAEz7uulmivb3QRQaZUyM9OU74ZKHfLlHoVFCl0mJO1EOhN4vNZ5ONIsdmai
	LmI3jeTMzA/sy4BplfyZjGvjFfi0LY7zNN4eHlbtTm048yPYv6XLCKaeNxIFWZdXiebntOPX/SODv
	ilWv2fsZ+OnXDbiYz58z1Cxh5mEdHqxO2h4fZFN4PFQyZ5c+Rbb4AONsKnRzMkGQ1+X1DbyfetEb5
	XjH4p3ZM1djzEM4fVlzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksxw-00082k-LA; Mon, 15 Jun 2020 17:32:12 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksxk-00081u-JU
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:32:02 +0000
Received: by mail-io1-f65.google.com with SMTP id c8so18813477iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:31:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=l7CxLkTZyFjGvXTayzBNklewzd13q2JvFcKMk7C/FVo=;
 b=jT4eQrcUrpcNaAxNSMnNjRb6AkXCsh94inRwWH4kqGrm1QHQPmxSwKS2f0bsc8+Qhm
 XI4vuuOO6HH8IdEKbTJ09J95a8MnXT0dY4+1afuyRFg50mwnzrQ7HR8KCJJ9IeOHC9Dr
 NmVYdqBFw+rW0lnE+2Zf2Fs5WIpA0S/jHME4HP/O3S9Gov1p3kM3jmqg9GFnYa2FbCNI
 u72FeF9w+qHU9gwUQkFdUzioM22P5kmr7rNE3WGROgdgDEt00fOXYZI3WJiRxJf3ejcF
 aIHedvehfDPdRehYrd8QtPDnkKXXWaSzY37s11NXrY6GmxHz1Gt+rKbPHHOZ/znSv70q
 VgFQ==
X-Gm-Message-State: AOAM532HTroQ9z524wBulgGi5n1Y7CjcFrJZz+YNhCKCrsOUeeixiPP+
 oajjKZxqOaAxQ/aoswYXYYmMr+Y=
X-Google-Smtp-Source: ABdhPJwhPLxwKGqwn+CxKhSRc+rrr/Ldt7bWE9QK9zxBtR6Pv5hjfN6xot/Ll2WA9gkGIimBCgOKAg==
X-Received: by 2002:a5e:8305:: with SMTP id x5mr28189275iom.47.1592242318025; 
 Mon, 15 Jun 2020 10:31:58 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id a10sm8321063ilb.31.2020.06.15.10.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:31:57 -0700 (PDT)
Received: (nullmailer pid 2002134 invoked by uid 1000);
 Mon, 15 Jun 2020 17:31:56 -0000
Date: Mon, 15 Jun 2020 11:31:56 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] dt-bindings: input: Convert imx keypad to json-schema
Message-ID: <20200615173156.GA1996893@bogus>
References: <1591253001-6497-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591253001-6497-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_103200_641783_8A837985 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, gnuiyl@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 linux-input@vger.kernel.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 02:43:21PM +0800, Anson Huang wrote:
> Convert the i.MX KEYPAD binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/input/imx-keypad.txt       | 53 -------------
>  .../devicetree/bindings/input/imx-keypad.yaml      | 89 ++++++++++++++++++++++
>  2 files changed, 89 insertions(+), 53 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/input/imx-keypad.txt
>  create mode 100644 Documentation/devicetree/bindings/input/imx-keypad.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/imx-keypad.txt b/Documentation/devicetree/bindings/input/imx-keypad.txt
> deleted file mode 100644
> index 2ebaf7d..0000000
> --- a/Documentation/devicetree/bindings/input/imx-keypad.txt
> +++ /dev/null
> @@ -1,53 +0,0 @@
> -* Freescale i.MX Keypad Port(KPP) device tree bindings
> -
> -The KPP is designed to interface with a keypad matrix with 2-point contact
> -or 3-point contact keys. The KPP is designed to simplify the software task
> -of scanning a keypad matrix. The KPP is capable of detecting, debouncing,
> -and decoding one or multiple keys pressed simultaneously on a keypad.
> -
> -Required SoC Specific Properties:
> -- compatible: Should be "fsl,<soc>-kpp".
> -
> -- reg: Physical base address of the KPP and length of memory mapped
> -  region.
> -
> -- interrupts: The KPP interrupt number to the CPU(s).
> -
> -- clocks: The clock provided by the SoC to the KPP. Some SoCs use dummy
> -clock(The clock for the KPP is provided by the SoCs automatically).
> -
> -Required Board Specific Properties:
> -- pinctrl-names: The definition can be found at
> -pinctrl/pinctrl-bindings.txt.
> -
> -- pinctrl-0: The definition can be found at
> -pinctrl/pinctrl-bindings.txt.
> -
> -- linux,keymap: The definition can be found at
> -bindings/input/matrix-keymap.txt.
> -
> -Example:
> -kpp: kpp@73f94000 {
> -	compatible = "fsl,imx51-kpp", "fsl,imx21-kpp";
> -	reg = <0x73f94000 0x4000>;
> -	interrupts = <60>;
> -	clocks = <&clks 0>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_kpp_1>;
> -	linux,keymap = <0x00000067	/* KEY_UP */
> -			0x0001006c	/* KEY_DOWN */
> -			0x00020072	/* KEY_VOLUMEDOWN */
> -			0x00030066	/* KEY_HOME */
> -			0x0100006a	/* KEY_RIGHT */
> -			0x01010069	/* KEY_LEFT */
> -			0x0102001c	/* KEY_ENTER */
> -			0x01030073	/* KEY_VOLUMEUP */
> -			0x02000040	/* KEY_F6 */
> -			0x02010042	/* KEY_F8 */
> -			0x02020043	/* KEY_F9 */
> -			0x02030044	/* KEY_F10 */
> -			0x0300003b	/* KEY_F1 */
> -			0x0301003c	/* KEY_F2 */
> -			0x0302003d	/* KEY_F3 */
> -			0x03030074>;	/* KEY_POWER */
> -};
> diff --git a/Documentation/devicetree/bindings/input/imx-keypad.yaml b/Documentation/devicetree/bindings/input/imx-keypad.yaml
> new file mode 100644
> index 0000000..a1350cd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/imx-keypad.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/imx-keypad.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX Keypad Port(KPP) device tree bindings
> +
> +maintainers:
> +  - Liu Ying <gnuiyl@gmail.com>
> +
> +description: |
> +  The KPP is designed to interface with a keypad matrix with 2-point contact
> +  or 3-point contact keys. The KPP is designed to simplify the software task
> +  of scanning a keypad matrix. The KPP is capable of detecting, debouncing,
> +  and decoding one or multiple keys pressed simultaneously on a keypad.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: fsl,imx21-kpp
> +      - items:
> +          - enum:
> +            - fsl,imx25-kpp
> +            - fsl,imx27-kpp
> +            - fsl,imx31-kpp
> +            - fsl,imx35-kpp
> +            - fsl,imx51-kpp
> +            - fsl,imx53-kpp
> +            - fsl,imx50-kpp
> +            - fsl,imx6q-kpp
> +            - fsl,imx6sx-kpp
> +            - fsl,imx6sl-kpp
> +            - fsl,imx6sll-kpp
> +            - fsl,imx6ul-kpp
> +            - fsl,imx7d-kpp
> +          - const: fsl,imx21-kpp
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  linux,keymap:
> +    $ref: '/schemas/types.yaml#/definitions/uint32-array'
> +    description: |
> +      An array of packed 1-cell entries containing the equivalent of row,
> +      column and linux key-code. The 32-bit big endian cell is packed as:
> +      row << 24 | column << 16 | key-code

Can you please convert matrix-keymap.txt to a schema first and then 
include in here.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - linux,keymap
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    keypad@73f94000 {
> +        compatible = "fsl,imx51-kpp", "fsl,imx21-kpp";
> +        reg = <0x73f94000 0x4000>;
> +        interrupts = <60>;
> +        clocks = <&clks 0>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&pinctrl_kpp_1>;
> +        linux,keymap = <0x00000067	/* KEY_UP */
> +                        0x0001006c	/* KEY_DOWN */
> +                        0x00020072	/* KEY_VOLUMEDOWN */
> +                        0x00030066	/* KEY_HOME */
> +                        0x0100006a	/* KEY_RIGHT */
> +                        0x01010069	/* KEY_LEFT */
> +                        0x0102001c	/* KEY_ENTER */
> +                        0x01030073	/* KEY_VOLUMEUP */
> +                        0x02000040	/* KEY_F6 */
> +                        0x02010042	/* KEY_F8 */
> +                        0x02020043	/* KEY_F9 */
> +                        0x02030044	/* KEY_F10 */
> +                        0x0300003b	/* KEY_F1 */
> +                        0x0301003c	/* KEY_F2 */
> +                        0x0302003d	/* KEY_F3 */
> +                        0x03030074>;	/* KEY_POWER */
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
