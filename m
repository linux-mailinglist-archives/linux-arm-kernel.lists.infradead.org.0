Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D24216C337
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:03:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3Q+amG/DmY7E4sWQKETct0hSuRSJS6eeEJrOFABEsw=; b=rED3/lhO2nCKWb
	8eP/3blSKWKeu/EGP9E3hD2/Lb9onqlJMCNPr6eO6sp8bEJS8pUMwudDtWzRkl6PMU51h5nhnl6lG
	Hnp6QbJ1ilMgv9o1+7ToTY32BaegFXfPLyi0HJpHYTnRP2aN2l9tCpbq9rLv2fmuvx4ZQdlv1VAbO
	fUY2Z51fy6IslNhvw1OtVpWQRQHyoVUKz5xQ1z7EfwGV6p/tKq1e1njKi0/WdH+Z2drU9EarfbtH3
	rx+rQgEaVpj87nMScEQ6JPhZOBzKqYsVQNTKrSl/O4wycnHlNORh0lhsCqG+LPlKXnghp3/Cnjq4w
	5twMhx5mk9ydbV6qjBmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6anw-0007oM-9j; Tue, 25 Feb 2020 14:03:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ank-0007no-Mz; Tue, 25 Feb 2020 14:03:12 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 327B724650;
 Tue, 25 Feb 2020 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582639388;
 bh=4qn639jYpkdf96gHfdgJKSoL+lKpXNE16GpYcCHFXTM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sqaAjA+1J37y6usfnHDwA4/OPvt8xEEcMGoo7tGxh/P0Vae37EDc4g8FeFQ734fso
 ujnVJrGDk7kz88ouzyl4RZj7pyWvILr85MF/rZsmxEpQDWYfMHPagkvnTe4Bvmfi6c
 +ZMYg64fbo2gpCPpTf/D5pugasetDk/eo77dBmBM=
Received: by mail-qt1-f176.google.com with SMTP id d9so9071089qte.12;
 Tue, 25 Feb 2020 06:03:08 -0800 (PST)
X-Gm-Message-State: APjAAAV5wvwBXHGVNk9Zy6lfTJaiAol/qQti4XSrnTrGNKSwVrq421E9
 /Q1tEi2S2S+ZB6DlqbIEDFuJ/9wAtsrm+zEu+Q==
X-Google-Smtp-Source: APXvYqyY0f8YCsY0KVybyegDUL7R6z4tio3DOIbnu6bhfP9ELYYo0gmY/zYUsN5JJ1tibdP6DSvSpwzCZG6i3yyhwsE=
X-Received: by 2002:ac8:59:: with SMTP id i25mr54944784qtg.110.1582639387281; 
 Tue, 25 Feb 2020 06:03:07 -0800 (PST)
MIME-Version: 1.0
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <bf8aa2deea50cc3599caeb9ed1a07556353415df.1582533919.git-series.maxime@cerno.tech>
 <20200224184107.GA4189@bogus> <20200225115447.yntzkh3vfnw67ial@gilmour.lan>
In-Reply-To: <20200225115447.yntzkh3vfnw67ial@gilmour.lan>
From: Rob Herring <robh@kernel.org>
Date: Tue, 25 Feb 2020 08:02:55 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+kBNkTApDoyQ55gwW2WpHo7ywJ-UJ=-vGmWYsvshRijw@mail.gmail.com>
Message-ID: <CAL_Jsq+kBNkTApDoyQ55gwW2WpHo7ywJ-UJ=-vGmWYsvshRijw@mail.gmail.com>
Subject: Re: [PATCH 29/89] dt-bindings: display: Convert VC4 bindings to
 schemas
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_060308_794847_D609ED4A 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

On Tue, Feb 25, 2020 at 5:54 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Rob,
>
> On Mon, Feb 24, 2020 at 12:41:07PM -0600, Rob Herring wrote:
> > On Mon, 24 Feb 2020 10:06:31 +0100, Maxime Ripard wrote:
> > > The BCM283x SoCs have a display pipeline composed of several controllers
> > > with device tree bindings that are supported by Linux.
> > >
> > > Now that we have the DT validation in place, let's split into separate
> > > files and convert the device tree bindings for those controllers to
> > > schemas.
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt              | 174 +------------------------------------------------------------------------
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml         |  66 +++++++++++++++++++++++++++-
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml        |  73 ++++++++++++++++++++++++++++++-
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml        |  75 +++++++++++++++++++++++++++++++-
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml         |  37 +++++++++++++++-
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml |  40 +++++++++++++++++-
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml         |  37 +++++++++++++++-
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml         |  42 +++++++++++++++++-
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml         |  34 ++++++++++++++-
> > >  Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml         |  44 ++++++++++++++++++-
> > >  MAINTAINERS                                                             |   2 +-
> > >  11 files changed, 449 insertions(+), 175 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/display/brcm,bcm-vc4.txt
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-txp.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
> > >  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
> > >
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
> >
> > warning: no schema found in file: Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml: ignoring, error in schema: properties
> > Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml: properties: '#clock-cells' is a dependency of 'clock-output-names'
> > Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.example.dts' failed
> > make[1]: *** [Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.example.dts] Error 1
> > Makefile:1263: recipe for target 'dt_binding_check' failed
> > make: *** [dt_binding_check] Error 2
> >
> > See https://patchwork.ozlabs.org/patch/1242907
> > Please check and re-submit.
>
> Yeah, that was fixed in patch 31 ("dt-bindings: display: vc4: dsi: Add
> missing clock properties"). I'm not quite sure what the preferred
> approach here would be: I did a conversion as is of the binding, and
> then fixed it, or do you prefer having it all in the same patch?

A note in this patch should be enough. I do review these before
sending them. I was puzzled having one from you fail.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
