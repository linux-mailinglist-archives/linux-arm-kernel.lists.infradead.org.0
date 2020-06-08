Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4475A1F2206
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTMBGLWLawSRWvL4SHVrHI+X5NagCzwcHTbhx2DD4Bg=; b=NWpCTGAyfWF4KV
	wqYfZrlGZ3teDVI6+hKJgR+0rVK0Ld2CfqHM7TYH/5nNDz/jjFwWvosmNaPLmPCiZLcxSA1zsXofr
	RBYM0zwq6RydPFvX6svQGMcZ0UEYUsRvzZs+s+bP8qVktYnoqj+OQHSTKLs9ar7KC0S0I1iiHeKde
	0hFvab4wMQ1jMUvQbGZROvThthx6wM4kYxY3lovuMz/2ry5ciTNATricLwMY30d/YsJn49+whISnD
	LyfrNkhev9VN+t2IF/BTz0q5O7e5Q2K0L3c5EBlDsT3GTIsPoSOj8KFFnY0JsJShwuz43Dx1OtBp0
	QZssjMUtyDCXrjoUeo5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQmK-0003Iu-OC; Mon, 08 Jun 2020 23:02:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQmB-0003Hx-34; Mon, 08 Jun 2020 23:01:57 +0000
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82B11207C3;
 Mon,  8 Jun 2020 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657313;
 bh=E2VDSxyTsjme/SDDJYb/Ce8BPIu8k9mIpohu+7Y2fi4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QCmsWHtuUrkP99N9zTwI1IYiExbKn+Evf9ftBvwrf3b5ttojeS+Hyn7Edq402+ZVR
 Qy7IVlA83KbFqbAghS2O1o9Vfm+cSqA6RtCL0MpFakR/wFQqZ6tZbJBuAzjZoGNeG2
 9graD5Nhc6mPEcrc7kgBH5k8/4opuDcpntGKKAM4=
Received: by mail-oi1-f169.google.com with SMTP id j189so16929873oih.10;
 Mon, 08 Jun 2020 16:01:53 -0700 (PDT)
X-Gm-Message-State: AOAM531fc1vcesSRfJyURhYLFIivkQxx9kzr6amBdNisGXAnkwVXkrCc
 QSdfkkF95KNI70SJjLpSRCxO9CU65ymZ/MbqVQ==
X-Google-Smtp-Source: ABdhPJxObAvxE+OOnTXcIgh61N2TLSHvj0BypJ4NL+n+aOPoAluENZ8Z4kbXmRaFm6G3U4eAOxdn3BnGxOwTfQQTlPQ=
X-Received: by 2002:aca:d454:: with SMTP id l81mr1365615oig.152.1591657312818; 
 Mon, 08 Jun 2020 16:01:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <e85e24a494a3ff41177c94673ced0f4280b6a0ee.1590594512.git-series.maxime@cerno.tech>
 <20200529181833.GA2685451@bogus> <20200602150834.6xovwdxpgncq3ybh@gilmour>
In-Reply-To: <20200602150834.6xovwdxpgncq3ybh@gilmour>
From: Rob Herring <robh@kernel.org>
Date: Mon, 8 Jun 2020 17:01:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJShNcyUDv1JmdanLKZqFa0TeJGazwmPz6eJ_Rq0GtkpQ@mail.gmail.com>
Message-ID: <CAL_JsqJShNcyUDv1JmdanLKZqFa0TeJGazwmPz6eJ_Rq0GtkpQ@mail.gmail.com>
Subject: Re: [PATCH v3 104/105] dt-bindings: display: vc4: hdmi: Add BCM2711
 HDMI controllers bindings
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160155_172693_0C3FAC70 
X-CRM114-Status: GOOD (  27.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Eric Anholt <eric@anholt.net>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 2, 2020 at 9:08 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Rob,
>
> On Fri, May 29, 2020 at 12:18:33PM -0600, Rob Herring wrote:
> > On Wed, May 27, 2020 at 05:49:14PM +0200, Maxime Ripard wrote:
> > > The HDMI controllers found in the BCM2711 SoC need some adjustments to the
> > > bindings, especially since the registers have been shuffled around in more
> > > register ranges.
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml | 109 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 109 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > > new file mode 100644
> > > index 000000000000..6091fe3d315b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > > @@ -0,0 +1,109 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> >
> > Dual license...
> >
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/brcm,bcm2711-hdmi.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Broadcom BCM2711 HDMI Controller Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Eric Anholt <eric@anholt.net>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - brcm,bcm2711-hdmi0
> > > +      - brcm,bcm2711-hdmi1
> >
> > What's the difference between the 2 blocks?
>
> The register layout and the lane mapping in the PHY change a bit.
>
> > > +
> > > +  reg:
> > > +    items:
> > > +      - description: HDMI controller register range
> > > +      - description: DVP register range
> > > +      - description: HDMI PHY register range
> > > +      - description: Rate Manager register range
> > > +      - description: Packet RAM register range
> > > +      - description: Metadata RAM register range
> > > +      - description: CSC register range
> > > +      - description: CEC register range
> > > +      - description: HD register range
> > > +
> > > +  reg-names:
> > > +    items:
> > > +      - const: hdmi
> > > +      - const: dvp
> > > +      - const: phy
> > > +      - const: rm
> > > +      - const: packet
> > > +      - const: metadata
> > > +      - const: csc
> > > +      - const: cec
> > > +      - const: hd
> > > +
> > > +  clocks:
> > > +    description: The HDMI state machine clock
> > > +
> > > +  clock-names:
> > > +    const: hdmi
> > > +
> > > +  ddc:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description: >
> > > +      Phandle of the I2C controller used for DDC EDID probing
> >
> > Goes in the connector.
> >
> > And isn't the standard name ddc-i2c-bus?
> >
> > > +
> > > +  hpd-gpios:
> > > +    description: >
> > > +      The GPIO pin for the HDMI hotplug detect (if it doesn't appear
> > > +      as an interrupt/status bit in the HDMI controller itself)
> >
> > Goes in the connector.
>
> If this was an entirely new binding, I would agree, but this is not
> really the case here.
>
> We discussed it already for the v2, and this binding is essentially the
> same one than the bcm2835 HDMI controller.
>
> I initially sent a patch adding conditionnals for the clocks and regs
> differences too, and you asked to split the binding into a separate file
> to simplify it a bit.

Ah... Best to assume I don't remember what happened last week. ;)

> Supporting both the old binding, and the new one based on the connector
> is going to make the code significantly more complicated, and I'm not
> really sure why we would here.

I'm not really sure I agree on the complexity, but that can be a
discussion for another day.

Reviewed-by: Rob Herring <robh@kernel.org>

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
