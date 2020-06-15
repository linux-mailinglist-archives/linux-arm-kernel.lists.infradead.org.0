Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4401F1F9E40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPKH7XpMsnqMQzsiYm7u4obGufIEctF7k1XxVfTE8Us=; b=lh5y4QCZRosxmn
	aWVWgdeaWkL7AsCjJ9FXbhD1NrfbjMieDl6Stm/gH+thX+kpUGDH9Bt5xrZhJg/qeiAjBw/OR5XgY
	XFTbGKA4+T1VtKN08emQEKw8qq2q7kDLnIl+cmCYdiCVyJGvn09MT33efDLeS+A+hqWHExSCNEzQ5
	YbpYHDiS7gxucm+HRWroYl5JDYZQGeIsaeHln4utuUElyl8eU6CzT3ZKrWY5mya2hJOJQorjqIdAb
	wnNPg2LHC0632CLPuzV2i9ldrA0CCBDQsBY/OI17385+1ShTsTpKk35FwRMjHC9W4b8dMBYucAdGi
	kmqUuSpXoyzfQwKMw5KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkshC-0008Rn-VT; Mon, 15 Jun 2020 17:14:55 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksh2-0008Qp-MG
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:14:46 +0000
Received: by mail-io1-f65.google.com with SMTP id m81so18744329ioa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hiOijoD53LX37YRMIwEiw00dAjUSx8soGvrpBh7UCNk=;
 b=LqKNj68mq3AYx53gjuzTY8mT7mayKNM2hXvDXppn99Bqi7w8PsOU8qpifvOkgZaI4N
 VoNuAWo3mn97/14WT68Tm/tNrww/Gxa52VpTUVEdY8qLvDfhgdn1dUdbNV5uR8zd4zT7
 YXdbhqfUumioXbGYEMUZcrTOM+/FaLU1tKRVUdrL7lk+wLxvK55TcnHkQ2c4SgXqZQ/W
 0XILCF9iX38li4e2ctUNGbINeuvF5qKYy512eP9QtE7q1ZNJzM4zC95tBCjGSODNkHQF
 LUdEfcVxKNVZ/Qpg3pRHSn8wgLl7dZ/Upqm+Ahczk99A9G66pSVY6PrvA7WmGRB1lzNm
 YwoA==
X-Gm-Message-State: AOAM5329LZUKyVhRM2nBrQ24/7b7XVN/b8aXw/MuTJfvwj2ty/OTeNCj
 F/j/pmU1lVLOhqycbkDLig==
X-Google-Smtp-Source: ABdhPJzMt4RbwBhE8d8aXJ1Kn/OXGkG36uamUKf5TRxX+ttPOWrLxY6THuuBLi6cS0RFohMBITK0UQ==
X-Received: by 2002:a02:7f4d:: with SMTP id r74mr21951710jac.51.1592241283969; 
 Mon, 15 Jun 2020 10:14:43 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id v11sm8354642ile.61.2020.06.15.10.14.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:14:43 -0700 (PDT)
Received: (nullmailer pid 1974668 invoked by uid 1000);
 Mon, 15 Jun 2020 17:14:41 -0000
Date: Mon, 15 Jun 2020 11:14:41 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 2/3] dt-bindings: spi: Convert imx cspi to json-schema
Message-ID: <20200615171441.GA1971091@bogus>
References: <1591235731-15673-1-git-send-email-Anson.Huang@nxp.com>
 <1591235731-15673-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591235731-15673-3-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_101444_727528_83522813 
