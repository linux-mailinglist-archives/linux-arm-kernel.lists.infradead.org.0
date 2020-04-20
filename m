Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD711B18B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38YJDsNXwrL4RuT5xJ0LkQSwftzDppssGFYgFRNUnKM=; b=ePUuMz9cUr6P1t
	doqSdc9v/uSaUhcSiqRmFac4mMm231IYRmdjJX1OG1B+sS1WrxOClJJef5LqBuZ74/3PWYk8QXEr4
	+O00hrgDr5DrYdQtrLC9BWqUqnYRidgWyuGYwelqBwtkTeIaMOrNXZFSG73rMRzo7LDsmUeKU3++t
	WxkLs4tyLbcfscKdbZyWPIjpYSM7THhqGyas6wOWxp3YnOj9vde5LDzv16USsMrnumcS8SKR20g/y
	Zhl9VM4vvz2v0ovkbyX39iFYWsOBkya34IixxkUq04nry1L3kkZfwLjE6aM+WJuAIQnPoqZOWKTkC
	CSe7F1gUxmZ4C3guLlqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQeDF-00014G-Rr; Mon, 20 Apr 2020 21:44:21 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQeCv-0000vA-Qr
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 21:44:03 +0000
Received: by mail-ot1-f65.google.com with SMTP id j4so9502651otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 14:44:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LZKwSahPOrclJ2VbpUDt4G9WvWMr16xeYo8HAFLzKHs=;
 b=oK7sizR8+DbqGRV4OuNUzfKhIAuUry7dkwzs8+cfF2+MXN7BvsVrFcz1QeL8gubY06
 2OrAFe8v+3bChLmrdwplRW+S2LTq8vwFghHhzjkiWrodXTmxSzOXzE+tU0WXdOaLmQnU
 CzcWWbDuLlCwnUjHiwkCssDiVEPLPd/8647bl5W/3Yyvx/mKe2e0SadBbO9NaDcskaez
 vqnbAz3lIHpG+86SZX/EeIrIZpLBKudtpE7TkC8J09TFLnsr2RPS31DGteH+Y3o4ZmuR
 7tsKIlp4n+eyBjqigfTmmOJ1u+lS1rrVS+YBEcRHcodo47LEWdenGvBT8fOTIrNyj6FY
 HCmw==
X-Gm-Message-State: AGi0PuZuWSsfsMC+scTX9Lqn+zE3TRtk2jW0eM1sckStm2jpaTvbvDkM
 76hypeBt940msuDYpvMAZRN7MlA=
X-Google-Smtp-Source: APiQypK5PQwdf2U+EhRi0OR/D/U3xkutLBi8s1XHwblbK6QRNb3bnhVOo1qkGTQJvhYoYxIjojr/NA==
X-Received: by 2002:a9d:7343:: with SMTP id l3mr9432115otk.276.1587419040593; 
 Mon, 20 Apr 2020 14:44:00 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 76sm227400otg.68.2020.04.20.14.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:44:00 -0700 (PDT)
Received: (nullmailer pid 15237 invoked by uid 1000);
 Mon, 20 Apr 2020 21:43:59 -0000
Date: Mon, 20 Apr 2020 16:43:59 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/3] dt-bindings: nvmem: Convert i.MX IIM to json-schema
Message-ID: <20200420214358.GA13370@bogus>
References: <1586921602-1877-1-git-send-email-Anson.Huang@nxp.com>
 <1586921602-1877-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586921602-1877-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_144401_900054_91A4C6D9 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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

On Wed, Apr 15, 2020 at 11:33:21AM +0800, Anson Huang wrote:
> Convert the i.MX IIM binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/nvmem/imx-iim.txt          | 22 --------
>  .../devicetree/bindings/nvmem/imx-iim.yaml         | 59 ++++++++++++++++++++++
>  2 files changed, 59 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/imx-iim.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/imx-iim.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/imx-iim.txt b/Documentation/devicetree/bindings/nvmem/imx-iim.txt
> deleted file mode 100644
> index 1978c5b..0000000
> --- a/Documentation/devicetree/bindings/nvmem/imx-iim.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -Freescale i.MX IC Identification Module (IIM) device tree bindings
> -
> -This binding represents the IC Identification Module (IIM) found on
> -i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 and i.MX53 SoCs.
> -
> -Required properties:
> -- compatible: should be one of
> -	"fsl,imx25-iim", "fsl,imx27-iim",
> -	"fsl,imx31-iim", "fsl,imx35-iim",
> -	"fsl,imx51-iim", "fsl,imx53-iim",
> -- reg: Should contain the register base and length.
> -- interrupts: Should contain the interrupt for the IIM
> -- clocks: Should contain a phandle pointing to the gated peripheral clock.
> -
> -Example:
> -
> -	iim: iim@63f98000 {
> -		compatible = "fsl,imx53-iim", "fsl,imx27-iim";
> -		reg = <0x63f98000 0x4000>;
> -		interrupts = <69>;
> -                clocks = <&clks IMX5_CLK_IIM_GATE>;
> -	};
> diff --git a/Documentation/devicetree/bindings/nvmem/imx-iim.yaml b/Documentation/devicetree/bindings/nvmem/imx-iim.yaml
> new file mode 100644
> index 0000000..0d85d37
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/imx-iim.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/imx-iim.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX IC Identification Module (IIM) device tree bindings
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description: |
> +  This binding represents the IC Identification Module (IIM) found on
> +  i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 and i.MX53 SoCs.
> +
> +allOf:
> +  - $ref: "nvmem.yaml#"
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx25-iim
> +      - fsl,imx27-iim
> +      - fsl,imx31-iim
> +      - fsl,imx35-iim
> +      - fsl,imx51-iim
> +      - fsl,imx53-iim
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    description: |
> +      IIM's clock source.

Drop this. Same in patch 3.

> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx5-clock.h>
> +
> +    iim: efuse@63f98000 {
> +        compatible = "fsl,imx53-iim";
> +        reg = <0x63f98000 0x4000>;
> +        interrupts = <69>;
> +        clocks = <&clks IMX5_CLK_IIM_GATE>;
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
