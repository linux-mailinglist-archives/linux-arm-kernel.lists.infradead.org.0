Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F369D1EC476
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 23:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLkVDXcy+8C90ESIbyOAB9cr9dE6+qslEIk2SCUcHmA=; b=MmLoLmXwAum3IH
	Wb+zFD6ciiAXBBiUdMsEkDruo8vwRGbg8cU/Za0Z5QvOG78TLsRYGiGbkXtwRMmyKIhlOhiu5nlrQ
	9X4OvTVxlp91Wpx0IqO/A0orszDNnw2hEdOq57u1zsFj/RWQ0q3UczmcfEMKt/ozN/z5/av1GAo2h
	7mWoVH5+zCwgxM2jGSJGuybHPSMTpvfFDsiXYCzkFK8GISmWfpc7tWTLT4n5AUAXsMQDX4ykJ+PHT
	HWpa5h9d9Ycazrk7sK9UImn+C+x5XpUFlW4F1zJaoXzJ4QDwCxnliBzOZvR1gD0lbLBb4pRzen+kf
	vW1XR+vzlEPEQYnkmvLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgEfD-0003Ca-Ep; Tue, 02 Jun 2020 21:41:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgEf7-0003CC-5b; Tue, 02 Jun 2020 21:41:34 +0000
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5749920870;
 Tue,  2 Jun 2020 21:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591134092;
 bh=lE2qIKk7fGwpmdgOyUmGUSZcTgDTl1S+IeWtKVRZiB4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MDcmsG4AsJa29AZLZyoyaLg1XXhJzFswAk0zW/njIgWzQbow0ZCLgSsLqd+gAeQXG
 C+8NWnC9t990cXc67f2TeU+s0cPjHcss27WIhpkpp9pNbZ/SHobhFO7ecDYXdWqccD
 84jHiAhyesNMy12lNigcDvQHG9hH+oyoyWjcyaQQ=
Received: by mail-oi1-f180.google.com with SMTP id a137so13396268oii.3;
 Tue, 02 Jun 2020 14:41:32 -0700 (PDT)
X-Gm-Message-State: AOAM531xY3A0I4GB090zTW6VEwTdBdm1+49LDyKJijcOgAeztmQTi18Q
 7+EIsd6z8UG4zk4+ZuwWhQN3VxuNPexGzgt9YQ==
X-Google-Smtp-Source: ABdhPJxGd1RDkZpLil39OM00IhmdJlV8U5qy7Nn3gSrgTh2gorz+2QOj5O8k4Aoo1zTVz6xs3rPGF8jvSLdSMIFh7Rs=
X-Received: by 2002:a05:6808:7cb:: with SMTP id
 f11mr4487019oij.152.1591134091638; 
 Tue, 02 Jun 2020 14:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200526191303.1492-1-james.quinlan@broadcom.com>
 <20200526191303.1492-4-james.quinlan@broadcom.com>
 <20200529174634.GA2630216@bogus>
 <CA+-6iNwWBFYHVKiwwJ95DYQ5zmc5uBo1cgZzd6rpD++aQWgGpw@mail.gmail.com>
In-Reply-To: <CA+-6iNwWBFYHVKiwwJ95DYQ5zmc5uBo1cgZzd6rpD++aQWgGpw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 2 Jun 2020 15:41:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKtASTzACSNn8BgmEBqf0eyR8RB_tjY7aUnvK+2GYXTbg@mail.gmail.com>
Message-ID: <CAL_JsqKtASTzACSNn8BgmEBqf0eyR8RB_tjY7aUnvK+2GYXTbg@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] dt-bindings: PCI: Add bindings for more Brcmstb
 chips
