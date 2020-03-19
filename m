Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC8418BAA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:11:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDumb+gxbWcG2s8LxhsPzhS0Oc+Mw/xgO1K9BMdBrt8=; b=OVvqXEu6Urqwmh
	kkoNYZ38uvp2OlWvTgfl7nzJDOYNcvYPybsDOann8si0f8Yd/5xUOOsycGEYSCATRhxY9DG61nYq2
	bCSfPqaNmqFmcduRLE5ugncUgBqzZH73G0fiBykDZr1KIf3zFdgGpSU492Uneb7Jx879HRIDAWCO6
	eNwwTd9iJuGv2Od2kWnQPGChpSAQh2KlONIvi2LMLJfpV79tXSuS8pDLAHhbRB+MpBlFKMsB83jzB
	5sZxDWTifTbJnybahnjYDPQev7ImBmpOnCws8ONA6NIj0uW/hLuEr3hIvb2R4xgmasXz4rYpMqP70
	OJkqRUV4ER302RueG0tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwoy-00046w-7D; Thu, 19 Mar 2020 15:10:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwol-000463-Sk
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:10:45 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D601EA53;
 Thu, 19 Mar 2020 16:10:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584630641;
 bh=ZagPwbifJqGqaIMIH8swjff4JDupju7QHr6vf9ntCho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r0ZnpMk2fmSiofYFk5NavcnDZX9BOdmx3XLv4Hjn31UgV99YgbOuBRZwN11RofDID
 EPWyCNSpLMNhwsrJx98dV1i2SDB1DWVzalP4JGlyTDrjBTyUnFxg/SBNX+l0wDLID2
 NryYU+ywDYoICNX6o+7Myc1wtCGhAqm9U5Isg8aw=
Date: Thu, 19 Mar 2020 17:10:35 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v4 5/5] media: dt-bindings: media: i2c: convert ov5645
 bindings to json-schema
Message-ID: <20200319151035.GC14585@pendragon.ideasonboard.com>
References: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584620363-2255-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584620363-2255-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_081044_073743_80A249B2 
X-CRM114-Status: GOOD (  22.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Mar 19, 2020 at 12:19:23PM +0000, Lad Prabhakar wrote:
> Convert ov5645 bindings to json-schema.

\o/

> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/media/i2c/ov5645.txt  |  54 -------
>  .../devicetree/bindings/media/i2c/ov5645.yaml | 140 ++++++++++++++++++
>  2 files changed, 140 insertions(+), 54 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> deleted file mode 100644
> index 1c85c78ec58c..000000000000
> --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> +++ /dev/null
> @@ -1,54 +0,0 @@
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
> -			assigned-clocks = <&clks 200>;
> -			assigned-clock-rates = <24000000>;
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
> index 000000000000..4bf58ad210c5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> @@ -0,0 +1,140 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ov5645.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision 1/4-Inch 5Mp CMOS Digital Image Sensor

s/Mp/MP/ ?

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
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: xclk
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-rates:
> +     items:
> +     - description: Must be 24MHz (24000000).

These two properties shouldn't be part of the bindings, they're generic.

> +
> +  enable-gpios:
> +    description: |-
> +      Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> +      to the hardware pin PWDNB which is physically active low.

Specifying that the polarity is GPIO_ACTIVE_HIGH is confusing in my
opinion. If there's an inverter on the board, you'll need
GPIO_ACTIVE_LOW. We could possibly drop the sentence, as all GPIOs in DT
are supposed to be active high, but the fact that the GPIO name
corresponds to the opposite of the pin probably has to be documented. I
have no better wording to propose now I'm afraid, but it needs to be
addressed. Maybe Rob or Maxime could help.

> +
> +  reset-gpios:
> +    description: |-
> +      Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> +      the hardware pin RESETB.

Here you could just drop the second sentence, or apply the same fix as
for enable-gpios.

> +
> +  vdddo-supply:
> +    description:
> +      Chip digital IO regulator.

You can move the description on the same line as the "description:" key.
Same below.

> +
> +  vdda-supply:
> +    description:
> +      Chip analog regulator.
> +
> +  vddd-supply:
> +    description:
> +      Chip digital core regulator.
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
> +            description: |-
> +              The sensor supports two-lane operation.
> +              For two-lane operation the property must be set to <1 2>.
> +            items:
> +              - const: 1
> +              - const: 2


What if only one lane is wired, does the sensor support that ?

> +
> +          clock-lanes:
> +            description:
> +              should be set to <0> (clock lane on hardware lane 0).
> +            items:
> +              - const: 0
> +
> +          remote-endpoint: true
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
> +  - assigned-clocks
> +  - assigned-clock-rates

Those two properties should be dropped.

> +  - enable-gpios
> +  - reset-gpios

Are the GPIOs mandatory ? What if the signals are hardwired on the board
?

> +  - vdddo-supply
> +  - vdda-supply
> +  - vddd-supply
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c1 {

s/i2c1/i2c/

> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ov5645: sensor@3c {
> +            compatible = "ovti,ov5645";
> +            reg = <0x3c>;
> +            clocks = <&ov5645_cl>;
> +            clock-names = "xclk";
> +            assigned-clocks = <&ov5645_cl>;
> +            assigned-clock-rates = <24000000>;
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
