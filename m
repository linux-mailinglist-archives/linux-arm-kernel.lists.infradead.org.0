Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22BE1B1894
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Niksc6UqLByolMRPhwRkY/H5duJIjmHXGvw0SKlM34w=; b=GkxPajezjn8uYU
	ArTL62ngu7bdp6NnFIoQxggqenR/RsfKE9UOimkdGBCmB0w4sVq9KbbRIDoPEsHzwtRITK/Cnaavd
	AuqA8piFPBi7O+DLWcS3moPt7OrHOLSCJ5Ooz28eYUjnYyqF2WeGko6sOPbrulOYOOv1sdv1Y27Mg
	njUDAYuUhyauMV4uv8NEhVBi6YQMVgiSueX0nkVjHNNVutR/WU72yrXqkzsrkCnutXOoC5otL+kwe
	JOZVmQpkk4LRFzCRDZUaqjhQehjbRny9kb4MB2DBqMDkDQcRe3KOy6JwGT3spN60pVz4Fkknaer2w
	2cg/rOp3I9rVxnVVg6Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQeBb-0008Q2-Mw; Mon, 20 Apr 2020 21:42:39 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQeBS-0008PN-4z
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 21:42:31 +0000
Received: by mail-oo1-f65.google.com with SMTP id x16so2464783oop.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 14:42:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MQYFkBcbkzjp4qKekddjrNm+MWFdaUwiorS/Z/G0gTk=;
 b=Ku+oCNLNZQyk4EEdr1e7C1nwdABmMuulfMHW2Wnl9ZZlMOcVQpOCblXNzmcz8Gs2PH
 rUVBa3WY1YZfXiS4sDHhDJ/aXd2SuVflTY4URFCmAvq01PceYx4iDElBCYYziYKcysRq
 QgP0yN3S4uLPZrIYo40NR1iH5TMeWjCgJNe+ir4j+SKR92XkNdCAz+Egk0OSZ+iy4g+t
 1BBWIHjvi5PrhBxodVsRYbYiIBq+bywGIyTYkNxji5SPzsd88VhcOy5YtlrAdONa0vbu
 6Zk7Fls5duouPSZLWwEZcmOMws26i1EoJ0YAMDKHY018+OBeKEgDQ1UtxiVQKsz0WzXn
 sPlQ==
X-Gm-Message-State: AGi0PuYlaX7URcfUZPK8UA5CkQi2N7pxYeFB+UBJxHAMnG+9xzwkBH/E
 E4EewfIgryeF+1LFFJmpow==
X-Google-Smtp-Source: APiQypImh3ff6PfCFGICy2xjqiHsC1DZWwUu2sDJNkQQTuC42XKN8+cjzxR35UswOmFUPMAfei+F0g==
X-Received: by 2002:a4a:95ee:: with SMTP id p43mr14278036ooi.24.1587418949025; 
 Mon, 20 Apr 2020 14:42:29 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u13sm170429oor.45.2020.04.20.14.42.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:42:28 -0700 (PDT)
Received: (nullmailer pid 13178 invoked by uid 1000);
 Mon, 20 Apr 2020 21:42:27 -0000
