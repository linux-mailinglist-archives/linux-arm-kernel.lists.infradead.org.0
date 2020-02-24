Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3523A16AD26
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ghg27XSHKBm9EN19FTI6swGbBQV+SyE1J06u1ROPQ98=; b=SZHm3//pFIFytQ
	NaBdZz3LOHY5cSPUGlJUBFEr4+v7WImhVeydkC7lUS0uMOuLVHfh4WpHBoLMKqg1ICGMvoX3NfGlt
	/cLQ1R5DHm30la/2Ys9xFDdFLEEVzj0cw/GcqMQCddhK0mY2RRd/kez+sdV0ibJz9lYUkdR8qXnSw
	tsSHE3U2L5ZjU+jbYCU6bSvOmBGCw6E8NM1NOYazLkeSTsHEnLyBNAK3oI+BxmevcQGgkQGpIUWMU
	1TuVIz2I5WwIyhaIfVxxMSCqvjwD5Y1Nac6t+k3B/VKDlptIheZK6A74DWLQRXMUKW+55xDdYig4S
	iYYCiu19UD47rB9aFNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HR7-0007GL-PA; Mon, 24 Feb 2020 17:22:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HQl-000763-Ls
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:22:09 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1j6HQc-0002l7-Tk; Mon, 24 Feb 2020 18:21:58 +0100
Message-ID: <7716263db71ca07a52e5a562882f0ae7f35fee48.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/4] dt-bindings: display: imx: add bindings for DCSS
From: Lucas Stach <l.stach@pengutronix.de>
To: Laurentiu Palcu <laurentiu.palcu@nxp.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Date: Mon, 24 Feb 2020 18:21:57 +0100
In-Reply-To: <1575625964-27102-4-git-send-email-laurentiu.palcu@nxp.com>
References: <1575625964-27102-1-git-send-email-laurentiu.palcu@nxp.com>
 <1575625964-27102-4-git-send-email-laurentiu.palcu@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_092207_714671_788992AE 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, agx@sigxcpu.org, lukas@mntmn.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fr, 2019-12-06 at 11:52 +0200, Laurentiu Palcu wrote:
> Add bindings for iMX8MQ Display Controller Subsystem.
> 
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/display/imx/nxp,imx8mq-dcss.yaml      | 86 ++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml b/Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml
> new file mode 100644
> index 00000000..efd2494
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 NXP
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/display/imx/nxp,imx8mq-dcss.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: iMX8MQ Display Controller Subsystem (DCSS)
> +
> +maintainers:
> +  - Laurentiu Palcu <laurentiu.palcu@nxp.com>
> +
> +description:
> +
> +  The DCSS (display controller sub system) is used to source up to three
> +  display buffers, compose them, and drive a display using HDMI 2.0a(with HDCP
> +  2.2) or MIPI-DSI.

HDMI 2.0a and MIPI_DSI are not really properties of the DCSS, but
rather the connected bridges. Maybe just drop them here?

>  The DCSS is intended to support up to 4kp60 displays. HDR10
> +  image processing capabilities are included to provide a solution capable of
> +  driving next generation high dynamic range displays.
> +
> +properties:
> +  compatible:
> +    const: nxp,imx8mq-dcss
> +
> +  reg:
> +    maxItems: 2
> +
> +  interrupts:
> +    maxItems: 3
> +    items:
> +      - description: Context loader completion and error interrupt
> +      - description: DTG interrupt used to signal context loader trigger time
> +      - description: DTG interrupt for Vblank
> +
> +  interrupt-names:
> +    maxItems: 3
> +    items:
> +      - const: ctx_ld

Can we make this just "ctxld" for a bit more consistency with the name
below?

> +      - const: ctxld_kick
> +      - const: vblank
> +
> +  clocks:
> +    maxItems: 5
> +    items:
> +      - description: Display APB clock for all peripheral PIO access interfaces
> +      - description: Display AXI clock needed by DPR, Scaler, RTRAM_CTRL
> +      - description: RTRAM clock
> +      - description: Pixel clock, can be driver either by HDMI phy clock or MIPI
> +      - description: DTRC clock, needed by video decompressor
> +
> +  clock-names:
> +    items:
> +      - const: apb
> +      - const: axi
> +      - const: rtrm
> +      - const: pix
> +      - const: dtrc
> +
> +  port@0:
> +    type: object
> +    description: A port node pointing to a hdmi_in or mipi_in port node.

"A port node pointing to the input port of a HDMI/DP or MIPI display
bridge".

> +
> +examples:
> +  - |
> +    dcss: display-controller@32e00000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        compatible = "nxp,imx8mq-dcss";
> +        reg = <0x32e00000 0x2d000>, <0x32e2f000 0x1000>;
> +        interrupts = <6>, <8>, <9>;
> +        interrupt-names = "ctx_ld", "ctxld_kick", "vblank";
> +        interrupt-parent = <&irqsteer>;
> +        clocks = <&clk 248>, <&clk 247>, <&clk 249>,
> +                 <&clk 254>,<&clk 122>;
> +        clock-names = "apb", "axi", "rtrm", "pix", "dtrc";
> +        assigned-clocks = <&clk 107>, <&clk 109>, <&clk 266>;
> +        assigned-clock-parents = <&clk 78>, <&clk 78>, <&clk 3>;
> +        assigned-clock-rates = <800000000>,
> +                               <400000000>;
> +        port@0 {
> +            dcss_out: endpoint {
> +                remote-endpoint = <&hdmi_in>;
> +            };
> +        };
> +    };
> +


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
