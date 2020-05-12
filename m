Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E442C1CF7FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e35Npc8MYwpG+bEOucHpA7lMdSAkC2A7kjGPelIGqb0=; b=eAIqdMiY4EBJHg
	qAg+X/620TYO+o/8NSc7bKbvkUFgrtBFLAsqVBp4QkjN9FRE68Ub9OTkL+0myWJcwzmJP9xqPHj3A
	NoQ64o2tNEw9YJ4H+IqO2F1+LmyXwYosDBOggb9BMk1d6XkTdCNpmXhXIJIDMkyT9UidvDx1rv1Ds
	WdI7lFL6HW1vMSAREbvYVl7tS5ahXepLV8rktI9Q5I+zPZOEN+41ZLnEimIzUmM26kyRPwuNyZlrS
	1dV53mOImzKdyzlsXwZlY/2fgzbWx8um6hyxcfJaPpFcQv+MNqBZWZZUpTpfObQKCeTrQ8or65vES
	TY1IfQZCwoZ6AKeyllpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWK0-0004uB-1K; Tue, 12 May 2020 14:55:52 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWJr-0004tn-Fs
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:55:45 +0000
Received: by mail-oi1-f194.google.com with SMTP id i13so18452535oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:55:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fQ/KirqKw6BO2UGDgRcS3zleuiv+6S0ku0zLBHrcdQE=;
 b=ZvgWRPOM+cu5K93sk9+upNrNoi2E91ajp9C9HxI7xacT3P7LR8mfOZ8r7Xx89dNYDT
 SEkCvyQUH6r9FuxBnW6b7MBHI9LlIHcquntAKb/TyUVK/7Vh0XWboQ6Nf0mlFQG/mhUU
 hCiJFMKi7sriEysRnsT7pvvPTHsmDY2t0BL7JewTBmlF+R9GqI9dDUgZOUfMkrJskN8p
 zPQ7F/nZ9eNeQ0MEatzhlMdjWl1Exe7qWBzcvYhq/yoR5rftd7sXBWecbUbqgCp3GeOa
 XqQKeylkjYqw6YufcgL9fVwfJ33d/KG0bVXLoj4C9XfJr/8gUuWB/i8OP184ClyWOane
 hn/w==
X-Gm-Message-State: AGi0PuZJ5XsNHbyLTRV3O8CXbcFOMW3YBJR+73ZSG1jbE40R9XV+WgzH
 d5XWgEZ5qbtHTgjh0KLQzQ==
X-Google-Smtp-Source: APiQypKGFg5K792meOQtyk/OqmaGeRZs+OjkzVpOC5F4wC2KYFUclFMd7QTJb3TdXvy6aRGZ9Dv7iw==
X-Received: by 2002:aca:5513:: with SMTP id j19mr22756944oib.31.1589295342052; 
 Tue, 12 May 2020 07:55:42 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c84sm5382655oig.37.2020.05.12.07.55.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 07:55:40 -0700 (PDT)
Received: (nullmailer pid 31636 invoked by uid 1000);
 Tue, 12 May 2020 14:55:39 -0000
Date: Tue, 12 May 2020 09:55:39 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 2/5] dt-bindings: clock: Convert i.MX6SX clock to
 json-schema
Message-ID: <20200512145539.GA25671@bogus>
References: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
 <1588207921-20604-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588207921-20604-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_075543_529628_A87DF129 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, shawnguo@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 08:51:58AM +0800, Anson Huang wrote:
> Convert the i.MX6SX clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
> 	- update license to be with (GPL-2.0-only OR BSD-2-Clause);
> 	- remove unnecessary minItem for interrupts;
> 	- remove label in example.
> ---
>  .../devicetree/bindings/clock/imx6sx-clock.txt     | 13 -----
>  .../devicetree/bindings/clock/imx6sx-clock.yaml    | 64 ++++++++++++++++++++++
>  2 files changed, 64 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx6sx-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx6sx-clock.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx6sx-clock.txt b/Documentation/devicetree/bindings/clock/imx6sx-clock.txt
> deleted file mode 100644
> index 22362b9..0000000
> --- a/Documentation/devicetree/bindings/clock/imx6sx-clock.txt
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -* Clock bindings for Freescale i.MX6 SoloX
> -
> -Required properties:
> -- compatible: Should be "fsl,imx6sx-ccm"
> -- reg: Address and length of the register set
> -- #clock-cells: Should be <1>
> -- clocks: list of clock specifiers, must contain an entry for each required
> -  entry in clock-names
> -- clock-names: should include entries "ckil", "osc", "ipp_di0" and "ipp_di1"
> -
> -The clock consumer should specify the desired clock by having the clock
> -ID in its "clocks" phandle cell.  See include/dt-bindings/clock/imx6sx-clock.h
> -for the full list of i.MX6 SoloX clock IDs.
> diff --git a/Documentation/devicetree/bindings/clock/imx6sx-clock.yaml b/Documentation/devicetree/bindings/clock/imx6sx-clock.yaml
> new file mode 100644
> index 0000000..2c7f625
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx6sx-clock.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/imx6sx-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Clock bindings for Freescale i.MX6 SoloX
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: fsl,imx6sx-ccm
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 2

Need to define what each one is:

interrupts:
  items:
    - description: ...
    - description: ...

And you should explain why this was added.

> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clocks:
> +    items:
> +      - description: 32k osc
> +      - description: 24m osc
> +      - description: ipp_di0 clock input
> +      - description: ipp_di1 clock input
> +      - description: anaclk1 clock input
> +      - description: anaclk2 clock input
> +
> +  clock-names:
> +    items:
> +      - const: ckil
> +      - const: osc
> +      - const: ipp_di0
> +      - const: ipp_di1
> +      - const: anaclk1
> +      - const: anaclk2
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - '#clock-cells'
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    clock-controller@20c4000 {
> +        compatible = "fsl,imx6sx-ccm";
> +        reg = <0x020c4000 0x4000>;
> +        interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
> +        #clock-cells = <1>;
> +        clocks = <&ckil>, <&osc>, <&ipp_di0>, <&ipp_di1>, <&anaclk1>, <&anaclk2>;
> +        clock-names = "ckil", "osc", "ipp_di0", "ipp_di1", "anaclk1", "anaclk2";
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