Date: Mon, 20 Apr 2020 16:42:27 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: nvmem: Convert i.MX OCOTP to json-schema
Message-ID: <20200420214227.GA23817@bogus>
References: <1586921602-1877-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586921602-1877-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_144230_189880_3B97F822 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:33:20AM +0800, Anson Huang wrote:
> Convert the i.MX OCOTP binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/nvmem/imx-ocotp.txt        |  50 ----------
>  .../devicetree/bindings/nvmem/imx-ocotp.yaml       | 103 +++++++++++++++++++++
>  2 files changed, 103 insertions(+), 50 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> deleted file mode 100644
> index 6e346d5..0000000
> --- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> +++ /dev/null
> @@ -1,50 +0,0 @@
> -Freescale i.MX6 On-Chip OTP Controller (OCOTP) device tree bindings
> -
> -This binding represents the on-chip eFuse OTP controller found on
> -i.MX6Q/D, i.MX6DL/S, i.MX6SL, i.MX6SX, i.MX6UL, i.MX6ULL/ULZ, i.MX6SLL,
> -i.MX7D/S, i.MX7ULP, i.MX8MQ, i.MX8MM, i.MX8MN and i.MX8MP SoCs.
> -
> -Required properties:
> -- compatible: should be one of
> -	"fsl,imx6q-ocotp" (i.MX6Q/D/DL/S),
> -	"fsl,imx6sl-ocotp" (i.MX6SL), or
> -	"fsl,imx6sx-ocotp" (i.MX6SX),
> -	"fsl,imx6ul-ocotp" (i.MX6UL),
> -	"fsl,imx6ull-ocotp" (i.MX6ULL/ULZ),
> -	"fsl,imx7d-ocotp" (i.MX7D/S),
> -	"fsl,imx6sll-ocotp" (i.MX6SLL),
> -	"fsl,imx7ulp-ocotp" (i.MX7ULP),
> -	"fsl,imx8mq-ocotp" (i.MX8MQ),
> -	"fsl,imx8mm-ocotp" (i.MX8MM),
> -	"fsl,imx8mn-ocotp" (i.MX8MN),
> -	"fsl,imx8mp-ocotp" (i.MX8MP),
> -	followed by "syscon".
> -- #address-cells : Should be 1
> -- #size-cells : Should be 1
> -- reg: Should contain the register base and length.
> -- clocks: Should contain a phandle pointing to the gated peripheral clock.
> -
> -Optional properties:
> -- read-only: disable write access
> -
> -Optional Child nodes:
> -
> -- Data cells of ocotp:
> -  Detailed bindings are described in bindings/nvmem/nvmem.txt
> -
> -Example:
> -	ocotp: ocotp@21bc000 {
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		compatible = "fsl,imx6sx-ocotp", "syscon";
> -		reg = <0x021bc000 0x4000>;
> -		clocks = <&clks IMX6SX_CLK_OCOTP>;
> -
> -		tempmon_calib: calib@38 {
> -			reg = <0x38 4>;
> -		};
> -
> -		tempmon_temp_grade: temp-grade@20 {
> -			reg = <0x20 4>;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
> new file mode 100644
> index 0000000..70aa637
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
> @@ -0,0 +1,103 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/imx-ocotp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX6 On-Chip OTP Controller (OCOTP) device tree bindings
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description: |
> +  This binding represents the on-chip eFuse OTP controller found on
> +  i.MX6Q/D, i.MX6DL/S, i.MX6SL, i.MX6SX, i.MX6UL, i.MX6ULL/ULZ, i.MX6SLL,
> +  i.MX7D/S, i.MX7ULP, i.MX8MQ, i.MX8MM, i.MX8MN and i.MX8MP SoCs.
> +
> +allOf:
> +  - $ref: "nvmem.yaml#"
> +
> +properties:
> +  compatible:
> +    anyOf:
> +      - items:
> +        - enum:
> +          - fsl,imx6q-ocotp
> +          - fsl,imx6sl-ocotp
> +          - fsl,imx6sx-ocotp
> +          - fsl,imx6ul-ocotp
> +          - fsl,imx6ull-ocotp
> +          - fsl,imx7d-ocotp
> +          - fsl,imx6sll-ocotp
> +          - fsl,imx7ulp-ocotp
> +          - fsl,imx8mq-ocotp
> +          - fsl,imx8mm-ocotp
> +          - fsl,imx8mn-ocotp
> +          - fsl,imx8mp-ocotp
> +

Drop the blank line here.

> +        - const: syscon
> +
> +      - contains:
> +          const: syscon
> +        additionalItems: true

You shouldn't need the 2nd clause here. And then can remove the 'anyOf'.

> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  clocks:
> +    description: |
> +      OCOTP's clock source.

Drop

> +    maxItems: 1
> +
> +required:
> +  - "#address-cells"
> +  - "#size-cells"
> +  - compatible
> +  - reg
> +
> +patternProperties:
> +  "^.*@[0-9a-f]+$":
> +    type: object
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +        description:
> +          Offset and size in bytes within the storage device.
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx6sx-clock.h>
> +
> +    ocotp: efuse@21bc000 {
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        compatible = "fsl,imx6sx-ocotp", "syscon";
> +        reg = <0x021bc000 0x4000>;
> +        clocks = <&clks IMX6SX_CLK_OCOTP>;
> +
> +        cpu_speed_grade: speed-grade@10 {
> +            reg = <0x10 4>;
> +        };
> +
> +        tempmon_calib: calib@38 {
> +            reg = <0x38 4>;
> +        };
> +
> +        tempmon_temp_grade: temp-grade@20 {
> +            reg = <0x20 4>;
> +        };
> +    };
> +
> +...
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
