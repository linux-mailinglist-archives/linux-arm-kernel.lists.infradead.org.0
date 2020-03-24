Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F68191A88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0BEuJYuNRQ7VUL4mbohmwyGR4mAbQiBIg6NZwGjHoA=; b=VImrdwHwnDdbq7
	XebEXA9ULXtezSh0J5bzYIio3oYdExeq353EFe5h8+CQYMydLeDfMAlHhcVOLZ/psn3R8PKmewyCZ
	rLhzSFOIUcRtQUN1pxrb2e6hyXrNhDzc8WBfv2ZaL4vlsXNmC3x16E6nlk5mZgPCWd4ExB5LFQqu7
	Yb+b6c8V3joaN8yPDcjTawMFFEx08MjCAIaSnB/jf4cT6swLILy+Sp7dBL4+MGNHGWIXq2mFYPG1Y
	gYP/9oz/R4bo4PURryCx10LiXg/IwvNEinfw1DpsY/m91hvZYd++sU5IhymSIG64Gi85bWYAIXzbo
	ZqmCdNQ/AKb8kX0x//og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpqV-0007sM-R4; Tue, 24 Mar 2020 20:08:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpqN-0007rt-7E
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:08:13 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDB3320788
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 20:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585080490;
 bh=qnuFcbci+wCyEzKvFPTbIqb2uSCwvM09/nFf6UX0bm8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0p/V+x2Kh6nt2c3zhy7moFyEIF/1GF33jWjPBL6bg/BQ3yYu+nMkIvzxOK5Lr2B6t
 IasTy5pwc7FKf5aoqT2l0gRUCNYcxTp8q0UZMJyGQlvRSLI/osUO+9RYl5Chefb9JJ
 N2ZylSIRhLjmPwqSX0KeUqu3f1Ihlfg49H9nIxE0=
Received: by mail-qt1-f182.google.com with SMTP id i3so111016qtv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 13:08:09 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3oFGm540qNirsa+c2uveZrjNvbrvyVNUlFvqAWDlABC8jRPknR
 21G9S8mBo5iANN/eV0Xk3EM9PPohpVQEKUKy/A==
X-Google-Smtp-Source: ADFU+vuorr9YWLX6wjXjfstQKIdZ2SXodpVMwDu9uiod9EM+nlGGWBNEBBumZ3f08XCXbGN7cDNf0WNJ3zVCp0VopGw=
X-Received: by 2002:ac8:59:: with SMTP id i25mr28341022qtg.110.1585080488970; 
 Tue, 24 Mar 2020 13:08:08 -0700 (PDT)
MIME-Version: 1.0
References: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584620363-2255-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319151035.GC14585@pendragon.ideasonboard.com>
 <20200320224836.GA27024@bogus>
 <20200320230211.GV5193@pendragon.ideasonboard.com>
