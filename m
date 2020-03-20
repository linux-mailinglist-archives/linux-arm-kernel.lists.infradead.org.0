Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8E618DB56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 23:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJ29+llkFJwgvNXZx1oQSWoN1Iwd6nVipdzkV6XOUdk=; b=iqodbTQYPXvd64
	iVp8Wm0zb7asF/qt4knn8EQWNb9tvZaaaYhSRB6+rb+gW46xITiCzdeMQ6b5OBfwpJq7KTwhEJ+Xy
	bsKEdyzRArlwtLinXKxcqXVLiOZu25Kbbjiu9uEzAShiQWce6iS+d6KiWuf6JybQfJcvBWwFgzWUZ
	LdGwcDzwIUlLSK8qSEVhLDYS+ajd5C9pbxqR7xJdYqfPOxVOIs67RujfiwpIYfPZOD47A+Jyjljc3
	LG6IHEyC1umGt/q/pjpeCLdwE4U951h237KNEE9jEze1mWZS0sjQibyCdettZr5oC9Z/MC4nS3Onl
	C90bOU5TDmf+XPY0sT/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQRh-000225-2P; Fri, 20 Mar 2020 22:48:53 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQRV-00021T-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 22:48:44 +0000
Received: by mail-io1-f65.google.com with SMTP id y24so7680662ioa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 15:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A1uslfEoH7vNHdUhQmPCdcU9qvlFI6adpXPxHF0FMnE=;
 b=jefZjUiA3cEPEXRWbIcV9wRnvf2aco9qEsUByprL71w6RCQtjG4MGOv2Vt6Qzohld2
 tld0F2RZ2JdmTZ8ovLzEfQEaecXaCL355b3hvYIigJ5zzFTSndVFqFkiL2jwtyNm+TCq
 ICLUAPZykLdYzxjHD5gdD4bqmj8pGzqD4wGoCCiaNs1K77QzfXubwJ3OVXxtv2GZcu4Z
 mylhOfw7g6XcH5A6alHqbg2uI/zXWOcEhR3ECSUtfBeznDHyKNiwc2cHdUisct4211cD
 0YFMq3OTc8fsW7X9rCfb8fHbu5vVw6XSum0Ier7f6mGO2r3J0quCUVtSLc8T/5ZTWtwn
 RVww==
X-Gm-Message-State: ANhLgQ1eMRpBAnvHtZqsj/cL3RIDO7i6kpXq5Wx01GSPEbTFFF2l/ufb
 MA5hcLgtBlMDNcD4naNnDSwtj6E=
X-Google-Smtp-Source: ADFU+vtwXWnuppwnc14jRb856bQUQFUaxaVhGlFZFR9oFbLMkd2qPfBTmiy1HVaQaH4yTdHNcia0iA==
X-Received: by 2002:a6b:8b07:: with SMTP id n7mr9777692iod.55.1584744520519;
 Fri, 20 Mar 2020 15:48:40 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id f2sm2115369ioj.34.2020.03.20.15.48.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 15:48:39 -0700 (PDT)
Received: (nullmailer pid 11861 invoked by uid 1000);
 Fri, 20 Mar 2020 22:48:36 -0000
Date: Fri, 20 Mar 2020 16:48:36 -0600
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 5/5] media: dt-bindings: media: i2c: convert ov5645
 bindings to json-schema
Message-ID: <20200320224836.GA27024@bogus>
References: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584620363-2255-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319151035.GC14585@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319151035.GC14585@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_154841_924618_CA43F33D 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 05:10:35PM +0200, Laurent Pinchart wrote:
> Hi Prabhakar,
> 
> Thank you for the patch.
> 
> On Thu, Mar 19, 2020 at 12:19:23PM +0000, Lad Prabhakar wrote:
> > Convert ov5645 bindings to json-schema.
> 
> \o/
> 
> > 
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ov5645.txt  |  54 -------
> >  .../devicetree/bindings/media/i2c/ov5645.yaml | 140 ++++++++++++++++++
> >  2 files changed, 140 insertions(+), 54 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > deleted file mode 100644
> > index 1c85c78ec58c..000000000000
> > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > +++ /dev/null
> > @@ -1,54 +0,0 @@
> > -* Omnivision 1/4-Inch 5Mp CMOS Digital Image Sensor
> > -
> > -The Omnivision OV5645 is a 1/4-Inch CMOS active pixel digital image sensor with
> > -an active array size of 2592H x 1944V. It is programmable through a serial I2C
> > -interface.
> > -
> > -Required Properties:
> > -- compatible: Value should be "ovti,ov5645".
> > -- clocks: Reference to the xclk clock.
> > -- clock-names: Should be "xclk".
> > -- enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > -  to the hardware pin PWDNB which is physically active low.
> > -- reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > -  the hardware pin RESETB.
> > -- vdddo-supply: Chip digital IO regulator.
> > -- vdda-supply: Chip analog regulator.
> > -- vddd-supply: Chip digital core regulator.
> > -
> > -The device node must contain one 'port' child node for its digital output
> > -video port, in accordance with the video interface bindings defined in
> > -Documentation/devicetree/bindings/media/video-interfaces.txt.
> > -
> > -Example:
> > -
> > -	&i2c1 {
> > -		...
> > -
> > -		ov5645: ov5645@3c {
> > -			compatible = "ovti,ov5645";
> > -			reg = <0x3c>;
> > -
> > -			enable-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
> > -			reset-gpios = <&gpio5 20 GPIO_ACTIVE_LOW>;
> > -			pinctrl-names = "default";
> > -			pinctrl-0 = <&camera_rear_default>;
> > -
> > -			clocks = <&clks 200>;
> > -			clock-names = "xclk";
> > -			assigned-clocks = <&clks 200>;
> > -			assigned-clock-rates = <24000000>;
> > -
> > -			vdddo-supply = <&camera_dovdd_1v8>;
> > -			vdda-supply = <&camera_avdd_2v8>;
> > -			vddd-supply = <&camera_dvdd_1v2>;
> > -
> > -			port {
> > -				ov5645_ep: endpoint {
> > -					clock-lanes = <1>;
> > -					data-lanes = <0 2>;
> > -					remote-endpoint = <&csi0_ep>;
> > -				};
> > -			};
> > -		};
> > -	};
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.yaml b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> > new file mode 100644
> > index 000000000000..4bf58ad210c5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> > @@ -0,0 +1,140 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/ov5645.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Omnivision 1/4-Inch 5Mp CMOS Digital Image Sensor
> 
> s/Mp/MP/ ?
> 
> > +
> > +maintainers:
> > +  - Sakari Ailus <sakari.ailus@linux.intel.com>
> > +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > +
> > +description: |-
> > + The Omnivision OV5645 is a 1/4-Inch CMOS active pixel digital image sensor with
> > + an active array size of 2592H x 1944V. It is programmable through a serial I2C
> > + interface.
> > +
> > +properties:
> > +  compatible:
> > +    const: ovti,ov5645
> > +
> > +  reg:
> > +    description: I2C device address
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: xclk
> > +
> > +  assigned-clocks:
> > +    maxItems: 1
> > +
> > +  assigned-clock-rates:
> > +     items:
> > +     - description: Must be 24MHz (24000000).
> 
> These two properties shouldn't be part of the bindings, they're generic.

