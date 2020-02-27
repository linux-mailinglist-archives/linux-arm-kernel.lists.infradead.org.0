Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F7417250B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PcWrOnbSXiY4B4gMy3DaPHWwrchjMRtI8NB39e0krU=; b=PIk4ebhd6lco5j
	ZW2/D3EUhIMaBLeurkm/i/3BfJvaPRwBSsDCqrhiqmxVtJckuy7tb7ioWAaPMzr9PZ5drtaZ2fm4X
	nSwS/m2GIEr/vuCrovuRkLwl6lOo2QWbeiomeby9mZTrpcMn1Z63a6qiK+8wSjIbN6mrI5zroPdKT
	+5xJ4XdlXCX4xvUhLb65hATITafCvcLdWseD4nmpQhts1Zc0Fu1n0j/OraqhSsJn3xUJAXJ8QzKCu
	HAxx7Q3GeOKoVLB9sSgjZTtoobVir41YGn+betO6/ocIKPXJxwAL9BBMKgaTFDVrPecP+/m+3r4NV
	A1JjheYk26ebfg0ujLOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mve-0001Lm-SB; Thu, 27 Feb 2020 17:26:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MvW-0001Kd-2a
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rV0yWDS028EyWe+FVKxyqef5iqunBgE96eEFUfnUJg0=; b=FsHxrqEQKZ1XG1e6Z9ClQ7uES
 mGZ0Xq59EIhuvKGUh/Gu31A6oI7Y0Y7z8OwZfy3BRBhedPjIbzYW4h3EsQxccGYVf0tkLGtf99fxN
 SdZtb5z3GiM2WjXx/2ZaGxHALijVbLSmfxZ9Tv7OjuI9zS9P23kfyjKKxVEIz9RrLP3dB6sm0kdkf
 Mph5NmgVVOnXJ2q0JN8Lb1/sYVDVcCRmTmWn08cDjSNsKuuTB26NnZZaH4YFt7WBbzIc8RdgFWYnl
 FmwtJYqlPdzvQKuLaTAI5iJNDLdaDET+UowN1Ar+b/5NqNGjcPfO8hFMztg9/g4k1EnDZ55uYnlN0
 xfIQHndBA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:53558)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7MvK-0006xK-KA; Thu, 27 Feb 2020 17:26:10 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7MvI-00019B-Fg; Thu, 27 Feb 2020 17:26:08 +0000
Date: Thu, 27 Feb 2020 17:26:08 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g driver
Message-ID: <20200227172608.GO25745@shell.armlinux.org.uk>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
 <CAL_JsqK9SLJKZfGjWu3RCk9Wiof+YdUaMziwOrCw5ZxjMZAq_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqK9SLJKZfGjWu3RCk9Wiof+YdUaMziwOrCw5ZxjMZAq_Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_092622_121917_EA9C71C2 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 11:13:41AM -0600, Rob Herring wrote:
> On Thu, Feb 27, 2020 at 3:52 AM Russell King <rmk+kernel@armlinux.org.uk> wrote:
> >
> > Add a DT bindings document for the Marvell 10G driver, which will
> > augment the generic ethernet PHY binding by having LED mode
> > configuration.
> >
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  .../devicetree/bindings/net/marvell,10g.yaml  | 31 +++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/marvell,10g.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/net/marvell,10g.yaml b/Documentation/devicetree/bindings/net/marvell,10g.yaml
> > new file mode 100644
> > index 000000000000..da597fc5314d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/marvell,10g.yaml
> > @@ -0,0 +1,31 @@
> > +# SPDX-License-Identifier: GPL-2.0+
> 
> Dual license new bindings please:
> 
> (GPL-2.0-only OR BSD-2-Clause)
> 
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/marvell,10g.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Marvell Alaska X family Ethernet PHYs
> > +
> > +maintainers:
> > +  - Russell King <rmk+kernel@armlinux.org.uk>
> > +
> > +allOf:
> > +  - $ref: ethernet-phy.yaml#
> > +
> > +properties:
> > +  marvell,led-mode:
> > +    description: |
> > +      An array of one to four 16-bit integers to write to the PHY LED
> > +      configuration registers.
> 
> This is for what to blink or turn on for? I thought we had something
> generic for configuring PHY LEDs specifically?

I see nothing in ethernet-phy.yaml.

Yes, it configures which conditions cause the LED to illuminate and/or
blink, what blink rate and polarity of the pin.

> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint16-array
> > +      - minItems: 1
> > +        maxItems: 4
> > +
> > +examples:
> > +  - |
> > +    ethernet-phy@0 {
> > +        reg = <0>;
> 
> This needs to be under an 'mdio' node with #address-cells and
> #size-cells set correctly.

I wish these things were documented somewhere... I'm pretty sure this
passed validation when I wrote it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
