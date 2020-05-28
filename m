Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620CF1E6CFA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 22:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En4OmBcTS6T+20hcspQqG6E65irw73wFN8PfW4YOI8Y=; b=o2Dn0eK0fVuz7E
	Iuk0ipuLySx9RPK/fVS3H1wFFFG4/+16DVG5uE7hS48nBPjAH6YkgUP/g9/2A9c/H4KXq8WwNAxEL
	yxhdGChx6yE03TQ2xxdUvyDzw9/dSzWv531DSiX1jfqxIiXHUfcxK+/IpBHOMhyoGCGIIbzYiDAHA
	fasqw32HBFZBnuA37uStZNSTYGtsk0/KvxtOQQFLMMpY09MT9rc+VcCzj/TbyAnFizIONa0VP4Qhi
	HNYaVaOjMYLX/z/Vh7ym6E9Lcgnw/ngHfGLEcnvgd+1O9EozxSgJyy7EgTaVo6Jar3RqVUkOjUS/E
	GRkDD6f3MVwlpz6qhwwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePbz-0005eR-WF; Thu, 28 May 2020 20:58:48 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePbp-0005c3-FB
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 20:58:38 +0000
Received: by mail-io1-f66.google.com with SMTP id d5so22231887ios.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 13:58:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0OE13/YcfcuIgMOcZKAEHNiiPaiVI+IeYxI7zCjSk1Y=;
 b=J7O1WYHEhsatt8yJEGs21t6+799wAiTkmEcoKae19LxB3FvfF8uNlPxeuLHJ6WRYkO
 Vmim1abHfUWwbQoGAqQIsOCFn0TbvM08ZlJdgxYBwJCbR1qbxDbE/Sq7FxmMAwytnRSd
 nsNzR8ZAxbc8h9aVB5OARpDyobQPbNBPJTFGoXGCzX4opdMmFb2o3XYZRo/1SBKU5WdL
 adhU1ba85EB7JTvj7Q1ZMUKEwOcsvRyW0W1uZZRZZ9RM0npJEQijnS3unPxJwfVNoBnd
 s/JplliH/eZur091q5vyaBfozuSyZIYPpqYRhiAjyYwFak3RHm4DL2n+Q78PPc9+M04f
 yMcg==
X-Gm-Message-State: AOAM532kDsAfnHgMcTwwU1FkYJH+R/P+M1tuLiHfIelCTthZGLU9q4Xv
 uA5TBPbcoWaHk1oEgeTJwg==
X-Google-Smtp-Source: ABdhPJyeGXf+N7QgJ4mdrW9SGDUzzeXHtJr/aHlTp3/e7mhh+MQQDOZnNRcPHGYNak1+8XA3c41Fkg==
X-Received: by 2002:a05:6602:22d6:: with SMTP id
 e22mr3936741ioe.128.1590699516559; 
 Thu, 28 May 2020 13:58:36 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id f10sm3607558ilj.85.2020.05.28.13.58.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 13:58:35 -0700 (PDT)
Received: (nullmailer pid 664152 invoked by uid 1000);
 Thu, 28 May 2020 20:58:34 -0000
Date: Thu, 28 May 2020 14:58:34 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
Message-ID: <20200528205834.GA660327@bogus>
References: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
 <1589860547-3207-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589860547-3207-2-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_135837_507324_701FCCC1 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 tglx@linutronix.de, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 11:55:45AM +0800, Anson Huang wrote:
> Convert the i.MX GPT binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- remove unnecessary compatible item descriptions;
> 	- remove unnecessary maxItems for clocks/clock-names;
> ---
>  .../devicetree/bindings/timer/fsl,imxgpt.txt       | 45 ------------
>  .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 80 ++++++++++++++++++++++
>  2 files changed, 80 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> deleted file mode 100644
> index 5d8fd5b..0000000
> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> +++ /dev/null
> @@ -1,45 +0,0 @@
> -Freescale i.MX General Purpose Timer (GPT)
> -
> -Required properties:
> -
> -- compatible : should be one of following:
> -  for i.MX1:
> -  - "fsl,imx1-gpt";
> -  for i.MX21:
> -  - "fsl,imx21-gpt";
> -  for i.MX27:
> -  - "fsl,imx27-gpt", "fsl,imx21-gpt";
> -  for i.MX31:
> -  - "fsl,imx31-gpt";
> -  for i.MX25:
> -  - "fsl,imx25-gpt", "fsl,imx31-gpt";
> -  for i.MX50:
> -  - "fsl,imx50-gpt", "fsl,imx31-gpt";
> -  for i.MX51:
> -  - "fsl,imx51-gpt", "fsl,imx31-gpt";
> -  for i.MX53:
> -  - "fsl,imx53-gpt", "fsl,imx31-gpt";
> -  for i.MX6Q:
> -  - "fsl,imx6q-gpt", "fsl,imx31-gpt";
> -  for i.MX6DL:
> -  - "fsl,imx6dl-gpt";
> -  for i.MX6SL:
> -  - "fsl,imx6sl-gpt", "fsl,imx6dl-gpt";
> -  for i.MX6SX:
> -  - "fsl,imx6sx-gpt", "fsl,imx6dl-gpt";
> -- reg : specifies base physical address and size of the registers.
> -- interrupts : should be the gpt interrupt.
> -- clocks : the clocks provided by the SoC to drive the timer, must contain
> -           an entry for each entry in clock-names.
> -- clock-names : must include "ipg" entry first, then "per" entry.
> -
> -Example:
> -
> -gpt1: timer@10003000 {
> -	compatible = "fsl,imx27-gpt", "fsl,imx21-gpt";
> -	reg = <0x10003000 0x1000>;
> -	interrupts = <26>;
> -	clocks = <&clks IMX27_CLK_GPT1_IPG_GATE>,
> -		 <&clks IMX27_CLK_PER1_GATE>;
> -	clock-names = "ipg", "per";
> -};
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> new file mode 100644
> index 0000000..5479290
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/fsl,imxgpt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX General Purpose Timer (GPT)
> +
> +maintainers:
> +  - Sascha Hauer <s.hauer@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: "fsl,imx1-gpt"
> +      - const: "fsl,imx21-gpt"
> +      - items:
> +          - const: "fsl,imx27-gpt"
> +          - const: "fsl,imx21-gpt"
> +      - const: "fsl,imx31-gpt"
> +      - items:
> +          - const: "fsl,imx25-gpt"
> +          - const: "fsl,imx31-gpt"
> +      - items:
> +          - const: "fsl,imx50-gpt"
> +          - const: "fsl,imx31-gpt"
> +      - items:
> +          - const: "fsl,imx51-gpt"
> +          - const: "fsl,imx31-gpt"
> +      - items:
> +          - const: "fsl,imx53-gpt"
> +          - const: "fsl,imx31-gpt"
> +      - items:
> +          - const: "fsl,imx6q-gpt"
> +          - const: "fsl,imx31-gpt"
> +      - const: "fsl,imx6dl-gpt"
> +      - items:
> +          - const: "fsl,imx6sl-gpt"
> +          - const: "fsl,imx6dl-gpt"
> +      - items:
> +          - const: "fsl,imx6sx-gpt"
> +          - const: "fsl,imx6dl-gpt"

Don't need quotes.

Group all the ones with the same fallback to a single 'items' list 
using enum for the first entry.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
