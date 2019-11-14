Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AC0FCAF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 17:42:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oje3RthKxEOZemqfWR54zPQ0fR3ujHKI0pWO13zOz7Q=; b=BiOWQSDruHmDt8
	SYvURPJUKMoDZrMJr9op0DXoiUF/gGyQd710WFluw3AyBJBiZLS/D8zRBRsHW8OL1DK/g/yLg+LeA
	yivXtnwH4jZEhIl81vogi+heqd3ZmPOYQaBeWfJ9lzQPgGEb8McszmqmI6qGDPl5Yr+3wHnd9fvto
	qDeuOFeZ6SdZWU977SbWm7aZH0Jn0izKDK8QQMfQnpHms8t19v/jyY2L9t/Lj0VoQwZwS50OABvjk
	LsHT93PAswiZ15cNN+h+ooZIA86ui7AEkgb8u6izVGLNmq62CUHVdV93on/WwyMAsjruJ9oX6BtNk
	j5LyjqcFo9xgdB2r5ANA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVICF-0005VR-7O; Thu, 14 Nov 2019 16:42:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVIC3-0005U9-Lo
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 16:42:06 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CADE820718
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 16:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573749722;
 bh=vtbCclPT+zYqUalm1ApV+FNGPcRf/b9M6eu8ZE4q16Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eSe0IvX2y9Wj/36cOsbQWZo2r/flZoR95ZUx9zbAQ72DT7NfJH7j3KTR29VnrqtoH
 jnNw5uqT7e0Gds5meXc+jFJjbsMH0XhlTSeT7VxkLcBboqkO0SmGsrUM7gUfqQn5RQ
 w/A9jtP+kVlgVy9Aigrw0Nm04tD72R3d5391n1hA=
Received: by mail-qt1-f173.google.com with SMTP id t8so7473190qtc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 08:42:02 -0800 (PST)
X-Gm-Message-State: APjAAAX4nJuNbJMZW1k9F+wu8sC6jSxJSZEkztSBB6wGMvkpPEKPW6FP
 Dc5om/o2JMVBXt+469quxl+r23GVS0jELIjuwQ==
X-Google-Smtp-Source: APXvYqxjuNP7BfYPb5x+ylRHTKdxw88/n1phCYuux3ImKi057RYvcMQ05BWyQKmncaEprsWM0Zap0QYGz4BodN4GT7w=
X-Received: by 2002:ac8:3094:: with SMTP id v20mr9302910qta.110.1573749721974; 
 Thu, 14 Nov 2019 08:42:01 -0800 (PST)
MIME-Version: 1.0
References: <20191030173216.5993-1-krzk@kernel.org>
 <20191105194257.GA16066@bogus> <20191114125923.GA3084@kozik-lap>
In-Reply-To: <20191114125923.GA3084@kozik-lap>
From: Rob Herring <robh@kernel.org>
Date: Thu, 14 Nov 2019 10:41:50 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJCps_s1OGt2SvPa4uBj9EQp0ZqyeHVw8fMR+rSSVh9ow@mail.gmail.com>
Message-ID: <CAL_JsqJCps_s1OGt2SvPa4uBj9EQp0ZqyeHVw8fMR+rSSVh9ow@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_084203_754571_A187D6E4 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 6:59 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, Nov 05, 2019 at 01:42:58PM -0600, Rob Herring wrote:
> > On Wed, 30 Oct 2019 18:32:15 +0100, Krzysztof Kozlowski wrote:
> > > Convert Generic Power Domain bindings to DT schema format using
> > > json-schema.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > Acked-by: Stephen Boyd <sboyd@kernel.org>
> > >
> > > ---
> > >
> > > Changes since v2:
> > > 1. Keep description of consumers in power-domain.txt,
> > > 2. Rename power_domain.txt to power-domain.txt,
> > > 3. Indent example with four spaces (more readable).
> > >
> > > Changes since v1:
> > > 1. Select all nodes for consumers,
> > > 2. Remove from consumers duplicated properties with dt-schema,
> > > 3. Fix power domain pattern,
> > > 4. Remove unneeded types.
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > ---
> > >  .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
> > >  .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
> > >  .../bindings/arm/freescale/fsl,scu.txt        |   2 +-
> > >  .../bindings/clock/renesas,cpg-mssr.txt       |   2 +-
> > >  .../bindings/clock/ti/davinci/psc.txt         |   2 +-
> > >  .../firmware/nvidia,tegra186-bpmp.txt         |   2 +-
> > >  .../bindings/power/amlogic,meson-gx-pwrc.txt  |   2 +-
> > >  .../devicetree/bindings/power/fsl,imx-gpc.txt |   2 +-
> > >  .../bindings/power/fsl,imx-gpcv2.txt          |   2 +-
> > >  .../{power_domain.txt => power-domain.txt}    |  95 +------------
> > >  .../bindings/power/power-domain.yaml          | 133 ++++++++++++++++++
> > >  .../bindings/power/renesas,sysc-rmobile.txt   |   2 +-
> > >  .../bindings/power/xlnx,zynqmp-genpd.txt      |   2 +-
> > >  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      |   2 +-
> > >  .../bindings/soc/mediatek/scpsys.txt          |   2 +-
> > >  .../bindings/soc/ti/sci-pm-domain.txt         |   2 +-
> > >  MAINTAINERS                                   |   2 +-
> > >  17 files changed, 149 insertions(+), 109 deletions(-)
> > >  rename Documentation/devicetree/bindings/power/{power_domain.txt => power-domain.txt} (51%)
> > >  create mode 100644 Documentation/devicetree/bindings/power/power-domain.yaml
> > >
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
>
> The patches should apply cleanly in top of your tree so maybe you can
> pick them up?

I didn't on this one because it touches a lot of files. Though on
second thought, they are all across the tree, so I might as well apply
them.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
