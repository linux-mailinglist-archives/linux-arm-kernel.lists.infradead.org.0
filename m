Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764C1EC17C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 12:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYEh6/AEWbZ4BfkOheS6fe2doKnwI2X0O1mae0DxFoI=; b=a2tdxVhJN0ts4c
	xqZ6oyJOcO5h6Xhg6ww0P5B3Uu/CqQdLMyqgvzELX5n37NW0A0+s489M6l1vjiIqk3dgN0856Aye1
	HctMVbJfgecIThk+61ATORoAdhWmDUAYholRhNsb0Bioj7wssuI9lRqaQDyVRJ43DgIWNBz4wi4Jg
	mLpownPlzSgrcPyL0On3n2CYBc9E6ZTJrB4A6B5lUCE5s2vKF7A1aDiSdMoo7pgYYRAu207GcHA4P
	+NSJ84jlAhZ9LOMSv6xepp6pTNvUw1SvWPDPkzlpGvh2sWJqGfqmHW5cxOcaoOfyrV7WzhvPWJCRJ
	d6pFzSSnqj+8erGVl3VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQUgd-0005Br-Gb; Fri, 01 Nov 2019 11:01:47 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQUgW-0005As-Jp; Fri, 01 Nov 2019 11:01:42 +0000
Received: by mail-oi1-f194.google.com with SMTP id n16so7842571oig.2;
 Fri, 01 Nov 2019 04:01:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BwOb7c/bCokB7dKeYdJq+R5da1cRDoqnSzfr9hONEPw=;
 b=a32ouTPQcxqpacXdbhqMhska5g9gASX/m0BximM2q0GcZuhEn8b0nW82JXSuM//Ykz
 N0mIEwykpl00o3taqr+4jywZebpLCRYqICdUTkAxsonG+WeP56yjnIG3+6rB1ZQQvV+n
 D6HllwJPe8S//fwnO/quM/G/Y7usFT/bDCBcoQRj/8ms3uIz/bE1wl2lVht2L/jYNZrd
 Ja43G47/CMO8wmkxJ6KCswOZ6jRvk/qe88Lf2EmW3O1bIx6ZPCB/CyIC220/S7qDJyo5
 GhsCAQT7wbMiILCXwOpfuR1FDlwT31xjrXLAgCwMytsqTSrJ6e3UfcOBIOB+Nq55vqB+
 SS7Q==
X-Gm-Message-State: APjAAAVm/80FuIkXBo0uJR3jgTyVhjhIKaL/XPg/gaf5UT3mqe+JAbe5
 7JAZ1x2izpATIPD4rUfBa6/NhrezBHH88YJ/uRI=
X-Google-Smtp-Source: APXvYqytWpFj+aHVVrjgJ+XuIgmDCveEj6FlTqbtlSt/b3e6XNqNbZZ0OLo3TR/ZeHv/URN1HIIZVg8kUhpb/iGo/CI=
X-Received: by 2002:aca:3a86:: with SMTP id h128mr7835580oia.131.1572606097659; 
 Fri, 01 Nov 2019 04:01:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191021161351.20789-1-krzk@kernel.org>
 <20191021161351.20789-4-krzk@kernel.org>
 <CAMuHMdXr7_HP5NUQ_0D76N-eBuootQqyPusqmf6nyDnLN__ORA@mail.gmail.com>
 <CAJKOXPcZGhC1+-tOwL6N_ohWzXEqJ3T6=HWefNzXsa3eeQN1fg@mail.gmail.com>
In-Reply-To: <CAJKOXPcZGhC1+-tOwL6N_ohWzXEqJ3T6=HWefNzXsa3eeQN1fg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 1 Nov 2019 12:01:26 +0100
Message-ID: <CAMuHMdV34BfnVGXCtoL1EDk=uYPiaku1WvBuB0cXoGy3zeoBJw@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] dt-bindings: sram: Merge Renesas SRAM bindings
 into generic
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_040140_654102_0057EC12 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Fri, Nov 1, 2019 at 11:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Fri, 1 Nov 2019 at 11:08, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, Oct 21, 2019 at 6:15 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > The Renesas SRAM bindings list only compatible so integrate them into
> > > generic SRAM bindings schema.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >
> > Thanks for your patch, whcih is now commit 0759b09eadd0d9a1 ("dt-bindings:
> > sram: Merge Renesas SRAM bindings into generic") in Rob's for-next branch.
> >
> > > --- a/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt
> > > +++ /dev/null
> > > @@ -1,27 +0,0 @@
> > > -* Renesas SMP SRAM
> > > -
> > > -Renesas R-Car Gen2 and RZ/G1 SoCs need a small piece of SRAM for the jump stub
> > > -for secondary CPU bringup and CPU hotplug.
> > > -This memory is reserved by adding a child node to a "mmio-sram" node, cfr.
> > > -Documentation/devicetree/bindings/sram/sram.txt.
> > > -
> > > -Required child node properties:
> > > -  - compatible: Must be "renesas,smp-sram",
> > > -  - reg: Address and length of the reserved SRAM.
> > > -    The full physical (bus) address must be aligned to a 256 KiB boundary.
> > > -
> > > -
> > > -Example:
> > > -
> > > -       icram1: sram@e63c0000 {
> > > -               compatible = "mmio-sram";
> > > -               reg = <0 0xe63c0000 0 0x1000>;
> > > -               #address-cells = <1>;
> > > -               #size-cells = <1>;
> > > -               ranges = <0 0 0xe63c0000 0x1000>;
> > > -
> > > -               smp-sram@0 {
> > > -                       compatible = "renesas,smp-sram";
> > > -                       reg = <0 0x10>;
> > > -               };
> >
> > > --- a/Documentation/devicetree/bindings/sram/sram.yaml
> > > +++ b/Documentation/devicetree/bindings/sram/sram.yaml
> >
> > > @@ -186,3 +187,17 @@ examples:
> > >              reg = <0x1ff80 0x8>;
> > >          };
> > >      };
> > > +
> > > +  - |
> > > +    sram@e63c0000 {
> > > +        compatible = "mmio-sram";
> > > +        reg = <0xe63c0000 0x1000>;
> >
> > Is there any specific reason you converted the example from 64-bit to
> > 32-bit addressing?
> > All Renesas SoCs using this have #address-cells and #size-cells = <2>.
>
> I should mention it in commit msg. The reason is because examples are
> compiled inside a {} with address/size cells of 1. Instead of

Thanks, that's what I was already afraid of...

> conversion maybe it would be reasonable to put it inside additional
> node adjusting the address/size cells.

I think it's fine to leave it as-as, though.  If we ever get to DT-ize
secondary CPU startup on EMMA Mobile EV2 or SH-Mobile AG5, we'll have
users without LPAE ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