X-CRM114-Status: GOOD (  22.72  )
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
Cc: marex@denx.de, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, broonie@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 09:55:30AM +0800, Anson Huang wrote:
> Convert the i.MX CSPI binding to DT schema format using json-schema,
> update compatible, remove obsolete properties "fsl,spi-num-chipselects"
> and update the example based on latest DT file.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "unevaluatedProperties: false".
> ---
>  .../devicetree/bindings/spi/fsl-imx-cspi.txt       | 56 ------------
>  .../devicetree/bindings/spi/fsl-imx-cspi.yaml      | 99 ++++++++++++++++++++++
>  2 files changed, 99 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> deleted file mode 100644
> index 33bc58f..0000000
> --- a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
> +++ /dev/null
> @@ -1,56 +0,0 @@
> -* Freescale (Enhanced) Configurable Serial Peripheral Interface
> -  (CSPI/eCSPI) for i.MX
> -
> -Required properties:
> -- compatible :
> -  - "fsl,imx1-cspi" for SPI compatible with the one integrated on i.MX1
> -  - "fsl,imx21-cspi" for SPI compatible with the one integrated on i.MX21
> -  - "fsl,imx27-cspi" for SPI compatible with the one integrated on i.MX27
> -  - "fsl,imx31-cspi" for SPI compatible with the one integrated on i.MX31
> -  - "fsl,imx35-cspi" for SPI compatible with the one integrated on i.MX35
> -  - "fsl,imx51-ecspi" for SPI compatible with the one integrated on i.MX51
> -  - "fsl,imx53-ecspi" for SPI compatible with the one integrated on i.MX53 and later Soc
> -  - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8MQ
> -  - "fsl,imx8mm-ecspi" for SPI compatible with the one integrated on i.MX8MM
> -  - "fsl,imx8mn-ecspi" for SPI compatible with the one integrated on i.MX8MN
> -  - "fsl,imx8mp-ecspi" for SPI compatible with the one integrated on i.MX8MP
> -- reg : Offset and length of the register set for the device
> -- interrupts : Should contain CSPI/eCSPI interrupt
> -- clocks : Clock specifiers for both ipg and per clocks.
> -- clock-names : Clock names should include both "ipg" and "per"
> -See the clock consumer binding,
> -	Documentation/devicetree/bindings/clock/clock-bindings.txt
> -
> -Recommended properties:
> -- cs-gpios : GPIOs to use as chip selects, see spi-bus.txt.  While the native chip
> -select lines can be used, they appear to always generate a pulse between each
> -word of a transfer.  Most use cases will require GPIO based chip selects to
> -generate a valid transaction.
> -
> -Optional properties:
> -- num-cs :  Number of total chip selects, see spi-bus.txt.
> -- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
> -Documentation/devicetree/bindings/dma/dma.txt.
> -- dma-names: DMA request names, if present, should include "tx" and "rx".
> -- fsl,spi-rdy-drctl: Integer, representing the value of DRCTL, the register
> -controlling the SPI_READY handling. Note that to enable the DRCTL consideration,
> -the SPI_READY mode-flag needs to be set too.
> -Valid values are: 0 (disabled), 1 (edge-triggered burst) and 2 (level-triggered burst).
> -
> -Obsolete properties:
> -- fsl,spi-num-chipselects : Contains the number of the chipselect
> -
> -Example:
> -
> -ecspi@70010000 {
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	compatible = "fsl,imx51-ecspi";
> -	reg = <0x70010000 0x4000>;
> -	interrupts = <36>;
> -	cs-gpios = <&gpio3 24 0>, /* GPIO3_24 */
> -		   <&gpio3 25 0>; /* GPIO3_25 */
> -	dmas = <&sdma 3 7 1>, <&sdma 4 7 2>;
> -	dma-names = "rx", "tx";
> -	fsl,spi-rdy-drctl = <1>;
> -};
> diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml
> new file mode 100644
> index 0000000..606af7d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/fsl-imx-cspi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale (Enhanced) Configurable Serial Peripheral Interface (CSPI/eCSPI) for i.MX
> +
> +maintainers:
> +  - Shawn Guo <shawn.guo@linaro.org>
> +
> +allOf:
> +  - $ref: "/schemas/spi/spi-controller.yaml#"
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: fsl,imx1-cspi
> +      - const: fsl,imx21-cspi
> +      - const: fsl,imx27-cspi
> +      - const: fsl,imx31-cspi
> +      - const: fsl,imx35-cspi
> +      - const: fsl,imx51-ecspi
> +      - const: fsl,imx53-ecspi
> +      - items:
> +        - enum:
> +          - fsl,imx50-ecspi
> +          - fsl,imx6q-ecspi
> +          - fsl,imx6sx-ecspi
> +          - fsl,imx6sl-ecspi
> +          - fsl,imx6sll-ecspi
> +          - fsl,imx6ul-ecspi
> +          - fsl,imx7d-ecspi
> +          - fsl,imx8mq-ecspi
> +          - fsl,imx8mm-ecspi
> +          - fsl,imx8mn-ecspi
> +          - fsl,imx8mp-ecspi
> +        - const: fsl,imx51-ecspi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: SoC SPI ipg clock
> +      - description: SoC SPI per clock
> +    maxItems: 2

Can drop 'maxItems', it is redundant here.

> +
> +  clock-names:
> +    items:
> +      - const: ipg
> +      - const: per
> +    maxItems: 2

And here.

> +
> +  dmas:
> +    items:
> +      - description: DMA controller phandle and request line for RX
> +      - description: DMA controller phandle and request line for TX
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +      - const: tx
> +
> +  fsl,spi-rdy-drctl:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Integer, representing the value of DRCTL, the register controlling
> +      the SPI_READY handling. Note that to enable the DRCTL consideration,
> +      the SPI_READY mode-flag needs to be set too.
> +      Valid values are: 0 (disabled), 1 (edge-triggered burst) and 2 (level-triggered burst).
> +    enum: [0, 1, 2]
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx5-clock.h>
> +
> +    spi@70010000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        compatible = "fsl,imx51-ecspi";
> +        reg = <0x70010000 0x4000>;
> +        interrupts = <36>;
> +        clocks = <&clks IMX5_CLK_ECSPI1_IPG_GATE>,
> +                 <&clks IMX5_CLK_ECSPI1_PER_GATE>;
> +        clock-names = "ipg", "per";
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
