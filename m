Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BA1139B12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:04:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FraNlfiblZ5DexYo8I3vDnYOFXATogXyTHwIFtGX9w4=; b=tYddZZh23NLS1R
	iGJZ4WmBBsVDXiv97lTYzCGClmFtJaVA4KCrCAgCh8hR5vagwv7jXYaem12L8J10NVi+zz2EnefI5
	uivpcw/AuztaRlfj5mk51BaEdSirYTRfrkFPzt1HcW9fNr6cCpJZvFdjh/eKYNDPJYGnf4jT5VavU
	jhrruI3Qe37Ko7Wjt5rB94RRMadwE6UiaJ7xGQSLtp033N0YmATw7QXtqltcYL8up6twutIt0Bgka
	rFJ0m1Y+BGWbv13QkW1j60K1Bve0QxvQLeFZKP2gDGVX7rK0J522sQr0ZQtLQTnC0HbC2NAVLdjJ4
	qwJI1FtAA3u8v4dXODIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6sS-0005CW-IO; Mon, 13 Jan 2020 21:04:00 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6sJ-0005AY-3R
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:03:54 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so10349690otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:03:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zoMuCqrtbq7pL6Vxs6+VLfL47ToDJhTtq6v+uJlisK8=;
 b=UlLUg9Mu9G4FXPGuHYm9/7VRNwvDlJ3UHct2VD5oVzSxOsURPm0TMIHXWRgUUxZ0be
 AYDtagwQl5yNhtAUfBnOeGbDuCA77PVz272spFpWA+gQPdhOhEPg2Pv1bThXXpJoAEEj
 3eBSTWgh9q70cQMpplFjcGNfrE06b0lTL+Smt9+m57izazBORr/uXL7iF9vWwhmXDNng
 vOWmUd/YsQao3QG4lHLo3p84RpLdVZf4guRdAJuQ4k58t1Yn8+MJkepeYzamf5d3Z6X0
 gbFp8Hp2Sh03cwC7eLWsj4isJruL3VlzyT9oIzPO6o50RdLPAp/daO21cYqDIpV7WVVu
 TiPQ==
X-Gm-Message-State: APjAAAU2994ax0ufLnRdFezBQJQLG/sxqwn2PBcvu9eydkWXjiloEmV6
 9ZjP6JpZfSe5zx15VxxHDUHJO5w=
X-Google-Smtp-Source: APXvYqx64nTn6aK40EF+gThd6qdB08UzBvLNQ8eABFxO4mTh8H7dkWJQ+Nleug5L4sw6VlTi70nRyQ==
X-Received: by 2002:a9d:68cc:: with SMTP id i12mr14037336oto.207.1578949426869; 
 Mon, 13 Jan 2020 13:03:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j26sm4593750otq.18.2020.01.13.13.03.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:03:45 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220b00
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 13 Jan 2020 15:03:44 -0600
Date: Mon, 13 Jan 2020 15:03:44 -0600
From: Rob Herring <robh@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP
 INTMUX interrupt multiplexer
Message-ID: <20200113210344.GA4615@bogus>
References: <1578899321-1365-1-git-send-email-qiangqing.zhang@nxp.com>
 <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_130352_014382_E260C24D 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, festevam@gmail.com,
 fugang.duan@nxp.com, jason@lakedaemon.net, maz@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, tglx@linutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 03:08:40PM +0800, Joakim Zhang wrote:
> This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
> for i.MX8 family SoCs.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  .../interrupt-controller/fsl,intmux.yaml      | 77 +++++++++++++++++++
>  1 file changed, 77 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml

Please run 'make dt_binding_check' and fix the errors:

Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml:  
while scanning for the next token found character that cannot start any token 
  in "<unicode string>", line 60, column 1

> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
> new file mode 100644
> index 000000000000..4dba532fe0bd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/fsl,intmux.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale INTMUX interrupt multiplexer
> +
> +maintainers:
> +  - Marc Zyngier <maz@kernel.org>
> +
> +properties:
> +  compatible:
> +    items:
> +      const: fsl,imx-intmux
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 8
> +    description: |
> +      Should contain the parent interrupt lines (up to 8) used to multiplex
> +      the input interrupts.
> +
> +  interrupt-controller: true
> +
> +  '#interrupt-cells':
> +    const: 2
> +
> +  clocks:
> +    maxItems: 1
> +    description: ipg clock.
> +
> +  clock-names:
> +    items:
> +      const: ipg
> +
> +  fsl,intmux_chans:

Don't use '_' in property names.

Is this any different from the length of 'interrupts' which you can 
count?

> +    maxItems: 1
> +    description: |
> +      The number of channels used for interrupt source. The Maximum value is 8.
> +      If this property is not set in DT then driver uses 1 channel by default.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-controller
> +  - '#interrupt-cells'
> +  - clocks
> +  - clock-name
> +  - fsl,intmux_chans
> +
> +additionalProperties: false
> +
> +Example:
> +
> +	intmux@37400000 {

interrupt-controller@...

> +		compatible = "fsl,imx-intmux";
> +		reg = <0x37400000 0x1000>;
> +		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		clocks = <&clk IMX8QM_CM40_IPG_CLK>;
> +		clock-names = "ipg";
> +		fsl,intmux_chans = <8>;
> +	};
> +
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
