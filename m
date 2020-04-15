Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DCE1AAA66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pbyay6gUsHKWm+YZ1xsDamB5wSgwaiQkkw+goSnR748=; b=U6SPsIi449N0in
	DgSQ9JvV1yl8eVrbaBaUlrcNBxkK9IzDmrkyBX3hM3Rhx4OodJZwle3jKSkMS8MYQ4Be9svIXzmFp
	n6ikTN/RQoMIcAlgEBehz3Nkx+u1JdNjqcax6gaaqe3x/2+L/HQ3Q/v1qQHl/mqUlz9rlOj9ba/NS
	RBlQg79i9L1rfzm3Tk7kM+3hYG8bHQMobSNivOuZABPE6wneqoYwCNoBhy8wa61RGTkAch1PC8EpH
	h5Xj1jz+DXluXNzIXOVjOfpzAHJcIHGDUfwuZUeEUeey/YCbedBBZNw8CMIuYrVXRibqVv0Fu5/5Z
	sivxMhUccpXijPNlcAEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOjGX-0008Bf-RN; Wed, 15 Apr 2020 14:43:49 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOjGP-0008An-2G
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:43:42 +0000
Received: by mail-ot1-f65.google.com with SMTP id g14so83738otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 07:43:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aS1Is431wFo8Y/I/7OGLepWmzb0NQKhnSdzX/bpKCuI=;
 b=o+7hRwkm4FXm6Ov0mueQlqxdZQxJwp5ep2cUrVKN6oV54HKLLpgBHQtrM9h/2QJR4Y
 UXhbUOAU4/Cblel0Wx8qAAarsFCH1vtcluvOfxn0z76dmIEWgk/AaQ3oshXPABbkHMVz
 OgdcPwJIPGmKQJnZhmpTV/2Kx/qvKQHZKeP+2In55f7qR9zUp6grBZ8GXYKYpj9uiw5v
 W9bIMJdoKYHFHT+zsHD4kPPWfkQym3f2ZCQoB9Sd7keIpyxp1ei7PTlij8ehX4EUFRvI
 xJUgewMCwOomzbyiaTCiXnrKi13Z8B9k4+GB52jm/eHifxmWYF3AT2fx71UymEtklacK
 UJtQ==
X-Gm-Message-State: AGi0PuZLLiZ8VksagrV+LX0MmJhSOMYehptqrCsWmiwVvKjNYf95PlOK
 dewIPESXFoLPsnpFltaYYw==
X-Google-Smtp-Source: APiQypJGYusZTJBkcMjHaBqRyKb0biS2xVvK01uI9ULQOUjb61LqMow83eT3yRCjWJJmofFaIfh/Rg==
X-Received: by 2002:a4a:db7b:: with SMTP id o27mr22967195ood.25.1586961819086; 
 Wed, 15 Apr 2020 07:43:39 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k132sm6454033oih.9.2020.04.15.07.43.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 07:43:37 -0700 (PDT)
Received: (nullmailer pid 16201 invoked by uid 1000);
 Wed, 15 Apr 2020 14:43:36 -0000
Date: Wed, 15 Apr 2020 09:43:36 -0500
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v5 5/5] media: dt-bindings: media: i2c: convert ov5645
 bindings to json-schema
Message-ID: <20200415144336.GA11960@bogus>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406174346.GH16885@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406174346.GH16885@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_074341_108522_491F4DF1 
X-CRM114-Status: GOOD (  26.09  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
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

On Mon, Apr 06, 2020 at 08:43:46PM +0300, Laurent Pinchart wrote:
> Hi Prabhakar,
> 
> Thank you for the patch.
> 
> On Mon, Apr 06, 2020 at 05:42:41PM +0100, Lad Prabhakar wrote:
> > Convert ov5645 bindings to json-schema.
> > 
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ov5645.txt  |  52 --------
> >  .../devicetree/bindings/media/i2c/ov5645.yaml | 126 ++++++++++++++++++
> >  2 files changed, 126 insertions(+), 52 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > deleted file mode 100644
> > index a55bb728ea48..000000000000
> > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > +++ /dev/null
> > @@ -1,52 +0,0 @@
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
> > index 000000000000..d5cdcf9a1c76
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> > @@ -0,0 +1,126 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/ov5645.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Omnivision 1/4-Inch 5MP CMOS Digital Image Sensor
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
> > +    description: External clock frequency should range between 6MHz to 27MHz.
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: xclk
> > +
> > +  enable-gpios:
> > +    description: |-
> > +      Chip enable GPIO. This corresponds to the hardware pin PWDNB which is
> > +      physically active low.
> > +
> > +  reset-gpios:
> > +    description: Chip reset GPIO. This corresponds to the hardware pin RESETB.
> > +
> > +  vdddo-supply:
> > +    description: Chip digital IO regulator.
> > +
> > +  vdda-supply:
> > +    description: Chip analog regulator.
> > +
> > +  vddd-supply:
> > +    description: Chip digital core regulator.
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
> 
> Don't you need
> 
> 		minItems: 1
> 		maxItems: 2
> 
> here ?

Yes.

> > +            description: |-
> > +              The sensor supports either one-lane, or two-lane operation.
> > +              For one-lane operation the property must be set to <1> and
> > +              for two-lane operation the property must be set to <1 2>.
> > +            items:
> > +              - const: 1
> > +              - const: 2
> > +
> > +          clock-lanes:
> 
> Same here,
> 
> 		maxItems: 1
> 
> ?

No, because the default is number of entries in 'items'.

> 
> > +            description:
> > +              should be set to <0> (clock lane on hardware lane 0).
> 
> I think you can drop the description, with the items below it's clear
> that the value has to be <0>.
> 
> > +            items:
> > +              - const: 0
> > +
> > +          remote-endpoint: true
> 
> Should this be
> 
>              remote-endpoint:
> 	       $ref: /schemas/types.yaml#/definitions/phandle

No, we can assume this has a type definition already.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
