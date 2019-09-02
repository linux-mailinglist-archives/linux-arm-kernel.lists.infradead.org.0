Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEAFA583F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+87x1t/F52wbCwqWSNbH4SOcOwZi3ZYj4LYd5dWWdc=; b=HAVzs5z4d4NvcA
	0dXy9kp3m/dTKEyuCtkppLBV96CbSNArN7VwS3YDdtuFqJzEfm9Yjg8XcLQJ9rDeQbqHBIrotZXdp
	s4sbEs0fSzl10fSVrbVSjVfHAcD4UxsSmktlm1VurN76lvL+KJNkoqSm0tam+k+PzZSJahtLz9MsQ
	MILzOUwwiW5bSobig6zX/Lz0xFrF6xy+UrH5mOgvE6KUEIg9areBUhaF56Cma1+r7Y5AJ6zw7b4uN
	2FaFkNOe+jSsxjM+sG5PumaBGmm8eZmtjQyiJCYtJw9EGEXEW6uG/myDX7GlpIM4t1TxVX5toz0PZ
	BwxaW5nnnx1SvOAxpX/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4may-0005lp-Lc; Mon, 02 Sep 2019 13:42:12 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mY4-0001aH-CP
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:39:14 +0000
Received: by mail-wm1-f66.google.com with SMTP id k1so14646654wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:39:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=viDwZpOARz1cFM6lOwQ1Yo70h5ns2nY224fON3ziGZ0=;
 b=L+hwTCq2/tYJCmxMcjPFpAR+MJxIL3jey02POtGNj7DFBK1WEc5H1y5I2rmuqhe7tr
 /0r5Ln+gC6hqeheW2I/bw3RrNvAikziK5WXYydGYbFzarH/9M4GMtyVlzmmWa0LeW7Ny
 6iTKqKKVreTPkJmrMXMRqn7xZHAxSlBBmG2+Zr6R/B2tmBAK+iZE958ZikdlEi/BuAoj
 suL7jyi/PcRMJmLjxgI48sbe19tOsVIQMWtKfkdDMCulE1rv+azFD18XyuOX2dG3+ycH
 qMPP35xj9WvFVW2/91Y59twE3mUTJ1Tt3mfAH9B+gIgydWnDLAUSwBv7UTmEw30sPRfC
 bSiA==
X-Gm-Message-State: APjAAAWAZRpBVFqiFmJvsoKV0PWeopPwHKGfnet971ItoPbVkaEWAWbR
 RnAQtmu1zRiKTnj9BhW9gop/IxmmJg==
X-Google-Smtp-Source: APXvYqxdFPgNrwKSJzlloeKFZWB965JRx6jQia5i73v3szd87dRMibiKtLQqdaSZgMepWZVR2jwaZw==
X-Received: by 2002:a7b:c7cc:: with SMTP id z12mr16711817wmk.80.1567431551009; 
 Mon, 02 Sep 2019 06:39:11 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id m23sm19628786wml.41.2019.09.02.06.39.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:10 -0700 (PDT)
Date: Mon, 02 Sep 2019 14:39:09 +0100
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 2/3] dt-bindings: sound: Add Xilinx logicPD-I2S FPGA IP
 bindings
Message-ID: <20190902044231.GA17348@bogus>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
 <20190830210607.22644-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830210607.22644-2-miquel.raynal@bootlin.com>
X-Mutt-References: <20190830210607.22644-2-miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063912_527491_15A099A2 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 alexandre@bootlin.com, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jaroslav Kysela <perex@perex.cz>, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 11:06:06PM +0200, Miquel Raynal wrote:
> Document the logicPD I2S FPGA block bindings in yaml.
> 
> Syntax verified with dt-doc-validate.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/sound/xlnx,logicpd-i2s.yaml      | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> new file mode 100644
> index 000000000000..cbff641af199
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/xlnx,logicpd-i2s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Device-Tree bindings for Xilinx logicPD I2S FPGA block
> +
> +maintainers:
> +  - Miquel Raynal <miquel.raynal@bootlin.com>
> +
> +description: |
> +  The IP supports I2S playback/capture audio. It acts as a slave and
> +  clocks should come from the codec. It only supports two channels and
> +  S16_LE format.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: xlnx,logicpd-i2s
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      Base address and size of the IP core instance.
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: tx interrupt
> +      - description: rx interrupt
> +    description:
> +      Either the Tx interruption or the Rx interruption or both.

The schema says either tx or both. Doesn't really matter here as it's 
just numbers.

> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - const: tx
> +      - const: rx

But here it does matter.

The easiest way to express this is:

oneOf:
  - items:
      - enum: [ tx, rx ]
  - items:
      - const: tx
      - const: rx

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupts-controller
> +
> +examples:
> +  - |
> +    logii2s_dai: logii2s-dai@43c10000 {
> +        reg = <0x43c10000 0x1000>;
> +        compatible = "xlnx,logicpd-i2s-dai";
> +        interrupt-parent = <&intc>;
> +        interrupts = <0 29 IRQ_TYPE_LEVEL_HIGH>, <0 30 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "rx", "tx";
> +    };
> -- 
> 2.20.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