The fact that they have 1 entry is part of this binding.


> > +  enable-gpios:
> > +    description: |-
> > +      Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > +      to the hardware pin PWDNB which is physically active low.
> 
> Specifying that the polarity is GPIO_ACTIVE_HIGH is confusing in my
> opinion. If there's an inverter on the board, you'll need
> GPIO_ACTIVE_LOW. We could possibly drop the sentence, as all GPIOs in DT
> are supposed to be active high, but the fact that the GPIO name
> corresponds to the opposite of the pin probably has to be documented. I
> have no better wording to propose now I'm afraid, but it needs to be
> addressed. Maybe Rob or Maxime could help.

All GPIOs in DT are active high? What? 

Using 'powerdown-gpios' would have made more sense here, but we're stuck 
with it now. In any case, the description was good enough before and I 
don't care to re-review it as part of the conversion.

> > +  reset-gpios:
> > +    description: |-
> > +      Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > +      the hardware pin RESETB.
> 
> Here you could just drop the second sentence, or apply the same fix as
> for enable-gpios.

A description that's specific to this chip seems good to me.
 
> > +
> > +  vdddo-supply:
> > +    description:
> > +      Chip digital IO regulator.
> 
> You can move the description on the same line as the "description:" key.
> Same below.
> 
> > +
> > +  vdda-supply:
> > +    description:
> > +      Chip analog regulator.
> > +
> > +  vddd-supply:
> > +    description:
> > +      Chip digital core regulator.
> > +
> > +  # See ../video-interfaces.txt for more details
> > +  port:
> > +    type: object
> > +    properties:
> > +      endpoint:
> > +        type: object
> > +
> > +        properties:
> > +          data-lanes:
> > +            description: |-
> > +              The sensor supports two-lane operation.
> > +              For two-lane operation the property must be set to <1 2>.
> > +            items:
> > +              - const: 1
> > +              - const: 2
> 
> 
> What if only one lane is wired, does the sensor support that ?
> 
> > +
> > +          clock-lanes:
> > +            description:
> > +              should be set to <0> (clock lane on hardware lane 0).
> > +            items:
> > +              - const: 0
> > +
> > +          remote-endpoint: true
> > +
> > +        required:
> > +          - data-lanes
> > +          - clock-lanes
> > +          - remote-endpoint
> > +
> > +        additionalProperties: false
> > +
> > +    additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - assigned-clocks
> > +  - assigned-clock-rates
> 
> Those two properties should be dropped.
> 
> > +  - enable-gpios
> > +  - reset-gpios
> 
> Are the GPIOs mandatory ? What if the signals are hardwired on the board
> ?
> 
> > +  - vdddo-supply
> > +  - vdda-supply
> > +  - vddd-supply
> > +  - port
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c1 {
> 
> s/i2c1/i2c/
> 
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ov5645: sensor@3c {
> > +            compatible = "ovti,ov5645";
> > +            reg = <0x3c>;
> > +            clocks = <&ov5645_cl>;
> > +            clock-names = "xclk";
> > +            assigned-clocks = <&ov5645_cl>;
> > +            assigned-clock-rates = <24000000>;
> > +            enable-gpios = <&gpio1 6 /* GPIO_ACTIVE_HIGH */>;
> > +            reset-gpios = <&gpio5 20 /* GPIO_ACTIVE_LOW */>;
> > +            vdddo-supply = <&camera_dovdd_1v8>;
> > +            vdda-supply = <&camera_avdd_2v8>;
> > +            vddd-supply = <&camera_dvdd_1v2>;
> > +
> > +            port {
> > +                ov5645_0: endpoint {
> > +                    remote-endpoint = <&csi1_ep>;
> > +                    clock-lanes = <0>;
> > +                    data-lanes = <1 2>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +
> > +...
> 
> -- 
> Regards,
> 
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
