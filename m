Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F221BF4DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itVH8wI0ecSZl7DTIHrckD55P2atFMzx3PkWHSIuxBg=; b=d5Usmbji5N/EcZ
	LYknZ9p6I+6enq+4FlbF0yd+Liohx6GdY1vgAK/XQZqjxbWcPFwWPV7B4VfyCbCY2WQxyUUlpxdZg
	XocOf3Ne8WNXc02mryo1ohSwmCiF8nBR9Bokc0uypcm2fKonrmntLz+owqZ5elD5K5MN+S6tKMNdj
	n9jaIvCX937ZhYlKawd6xEq0nxa/0F82Nm35Tk0/u3XcF/aaLdeIhVRD/mJSHovqExUDL54+yzGiR
	zxELmrzpAGEORX5VA0nE5bzsPoz+DnUYztv1tN7T/6T30LNfBKd393k1bGkBZp8k7e7JzglNDUwf0
	uCV8Cf3FoXOh/9AiKSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU64L-0000fR-0y; Thu, 30 Apr 2020 10:05:25 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU64A-0000ee-I0
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:05:17 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 436302007CC;
 Thu, 30 Apr 2020 12:05:13 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3644B2007CB;
 Thu, 30 Apr 2020 12:05:13 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2124E20397;
 Thu, 30 Apr 2020 12:05:13 +0200 (CEST)
Date: Thu, 30 Apr 2020 13:05:12 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Message-ID: <20200430100512.lzvuxzcardw5uwi2@fsr-ub1664-175>
References: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_030514_881108_2B51CE7D 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, festevam@gmail.com,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-04-30 08:51:57, Anson Huang wrote:
> Convert the i.MX6Q clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Great effort taking care of these. 

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
> Changes since V3:
> 	- update license to be with (GPL-2.0-only OR BSD-2-Clause);
> 	- remove unnecessary minItem for interrupts;
> 	- remove label in example.
> ---
>  .../devicetree/bindings/clock/imx6q-clock.txt      | 41 --------------
>  .../devicetree/bindings/clock/imx6q-clock.yaml     | 66 ++++++++++++++++++++++
>  2 files changed, 66 insertions(+), 41 deletions(-)
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
> index 0000000..0dc96ed
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fclock%2Fimx6q-clock.yaml%23&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7Ca9ea8978c18a400f965d08d7eca1eec5%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637238052550722964&amp;sdata=vZmcBuigGFCbh1doAasvlXKFltD%2Fu9T4i88KWRoxck8%3D&amp;reserved=0
> +$schema: https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7Ca9ea8978c18a400f965d08d7eca1eec5%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637238052550722964&amp;sdata=RyT292O7qdkbmKrSMXEuHCo%2Fezm98n%2FAAYpansFL3%2BY%3D&amp;reserved=0
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
> +    clock-controller@20c4000 {
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
