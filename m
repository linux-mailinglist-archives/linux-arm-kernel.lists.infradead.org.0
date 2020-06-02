Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E3C1EC40C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 22:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1V+JnA1USoQcA21YthyRUFJL6Am5QP789f4CCEs1OgQ=; b=Fu0v24CbssFVH/
	L0iu7Sg0SfW5QVDPgORNXTtQSWtPKKzPRB9KtACHDViFIWh4mZjjRqzb0nHxPeYbPII+MLlBkcLBv
	/8wfyDn/iMiD5Oa+LSxTnGWR4rfkKlluBRXONGYC/GXkAHAp8RipdnBLPQvS5g7XgpyPPWlouCMEX
	O8/TeoJbGHKIccW9i0eV/WOuzElYzpCBl0/yLgGzicortBTp4CjcrMTzefgIhDDzcakMpAxfqSrvt
	FKCxww6BH1Dq2LH05cl0rKLtU6xmhCEgfzQfqydA7BCXZ/br+25y+0SDJnFGr0+gFz66X2RNEEph6
	2bPu8nHuKGCNHSmyvF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgDv5-0006sR-LW; Tue, 02 Jun 2020 20:53:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgDux-0006rS-R7
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 20:53:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id k26so4511925wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 13:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UNdx3Mmpf3DrIzViCGyzis6VE+eW7LcGk/DvPm/aizg=;
 b=gUQhoSQGFIHa7ZtNQ/mcdet2GnsJdah69f2gfvdvdf3oal9ZbFaY5RBDmch2/JCwpo
 1ySrRPlo+q1t6qjbKXPFmySFIdIUeoYzuR+SDIhTteakfiGtW0pdZri/mG9znO4mjmE5
 VpRIxXI+2IPUmFBA+igDQybSrvkqI8sP+60yo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UNdx3Mmpf3DrIzViCGyzis6VE+eW7LcGk/DvPm/aizg=;
 b=VUm6TeJzcHkrEWAf1nGva9ez2lOJ0oWdT7q9iH14xX1NAdvSZxkBE3PthRq4hxNw/X
 poqBV1fZn6NRo/GvrxJr2KoFZOpWzmxewKXQh3FTWQpiXNeuSb0u4mgya/7ACMaOXK/g
 EOP1x2oBAfdhAlzMF4LFNGZUOZgtYmFfpKD/aD8ZRhLq0dYi2IMaq/eC6XdlwByHKP6o
 Z0r/UTZB9toJ7owKv6m1tZAks7JPzvWYIklg9q2LhnAW1kUfQko7oaIE0fzU88oXe1st
 hmlAecvi3eBAgsdlaL5LkjtLsQSoFDFk9bE/KV9vyIyOQ2QHyHKgBsqMDIoigDCYQs30
 GFiQ==
X-Gm-Message-State: AOAM533nWcGPRszke+ny2y26j16cHW3uGxlf3xfc5D7K5OqErnIeyhx6
 gzbYLgZQFI5cgbLGDfrMZPuu11mMWTrL0x5BcR9sAQ==
X-Google-Smtp-Source: ABdhPJwkj8NL5zp+q4S4GBVPgKweYcMhpEHQU9ScieMb1qOnyIRY9ZULyNPHba9ox1is5xBNjGQKqzly82AVsgTZlQM=
X-Received: by 2002:a7b:c0cc:: with SMTP id s12mr5862628wmh.111.1591131229682; 
 Tue, 02 Jun 2020 13:53:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200526191303.1492-1-james.quinlan@broadcom.com>
 <20200526191303.1492-4-james.quinlan@broadcom.com>
 <20200529174634.GA2630216@bogus>
