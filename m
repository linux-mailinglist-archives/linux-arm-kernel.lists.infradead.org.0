Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34429E996
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0370wqcMT8emLgrjWLk2YWI8X2vNLnikI6gYKnbUhmc=; b=C9DsJYgf2OfxLK
	sPpnEh/gJe31XOxZ+50DzMUXfI+x/IVpyPt8dgRQ4zKxFZMB3r//UKHqFKB3QMK7YBaHhQhNnUlDZ
	OXYIVAGLK+1GjCJq2TN+b5Pmt3FfehwHgl124Z7N3CMuY3y3MF8qeBARjyb99VXoKZIuTMK/E62OW
	tvbDAhYkP5ZZXehi60VjPfh2gkdN8Q6I455EL+aoipT1DBxLaeP/9GdqNIEOmuDVEXzyRJWS9Mmik
	wTMC3RcLyNJCSU4JGzdIEDNz9FlaVM+I5uTKZtn3H77d1jiLrBjF1eIdbV4PozQK5cWgjnmQQfG1m
	QBJM3h0SZ1kVSAb1m4Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bep-0007Hc-S9; Tue, 27 Aug 2019 13:37:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bee-0007Gn-3z
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:37:01 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A995020828
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 13:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566913019;
 bh=mD4q3LMo8D/oOkYLDOKCUAJJn9XFxRojkzOMMIIoH1I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iIHtOikMNFdIzPT8jWOw/5DwxGlxnvIEDZv9e0PiIiaJHWvdLX+iDsXGeyppF1TUt
 c17W7Fc/T4Ik+b8XGYSHnukX7bjPDJcSTOeFIdDfjLuyWZrYhffCGT6g1hesZDhpUj
 3ZgF2FfSALXvFmHTL98And13MaG/+fN4e5USc9s4=
Received: by mail-qt1-f170.google.com with SMTP id g4so11419337qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:36:59 -0700 (PDT)
X-Gm-Message-State: APjAAAVdnEq7+sQKl9OOUwBadseKJD0KOZ8+BZeMs+loeRG8O8aHhvf2
 3pBQxUx3GW14CJAQChoPSaCgfMRefYK0lBz9qQ==
X-Google-Smtp-Source: APXvYqzEOWLWWqszNcnpUlBSWwsUeCt8Jjat6t6FjKZi0ldOgh/0RivRU5T9R/NH2jHj7b42YDO9ISbX143dqtx8U7A=
X-Received: by 2002:a0c:eb92:: with SMTP id x18mr20126969qvo.39.1566913018683; 
 Tue, 27 Aug 2019 06:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-3-lkundrak@v3.sk>
 <CAL_JsqJ4_h+M=6L-nzK2N+A9TAy-N8SoiFv1SSTk_kCcKt0eXw@mail.gmail.com>
 <136a57cf3d293e3233f31d5ee660a6418726333a.camel@v3.sk>
In-Reply-To: <136a57cf3d293e3233f31d5ee660a6418726333a.camel@v3.sk>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 08:36:47 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK1pkwPZj+Us8CecNnfA7L17YVk9aTe3qPoNTAvRiHibw@mail.gmail.com>
Message-ID: <CAL_JsqK1pkwPZj+Us8CecNnfA7L17YVk9aTe3qPoNTAvRiHibw@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: arm: Convert Marvell MMP board/soc
 bindings to json-schema
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_063700_265192_8676891B 
X-CRM114-Status: GOOD (  27.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 8:24 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> On Tue, 2019-08-27 at 06:59 -0500, Rob Herring wrote:
> > On Thu, Aug 22, 2019 at 4:27 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
> > > Convert Marvell MMP SoC bindings to DT schema format using json-schema.
> > >
> > > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> > >
> > > ---
> > > Changes since v1:
> > > - Added this patch
> > >
> > >  .../devicetree/bindings/arm/mrvl/mrvl.txt     | 14 ---------
> > >  .../devicetree/bindings/arm/mrvl/mrvl.yaml    | 31 +++++++++++++++++++
> > >  2 files changed, 31 insertions(+), 14 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > >  create mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > > deleted file mode 100644
> > > index 951687528efb0..0000000000000
> > > --- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > > +++ /dev/null
> > > @@ -1,14 +0,0 @@
> > > -Marvell Platforms Device Tree Bindings
> > > -----------------------------------------------------
> > > -
> > > -PXA168 Aspenite Board
> > > -Required root node properties:
> > > -       - compatible = "mrvl,pxa168-aspenite", "mrvl,pxa168";
> > > -
> > > -PXA910 DKB Board
> > > -Required root node properties:
> > > -       - compatible = "mrvl,pxa910-dkb";
> > > -
> > > -MMP2 Brownstone Board
> > > -Required root node properties:
> > > -       - compatible = "mrvl,mmp2-brownstone", "mrvl,mmp2";
> > > diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> > > new file mode 100644
> > > index 0000000000000..dc9de506ac6e3
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> > > @@ -0,0 +1,31 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/arm/mrvl/mrvl.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Marvell Platforms Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Lubomir Rintel <lkundrak@v3.sk>
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    const: '/'
> > > +  compatible:
> > > +    oneOf:
> > > +      - description: PXA168 Aspenite Board
> > > +        items:
> > > +          - enum:
> > > +              - mrvl,pxa168-aspenite
> > > +          - const: mrvl,pxa168
> > > +      - description: PXA910 DKB Board
> > > +        items:
> > > +          - enum:
> > > +              - mrvl,pxa910-dkb
> >
> > Doesn't match what's in dts file:
> >
> > arch/arm/boot/dts/pxa910-dkb.dts:       compatible =
> > "mrvl,pxa910-dkb", "mrvl,pxa910";
>
> It corresponds to the .txt bindings specification this commit is
> converting. I thought it wouldn't be a good idea to do any changes to
> the contents at the time the conversion is done.

There are so many errors like this, that it's fine to do it in the
conversion. A separate patch is fine too.

> I also don't understand why does the dts file specify the board-
> specific compatible string. Surely "mrvl,pxa910" alone would be
> sufficient?

To potentially work around any board specific issue without a dtb change.

>
> > > +      - description: MMP2 Brownstone Board
> >
> > If this entry is only for this board...
> >
> > > +        items:
> > > +          - enum:
> > > +              - mrvl,mmp2-brownstone
> >
> > ...then this can be a 'const' instead. Same for the others.
>
> Sure, but is it preferable? I've actually done a "git grep -A3 enum
> Documentation/devicetree/bindings/" to see if the single-element is
> typically used and it seems like it is. Perhaps it's a good idea to
> indicate to a human reader that this is a list that's expected to
> eventually be extended with new elements.

Then the description should match and say 'MMP2 based boards'.

> In any case, there are more boards with MMP2 currently supported,
> notably the XO-1.75 laptop. I've actually sent out the dts file for
> review some time ago. I haven't added a separate compatible string for
> it because I thought it is not necessary (see above).

You should add one.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
