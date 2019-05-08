Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5824516EAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 03:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9ClutGSI3yuIg1gGFhxGh7fuEckdVeIffVsxEMtZFc=; b=F8400WcDVF4wtR
	XLFvsFGHgK/vQ14cNzg7XhHbgI0aQRfltSS4I7vCjYcH+/NgQnyYjPK5XVbGykEnEopMHyfgH3y3+
	h4W3aP8qMOXBbPm0FZXngFYQOX2NpmppO1B+S96S8l/QobhMJFsZtYwcFqD4PbZnfetdyEcDXkTIY
	/G76wAV4PFmdCqmKHUB9hpkPkPGXhhyeXwbq6nYJGjw+dwh1G6x3oELu9wNX7OVS6ApOW5MOMOSYs
	yluL6waDhT7tORTIR6ZcUtdRY53FH6XiTnYnePgeazcIZ7KMiINAOn8s2CzYciSCnffkMrlIz3Nza
	Dpcwa16187p5A/7dYeLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOBWX-0000Ls-7O; Wed, 08 May 2019 01:37:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOBWL-0000FY-Tf
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 01:37:24 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 758A2204EC
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 May 2019 01:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557279441;
 bh=OIKNrpQ//1+gNyFNJNx5GTrLEgWv7I8DuK91PHiBHGU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YoIj9jBz0ncG68/oormp3IZkK+oscTLcGb8PSX4KzJuQ7lM2ZwkFTsUrfsUc6uwn+
 P1o3R/VHf4Bnai4Bd9WniWYjnFgSSr/bBxalHv9qCm3WjRFIkMY/SFRPnRd4druLg3
 7veiohg9gGuwgwZ0TJS6u5KodZgBdccsb1Yofsv8=
Received: by mail-qk1-f175.google.com with SMTP id w20so799754qka.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 18:37:21 -0700 (PDT)
X-Gm-Message-State: APjAAAVsDG9nvl6PSzU0IPJW+B6rViw+2pf24cAeOdST62AyxFG9hgP5
 pqg+FTJXQVZrBNSMauIoMzoe9Hnl2Q6q2aXrvg==
X-Google-Smtp-Source: APXvYqyeiy1xlQlbcMBCEKm6e0Cu0M1tx5QYpc220iWQ2Ezm2T8NmPq4Igp3eHP72JG5/Njg7ZMROOL/ApIYZNB2fdY=
X-Received: by 2002:a37:351:: with SMTP id 78mr1234316qkd.147.1557279440735;
 Tue, 07 May 2019 18:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <b7a6095a5c900fa23cc54d1ccd8e8ef0ccf6e788.1557236840.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqKeLWgGLafwbKViTgpw4B=W9YGULaMr8h0p_rWX8PP_UQ@mail.gmail.com>
 <20190507151353.ns2i72ii5cw6z7lz@flea>
In-Reply-To: <20190507151353.ns2i72ii5cw6z7lz@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 7 May 2019 20:37:09 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+AzBUcJouvOCdYPHK6z8h_V3h5vqYPUuFD756z49wf3w@mail.gmail.com>
Message-ID: <CAL_Jsq+AzBUcJouvOCdYPHK6z8h_V3h5vqYPUuFD756z49wf3w@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: spi: Add YAML schemas for the generic
 SPI options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_183722_216394_368DD01E 
X-CRM114-Status: GOOD (  29.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 1:07 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> On Tue, May 07, 2019 at 09:35:28AM -0500, Rob Herring wrote:
> > On Tue, May 7, 2019 at 8:48 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > The SPI controllers have a bunch of generic options that are needed in a
> > > device tree. Add a YAML schemas for those.
> >
> > I'd started on this one, but was planning to move it to the schema
> > repository. The issue there is re-licensing (adding BSD 2 clause).
> > Maybe better to just move it later.
>
> I just found out that dt-doc-validate also chokes on the reference
> URI. Maybe I should just submit it to the repo then once that is
> settled?

I'm not really too excited about chasing down licensing on every file
we want to move and I'd like to avoid per file licenses, so I'd like
local $refs to work. I think I've got something figured out that will
work. It will need a small kernel side change though.

> > > +properties:
> > > +  $nodename:
> > > +    pattern: "^spi(@[a-zA-Z0-9]+)?$"
> >
> > I think we want just "(@.*)". At a minimum, you need to allow for ','.
> > It would be the a bus schema for the parent which should validate unit
> > addresses, so we should pretty much just allow anything here.
>
> The issue with this is that it will also match any node starting with
> spi. In the Allwinner case, that also means the pinctrl nodes with spi
> pins in them, but I'm sure we can find more corner cases.

Maybe I wasn't clear, but I meant changing just the unit-address part. So:

"^spi(@.*)$"

>
> > > +
> > > +  "#address-cells":
> > > +    const: 1
> > > +
> > > +  "#size-cells":
> > > +    const: 0
> > > +
> > > +  cs-gpios:
> > > +    description: |
> > > +      GPIOs used as chip selects.
> > > +      If that property is used, the number of chip selects will be
> > > +      increased automatically with max(cs-gpios, hardware chip selects).
> > > +
> > > +      So if, for example, the controller has 2 CS lines, and the
> > > +      cs-gpios looks like this
> > > +        cs-gpios = <&gpio1 0 0>, <0>, <&gpio1 1 0>, <&gpio1 2 0>;
> > > +
> > > +      Then it should be configured so that num_chipselect = 4, with
> > > +      the following mapping
> > > +        cs0 : &gpio1 0 0
> > > +        cs1 : native
> > > +        cs2 : &gpio1 1 0
> > > +        cs3 : &gpio1 2 0
> > > +
> > > +  num-cs:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description:
> > > +      Total number of chip selects.
> > > +
> > > +  spi-slave:
> > > +    $ref: /schemas/types.yaml#/definitions/flag
> >
> > "type: boolean" is sufficient here. Maybe we should just remove
> > 'flag'. OTOH, maybe consistency with other types and the abstraction
> > is better as we could add to the flag schema.
>
> I was trying to be consistent. Do you want me to remove it?

No, it's fine.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
