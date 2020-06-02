Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B771B1EC4AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 23:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHa1C91btLF2xSsQQXUrExPSZqw+bl0BnKzhw7MMiY8=; b=lMzjZq7H0K9E1u
	UJFNUTBEmOGYncVtNK0bLnssA+qY536sIding7h1JqOjhapcU787p/FeEcmyUWAs5EDh9AngKi2cB
	HRJR+IVxCr+QWkUm95TNExhG+DjGnJqjGaOZSkP1Mh83JtaQlV3399hRth6SqP8bWW06SZo/ubIVM
	0DJVBBAMBcY8tPteudDzXv+ePlqzS8nfVqCu5HF0+SY3o714t+HdS6BIRNWU56RwmXbZ3CDa89VRD
	ZdwVbp5utvWitBHY1QSoVG7xdnFVCX5XRCyecNwAUo5BOhdrz7BrAma6yfhAEhyp6srzsZYmAQAdf
	k15XpYSb3+Otl6eUPwog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgEtD-0005Um-Ed; Tue, 02 Jun 2020 21:56:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgEt5-0005Tz-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 21:56:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id c71so4339846wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 14:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pC4aWKB/tDCD8vk19vY98cQZrnpY1VLP07nYFKTadOU=;
 b=WhxoEIQrmXsVVkA1mZVZKHhKg98bXnh64aQouQ50aCjmPZ6Go6IUNqkNkmRLQtsbLz
 +8NZpw9RcHfUiShiva+naYN2YYMjHReQHnCpy4waamumHgcoQ/UijyjLt/TKis5pTg8i
 nb1O9KeHNB7EcwoVeXRMywsXvcUbbhlj84SoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pC4aWKB/tDCD8vk19vY98cQZrnpY1VLP07nYFKTadOU=;
 b=Zi7GwsTj4qvfTcEurr0dqaej7BdpZPJxrhBsBtW2GNU0WKbrbfwD2Bk+nZ5Sl6Tv50
 q5SMGV+EejAYSWHG8Lq8IJibWTFOPWdMizvbuxnMgKLf4XvvvjPjwSqfJ6aOCHS8rSSb
 Bey88OrbYpTvyU1J//gG0y3zHfcC2y3cSqFURuzyA2UaaqViAxiJjxY/Y+Ml8AqDwOIS
 rp97jk2OxsFrfkB6klZMUlWAMFrKR9awSpcsYEhMMe5XejIQ0Jw8h7sCwgTD+TeOK6ut
 EcJNOT/u3o5/wBn98LjK06cgTocKdH0JwQ+FdWSmMIApSvPMDM3rtz5aFPJdTVchp207
 lBZw==
X-Gm-Message-State: AOAM531lEm0hm0vR5TrJn4pfotzkqbPgQ5NZNyhp9UVQh4yuJYRx2c4n
 lk/MDmrNxsy3vRo9Mv2TQgnCpfZOqzHurGjJHTRP4g==
X-Google-Smtp-Source: ABdhPJwV813+YIcH+IIsN44nF4R01Z3ZJCDnktHPUm8naM80EtbshruegyltyRNHVxPWX8Q2oaB7+zkMkg3Lra2ICo8=
X-Received: by 2002:a05:600c:280c:: with SMTP id
 m12mr6141691wmb.92.1591134957775; 
 Tue, 02 Jun 2020 14:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200526191303.1492-1-james.quinlan@broadcom.com>
 <20200526191303.1492-4-james.quinlan@broadcom.com>
 <20200529174634.GA2630216@bogus>
 <CA+-6iNwWBFYHVKiwwJ95DYQ5zmc5uBo1cgZzd6rpD++aQWgGpw@mail.gmail.com>
 <CAL_JsqKtASTzACSNn8BgmEBqf0eyR8RB_tjY7aUnvK+2GYXTbg@mail.gmail.com>
