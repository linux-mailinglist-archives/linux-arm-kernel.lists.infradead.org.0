Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0AA183D28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 00:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2LNgPskovRqk/LqN6gBd9CANLOBZcsYbsyWUJQTi0k=; b=NJKw6/bveYlztc
	U7+t56I63BZqhz81j9zMjJIPGcm5jOoSwjqo7sV/amTsjQv/62Ws12TFstQ3+ZTkGCf9VHOW8CIm7
	EOltLd00ywDFwIP/NTVytVL65RINTSCTBRBsF8w4uJsTo/bcmN+dx6wcD6ht/R1cNKDiJvt2tw6nl
	kHrfV4zRlrWrL+H1AH8S2yhVPzObjkovWytMcK9Nim5VXIqtzKZnJptCRP6WFBc8UH+pvJ+tgSrOJ
	uDD0TE4g8J/anlvSpA2nYzI6llT7eIrRi2h4qRqWKiWiL5nEzBsXLT6+tK1FgOaXuO75Ya0JfDYu1
	heg+7g1Z1j2jsiK1FNrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCX2X-0007SY-LD; Thu, 12 Mar 2020 23:14:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCX2O-0007S8-R2; Thu, 12 Mar 2020 23:14:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6984B20637;
 Thu, 12 Mar 2020 23:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584054888;
 bh=9wDFf+oPT1U99O9sM6O9KnkAPcMBEuhgp2SaIbrm4eE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=eBjMpPYNRMtMMOO+Je+Uv9X+IIIE/u9hx+i+qeMpUqYR0USWNjiHUCPdOnXJmifhY
 8CEgsN6jvV0Xl1MU+3wXgqt6Nh6+OKLhkwAiSoR9Zx7XJ6fycaasZgA5tueX31XFWb
 kPu34sZ/q/rBoiU42hawDEleNmQOjM4HUqz/sdWU=
MIME-Version: 1.0
In-Reply-To: <20200225181654.GA694@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <9166f3acdc2a64e3f3ca1cd2e283005ee2df37c9.1582533919.git-series.maxime@cerno.tech>
 <20200225181654.GA694@bogus>
Subject: Re: [PATCH 06/89] dt-bindings: clock: Add a binding for the RPi
 Firmware clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh@kernel.org>
Date: Thu, 12 Mar 2020 16:14:47 -0700
Message-ID: <158405488765.149997.7323586314054590516@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_161448_902793_BC0035DD 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Phil Elwell <phil@raspberrypi.com>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2020-02-25 10:16:54)
> On Mon, Feb 24, 2020 at 10:06:08AM +0100, Maxime Ripard wrote:
> > The firmare running on the RPi VideoCore can be used to discover and
> > change the various clocks running in the BCM2711. Since devices will
> > need to use them through the DT, let's add a pretty simple binding.
> > 
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: linux-clk@vger.kernel.org
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml | 39 +++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 39 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml b/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml
> > new file mode 100644
> > index 000000000000..d37bc311321d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml
> > @@ -0,0 +1,39 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/raspberrypi,firmware-clocks.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RaspberryPi Firmware Clocks Device Tree Bindings
> > +
> > +maintainers:
> > +  - Maxime Ripard <mripard@kernel.org>
> > +
> > +properties:
> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  compatible:
> > +    const: raspberrypi,firmware-clocks
> > +
> > +  raspberrypi,firmware:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description: >
> > +      Phandle to the mailbox node to communicate with the firmware.
> 
> Can't this be a child node of the phandle instead? Or just add 
> '#clock-cells' to the firmware node.

Yeah, just add the clock-cells to the firmware node unless that doesn't
work for some reason?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