In-Reply-To: <20200320230211.GV5193@pendragon.ideasonboard.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 24 Mar 2020 14:07:57 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Jh=mxsJ7Ye_HhFYUOzTDDUnoTCe9TaQrcCpQer+1=yQ@mail.gmail.com>
Message-ID: <CAL_Jsq+Jh=mxsJ7Ye_HhFYUOzTDDUnoTCe9TaQrcCpQer+1=yQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] media: dt-bindings: media: i2c: convert ov5645
 bindings to json-schema
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_130811_301256_D218CF1E 
X-CRM114-Status: GOOD (  34.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 5:02 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rob,
>
> On Fri, Mar 20, 2020 at 04:48:36PM -0600, Rob Herring wrote:
> > On Thu, Mar 19, 2020 at 05:10:35PM +0200, Laurent Pinchart wrote:
> > > On Thu, Mar 19, 2020 at 12:19:23PM +0000, Lad Prabhakar wrote:
> > > > Convert ov5645 bindings to json-schema.
> > >
> > > \o/
> > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > ---
> > > >  .../devicetree/bindings/media/i2c/ov5645.txt  |  54 -------
> > > >  .../devicetree/bindings/media/i2c/ov5645.yaml | 140 ++++++++++++++++++
> > > >  2 files changed, 140 insertions(+), 54 deletions(-)
> > > >  delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > deleted file mode 100644
> > > > index 1c85c78ec58c..000000000000
> > > > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > > +++ /dev/null
> > > > @@ -1,54 +0,0 @@
> > > > -* Omnivision 1/4-Inch 5Mp CMOS Digital Image Sensor
> > > > -
> > > > -The Omnivision OV5645 is a 1/4-Inch CMOS active pixel digital image sensor with
> > > > -an active array size of 2592H x 1944V. It is programmable through a serial I2C
> > > > -interface.
> > > > -
> > > > -Required Properties:
> > > > -- compatible: Value should be "ovti,ov5645".
> > > > -- clocks: Reference to the xclk clock.
> > > > -- clock-names: Should be "xclk".
> > > > -- enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > > > -  to the hardware pin PWDNB which is physically active low.
> > > > -- reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > > > -  the hardware pin RESETB.
> > > > -- vdddo-supply: Chip digital IO regulator.
> > > > -- vdda-supply: Chip analog regulator.
> > > > -- vddd-supply: Chip digital core regulator.
> > > > -
> > > > -The device node must contain one 'port' child node for its digital output
> > > > -video port, in accordance with the video interface bindings defined in
> > > > -Documentation/devicetree/bindings/media/video-interfaces.txt.
> > > > -
> > > > -Example:
> > > > -
> > > > - &i2c1 {
> > > > -         ...
> > > > -
> > > > -         ov5645: ov5645@3c {
> > > > -                 compatible = "ovti,ov5645";
> > > > -                 reg = <0x3c>;
> > > > -
> > > > -                 enable-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
> > > > -                 reset-gpios = <&gpio5 20 GPIO_ACTIVE_LOW>;
> > > > -                 pinctrl-names = "default";
> > > > -                 pinctrl-0 = <&camera_rear_default>;
> > > > -
> > > > -                 clocks = <&clks 200>;
> > > > -                 clock-names = "xclk";
> > > > -                 assigned-clocks = <&clks 200>;
> > > > -                 assigned-clock-rates = <24000000>;
> > > > -
> > > > -                 vdddo-supply = <&camera_dovdd_1v8>;
> > > > -                 vdda-supply = <&camera_avdd_2v8>;
> > > > -                 vddd-supply = <&camera_dvdd_1v2>;
> > > > -
> > > > -                 port {
> > > > -                         ov5645_ep: endpoint {
> > > > -                                 clock-lanes = <1>;
> > > > -                                 data-lanes = <0 2>;
> > > > -                                 remote-endpoint = <&csi0_ep>;
> > > > -                         };
> > > > -                 };
> > > > -         };
> > > > - };
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.yaml b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> > > > new file mode 100644
> > > > index 000000000000..4bf58ad210c5
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.yaml
> > > > @@ -0,0 +1,140 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/media/i2c/ov5645.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Omnivision 1/4-Inch 5Mp CMOS Digital Image Sensor
> > >
> > > s/Mp/MP/ ?
> > >
> > > > +
> > > > +maintainers:
> > > > +  - Sakari Ailus <sakari.ailus@linux.intel.com>
> > > > +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > +
> > > > +description: |-
> > > > + The Omnivision OV5645 is a 1/4-Inch CMOS active pixel digital image sensor with
> > > > + an active array size of 2592H x 1944V. It is programmable through a serial I2C
> > > > + interface.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: ovti,ov5645
> > > > +
> > > > +  reg:
> > > > +    description: I2C device address
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    maxItems: 1
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: xclk
> > > > +
> > > > +  assigned-clocks:
> > > > +    maxItems: 1
> > > > +
> > > > +  assigned-clock-rates:
> > > > +     items:
> > > > +     - description: Must be 24MHz (24000000).
> > >
> > > These two properties shouldn't be part of the bindings, they're generic.
> >
> > The fact that they have 1 entry is part of this binding.
>
> I'm not sure to agree. assigned-clocks and assigned-clock-rates are very
> losely defined, and could be placed (at least in theory) in any node.
> Furthermore, in order to cotnrol the rate of xclk, we may need
> assigned-clocks and assigned-clock-rates entries for parents of the xclk
> clock too. There's really nothing that's specific to this device.
>
> Anway, I think the driver should just set the clock rate, so we can drop
> these two properties and skip arguing over them :-)

Works for me. :)

>
> > > > +  enable-gpios:
> > > > +    description: |-
> > > > +      Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > > > +      to the hardware pin PWDNB which is physically active low.
> > >
> > > Specifying that the polarity is GPIO_ACTIVE_HIGH is confusing in my
> > > opinion. If there's an inverter on the board, you'll need
> > > GPIO_ACTIVE_LOW. We could possibly drop the sentence, as all GPIOs in DT
> > > are supposed to be active high, but the fact that the GPIO name
> > > corresponds to the opposite of the pin probably has to be documented. I
> > > have no better wording to propose now I'm afraid, but it needs to be
> > > addressed. Maybe Rob or Maxime could help.
> >
> > All GPIOs in DT are active high? What?
>
> Re-reading my comment, I've expressed myself very badly here. The point
> is that the GPIO "object" (enable-gpios), conceptually, hides the
> polarity. What's exposed to the OS is something that can be asserted or
> deasserted to have an effect indicated by the GPIO name. The polarity
> then describes what electrical level of the physical GPIO pin
> corresponds to that action. In this case, asserting the GPIO performs
> the "enable" action. As this is connected to the PWDNB pin, we have to
> specify a polarity (active high) that is inverted compared to the PWDNB
> pin polarity (active low). This should be captured in the bindings, but
> syaing that "the polarity is GPIO_ACTIVE_HIGH" is wrong. The polarity
> depends on how the signal is routed on the board. I'm not sure how to
> express all these neatly in the bindings. We may not want to address it
> as part of the conversion to YAML, but I think template sentences for
> GPIO descriptions would be useful as guidelines for binding authors.

Yeah, this has come up a couple of times. I think it's important to
state what the polarity of the signal on the device is, but it is
confusing when there's an inverter in the middle.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
