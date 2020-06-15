Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768CD1F9E18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DoXuUTRGqVeO8DSwSDUSd+YWCpGqG2ELbQIphYfWLYk=; b=PcPUFYlNy14hiI
	3YbxmFGHkPBF8KGVSPLEANFg66UQN3gYboejhPFjfpydJvA7hG9qcY4qiDOIh5rf+VjMDlsvYW/pw
	HWL1tuwi7eub/ISnRc9GoN+s0FUNtO/4LpdDFq3wIHWX7qVqCpG2t5OMJHFcMCiRcY54KDIcAHEmZ
	3/ZDD0ZUJtOZpH8B43wkhvrR3BxuysB7+QSOll8vSk7+6Yp4EuPVNNeO/FnRQOPI24Kg0X0INGxCA
	3JGsAA8tqs2n7MdvF78ZbvklcxbwgaFuP6IMIAIdd17lrCxojtzHvc0z4OH1PLsrSKYYttVXLuBXU
	kf4/Bh2PQXEDh8CYk0rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksZ4-0003Vg-1M; Mon, 15 Jun 2020 17:06:30 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksYq-0003VB-EI
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:06:17 +0000
Received: by mail-il1-f194.google.com with SMTP id 9so15972733ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:06:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PBR+ikasBYezgWfg6lbl7wvtqOB14P0FNCohMlzbJzo=;
 b=WfyoYRkLJqHT6mVyBwJ+YPz6YjdFcY36RIrqBzFP+DDfNNeZJIF/mHrOy94O6SPSA4
 R7B4aDGiIU5fy4iwpkX7edou0g6wDVG4Cg767hb8/NbFhida5h1wazIBV9zVwd57TblK
 H+t6PmVPhdz41eHPyyR1g6MEP2jzLxtjsOMG78rps4Wd4DQr1NdDm8iC0ARGKk0xbFdw
 JUlU0yikQLiQI8pTr+W07/mhLCvNGUD3QnBA11jfMo+lC0yjLc46SLk2JT4EYAzZQSBs
 oNAFJOz+GSs16/At/4RfJZMLENYCYaMH8EOXfweQ/KdbF2w51elvWBoaBRof8PXWNDX+
 v2zQ==
X-Gm-Message-State: AOAM532bYQ6AnyceCXKdvsTqovkodVxLBQ0mc5OmkPKlHCiR6B4bCWHV
 DUCr5TzFYcmwVqYx7A/JOA==
X-Google-Smtp-Source: ABdhPJxDnT/nkNScLMhuFwLLrQAqZN4bGs2HZn8OCPlvNq4Dibjv0hu7uy7RD1R59Zo6M9WAAWCjuw==
X-Received: by 2002:a05:6e02:12b4:: with SMTP id
 f20mr27358656ilr.243.1592240775375; 
 Mon, 15 Jun 2020 10:06:15 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id j63sm8527311ilg.50.2020.06.15.10.06.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:06:14 -0700 (PDT)
Received: (nullmailer pid 1961183 invoked by uid 1000);
 Mon, 15 Jun 2020 17:06:13 -0000
Date: Mon, 15 Jun 2020 11:06:13 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 2/3] dt-bindings: i2c: Convert mxs i2c to json-schema
Message-ID: <20200615170613.GA1959567@bogus>
References: <1591235358-15516-1-git-send-email-Anson.Huang@nxp.com>
 <1591235358-15516-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591235358-15516-3-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_100616_480442_3BDB0836 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, wolfram@the-dreams.de,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, linux-i2c@vger.kernel.org, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 09:49:17AM +0800, Anson Huang wrote:
> Convert the MXS I2C binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "additionalProperties: false".
> ---
>  Documentation/devicetree/bindings/i2c/i2c-mxs.txt  | 25 ----------
>  Documentation/devicetree/bindings/i2c/i2c-mxs.yaml | 55 ++++++++++++++++++++++
>  2 files changed, 55 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mxs.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-mxs.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-mxs.txt b/Documentation/devicetree/bindings/i2c/i2c-mxs.txt
> deleted file mode 100644
> index 4e1c8ac..0000000
> --- a/Documentation/devicetree/bindings/i2c/i2c-mxs.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -* Freescale MXS Inter IC (I2C) Controller
> -
> -Required properties:
> -- compatible: Should be "fsl,<chip>-i2c"
> -- reg: Should contain registers location and length
> -- interrupts: Should contain ERROR interrupt number
> -- clock-frequency: Desired I2C bus clock frequency in Hz.
> -                   Only 100000Hz and 400000Hz modes are supported.
> -- dmas: DMA specifier, consisting of a phandle to DMA controller node
> -  and I2C DMA channel ID.
> -  Refer to dma.txt and fsl-mxs-dma.txt for details.
> -- dma-names: Must be "rx-tx".
> -
> -Examples:
> -
> -i2c0: i2c@80058000 {
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	compatible = "fsl,imx28-i2c";
> -	reg = <0x80058000 2000>;
> -	interrupts = <111>;
> -	clock-frequency = <100000>;
> -	dmas = <&dma_apbx 6>;
> -	dma-names = "rx-tx";
> -};
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-mxs.yaml b/Documentation/devicetree/bindings/i2c/i2c-mxs.yaml
> new file mode 100644
> index 0000000..3bc14bb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/i2c-mxs.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/i2c-mxs.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale MXS Inter IC (I2C) Controller
> +
> +maintainers:
> +  - Shawn Guo <shawn.guo@linaro.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx23-i2c
> +      - fsl,imx28-i2c
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clock-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32

'clock-frequency' already has a type.

> +    description: |
> +      Desired I2C bus clock frequency in Hz, only 100000Hz and 400000Hz
> +      modes are supported.

Sounds like constraints.

> +    default: 100000
> +
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    const: rx-tx
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - dmas
> +  - dma-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c@80058000 {
> +        compatible = "fsl,imx28-i2c";
> +        reg = <0x80058000 2000>;
> +        interrupts = <111>;
> +        clock-frequency = <100000>;
> +        dmas = <&dma_apbx 6>;
> +        dma-names = "rx-tx";
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
