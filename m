Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F19F590391
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 16:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJ+7auhKWIHXrGFbODStUPGWnzISdIDWJynwjjSbpX8=; b=oo3/Ijprmo24ug
	E5ksf52Ctbuii7IzvKsnQeRU2YV2iKZPWaTEmbRrbW2fJ9RezrFVMpn5NxiDWQUK8lLcw0Vvs41oL
	l+t0kh0KKqef2IiwkR8PoJshqarXL0RYGDyG5rJo0AaoqpazBO9Es1cYyvKFMDlJLHqBNqs7TMG4j
	MY6U+OwWca2f+J2iSSqgS9RhnC9R1691Ky2+09r9F+8n6BFi1V4VVq1Vhibh2VO7wvSyRAIl+Dn89
	reuC0hJvPFkkCI5AF7IG0gRe8JC8d9p5hML/Q9IilV/jWgy9/QnlWUBL9iJRswm1Cy9+Od6NR+j8/
	Jld48/tpwT8OO30Z58Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hycmS-000667-Ok; Fri, 16 Aug 2019 14:00:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hycmE-00065j-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 14:00:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id q12so1632924wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 07:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DrJ7gCAK6Th5zBxxKayy7enXiUTo1ZEKcmR+4YN2Rw4=;
 b=VDnmgj+6StJGZ+K5QyAby+MNXEojjAj0I0IufNcfA6R19fyc/aMJaNxHntHu+WS4Rv
 e1p01bO8GNFtJgNc9ujxYszMA7YOvObenjE2IeF035Vntcx+M9vVmep6ruiz4GhbvZtK
 o1CVumwevwOW/073/HmhEKOIlBHl14iiC8KwQQ7Ap3V8MIooeKB1TpSIP/v3G5nSvnYT
 +9h1TwHZHk2KEeES3WQim4LDDLKLdGEH2bIYJE7hrkxshmRO6yVzsxFdPWjYyeiJPCoP
 0FuTeVT9HzdYEfFGyKMY7ItbjdyXQa7oXm7qFWDebGDB2cYY96unduoALB+KxnLfcVp3
 P8+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DrJ7gCAK6Th5zBxxKayy7enXiUTo1ZEKcmR+4YN2Rw4=;
 b=TH2kvGjH44XhfmiE6xLYNAuepOW3ym/RPm9iRxtHmsif0FbzA5E0Atksy6IjdAWO04
 YTL68QI6I7M0L2bbWPNW4utOgFVXESjfsbxsbIjlnQmoNKsyL79OU6M4HXgB64FOddga
 Np6SdXjFFAXHoWd0c68OMQhHJdM0NW1YZfT77bPDNTu0HGbRlxbgqFAUzQAwfAqLSo79
 rAv/mR+STGvNzHg1fhrS66EreqL5u/LnsQBue9fjP1mHyHV6BWflt/4zSYNuE7RnwhS+
 CESr9+n1JF5pqTTWIFzXqbFUh2uZAtdpsu9BHhfy18s05SDstw+GNwUPPWyxccGxmaMA
 2r4g==
X-Gm-Message-State: APjAAAX9L3yQSMhp53bgS45y7b/ZuwOsCSCdNTfiRG0dHyl333488PIR
 pbQz4/uVw154C1ymeWpEhkA=
X-Google-Smtp-Source: APXvYqxtoexV2Br8jSmaU/4tJP8Iab6bCo6mvjsg1ikV6I6du8nGqI0JCuRNkeVLpM+W3vlwGWeyVw==
X-Received: by 2002:a5d:6383:: with SMTP id p3mr11873239wru.34.1565964019972; 
 Fri, 16 Aug 2019 07:00:19 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id z6sm17459434wre.76.2019.08.16.07.00.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 07:00:19 -0700 (PDT)
Date: Fri, 16 Aug 2019 16:00:16 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] ARM64: dts: allwinner: Add devicetree for pine H64
 modelA evaluation board
Message-ID: <20190816140016.GA30445@Red>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <20190812094000.ebdmhyxx7xzbevef@flea> <20190814131741.GB24324@Red>
 <20190814133322.dawzv3ityakxtqs4@flea> <20190816093513.GA25042@Red>
 <20190816113650.hstbi5ntstx3wh4a@flea> <20190816115750.GA24545@Red>
 <20190816135206.pnf3iperzyhcbg4h@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816135206.pnf3iperzyhcbg4h@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_070022_785263_C120A2DF 
