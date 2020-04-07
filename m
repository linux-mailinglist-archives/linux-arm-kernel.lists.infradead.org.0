Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B98C1A0896
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pur0/E3Z6+Oz/akNf2jdi96oDgdwIUCR43AXXgZjuxM=; b=CMIHROB6rXPYkB
	0uJ2N8eg7CA0HDA9wo5sDed+M8G0HAzwjtmJWbc7dGjI4AXZqcqA52nczNNOUuLVonhZe64zFXE/F
	h/WSrD8OKAaI0dI7wcRn+M6I8LM8DCxlZFDkfzrF6E3yVLKc4qWQ+jKlTpehZgmzS5gXbLlh+Kw4g
	QtYqcposoBnCOziLUgAMpl3PuZA7MWyvhC8kHtIM9xhY3FnzZvBlAXTZSEZ7fbbxeV0t+TgowGYIU
	ZPpGNTwjrDW1L5b/da6pcTzyncp+SQZThSWHaFIBzPlciIVEUrwo8cxPzyg3pZA0tEZ9ZrD0Inxo8
	qezTLuhmEUPWcUIjiLog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiwZ-000809-92; Tue, 07 Apr 2020 07:46:47 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiwP-0007vv-Ny
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:46:39 +0000
Received: by mail-oi1-x243.google.com with SMTP id k5so670509oiw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eV6suJlufDkfaPy4xOCO1G2qeg8tCCUJrg7dZZNrJrU=;
 b=thJCazvMCaKSx5YaS9TJp4aIo1s7Xgg2S5lXPMBxW/rRS3oLGAJb9Cir3wHvUJvOfW
 1iISdoqu8yKLBES5nxUm33EI22hY6jRSN/MHsP4ZkY3OCxnZdd4S6DEUrtP1uxaRIv3Z
 G+122wYbMthquE3NvXtfBvd9wLaDLC1LK5VrP4AQ16mDRX+qj/ywWPGzO9IPHsdn0yQB
 D9vlCTp1mUwD1116jxIxYQVgtNNarWvQnw+RSR2ZZCQQ9Np5NQ2FZ4j8W1lbs8siPSqr
 ZigUAlcrK5BOlYZ2yZ4uMCZNfuXOJLwOrrY/hAkObB7CDyybhy9B2y1Q3eZUHCclYU1m
 ZYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eV6suJlufDkfaPy4xOCO1G2qeg8tCCUJrg7dZZNrJrU=;
 b=IvhbxJpZFO1+0tqzHrNGolDZrVfIO/MnOKERnUnszmj+MNTwfGjeTBIhVed8UC4FSj
 Fo13VlGRgJF0ZuRhnL93dITBg+2EQaFQYce60T0E6HoCG+qiUmkuQMrXqhwcuN68NicP
 A3aLBJ2ODzTPapwgJ9AXwEUaaaSelFC+tRDJMfUSwnU5ry64IY1QmmSl6hxAOnvHbU6q
 ywTXFUn056heh7kR8RDvnU726u8/Q0Co++SxkXVAmCj1uZZ9s5f6Vzqi4SSWj18Z05cu
 qaaheq4XOyRtWZRxgq8CSfr5MozrUdUqYr2IQgwoD9XtyrkmxW0TMRYzbDCFBHkZKGEp
 IsVQ==
X-Gm-Message-State: AGi0PubjJwf2jnwyFhyC5MBGdMEVe/L0kVvvG7tYHfeFikYT03Vd5OeJ
 sfJbCQQ2MYgYYvp2BQb/RO0jUiWPRtVDBhSp/+E=
X-Google-Smtp-Source: APiQypL+C5NbV1bUREOiE5KMFuKz5z27VmV/bGIbXh4J5TzoXlD5dagLYllGTPsmYn8pvwbu0DKCWjRpDpGhZelIVMc=
X-Received: by 2002:aca:5d83:: with SMTP id r125mr761837oib.8.1586245596071;
 Tue, 07 Apr 2020 00:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406174346.GH16885@pendragon.ideasonboard.com>
In-Reply-To: <20200406174346.GH16885@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 7 Apr 2020 08:46:09 +0100
Message-ID: <CA+V-a8v2WVEbNyy+cwRKgH-xXtQgnPBfEgV+ssRVGhY96vv_0Q@mail.gmail.com>
Subject: Re: [PATCH v5 5/5] media: dt-bindings: media: i2c: convert ov5645
 bindings to json-schema
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_004637_788823_0005BB59 
X-CRM114-Status: GOOD (  27.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

Thank you for the review.

On Mon, Apr 6, 2020 at 6:43 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
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
> > -     &i2c1 {
> > -             ...
> > -
> > -             ov5645: ov5645@3c {
> > -                     compatible = "ovti,ov5645";
> > -                     reg = <0x3c>;
> > -
> > -                     enable-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
> > -                     reset-gpios = <&gpio5 20 GPIO_ACTIVE_LOW>;
> > -                     pinctrl-names = "default";
> > -                     pinctrl-0 = <&camera_rear_default>;
> > -
> > -                     clocks = <&clks 200>;
> > -                     clock-names = "xclk";
> > -
> > -                     vdddo-supply = <&camera_dovdd_1v8>;
> > -                     vdda-supply = <&camera_avdd_2v8>;
> > -                     vddd-supply = <&camera_dvdd_1v2>;
> > -
> > -                     port {
> > -                             ov5645_ep: endpoint {
> > -                                     clock-lanes = <1>;
> > -                                     data-lanes = <0 2>;
> > -                                     remote-endpoint = <&csi0_ep>;
> > -                             };
> > -                     };
> > -             };
> > -     };
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
>                 minItems: 1
>                 maxItems: 2
>
> here ?
>
Agreed will add that.

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
>                 maxItems: 1
>
> ?
>
As above.

> > +            description:
> > +              should be set to <0> (clock lane on hardware lane 0).
>
> I think you can drop the description, with the items below it's clear
> that the value has to be <0>.
>
OK

> > +            items:
> > +              - const: 0
> > +
> > +          remote-endpoint: true
>
> Should this be
>
>              remote-endpoint:
>                $ref: /schemas/types.yaml#/definitions/phandle
>
OK shall replace it.

Cheers,
--Prabhakar

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
> > +  - enable-gpios
> > +  - reset-gpios
> > +  - vdddo-supply
> > +  - vdda-supply
> > +  - vddd-supply
> > +  - port
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ov5645: sensor@3c {
> > +            compatible = "ovti,ov5645";
> > +            reg = <0x3c>;
> > +            clocks = <&ov5645_cl>;
> > +            clock-names = "xclk";
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
