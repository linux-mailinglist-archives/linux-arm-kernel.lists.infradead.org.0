Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C023F9003
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 13:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3q5o0x5q6OSMqt6/9yabrMnYeMsQa4W6vt6ruQPHL4=; b=H832ayPthZd7pF
	DfG9DI19pNCX6hHaQNFz4xWeM+mJQPL0Fyc0fRfxGdOQwI6ZzInAMVo3AWCSmIne+f2aIk1lFFFY1
	233imGuxwK6Ty1O7l8PhJ4FK596EHunf2RdrrPGsE3CYBq1prgl4P2TOyNinySQMgsTzr9MU7L4St
	K8bNOw7b+W2BapBZwFXzOyup5ZLZyIz6fXOfKN4YSgztscntpd6VD/IztH5SokUjEiQy8EprubEKN
	C1rvCu2pS6lNy/pqRNf64O2KHlzf11ppbArXu2IiKcTusPJEO+9YGRIDQcHMzRpm//Gk1++lKJjaX
	9DRhyyDAFddEDDHpPZSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVfb-0004vq-9E; Tue, 12 Nov 2019 12:53:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVfR-0004vG-Vw
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 12:53:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id a15so18362946wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 04:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6PdLF3CON3lp+JHyPTH8iGB32KYNSuh1vXTDxtTcv+s=;
 b=lih8wHUSa7JBlyBDdzv3ehKrIStkykUffs0LjwQlGIX1DCqltL0ZDvNUwSrS9mHScW
 z/Kh91aAul5A5bSP7D70WhHFwNHwYfNUEJ3U7Y+WxI49gKH2fvkMyyOVToU6H/XUDxz+
 EakToBLTINmWE0ISpPUfi4qlc6iBtBBKVP5Saa5fLObEBjBDJKn7wbE46mBp0Ov3wXiu
 rhncLWw+b5KjNyRsv3bptwjPhvDE5fOZogP33ulTOyds9WERqwneFyNuYzOK6TqJlDgE
 DlXDWD7IZAFffIkzSYYUchBVxuz2XCAVz8G5KFELxH2O+5HdnkcVhkLALU0G3r7Bc9/P
 ZjaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6PdLF3CON3lp+JHyPTH8iGB32KYNSuh1vXTDxtTcv+s=;
 b=plGI/sK1bB+SKq0UNosWdFS/uKsOgpX0dG/QfG27qTVnmLmHfdEDxfh5h/ReKl1xJz
 1UsWjI4RuFxI+ZtGBFU3cVnq6+Q1CU4YSbK05nqcKHXdYMnnmTUtWAs2QnspJSkcbImR
 5iSCj/Kwv19Y2YVqUhq/GPOqUQ37BTNJ0kO+7Ye9I2r0FQsZTKAGSMscHxQk3W2W+Zww
 ZGE5fDMNOs3uV8YMzrYQZ9lnhpjvmquwZEtpoEeLJhV6mXgQd3TNP3DDbVrzejyatg48
 dYRwYgTq2/7+ZWKZLQ6RiamKXRhAhS3NLf7VDpearGAkkVxmRbEV4v5XACL273BcAaY8
 PZ3A==
X-Gm-Message-State: APjAAAUzIntRHhz1uJywjFfuqQKFo1j5ULpN3lx4iDTTokpT3gjPjlD2
 vhsOynXl03z4TTxhK3Th7MRczw==
X-Google-Smtp-Source: APXvYqwyh6aG2sQ7lJc1UUG8l6HtLNK7oWi0ME1YR2Fm3vqBO9eHCcpDkoRXlWg6DiqsP1+DywQS8w==
X-Received: by 2002:adf:e701:: with SMTP id c1mr17609377wrm.166.1573563188372; 
 Tue, 12 Nov 2019 04:53:08 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id b8sm17748271wrt.39.2019.11.12.04.53.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 04:53:07 -0800 (PST)
Date: Tue, 12 Nov 2019 13:53:05 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v4 2/2] ARM64: dts: allwinner: add pineh64 model B
Message-ID: <20191112125305.GD18647@Red>
References: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
 <1573316433-40669-3-git-send-email-clabbe@baylibre.com>
 <20191112120455.GY4345@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112120455.GY4345@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_045310_029956_566D8A8F 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 01:04:55PM +0100, Maxime Ripard wrote:
> On Sat, Nov 09, 2019 at 04:20:33PM +0000, Corentin Labbe wrote:
> > This patch adds the model B of the PineH64.
> > The model B is smaller than the pine64 model A and has no PCIE slot.
> >
> > The only devicetree difference with the pineH64 model A, is the PHY
> > regulator and the HDMI connector node.
> >
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../devicetree/bindings/arm/sunxi.yaml        |  5 +++++
> >  arch/arm64/boot/dts/allwinner/Makefile        |  1 +
> >  .../allwinner/sun50i-h6-pine-h64-modelB.dts   | 21 +++++++++++++++++++
> >  3 files changed, 27 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
> >
> > diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > index b8ec616c2538..227217bf28df 100644
> > --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> > +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > @@ -604,6 +604,11 @@ properties:
> >            - const: pine64,pine-h64-modelA
> >            - const: allwinner,sun50i-h6
> >
> > +      - description: Pine64 PineH64 model B
> > +        items:
> > +          - const: pine64,pine-h64-modelB
> > +          - const: allwinner,sun50i-h6
> > +
> >        - description: Pine64 LTS
> >          items:
> >            - const: pine64,pine64-lts
> > diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> > index d2418021768b..bda89b9ccb4a 100644
> > --- a/arch/arm64/boot/dts/allwinner/Makefile
> > +++ b/arch/arm64/boot/dts/allwinner/Makefile
> > @@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
> > +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelB.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
> > new file mode 100644
> > index 000000000000..063a85223faa
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
> > @@ -0,0 +1,21 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> > +/*
> > + * Copyright (C) 2019 Corentin LABBE <clabbe@baylibre.com>
> > + */
> > +
> > +#include "sun50i-h6-pine-h64.dts"
> > +
> > +/ {
> > +	model = "Pine H64 model B";
> > +	compatible = "pine64,pine-h64-modelB", "allwinner,sun50i-h6";
> 
> compatibles are usually lowercase, what about pine64,pine-h64-model-b?
> 

Perfect, I will use it.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
