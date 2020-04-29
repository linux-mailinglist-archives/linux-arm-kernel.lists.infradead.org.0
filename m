Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96001BE9D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rg5J41H0ui+hudNvppVJz0VYy+TsDy8YGqUEjdgNIhM=; b=BfsVtYp9wqJsuq
	HVVXg87V+yZsGgKPhzlQfQYoCZAqCaY8PdZgVnE18XEjMqP1Isp+aWPuztL+TXktcjNg5eMIf0uda
	v7bzFSlAFQrHW9klWapn2omJ2bNjQ5nGuED0Hz9kXO+78e13DVLsVmS6DxZjlMfd/WRVhWnvNzXQz
	7zUNwpldQ3wh7es7T8PoEiU2W00xu91+JtZJ6UpqRmZVt4og3j1TSlH4FlY4PXVYyQFz29pkYyQEL
	dAuZsxN4Yl7qaOukH2eMgZtgsF+LTE7GKH+lenoLYLSCK/7hlyA1zM2Et4bstceSlqeFxkmAYmMJV
	PjVWX44y/KN2k4DkcthA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuEL-0006Zu-Hc; Wed, 29 Apr 2020 21:26:57 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuDq-0006NP-D8
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:26:28 +0000
Received: by mail-oo1-f66.google.com with SMTP id g14so777753ooa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:26:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jZdQqz//+UegbVE8A4Ss6PQqpaUbK0Xf8KqifQRUIYA=;
 b=iEYVEjno1ouz9rZQTwsy3pT+H6xOGy/bIotIH3deqnYpS7fTPSLDXS1hhpXiVUIEyu
 cmANQ0bniWWDCExMDujgVORwEij/5Bb0gM2Cr2Pn6wIrv7FxIY6vTbeIQePes2rjnqnj
 qb0T2FLtmy8+wwmBVGNzFtOd0EYvtTjDPTUvaXWVDuggGtIHzxAEL/0I7NSkgyGDlEFk
 ha9peLIz0WYcNDjco49GuaiCNoYyK/2fZ28VVBw5Z+JUp7KaaAtsz/M12Mj8thgKhNSC
 sSyzSnqVe509ej8vTq4aoDir9oAMdN9dxRhUV+8FiAWVdNezgTZlsXQBLrOXHt//K9ux
 26ig==
X-Gm-Message-State: AGi0PuZWqQP68j5p7gOYHEfw/iiRD62Gentwo1m9FS5T5fMYPB65isYH
 9uyYpPoiTVbdmN8+OsKwOQ==
X-Google-Smtp-Source: APiQypKwsnnuEjrK//ENA1olM+ndEcdtQnnyaYhWVWsNx0ix/MtVtneEX6PtoFrzg2X8/em70PIiow==
X-Received: by 2002:a4a:621d:: with SMTP id x29mr59980ooc.92.1588195585576;
 Wed, 29 Apr 2020 14:26:25 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k84sm695519oib.10.2020.04.29.14.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 14:26:24 -0700 (PDT)
Received: (nullmailer pid 26020 invoked by uid 1000);
 Wed, 29 Apr 2020 21:26:22 -0000
Date: Wed, 29 Apr 2020 16:26:22 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Message-ID: <20200429212622.GA23326@bogus>
References: <1587084091-5941-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587084091-5941-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_142626_469269_B618987D 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, shawnguo@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 08:41:27AM +0800, Anson Huang wrote:
> Convert the i.MX6Q clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- Force 'interrupts' minItem/maxItem to 2.

Not necessary. maxItems is sufficient.

> ---
>  .../devicetree/bindings/clock/imx6q-clock.txt      | 41 -------------
>  .../devicetree/bindings/clock/imx6q-clock.yaml     | 67 ++++++++++++++++++++++
>  2 files changed, 67 insertions(+), 41 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx6q-clock.txt b/Documentation/devicetree/bindings/clock/imx6q-clock.txt
> deleted file mode 100644
> index 13d36d4..0000000
> --- a/Documentation/devicetree/bindings/clock/imx6q-clock.txt
> +++ /dev/null
> @@ -1,41 +0,0 @@
> -* Clock bindings for Freescale i.MX6 Quad
> -
> -Required properties:
> -- compatible: Should be "fsl,imx6q-ccm"
> -- reg: Address and length of the register set
> -- interrupts: Should contain CCM interrupt
> -- #clock-cells: Should be <1>
> -
> -Optional properties:
> -- fsl,pmic-stby-poweroff: Configure CCM to assert PMIC_STBY_REQ signal
> -  on power off.
> -  Use this property if the SoC should be powered off by external power
> -  management IC (PMIC) triggered via PMIC_STBY_REQ signal.
> -  Boards that are designed to initiate poweroff on PMIC_ON_REQ signal should
> -  be using "syscon-poweroff" driver instead.
> -- clocks: list of clock specifiers, must contain an entry for each entry
> -          in clock-names
> -- clock-names: valid names are "osc", "ckil", "ckih1", "anaclk1" and "anaclk2"
> -
> -The clock consumer should specify the desired clock by having the clock
> -ID in its "clocks" phandle cell.  See include/dt-bindings/clock/imx6qdl-clock.h
> -for the full list of i.MX6 Quad and DualLite clock IDs.
> -
> -Examples:
> -
> -#include <dt-bindings/clock/imx6qdl-clock.h>
> -
> -clks: ccm@20c4000 {
> -	compatible = "fsl,imx6q-ccm";
> -	reg = <0x020c4000 0x4000>;
> -	interrupts = <0 87 0x04 0 88 0x04>;
> -	#clock-cells = <1>;
> -};
> -
> -uart1: serial@2020000 {
> -	compatible = "fsl,imx6q-uart", "fsl,imx21-uart";
> -	reg = <0x02020000 0x4000>;
> -	interrupts = <0 26 0x04>;
> -	clocks = <&clks IMX6QDL_CLK_UART_IPG>, <&clks IMX6QDL_CLK_UART_SERIAL>;
> -	clock-names = "ipg", "per";
> -};
> diff --git a/Documentation/devicetree/bindings/clock/imx6q-clock.yaml b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> new file mode 100644
> index 0000000..0daf789
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/imx6q-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Clock bindings for Freescale i.MX6 Quad
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: fsl,imx6q-ccm
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 2
> +    maxItems: 2
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clocks:
> +    items:
> +      - description: 24m osc
> +      - description: 32k osc
> +      - description: ckih1 clock input
> +      - description: anaclk1 clock input
> +      - description: anaclk2 clock input
> +
> +  clock-names:
> +    items:
> +      - const: osc
> +      - const: ckil
> +      - const: ckih1
> +      - const: anaclk1
> +      - const: anaclk2
> +
> +  fsl,pmic-stby-poweroff:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: |
> +      Use this property if the SoC should be powered off by external power
> +      management IC (PMIC) triggered via PMIC_STBY_REQ signal.
> +      Boards that are designed to initiate poweroff on PMIC_ON_REQ signal should
> +      be using "syscon-poweroff" driver instead.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - '#clock-cells'
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    clks: clock-controller@20c4000 {

Drop the label.

> +        compatible = "fsl,imx6q-ccm";
> +        reg = <0x020c4000 0x4000>;
> +        interrupts = <0 87 IRQ_TYPE_LEVEL_HIGH>,
> +                     <0 88 IRQ_TYPE_LEVEL_HIGH>;
> +        #clock-cells = <1>;
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