X-CRM114-Status: GOOD (  33.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 03:52:06PM +0200, Maxime Ripard wrote:
> On Fri, Aug 16, 2019 at 01:57:50PM +0200, Corentin Labbe wrote:
> > On Fri, Aug 16, 2019 at 01:36:50PM +0200, Maxime Ripard wrote:
> > > On Fri, Aug 16, 2019 at 11:35:13AM +0200, Corentin Labbe wrote:
> > > > On Wed, Aug 14, 2019 at 03:33:22PM +0200, Maxime Ripard wrote:
> > > > > On Wed, Aug 14, 2019 at 03:17:41PM +0200, Corentin Labbe wrote:
> > > > > > On Mon, Aug 12, 2019 at 11:40:00AM +0200, Maxime Ripard wrote:
> > > > > > > On Thu, Aug 08, 2019 at 10:42:53AM +0200, Corentin Labbe wrote:
> > > > > > > > This patch adds the evaluation variant of the model A of the PineH64.
> > > > > > > > The model A has the same size of the pine64 and has a PCIE slot.
> > > > > > > >
> > > > > > > > The only devicetree difference with current pineH64, is the PHY
> > > > > > > > regulator.
> > > > > > > >
> > > > > > > > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > > > > > > > ---
> > > > > > > >  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
> > > > > > > >  .../sun50i-h6-pine-h64-modelA-eval.dts        | 26 +++++++++++++++++++
> > > > > > > >  2 files changed, 27 insertions(+)
> > > > > > > >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > > > > >
> > > > > > > > diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> > > > > > > > index f6db0611cb85..9a02166cbf72 100644
> > > > > > > > --- a/arch/arm64/boot/dts/allwinner/Makefile
> > > > > > > > +++ b/arch/arm64/boot/dts/allwinner/Makefile
> > > > > > > > @@ -25,3 +25,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
> > > > > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
> > > > > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
> > > > > > > >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
> > > > > > > > +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelA-eval.dtb
> > > > > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > > > > > new file mode 100644
> > > > > > > > index 000000000000..d8ff02747efe
> > > > > > > > --- /dev/null
> > > > > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > > > > > > > @@ -0,0 +1,26 @@
> > > > > > > > +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> > > > > > > > +/*
> > > > > > > > + * Copyright (C) 2019 Corentin Labbe <clabbe.montjoie@gmail.com>
> > > > > > > > + */
> > > > > > > > +
> > > > > > > > +#include "sun50i-h6-pine-h64.dts"
> > > > > > > > +
> > > > > > > > +/ {
> > > > > > > > +	model = "Pine H64 model A evaluation board";
> > > > > > > > +	compatible = "pine64,pine-h64-modelA-eval", "allwinner,sun50i-h6";
> > > > > > > > +
> > > > > > > > +	reg_gmac_3v3: gmac-3v3 {
> > > > > > > > +		compatible = "regulator-fixed";
> > > > > > > > +		regulator-name = "vcc-gmac-3v3";
> > > > > > > > +		regulator-min-microvolt = <3300000>;
> > > > > > > > +		regulator-max-microvolt = <3300000>;
> > > > > > > > +		startup-delay-us = <100000>;
> > > > > > > > +		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
> > > > > > > > +		enable-active-high;
> > > > > > > > +	};
> > > > > > > > +
> > > > > > > > +};
> > > > > > > > +
> > > > > > > > +&emac {
> > > > > > > > +	phy-supply = <&reg_gmac_3v3>;
> > > > > > > > +};
> > > > > > >
> > > > > > > I might be missing some context here, but I'm pretty sure that the
> > > > > > > initial intent of the pine h64 DTS was to support the model A all
> > > > > > > along.
> > > > > > >
> > > > > >
> > > > > > The regulator changed between modelA and B.
> > > > > > See this old patchset (supporting modelA) https://patchwork.kernel.org/patch/10539149/ for example.
> > > > >
> > > > > I'm not sure what your point is, but mine is that everything about the
> > > > > model A should be in sun50i-h6-pine-h64.dts.
> > > > >
> > > >
> > > > model A and B are different enough for distinct dtb, (see sub-thread
> > > > on HDMI difference for an other difference than PHY regulator)
> > >
> > > I don't mind having separate DTBs for model A and model B.
> > >
> > > > And clearly, the current dtb is for model B.
> > >
> > > That DTS was added almost a year before the model B was announced, and
> > > no commit to that file mention the model B, so it's definitely not
> > > clear.
> >
> > Normal it was added for model A (without any ethernet/HDMI support,
> > so nothing distinct from model B), and the modelB ethernet/HDMI
> > support cames after.
> 
> Changing the board a DT is meant to halfway through the development is
> definitely not ok.
> 
> > > > So do you mean that we need to create a new dtb for model B ? (and
> > > > hack the current back to model A ?)
> > >
> > > I'd prefer not to hack anything, but yes
> > >
> >
> > Since model A is not public (only evaluations boards exists), the
> > probability of a production model A is low and the current dtb is
> > perfect for model B , could you reconsider this ?
> 
> I mean, you could buy it, so it's definitely public.

Where ? official pineh64 site speaks only of modelB.

> 
> Model A also had HDMI, and it doesn't look like there's anything
> particularly specific with that board.

A subthread just say the opposite, modelA need something more for HDMI
https://lkml.org/lkml/2019/8/12/394

> 
> On the Ethernet side, the only thing that changes is the regulator /
> GPIO being used to enable the PHY?
> 

Yes

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
