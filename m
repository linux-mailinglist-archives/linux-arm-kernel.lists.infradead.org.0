Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CA3E2038
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kccCCq418GVy9NdTuLfjIi4oHqdXid22h2i9sBR24Bg=; b=fIWcSrYjMDoP2Z
	V4SZCHqehD6TOUFrLxd0Al7y1Wk2lGVnc/+Bh+icXX8R1YNFHK+6yL9oRkV0M7VTZnq8B+UlSJ83f
	l2BPTUdIFIqsrOo6q19dOH3pQsCsF18Isz3vr2JcL06gVPQ58Dl53/o2qIiObFJS2eOK0BRMq6UUZ
	5owKTob7OBRBoG72l+8nZLi/0dDTa2FpuEL8QXhQt2sAgnnkUTWwu1InFYyCtUn/8WHRJbpYmvUZ4
	u6FY1PAnHqCTAsK0B17MwTOiGYzc32tJD1/WHWCabJqGDQgAaybtKZAxp3J/kwdya0pJFFeJIHyYm
	Ubv3a3dmeBZBjWR5MbRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJEf-0005FC-Rg; Wed, 23 Oct 2019 16:11:45 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJEW-0005Du-RS
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:11:38 +0000
Received: by mail-ed1-x543.google.com with SMTP id h2so16210416edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 09:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LEjYGuFDJrMtrXX28Gh+2EM+3SRNT/CDGLTrMQV4RPQ=;
 b=luap40pq1IOiaysCcwqoFg5JhvjuYI58xG336hxCAjC5t7l0ZIBbxPCs9DtlY4XHE8
 m30O1POKuGyjb8TrPzy5UnowNQur79oppVRXH6t2HJ76jY8QPjgsg+ZAVnbZrWaYaLM/
 /8Jxd28WWa5LVaCpHkf7W9CJbcdduXyUdTQU64VZmn8MmJOG3yewBiXxgy6L+L0t2eOd
 EKRbooz7We/J/CEDWQMGe5ZvPJKN8oqzBG1us9KPJ/MsC6zvuHfeZUJ3dhkQRU//0q0I
 RaeEW+mf6/vwdSrnKYbg7Nx024JnlPrBWNljq5oAGt1xQ6ltJmkE1h0jxjuwE2erAtLF
 9h2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LEjYGuFDJrMtrXX28Gh+2EM+3SRNT/CDGLTrMQV4RPQ=;
 b=JoCkxh4ro4GDA1yvDwsGBBSyWBSSKcqiRs2tSD/lj7Pa03/bt9QJznwGmNPkyq/gMS
 bbA6qARzxRWufUIlNNd8cAcqsSoCY6ANrmtLIvMPRS7pRyy3QgJ6WDST4+xpanYJ00g9
 DOvdzvW7C8wUZmYS8PuS6Pg0LBkrD7fIrMvzXh9bxLeWTB0tS8VxuhYwR+V7/V3kLh7s
 qe0rbPqYnBBnVzv9UZZw8AEOUicmUF1I8lvdFwmXCtXELcmz63dfrQEwnxY9l+P8Dasj
 FyNikYAWBnxPYp6gYz5YukQWIU3a77AsE8xNe5HWtgjdur7CJUdbdCShBvKflXjYWp3C
 hgNg==
X-Gm-Message-State: APjAAAX2vA1jgnU8S88w8qvq3iBAtprktT+3xUhut/LBSQu96MJFMkmd
 Ahn6/JjKeC/9grDBnBFJSLQ=
X-Google-Smtp-Source: APXvYqz6G69Xr/QHHsEOv7Z9RPjQiaDFNG9k4aq6vlk+hxuv9mV24MHbULGrRGBGRc6JlOGNv7h/Og==
X-Received: by 2002:a17:906:6087:: with SMTP id
 t7mr33950448ejj.58.1571847093904; 
 Wed, 23 Oct 2019 09:11:33 -0700 (PDT)
Received: from localhost (ip1f113d5e.dynamic.kabel-deutschland.de.
 [31.17.61.94])
 by smtp.gmail.com with ESMTPSA id p9sm68270edx.4.2019.10.23.09.11.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 09:11:32 -0700 (PDT)
Date: Wed, 23 Oct 2019 18:11:32 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCHv6 2/2] ARM: dts: Add support for i.MX6 UltraLite DART
 Variscite Customboard
Message-ID: <20191023161132.GD20321@ripley>
References: <1569342022-15901-1-git-send-email-oliver.graute@gmail.com>
 <1569342022-15901-3-git-send-email-oliver.graute@gmail.com>
 <20191014072047.GG12262@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014072047.GG12262@dragon>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_091136_911697_A068E2E0 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 m.felsch@pengutronix.de, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/10/19, Shawn Guo wrote:
> On Tue, Sep 24, 2019 at 06:20:21PM +0200, Oliver Graute wrote:
> > This patch adds DeviceTree Source for the i.MX6 UltraLite DART NAND/WIFI
> > 
> > Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > Changelog:
> > v6:
> >  - added some muxing
> >  - added codec in sound node
> >  - added adc1 node
> > 
> >  arch/arm/boot/dts/Makefile                      |   1 +
> >  arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts | 221 ++++++++++++++++++++++++
> >  2 files changed, 222 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index a24a6a1..a2a69e4 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -579,6 +579,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
> >  	imx6ul-tx6ul-0010.dtb \
> >  	imx6ul-tx6ul-0011.dtb \
> >  	imx6ul-tx6ul-mainboard.dtb \
> > +	imx6ul-var-6ulcustomboard.dtb \
> >  	imx6ull-14x14-evk.dtb \
> >  	imx6ull-colibri-eval-v3.dtb \
> >  	imx6ull-colibri-wifi-eval-v3.dtb \
> > diff --git a/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> > new file mode 100644
> > index 00000000..031d8d4
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts
> > @@ -0,0 +1,221 @@
> > +// SPDX-License-Identifier: (GPL-2.0)
> > +/*
> > + * Support for Variscite DART-6UL Module
> > + *
> > + * Copyright (C) 2015 Freescale Semiconductor, Inc.
> > + * Copyright (C) 2015-2016 Variscite Ltd. - http://www.variscite.com
> > + * Copyright (C) 2018-2019 Oliver Graute <oliver.graute@gmail.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/input/input.h>
> > +#include "imx6ul-imx6ull-var-dart-common.dtsi"
> > +
> > +/ {
> > +	model = "Variscite i.MX6 UltraLite Carrier-board";
> > +	compatible = "variscite,6ulcustomboard", "fsl,imx6ul";
> 
> The compatible needs to be documented.

I'am not sure if I got this right. Is this the way to document it?
or is there more to do?

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 41db01d..3ed497b 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -173,6 +173,7 @@ properties:
               - armadeus,imx6ul-opos6uldev # OPOS6UL (i.MX6UL) SoM on OPOS6ULDev board
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
               - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
+              - variscite,6ulcustomboard" # i.MX UltraLite Carrier-board
           - const: fsl,imx6ul

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
