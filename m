Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4204219FBD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdgzybFqShKfN3Jic7VXsB/G7U6KTTppLnwtKA6KP8Y=; b=rCRaDwWfRukp3+
	X1RWNaA8YxWY8Fvdxu98npY+fAmOZtaTGTLcVxgjh0pRaT1JN5zqNF5mfuoxJvjy+8bZEs0NArm8y
	RcoAfgoo3NhdQBMAl6ZKVfujweBlAZxcftO1v/kusagvHgfYBU1fBqv4dJuZGQXo/wAI03VTHSoF5
	QXrOcnR9oDlnMyyaUUlCaT+JGKREsLB26TqJXTwvS5VQUMIw4/nAbmqCs9AjkE85ipwO0hW8fr1eG
	IcwIR3ITthhrcX5ZBc1n2VvYJiefsd0cQ/tAit8Xc0HHLrl/X7tzJrDKihXrwo93P3e6C2jZHBBCy
	2hUTTcI47odrJqNdH12w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVnA-0000Wn-EG; Mon, 06 Apr 2020 17:44:12 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVmv-0000SG-6p
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:43:59 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7E65080E;
 Mon,  6 Apr 2020 19:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586195035;
 bh=TEs3NzWpLHrpFcMT8pI7gku05SwpaHYibdYAcct2ZAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZelhUvmBLBDidGrdYCAu1wlCuaLmKfdT+a2Ce84aGS9JvCh3+XaAexOUsOzAdxIHE
 G8pDVnAzM3s2XOMem/bpSz1RpjcV8Y2vIwmgTpFH8y/8g+FzN3Vb2xXUDq9pyVo0bk
 Pz3dAPoG58cLAGX1ruxW7VKzbQ4ljlE0IZ/i0LvU=
Date: Mon, 6 Apr 2020 20:43:46 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v5 5/5] media: dt-bindings: media: i2c: convert ov5645
 bindings to json-schema
Message-ID: <20200406174346.GH16885@pendragon.ideasonboard.com>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586191361-16598-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_104357_414092_75D6836A 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

Thank you for the patch.

On Mon, Apr 06, 2020 at 05:42:41PM +0100, Lad Prabhakar wrote:
> Convert ov5645 bindings to json-schema.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/media/i2c/ov5645.txt  |  52 --------
>  .../devicetree/bindings/media/i2c/ov5645.yaml | 126 ++++++++++++++++++
>  2 files changed, 126 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> deleted file mode 100644
> index a55bb728ea48..000000000000
> --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -* Omnivision 1/4-Inch 5Mp CMOS Digital Image Sensor
> -
> -The Omnivision OV5645 is a 1/4-Inch CMOS active pixel digital image sensor with
> -an active array size of 2592H x 1944V. It is programmable through a serial I2C
> -interface.
> -
> -Required Properties:
> -- compatible: Value should be "ovti,ov5645".
> -- clocks: Reference to the xclk clock.
> -- clock-names: Should be "xclk".
> -- enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> -  to the hardware pin PWDNB which is physically active low.
> -- reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> -  the hardware pin RESETB.
> -- vdddo-supply: Chip digital IO regulator.
> -- vdda-supply: Chip analog regulator.
> -- vddd-supply: Chip digital core regulator.
> -
> -The device node must contain one 'port' child node for its digital output
> -video port, in accordance with the video interface bindings defined in
> -Documentation/devicetree/bindings/media/video-interfaces.txt.
> -
> -Example:
> -
> -	&i2c1 {
> -		...
> -
> -		ov5645: ov5645@3c {
> -			compatible = "ovti,ov5645";
> -			reg = <0x3c>;
> -
> -			enable-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
> -			reset-gpios = <&gpio5 20 GPIO_ACTIVE_LOW>;
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&camera_rear_default>;
> -
> -			clocks = <&clks 200>;
> -			clock-names = "xclk";
> -
> -			vdddo-supply = <&camera_dovdd_1v8>;
> -			vdda-supply = <&camera_avdd_2v8>;
> -			vddd-supply = <&camera_dvdd_1v2>;
> -
> -			port {
> -				ov5645_ep: endpoint {
> -					clock-lanes = <1>;
> -					data-lanes = <0 2>;
> -					remote-endpoint = <&csi0_ep>;
> -				};
> -			};
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.yaml b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> new file mode 100644
> index 000000000000..d5cdcf9a1c76
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> @@ -0,0 +1,126 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ov5645.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision 1/4-Inch 5MP CMOS Digital Image Sensor
> +
> +maintainers:
> +  - Sakari Ailus <sakari.ailus@linux.intel.com>
> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> +
> +description: |-
> + The Omnivision OV5645 is a 1/4-Inch CMOS active pixel digital image sensor with
> + an active array size of 2592H x 1944V. It is programmable through a serial I2C
> + interface.
> +
> +properties:
> +  compatible:
> +    const: ovti,ov5645
> +
> +  reg:
> +    description: I2C device address
> +    maxItems: 1
> +
> +  clocks:
> +    description: External clock frequency should range between 6MHz to 27MHz.
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: xclk
> +
> +  enable-gpios:
> +    description: |-
> +      Chip enable GPIO. This corresponds to the hardware pin PWDNB which is
> +      physically active low.
> +
> +  reset-gpios:
> +    description: Chip reset GPIO. This corresponds to the hardware pin RESETB.
> +
> +  vdddo-supply:
> +    description: Chip digital IO regulator.
> +
> +  vdda-supply:
> +    description: Chip analog regulator.
> +
> +  vddd-supply:
> +    description: Chip digital core regulator.
> +
> +  # See ../video-interfaces.txt for more details
> +  port:
> +    type: object
> +    properties:
> +      endpoint:
> +        type: object
> +
> +        properties:
> +          data-lanes:

Don't you need

		minItems: 1
		maxItems: 2

here ?

> +            description: |-
> +              The sensor supports either one-lane, or two-lane operation.
> +              For one-lane operation the property must be set to <1> and
> +              for two-lane operation the property must be set to <1 2>.
> +            items:
> +              - const: 1
> +              - const: 2
> +
> +          clock-lanes:

Same here,

		maxItems: 1

?

> +            description:
> +              should be set to <0> (clock lane on hardware lane 0).

I think you can drop the description, with the items below it's clear
that the value has to be <0>.

> +            items:
> +              - const: 0
> +
> +          remote-endpoint: true

Should this be

             remote-endpoint:
	       $ref: /schemas/types.yaml#/definitions/phandle

> +
> +        required:
> +          - data-lanes
> +          - clock-lanes
> +          - remote-endpoint
> +
> +        additionalProperties: false
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - enable-gpios
> +  - reset-gpios
> +  - vdddo-supply
> +  - vdda-supply
> +  - vddd-supply
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ov5645: sensor@3c {
> +            compatible = "ovti,ov5645";
> +            reg = <0x3c>;
> +            clocks = <&ov5645_cl>;
> +            clock-names = "xclk";
> +            enable-gpios = <&gpio1 6 /* GPIO_ACTIVE_HIGH */>;
> +            reset-gpios = <&gpio5 20 /* GPIO_ACTIVE_LOW */>;
> +            vdddo-supply = <&camera_dovdd_1v8>;
> +            vdda-supply = <&camera_avdd_2v8>;
> +            vddd-supply = <&camera_dvdd_1v2>;
> +
> +            port {
> +                ov5645_0: endpoint {
> +                    remote-endpoint = <&csi1_ep>;
> +                    clock-lanes = <0>;
> +                    data-lanes = <1 2>;
> +                };
> +            };
> +        };
> +    };
> +
> +...

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
