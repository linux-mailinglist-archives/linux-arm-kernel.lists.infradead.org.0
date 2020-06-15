Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAC51F9E2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChAllCYUyyhsUjvbVwooU6zYNqsgJGaa3t0WDjxSXqE=; b=kVVdIbY0tjgpYM
	j5g630cgshsVJdimQCwwdRQysfXMKY+5U0d9VlEp20Tg6y3CjMUwaTNlEZtbwmrzoNi0sJLyB77mp
	UBEubsfk+YaltV7kDhKSLvcXFyjR/DJtaRaDpGyifnXTYWLAq2vBmnP6CKRqRQG3aQLO/BuIFLXR4
	7adQenBWUW4RHLhoHPxkCKeqh65qy/1aGbXlyDizm3MChc0qubDsUhQ+EzrbNdOpmEyGcTfdIlPN0
	pJg+yqDEU8lSXLO5Xj+RKRZzUdh5wnXqbB6zRN5KOF/d+DgNCeqMHF7RJn2BVfm2sJrgrm7G8OeUJ
	EjVOLyMbtDk5Fvwjcj0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksem-0007eQ-TJ; Mon, 15 Jun 2020 17:12:24 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksea-0007dV-Ca
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:12:14 +0000
Received: by mail-il1-f193.google.com with SMTP id i1so15977633ils.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G5WGUPUAIcBwza0/xjtURoDyzwjIEB/Wr5gpuV9swD0=;
 b=RpTFQTNDzlobrM23GWJRYL6U3Q8KMlTM0dSHEVGQw4cxHfhViv3jn25uYHgInTximL
 bxcSompa5Vcdb1V4mqhTUCUHz43PuaGTI5WuXELL/qCZz0hjE3UzVaSKavHF0NTXCeFh
 OGNty/2eIaYKwij/OCQtspKjhNieRhm1XEt8W7B2yYv3kuZmlLngE2mMLryN7suLKT+n
 kFhY5/fXsLhHSQYzSqX4EmU1qFdbOM2ZOrQGNi9Dvj9CRdpuGPsSumajbj3WGpu/JGJ6
 iwQuQv46ekSRH1WyhQO+zzMQJaxrX/vCHI8Px0e4jNEhcvvY0USRpcwqLbNAOEQr02C/
 gcFg==
X-Gm-Message-State: AOAM533UiJFdKC7dBbPOTOUYcYOi9wYch/1DlY1uYuIrj+1ReYgiTbZq
 V0zzomr+D4XfOKOOgohf8A==
X-Google-Smtp-Source: ABdhPJxkSrEaxMErK0l1AP6V19vUpDxfZBbTo5MTNzsZPQNLZcHrexQ20OfNYIzpl4S1RoaRPH6/Mg==
X-Received: by 2002:a92:d845:: with SMTP id h5mr27854230ilq.4.1592241131756;
 Mon, 15 Jun 2020 10:12:11 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id d71sm8551428ill.9.2020.06.15.10.12.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:12:11 -0700 (PDT)
Received: (nullmailer pid 1970644 invoked by uid 1000);
 Mon, 15 Jun 2020 17:12:09 -0000
Date: Mon, 15 Jun 2020 11:12:09 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: spi: Convert mxs spi to json-schema
Message-ID: <20200615171209.GA1968084@bogus>
References: <1591235731-15673-1-git-send-email-Anson.Huang@nxp.com>
 <1591235731-15673-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591235731-15673-2-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_101212_427594_3BE99C17 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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

On Thu, Jun 04, 2020 at 09:55:29AM +0800, Anson Huang wrote:
> Convert the MXS SPI binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "unevaluatedProperties: false".
> ---
>  Documentation/devicetree/bindings/spi/mxs-spi.txt  | 26 ----------
>  Documentation/devicetree/bindings/spi/mxs-spi.yaml | 57 ++++++++++++++++++++++
>  2 files changed, 57 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/mxs-spi.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/mxs-spi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/spi/mxs-spi.txt b/Documentation/devicetree/bindings/spi/mxs-spi.txt
> deleted file mode 100644
> index 3499b73..0000000
> --- a/Documentation/devicetree/bindings/spi/mxs-spi.txt
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -* Freescale MX233/MX28 SSP/SPI
> -
> -Required properties:
> -- compatible: Should be "fsl,<soc>-spi", where soc is "imx23" or "imx28"
> -- reg: Offset and length of the register set for the device
> -- interrupts: Should contain SSP ERROR interrupt
> -- dmas: DMA specifier, consisting of a phandle to DMA controller node
> -  and SSP DMA channel ID.
> -  Refer to dma.txt and fsl-mxs-dma.txt for details.
> -- dma-names: Must be "rx-tx".
> -
> -Optional properties:
> -- clock-frequency : Input clock frequency to the SPI block in Hz.
> -		    Default is 160000000 Hz.
> -
> -Example:
> -
> -ssp0: ssp@80010000 {
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	compatible = "fsl,imx28-spi";
> -	reg = <0x80010000 0x2000>;
> -	interrupts = <96>;
> -	dmas = <&dma_apbh 0>;
> -	dma-names = "rx-tx";
> -};
> diff --git a/Documentation/devicetree/bindings/spi/mxs-spi.yaml b/Documentation/devicetree/bindings/spi/mxs-spi.yaml
> new file mode 100644
> index 0000000..68c5d6d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/mxs-spi.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/mxs-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale MX233/MX28 SSP/SPI
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +allOf:
> +  - $ref: "/schemas/spi/spi-controller.yaml#"
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx23-spi
> +      - fsl,imx28-spi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    const: rx-tx
> +
> +  clock-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32

Already has a type, drop.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +    description: input clock frequency to the SPI block in Hz.
> +    default: 160000000
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - dmas
> +  - dma-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi@80010000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        compatible = "fsl,imx28-spi";
> +        reg = <0x80010000 0x2000>;
> +        interrupts = <96>;
> +        dmas = <&dma_apbh 0>;
> +        dma-names = "rx-tx";
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
