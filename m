Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BAD176A2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 02:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4q/1fdHM/QJ+kuIlCRt9/qEDrRB0pfOQDa1TIyAB0Y=; b=ZVz/ATh1LKqfhS
	3l9ISvVB3NLuad0lmlppzynRku6kssjh+zXb9/dUy22Jn6DBKQcF/avqKqQznxF3WV9EDJSG9bYV5
	G+0WXSxwQQqYb7MpmPQ6ONhABpL2f8SHOl4J6CwgvA2SiJ/oToo3dTRY5v8Z/PFKpws+E4WBq45Av
	GiL+XBsw4uG1KiaDaAic2xn5R1VBJsRaRLSPjQgaVYKJN9jD9CynSjxVSVHRn+RxeqtMCWh95yWa2
	qFMs/mewqT20TDW7SZ9Y6xq42f2cWLOQdc/YK/dqvuJJsMJGSNEtN8KGgjBaYsUIg6z3vF/9YXx2X
	ZWZBJh71IACKwXqvV/3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8we4-0007MF-Jp; Tue, 03 Mar 2020 01:46:52 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8wdw-0007Lg-0B
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:46:46 +0000
Received: by mail-oi1-f196.google.com with SMTP id r16so1372123oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 17:46:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0fZprhK1W/+54HzE9JKB5hhmjgGt264/Y236IBMlW68=;
 b=WwrP9daGfayC2kTmFXbl/lxr6zAcUHY2hVCF2ivEpBnDelS+duCGvjAJBSHV30JBFG
 Hc16wZ4WaDddAaYB24gDPa6rMCz92qqGbXHICQgP8wC3dAu1PLoP6dTgfvJgXinYhGXS
 s7PlF8cwGIDC/8T9OkWjP4igWrtJuibYPqag/v3j+QeUgz+hpKVa5XTrCrofiIYdKxJb
 ZExYfJhmHz3dBOqqJQDKe2rnihqWpTeJs3LujTNtxu5zydaC7f5TdXmqWS1sVfnsDpyw
 R9GbWYL7AOtPfOsR8tRjhxEDkhrZOLxTzRhVSpuxwhTnFHGpKH5IivsGVqRnRJeRkiX8
 5MEQ==
X-Gm-Message-State: ANhLgQ2bJdlfe2nRfYvHCiWXFXRnYpUAfywVJ9uvsr3crSq9k41fQUkK
 iVmWIRmem552J/YMQisPYQ==
X-Google-Smtp-Source: ADFU+vtMKankA5j2TyBMep5zxakZ/gSxHjO96dpd6H9OgS/zdaStVrFVHEAotLCrZcCrix4ZjMErJQ==
X-Received: by 2002:aca:bfc2:: with SMTP id p185mr936911oif.57.1583200002745; 
 Mon, 02 Mar 2020 17:46:42 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m19sm7258226otn.47.2020.03.02.17.46.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 17:46:42 -0800 (PST)
Received: (nullmailer pid 467 invoked by uid 1000);
 Tue, 03 Mar 2020 01:46:40 -0000
Date: Mon, 2 Mar 2020 19:46:40 -0600
From: Rob Herring <robh@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Re: [PATCH v4 7/8] ASoC: dt-bindings: fsl_easrc: Add document for
 EASRC
Message-ID: <20200303014640.GA26270@bogus>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
 <2aa0b446c3e2af59e3472d8f7706298691ec4a5c.1583039752.git.shengjiu.wang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2aa0b446c3e2af59e3472d8f7706298691ec4a5c.1583039752.git.shengjiu.wang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_174644_931753_C1717046 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, timur@kernel.org, Xiubo.Lee@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, tiwai@suse.com,
 lgirdwood@gmail.com, perex@perex.cz, nicoleotsuka@gmail.com,
 broonie@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 01, 2020 at 01:24:18PM +0800, Shengjiu Wang wrote:
> EASRC (Enhanced Asynchronous Sample Rate Converter) is a new
> IP module found on i.MX8MN.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  .../devicetree/bindings/sound/fsl,easrc.yaml  | 96 +++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/fsl,easrc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/fsl,easrc.yaml b/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
> new file mode 100644
> index 000000000000..500af8f0c8f0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
> @@ -0,0 +1,96 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/fsl,easrc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP Asynchronous Sample Rate Converter (ASRC) Controller
> +
> +maintainers:
> +  - Shengjiu Wang <shengjiu.wang@nxp.com>
> +
> +properties:
> +  $nodename:
> +    pattern: "^easrc@.*"
> +
> +  compatible:
> +    oneOf:
> +      - items:

You can drop oneOf and items here.

> +        - enum:
> +          - fsl,imx8mn-easrc

Blank line between properties please.

> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Peripheral clock
> +
> +  clock-names:
> +    items:
> +      - const: mem
> +
> +  dmas:
> +    maxItems: 8
> +
> +  dma-names:
> +    oneOf:

Drop oneOf as there is only one.

> +      - items:
> +          - const: ctx0_rx
> +          - const: ctx0_tx
> +          - const: ctx1_rx
> +          - const: ctx1_tx
> +          - const: ctx2_rx
> +          - const: ctx2_tx
> +          - const: ctx3_rx
> +          - const: ctx3_tx
> +
> +  fsl,easrc-ram-script-name:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: The coefficient table for the filters

Need to define the exact string(s).

> +
> +  fsl,asrc-rate:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Defines a mutual sample rate used by DPCM Back Ends

Constraints?

> +
> +  fsl,asrc-format:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Defines a mutual sample format used by DPCM Back Ends

Constraints?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - dmas
> +  - dma-name

dma-names

> +  - fsl,easrc-ram-script-name
> +  - fsl,asrc-rate
> +  - fsl,asrc-format
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mn-clock.h>
> +
> +    easrc: easrc@300C0000 {
> +           compatible = "fsl,imx8mn-easrc";
> +           reg = <0x0 0x300C0000 0x0 0x10000>;
> +           interrupts = <0x0 122 0x4>;
> +           clocks = <&clk IMX8MN_CLK_ASRC_ROOT>;
> +           clock-names = "mem";
> +           dmas = <&sdma2 16 23 0> , <&sdma2 17 23 0>,
> +                  <&sdma2 18 23 0> , <&sdma2 19 23 0>,
> +                  <&sdma2 20 23 0> , <&sdma2 21 23 0>,
> +                  <&sdma2 22 23 0> , <&sdma2 23 23 0>;
> +           dma-names = "ctx0_rx", "ctx0_tx",
> +                       "ctx1_rx", "ctx1_tx",
> +                       "ctx2_rx", "ctx2_tx",
> +                       "ctx3_rx", "ctx3_tx";
> +           fsl,easrc-ram-script-name = "imx/easrc/easrc-imx8mn.bin";
> +           fsl,asrc-rate  = <8000>;
> +           fsl,asrc-format = <2>;
> +           status = "disabled";

Don't show status in examples.

> +    };
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