To: Jim Quinlan <james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_144133_249158_56C00C96 
X-CRM114-Status: GOOD (  26.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

On Tue, Jun 2, 2020 at 2:53 PM Jim Quinlan <james.quinlan@broadcom.com> wrote:
>
> On Fri, May 29, 2020 at 1:46 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, May 26, 2020 at 03:12:42PM -0400, Jim Quinlan wrote:
> > > From: Jim Quinlan <jquinlan@broadcom.com>
> > >
> > > - Add compatible strings for three more Broadcom STB chips: 7278, 7216,
> > >   7211 (STB version of RPi4).
> > > - add new property 'brcm,scb-sizes'
> > > - add new property 'resets'
> > > - add new property 'reset-names'
> > > - allow 'ranges' and 'dma-ranges' to have more than one item and update
> > >   the example to show this.
> > >
> > > Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> > > ---
> > >  .../bindings/pci/brcm,stb-pcie.yaml           | 40 +++++++++++++++++--
> > >  1 file changed, 36 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > index 8680a0f86c5a..66a7df45983d 100644
> > > --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > > @@ -14,7 +14,13 @@ allOf:
> > >
> > >  properties:
> > >    compatible:
> > > -    const: brcm,bcm2711-pcie # The Raspberry Pi 4
> > > +    items:
> > > +      - enum:
> >
> > Don't need items here. Just change the const to enum.
> >
> > > +          - brcm,bcm2711-pcie # The Raspberry Pi 4
> > > +          - brcm,bcm7211-pcie # Broadcom STB version of RPi4
> > > +          - brcm,bcm7278-pcie # Broadcom 7278 Arm
> > > +          - brcm,bcm7216-pcie # Broadcom 7216 Arm
> > > +          - brcm,bcm7445-pcie # Broadcom 7445 Arm
> > >
> > >    reg:
> > >      maxItems: 1
> > > @@ -34,10 +40,12 @@ properties:
> > >        - const: msi
> > >
> > >    ranges:
> > > -    maxItems: 1
> > > +    minItems: 1
> > > +    maxItems: 4
> > >
> > >    dma-ranges:
> > > -    maxItems: 1
> > > +    minItems: 1
> > > +    maxItems: 6
> > >
> > >    clocks:
> > >      maxItems: 1
> > > @@ -58,8 +66,30 @@ properties:
> > >
> > >    aspm-no-l0s: true
> > >
> > > +  resets:
> > > +    description: for "brcm,bcm7216-pcie", must be a valid reset
> > > +      phandle pointing to the RESCAL reset controller provider node.
> > > +    $ref: "/schemas/types.yaml#/definitions/phandle"
> > > +
> > > +  reset-names:
> > > +    items:
> > > +      - const: rescal
> >
> > These are going to need to be an if/then schema if they only apply to
> > certain compatible(s).
>
> Why is that -- the code is general enough to handle its presence or
> not (it is an optional compatibility)>

Because an if/then schema expresses in a parse-able form what your
'description' does in free form text.

Presumably a 'resets' property for !brcm,bcm7216-pcie is invalid, so
we should check that. The schema shouldn't be just what some driver
happens to currently allow. Also, it's not a driver's job to validate
DT, so it shouldn't check any of this.

> > > +  brcm,scb-sizes:
> > > +    description: (u32, u32) tuple giving the 64bit PCIe memory
> > > +      viewport size of a memory controller.  There may be up to
> > > +      three controllers, and each size must be a power of two
> > > +      with a size greater or equal to the amount of memory the
> > > +      controller supports.
> >
> > This sounds like what dma-ranges should express?
>
> There is some overlap but this contains information that is not in the
> dma-ranges.  Believe me I tried.

I don't understand. If you had 3 dma-ranges entries, you'd have 3
sizes. Can you expand or show me what you tried?

> > If not, we do have 64-bit size if that what you need.
>
> IIRC I tried the 64-bit size but the YAML validator did not like it;
> it wanted numbers like  <0x1122334455667788> while dtc wanted <
> 0x11223344 0x55667788>.  I gave up trying and switched to u32.

You used the /bits/ annotation for dtc?:

/bits/ 64 <0x1122334455667788>

I also made a recent fix to dt-schema around handling of 64-bit sizes,
so update if you have problems still.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
