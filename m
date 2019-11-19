Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98CD1026D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjkiDuzK6B2KscGRiraveDyZLl0wP62szsTZvheRv8s=; b=LqU11QhKgfBhyS
	2FrKmuy8E7s7DYoGB9pcOCYOXiBboLqJkOCVyTRRMDqkFGTxdoiNKcYIQkwsM2QECLtWh9d0stn3i
	IQw9J5b/NLN8YXdSQVIkO5s8Ueu0Gh5/IKalkMfD9DN5NpTrCKxW16mEZvCPK3MtZ8udAxUQ6cDtC
	3bhzp6SQyEEFgBEKAizA1xiFXQN1Ux24nYCRd0025S+yxqL2XHBD89q16ITZ1L//HWKIJOuVYAFO2
	KWQ0HWxXnWvBo/g846K/6bYR4b35E55NL+pvTt5EBZ8oT/1LqquS2rbPjxAJkOWTd+EJU9MuyK+db
	Shh7bT6zPpODHo9UxcPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4YO-0004N6-NX; Tue, 19 Nov 2019 14:32:28 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4YG-0004MF-3v
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:32:21 +0000
Received: by mail-pl1-f194.google.com with SMTP id az9so11847948plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 06:32:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eBb56gUBpWkIX0FYW+z97CZQ4gz538W2egeN9/8KSE8=;
 b=C7qCTmS7MDe0L1DX3N41I9BLXiuDLNHmG+Nm1yXdLa2av6Xk40l8Exrq/ah3pwsjF6
 HAtGW2TkStAs2e+CFZo8Gmow93edEeY1anr8B4+kqEryUupwegGTiSOLVWN7+JerO4TF
 IDD51dMS0dZtWR83LJ5CQpi9sSwc6ojc/TtJjW7J1WQ6FJTm6MbNdLmWOS449IysTUXf
 FrAC/05k4BSf3QWZZFDzuYPbT2zB1OzENCz+KXNf87thGWBAapcgEjAN8QGETAHirE6j
 gjatWqn0i7SWFNx+eP13izxRxIuv/fh7HhEDdGk+d4u+ZdNxquXg/7eYWeWlYHUyrc6l
 THpA==
X-Gm-Message-State: APjAAAX+pTFWRTu0krgEBSNXPPqWVYLS66jkw+CWhpIQzPa3JTbN1ClQ
 7Z64K1hL5GjVmryXddgeRxM=
X-Google-Smtp-Source: APXvYqwwGsoq53FUp+0XzND+b9LLSYSKvrjBZwNTHzre77bCa3jKZ67sI4NXD0mR6B+oWVnerf80Lg==
X-Received: by 2002:a17:90a:5d17:: with SMTP id
 s23mr6591558pji.55.1574173937748; 
 Tue, 19 Nov 2019 06:32:17 -0800 (PST)
Received: from kozik-lap ([118.189.143.39])
 by smtp.googlemail.com with ESMTPSA id
 z62sm28857634pfz.135.2019.11.19.06.32.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 19 Nov 2019 06:32:16 -0800 (PST)
Date: Tue, 19 Nov 2019 22:32:11 +0800
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
Message-ID: <20191119143211.GA7804@kozik-lap>
References: <20191030173216.5993-1-krzk@kernel.org>
 <20191105194257.GA16066@bogus> <20191114125923.GA3084@kozik-lap>
 <CAL_JsqJCps_s1OGt2SvPa4uBj9EQp0ZqyeHVw8fMR+rSSVh9ow@mail.gmail.com>
 <CAMuHMdXYg4u1SF+j=doJqaDFw+O61g2th8ppt+CBrez8QAgJRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXYg4u1SF+j=doJqaDFw+O61g2th8ppt+CBrez8QAgJRA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_063220_159373_328DF73F 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: 4.1 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 10:58:11AM +0100, Geert Uytterhoeven wrote:
> Hi Rob, Krzysztof,
> 
> On Thu, Nov 14, 2019 at 5:42 PM Rob Herring <robh@kernel.org> wrote:
> > On Thu, Nov 14, 2019 at 6:59 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > On Tue, Nov 05, 2019 at 01:42:58PM -0600, Rob Herring wrote:
> > > > On Wed, 30 Oct 2019 18:32:15 +0100, Krzysztof Kozlowski wrote:
> > > > > Convert Generic Power Domain bindings to DT schema format using
> > > > > json-schema.
> > > > >
> > > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > > Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > Acked-by: Stephen Boyd <sboyd@kernel.org>
> > > > >
> > > > > ---
> > > > >
> > > > > Changes since v2:
> > > > > 1. Keep description of consumers in power-domain.txt,
> > > > > 2. Rename power_domain.txt to power-domain.txt,
> > > > > 3. Indent example with four spaces (more readable).
> > > > >
> > > > > Changes since v1:
> > > > > 1. Select all nodes for consumers,
> > > > > 2. Remove from consumers duplicated properties with dt-schema,
> > > > > 3. Fix power domain pattern,
> > > > > 4. Remove unneeded types.
> > > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > > ---
> > > > >  .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
> > > > >  .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
> > > > >  .../bindings/arm/freescale/fsl,scu.txt        |   2 +-
> > > > >  .../bindings/clock/renesas,cpg-mssr.txt       |   2 +-
> > > > >  .../bindings/clock/ti/davinci/psc.txt         |   2 +-
> > > > >  .../firmware/nvidia,tegra186-bpmp.txt         |   2 +-
> > > > >  .../bindings/power/amlogic,meson-gx-pwrc.txt  |   2 +-
> > > > >  .../devicetree/bindings/power/fsl,imx-gpc.txt |   2 +-
> > > > >  .../bindings/power/fsl,imx-gpcv2.txt          |   2 +-
> > > > >  .../{power_domain.txt => power-domain.txt}    |  95 +------------
> > > > >  .../bindings/power/power-domain.yaml          | 133 ++++++++++++++++++
> > > > >  .../bindings/power/renesas,sysc-rmobile.txt   |   2 +-
> > > > >  .../bindings/power/xlnx,zynqmp-genpd.txt      |   2 +-
> > > > >  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      |   2 +-
> > > > >  .../bindings/soc/mediatek/scpsys.txt          |   2 +-
> > > > >  .../bindings/soc/ti/sci-pm-domain.txt         |   2 +-
> > > > >  MAINTAINERS                                   |   2 +-
> > > > >  17 files changed, 149 insertions(+), 109 deletions(-)
> > > > >  rename Documentation/devicetree/bindings/power/{power_domain.txt => power-domain.txt} (51%)
> > > > >  create mode 100644 Documentation/devicetree/bindings/power/power-domain.yaml
> > > > >
> > > >
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > >
> > > The patches should apply cleanly in top of your tree so maybe you can
> > > pick them up?
> >
> > I didn't on this one because it touches a lot of files. Though on
> > second thought, they are all across the tree, so I might as well apply
> > them.
> 
> There are still several leftover references to power_domain.txt.
> Krzysztof: Do you plan to convert these, too, or do you expect the
> individual maintainers to handle that?

Ahh, I think that's my fault after one of iterations of the patchset. I
can fix it up fast and maybe let's queue it through the same tree (Rob's).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