In-Reply-To: <20200529174634.GA2630216@bogus>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 2 Jun 2020 16:53:37 -0400
Message-ID: <CA+-6iNwWBFYHVKiwwJ95DYQ5zmc5uBo1cgZzd6rpD++aQWgGpw@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] dt-bindings: PCI: Add bindings for more Brcmstb
 chips
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_135351_880817_0C48F4CD 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Fri, May 29, 2020 at 1:46 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, May 26, 2020 at 03:12:42PM -0400, Jim Quinlan wrote:
> > From: Jim Quinlan <jquinlan@broadcom.com>
> >
> > - Add compatible strings for three more Broadcom STB chips: 7278, 7216,
> >   7211 (STB version of RPi4).
> > - add new property 'brcm,scb-sizes'
> > - add new property 'resets'
> > - add new property 'reset-names'
> > - allow 'ranges' and 'dma-ranges' to have more than one item and update
> >   the example to show this.
> >
> > Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> > ---
> >  .../bindings/pci/brcm,stb-pcie.yaml           | 40 +++++++++++++++++--
> >  1 file changed, 36 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > index 8680a0f86c5a..66a7df45983d 100644
> > --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > @@ -14,7 +14,13 @@ allOf:
> >
> >  properties:
> >    compatible:
> > -    const: brcm,bcm2711-pcie # The Raspberry Pi 4
> > +    items:
> > +      - enum:
>
> Don't need items here. Just change the const to enum.
>
> > +          - brcm,bcm2711-pcie # The Raspberry Pi 4
> > +          - brcm,bcm7211-pcie # Broadcom STB version of RPi4
> > +          - brcm,bcm7278-pcie # Broadcom 7278 Arm
> > +          - brcm,bcm7216-pcie # Broadcom 7216 Arm
> > +          - brcm,bcm7445-pcie # Broadcom 7445 Arm
> >
> >    reg:
> >      maxItems: 1
> > @@ -34,10 +40,12 @@ properties:
> >        - const: msi
> >
> >    ranges:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 4
> >
> >    dma-ranges:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 6
> >
> >    clocks:
> >      maxItems: 1
> > @@ -58,8 +66,30 @@ properties:
> >
> >    aspm-no-l0s: true
> >
> > +  resets:
> > +    description: for "brcm,bcm7216-pcie", must be a valid reset
> > +      phandle pointing to the RESCAL reset controller provider node.
> > +    $ref: "/schemas/types.yaml#/definitions/phandle"
> > +
> > +  reset-names:
> > +    items:
> > +      - const: rescal
>
> These are going to need to be an if/then schema if they only apply to
> certain compatible(s).

Why is that -- the code is general enough to handle its presence or
not (it is an optional compatibility)>

>
>
> > +
> > +  brcm,scb-sizes:
> > +    description: (u32, u32) tuple giving the 64bit PCIe memory
> > +      viewport size of a memory controller.  There may be up to
> > +      three controllers, and each size must be a power of two
> > +      with a size greater or equal to the amount of memory the
> > +      controller supports.
>
> This sounds like what dma-ranges should express?

There is some overlap but this contains information that is not in the
dma-ranges.  Believe me I tried.

>
> If not, we do have 64-bit size if that what you need.

IIRC I tried the 64-bit size but the YAML validator did not like it;
it wanted numbers like  <0x1122334455667788> while dtc wanted <
0x11223344 0x55667788>.  I gave up trying and switched to u32.

Thanks,
Jim

>
>
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +      - items:
> > +          minItems: 2
> > +          maxItems: 6
> > +
> >  required:
> >    - reg
> > +  - ranges
> >    - dma-ranges
> >    - "#interrupt-cells"
> >    - interrupts
> > @@ -93,7 +123,9 @@ examples:
> >                      msi-parent = <&pcie0>;
> >                      msi-controller;
> >                      ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000 0x0 0x04000000>;
> > -                    dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>;
> > +                    dma-ranges = <0x42000000 0x1 0x00000000 0x0 0x40000000 0x0 0x80000000>,
> > +                                 <0x42000000 0x1 0x80000000 0x3 0x00000000 0x0 0x80000000>;
> >                      brcm,enable-ssc;
> > +                    brcm,scb-sizes = <0x0 0x80000000 0x0 0x80000000>;
> >              };
> >      };
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