In-Reply-To: <CAL_JsqKtASTzACSNn8BgmEBqf0eyR8RB_tjY7aUnvK+2GYXTbg@mail.gmail.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 2 Jun 2020 17:55:44 -0400
Message-ID: <CA+-6iNxK7WaE2c_kwZDk3j7BiVkFdS-FaL5U1TP_DNvBNGgi3w@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] dt-bindings: PCI: Add bindings for more Brcmstb
 chips
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_145559_534978_7DEF24CD 
X-CRM114-Status: GOOD (  30.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 2, 2020 at 5:41 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jun 2, 2020 at 2:53 PM Jim Quinlan <james.quinlan@broadcom.com> wrote:
> >
> > On Fri, May 29, 2020 at 1:46 PM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Tue, May 26, 2020 at 03:12:42PM -0400, Jim Quinlan wrote:
> > > > From: Jim Quinlan <jquinlan@broadcom.com>
> > > >
> > > > - Add compatible strings for three more Broadcom STB chips: 7278, 7216,
> > > >   7211 (STB version of RPi4).
> > > > - add new property 'brcm,scb-sizes'
> > > > - add new property 'resets'
> > > > - add new property 'reset-names'
> > > > - allow 'ranges' and 'dma-ranges' to have more than one item and update
> > > >   the example to show this.
> > > >
> > > > Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> > > > ---
> > > >  .../bindings/pci/brcm,stb-pcie.yaml           | 40 +++++++++++++++++--
> > > >  1 file changed, 36 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > > index 8680a0f86c5a..66a7df45983d 100644
> > > > --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > > +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > > @@ -14,7 +14,13 @@ allOf:
> > > >
> > > >  properties:
> > > >    compatible:
> > > > -    const: brcm,bcm2711-pcie # The Raspberry Pi 4
> > > > +    items:
> > > > +      - enum:
> > >
> > > Don't need items here. Just change the const to enum.
> > >
> > > > +          - brcm,bcm2711-pcie # The Raspberry Pi 4
> > > > +          - brcm,bcm7211-pcie # Broadcom STB version of RPi4
> > > > +          - brcm,bcm7278-pcie # Broadcom 7278 Arm
> > > > +          - brcm,bcm7216-pcie # Broadcom 7216 Arm
> > > > +          - brcm,bcm7445-pcie # Broadcom 7445 Arm
> > > >
> > > >    reg:
> > > >      maxItems: 1
> > > > @@ -34,10 +40,12 @@ properties:
> > > >        - const: msi
> > > >
> > > >    ranges:
> > > > -    maxItems: 1
> > > > +    minItems: 1
> > > > +    maxItems: 4
> > > >
> > > >    dma-ranges:
> > > > -    maxItems: 1
> > > > +    minItems: 1
> > > > +    maxItems: 6
> > > >
> > > >    clocks:
> > > >      maxItems: 1
> > > > @@ -58,8 +66,30 @@ properties:
> > > >
> > > >    aspm-no-l0s: true
> > > >
> > > > +  resets:
> > > > +    description: for "brcm,bcm7216-pcie", must be a valid reset
> > > > +      phandle pointing to the RESCAL reset controller provider node.
> > > > +    $ref: "/schemas/types.yaml#/definitions/phandle"
> > > > +
> > > > +  reset-names:
> > > > +    items:
> > > > +      - const: rescal
> > >
> > > These are going to need to be an if/then schema if they only apply to
> > > certain compatible(s).
> >
> > Why is that -- the code is general enough to handle its presence or
> > not (it is an optional compatibility)>
>
> Because an if/then schema expresses in a parse-able form what your
> 'description' does in free form text.
>
> Presumably a 'resets' property for !brcm,bcm7216-pcie is invalid, so
> we should check that. The schema shouldn't be just what some driver
> happens to currently allow. Also, it's not a driver's job to validate
> DT, so it shouldn't check any of this.
Got it, will fix.
>
> > > > +  brcm,scb-sizes:
> > > > +    description: (u32, u32) tuple giving the 64bit PCIe memory
> > > > +      viewport size of a memory controller.  There may be up to
> > > > +      three controllers, and each size must be a power of two
> > > > +      with a size greater or equal to the amount of memory the
> > > > +      controller supports.
> > >
> > > This sounds like what dma-ranges should express?
> >
> > There is some overlap but this contains information that is not in the
> > dma-ranges.  Believe me I tried.
>
> I don't understand. If you had 3 dma-ranges entries, you'd have 3
> sizes. Can you expand or show me what you tried?
Here is a simple example: suppose you have two dma-ranges.  This could
be from one of two cases:

- Both dma-ranges are from the same memory controller (the second
range is the "extended" region).
- One dma-range can be from memc0 and the other can be from memc1; the
extensions are not used.

The driver has to determine (a)  how many memory controllers there are
and (b) what the size should be for each of them.  It is impossible to
do this with the case above.

>
> > > If not, we do have 64-bit size if that what you need.
> >
> > IIRC I tried the 64-bit size but the YAML validator did not like it;
> > it wanted numbers like  <0x1122334455667788> while dtc wanted <
> > 0x11223344 0x55667788>.  I gave up trying and switched to u32.
>
> You used the /bits/ annotation for dtc?:
>
> /bits/ 64 <0x1122334455667788>
>
> I also made a recent fix to dt-schema around handling of 64-bit sizes,
> so update if you have problems still.
I didn't try the /bits/ so I'll pursue this.

Thanks,
Jim

>
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
