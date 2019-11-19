Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E467102168
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 10:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ykxo4nmGDJDcRqtcq8uhCiPB8nHlDVIf1bortLchtgE=; b=owJMwAndmPgJ8+
	nOuD7eCW65Aq37GWwOe6JgoYloh4r5xmycpZySQCskUpbusMu0DwZsoC6zrBVpTTMX8PvVAR4++n8
	tCC9d+W3kVsxkVpOK062mBU8hBClOzhfVm693JMzKLkzyvUsraIDk/+dEUNnUXqbcOoKKoFY8QDzz
	qJRXn1tvHtyEDOpwAnYz8GNfaJCUt10lOvGDqCuAIJzVR6cXNXJ2dC/P0WF55EoKoL9LrVNYMp7Wc
	obREBLOElAivN9iQQm4vdzxW01CV4PnTgnCnY6trLglIfJb/gC4H/Mm1wR7j6fFy6unuOO2q4e6un
	95BwhqhdyGNu1LwlJJuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX0HT-0003tw-39; Tue, 19 Nov 2019 09:58:43 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0HA-0003rt-3R
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 09:58:27 +0000
Received: by mail-ot1-f67.google.com with SMTP id w24so16857378otk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 01:58:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R2QfOLQ66mKJM4oqvv+8/7SnafH2D5zzrRD8WOBy5DA=;
 b=Iq3qyKQ7Ru7SPMe2Dp6io732DDNN0SX+IctZjw+K44ClbqNBYRLCl6vf+hwFp4UUlF
 NRa5f4sO3xnRugpwLbMU3MSQaoHBQgRwsqvrz7PUbsgjG6WdtjYOG3DadIyr3t4xB0Rr
 KAY2E0hHSlZnyNPCWYb+u00guPIaovvX8nEcI24doiskWE4eXgf8dBJnD2EA7gWhZzno
 o7OOOzrhJpLQsJP9zfKNNxSz9mcmVDy0lC5YxgGh3xvzimWB6ncAmU+7Z/nFUYwh4/tf
 +RIDHDKTKbPhl++P7IWsMgEMFcOqHfS6NU+cnnZLSapdaE4jb6wT333ZzOSozSi6o1PM
 4cxQ==
X-Gm-Message-State: APjAAAXKpXTBOnRVAd4CFuGsyCeJ9SCuOWplB0nUsk+TnuXK0E9p7jAG
 t7Ptf1Rvm4wgfIUt+l7HoPQEUjVyKIlM2MPWjGuz61WD
X-Google-Smtp-Source: APXvYqzXEAB1RN2ztsSPnJrNlveKBRzWXzUVBsrYqaVf7OxCOQc193FoRkJyyExGk2AxheB0N+YhwRziF7J9QuWRKJQ=
X-Received: by 2002:a9d:5511:: with SMTP id l17mr3048301oth.145.1574157502733; 
 Tue, 19 Nov 2019 01:58:22 -0800 (PST)
MIME-Version: 1.0
References: <20191030173216.5993-1-krzk@kernel.org>
 <20191105194257.GA16066@bogus> <20191114125923.GA3084@kozik-lap>
 <CAL_JsqJCps_s1OGt2SvPa4uBj9EQp0ZqyeHVw8fMR+rSSVh9ow@mail.gmail.com>
In-Reply-To: <CAL_JsqJCps_s1OGt2SvPa4uBj9EQp0ZqyeHVw8fMR+rSSVh9ow@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 Nov 2019 10:58:11 +0100
Message-ID: <CAMuHMdXYg4u1SF+j=doJqaDFw+O61g2th8ppt+CBrez8QAgJRA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_015824_143046_DBBEAFB3 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, Krzysztof,

On Thu, Nov 14, 2019 at 5:42 PM Rob Herring <robh@kernel.org> wrote:
> On Thu, Nov 14, 2019 at 6:59 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > On Tue, Nov 05, 2019 at 01:42:58PM -0600, Rob Herring wrote:
> > > On Wed, 30 Oct 2019 18:32:15 +0100, Krzysztof Kozlowski wrote:
> > > > Convert Generic Power Domain bindings to DT schema format using
> > > > json-schema.
> > > >
> > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > Acked-by: Stephen Boyd <sboyd@kernel.org>
> > > >
> > > > ---
> > > >
> > > > Changes since v2:
> > > > 1. Keep description of consumers in power-domain.txt,
> > > > 2. Rename power_domain.txt to power-domain.txt,
> > > > 3. Indent example with four spaces (more readable).
> > > >
> > > > Changes since v1:
> > > > 1. Select all nodes for consumers,
> > > > 2. Remove from consumers duplicated properties with dt-schema,
> > > > 3. Fix power domain pattern,
> > > > 4. Remove unneeded types.
> > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > ---
> > > >  .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
> > > >  .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
> > > >  .../bindings/arm/freescale/fsl,scu.txt        |   2 +-
> > > >  .../bindings/clock/renesas,cpg-mssr.txt       |   2 +-
> > > >  .../bindings/clock/ti/davinci/psc.txt         |   2 +-
> > > >  .../firmware/nvidia,tegra186-bpmp.txt         |   2 +-
> > > >  .../bindings/power/amlogic,meson-gx-pwrc.txt  |   2 +-
> > > >  .../devicetree/bindings/power/fsl,imx-gpc.txt |   2 +-
> > > >  .../bindings/power/fsl,imx-gpcv2.txt          |   2 +-
> > > >  .../{power_domain.txt => power-domain.txt}    |  95 +------------
> > > >  .../bindings/power/power-domain.yaml          | 133 ++++++++++++++++++
> > > >  .../bindings/power/renesas,sysc-rmobile.txt   |   2 +-
> > > >  .../bindings/power/xlnx,zynqmp-genpd.txt      |   2 +-
> > > >  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      |   2 +-
> > > >  .../bindings/soc/mediatek/scpsys.txt          |   2 +-
> > > >  .../bindings/soc/ti/sci-pm-domain.txt         |   2 +-
> > > >  MAINTAINERS                                   |   2 +-
> > > >  17 files changed, 149 insertions(+), 109 deletions(-)
> > > >  rename Documentation/devicetree/bindings/power/{power_domain.txt => power-domain.txt} (51%)
> > > >  create mode 100644 Documentation/devicetree/bindings/power/power-domain.yaml
> > > >
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > The patches should apply cleanly in top of your tree so maybe you can
> > pick them up?
>
> I didn't on this one because it touches a lot of files. Though on
> second thought, they are all across the tree, so I might as well apply
> them.

There are still several leftover references to power_domain.txt.
Krzysztof: Do you plan to convert these, too, or do you expect the
individual maintainers to handle that?

Thanks!

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
