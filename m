Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AE28D471
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsQ1XtV2OP5HMjbFBJFHs0ytaVKqtNhEG0ibkePilnQ=; b=D9tJ/g24MGa1kc
	nr/XGlU0Lx1u/XM87uUur6T7QiNSg0ICoVPNyX+FVn1sycqG/Q8MgOdzww2R+Nt6lsyq81lEozvhW
	9hcjwk3ZJ0pM84qitLuuIEshCrIIyfXI/tr8unkS6Lxcs+GnB8tKyQ5xt2GYQeVbxdjxCdE6JyAuW
	b7Q5vr4M+lmEELgJID8A3u5LQZpQQ5cKUu0rgvgT+iOKQuYGV26I1izRUS1CqgOqDIYsBnHqukLYe
	KkvpMNrq4ivLqakRqVVFgmwahGTvHfLg55IYTnKK7m2dSpz11Cu3VOiXCLTyBfkvxV6ElGVvDxdno
	ZWfiJWDAQjlxR3wh3Znw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtAD-0000Oj-Di; Wed, 14 Aug 2019 13:18:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxt9t-0000OH-EV
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:17:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id v15so4589026wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 06:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nS6Loe3dK2UTdjVnUqv6CIxQZ7HLkH2zfcjivNgRpLI=;
 b=Zstxc6VWuoKtV4f2t4/yQqpkkiSpCt0jCdEjaNorkg6qw5woV6qyP9v8JWsyA8ZuOt
 /WnDUf0dSeDEWj/PAKCDrJ8IoJSSykuqSCLdfb6w9WCGGaxWLchVQuhxFZkIskUQlYQb
 T5RrK+coEHnYcGUOVF/rvrQ9OaKvZgnrcRgqkD9pYV1LRsLuT6sGAcK0QMqPBiFI8w2E
 /RWCFVO6rkHW2TLCb7OtOIsO0ml1bZipVmxg80XptSy4wMtejdVqliL+5td8y9pLuLzZ
 WjJAZGt1oQw8l+tn2qd8VdYcb5N5Y6tyBDIngHHjnvdICkIG0MGTV9RE+i1ekBVvfcle
 bNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nS6Loe3dK2UTdjVnUqv6CIxQZ7HLkH2zfcjivNgRpLI=;
 b=FPqVVlg6ywsiQNng1ozhy8QBmKoEqthIHX59IVhuVPg9Vrgt7xuahSyfeYR88SCifV
 mHvTS0DxEbt25XNVBGPE7ReSOYueSW0RjLtTSv9/qRrCbPNpofztqgD2E5Dhpk8Kg8+B
 GggodBF7PfvYr6FCvdw8EtiFmS3C9n8FSEUZxugF7uc6wjw75sZsKqrwNxRFNRiJcDBZ
 d2HmEzSdhLfr96Rf191RH2kRb/3oh8lryLEPwRBipP50Y/LTDXspdemMDPoEq7R5XcM9
 rZdbkC51XLx8OHB1YGuNFxdfHxpCmMIM8QtV+UXpzofKwKZhVji6iz85xpSUH8pzh87m
 uxww==
X-Gm-Message-State: APjAAAWkZdp+ycEBFhMZt4jUekaTPuD8EYO0grKd+INiDAXDkXuLPjBN
 wwRrMADppVmuC7jhYbdjr+I6r+h8
X-Google-Smtp-Source: APXvYqxEJnurre1B5JoWb8cf3F3YIYMlaRMIrlAd55zm6bKAjBTJgzAROO6F0J1wzlQqcLA0Kev2zA==
X-Received: by 2002:a7b:cf2d:: with SMTP id m13mr8525569wmg.120.1565788664121; 
 Wed, 14 Aug 2019 06:17:44 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 k124sm10155041wmk.47.2019.08.14.06.17.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 06:17:43 -0700 (PDT)
Date: Wed, 14 Aug 2019 15:17:41 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] ARM64: dts: allwinner: Add devicetree for pine H64
 modelA evaluation board
Message-ID: <20190814131741.GB24324@Red>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <20190812094000.ebdmhyxx7xzbevef@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812094000.ebdmhyxx7xzbevef@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_061745_761767_D651DB6C 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Aug 12, 2019 at 11:40:00AM +0200, Maxime Ripard wrote:
> On Thu, Aug 08, 2019 at 10:42:53AM +0200, Corentin Labbe wrote:
> > This patch adds the evaluation variant of the model A of the PineH64.
> > The model A has the same size of the pine64 and has a PCIE slot.
> >
> > The only devicetree difference with current pineH64, is the PHY
> > regulator.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
> >  .../sun50i-h6-pine-h64-modelA-eval.dts        | 26 +++++++++++++++++++
> >  2 files changed, 27 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> > index f6db0611cb85..9a02166cbf72 100644
> > --- a/arch/arm64/boot/dts/allwinner/Makefile
> > +++ b/arch/arm64/boot/dts/allwinner/Makefile
> > @@ -25,3 +25,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
> > +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelA-eval.dtb
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > new file mode 100644
> > index 000000000000..d8ff02747efe
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
> > @@ -0,0 +1,26 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> > +/*
> > + * Copyright (C) 2019 Corentin Labbe <clabbe.montjoie@gmail.com>
> > + */
> > +
> > +#include "sun50i-h6-pine-h64.dts"
> > +
> > +/ {
> > +	model = "Pine H64 model A evaluation board";
> > +	compatible = "pine64,pine-h64-modelA-eval", "allwinner,sun50i-h6";
> > +
> > +	reg_gmac_3v3: gmac-3v3 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc-gmac-3v3";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		startup-delay-us = <100000>;
> > +		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +	};
> > +
> > +};
> > +
> > +&emac {
> > +	phy-supply = <&reg_gmac_3v3>;
> > +};
> 
> I might be missing some context here, but I'm pretty sure that the
> initial intent of the pine h64 DTS was to support the model A all
> along.
> 

The regulator changed between modelA and B.
See this old patchset (supporting modelA) https://patchwork.kernel.org/patch/10539149/ for example.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
