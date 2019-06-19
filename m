Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B504C283
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwEzRdkHEcZ7/wInxpxOaeM4YwvHcQThHXZxH8+7JZU=; b=VVqQrIjevNslCL
	aSfqOPPw0MOQ3EbPwTIMG30BvWIlSarhjrQJFIjysxe/6mJW61S7TPLLXITAW/pcpAiBNjB1zwgyR
	04uab/AyO/8C11fr1NFYAK/FMnxZ3cEejU6uGcDQqc07gy2Atts/NgaAWthcDCYQz25N9EsB+XtmK
	OQngvmktboPrb0v2JtEZ4A+SCuVTOfR4ZkVsXSq4sL+Uv2LxvDUK/ERVRHlEbkGbVz4yc2YqMcUI3
	h/PFnwLU7CPAAlimRWPWIvqOV88yIVjna9RkfXtqGMdXph1FbxxvrOie96sEa0ybP8myyFTtgEXU+
	esfVZ0PRERZ3fent1cnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdhRf-0003i8-Eq; Wed, 19 Jun 2019 20:44:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdhRU-0003hc-CO
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 20:44:29 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB638217F5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 20:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560977066;
 bh=PtdbT4+WZVrSzw4byKsl98ZDeoGvcEoZe9NmCjzp7NY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SmxtmjKiyfEWKKyjPAThNkWlA5SttyK01pMv/kTD8l61XVCe/7BjNti98SwgjiM/T
 Q/ahTcG4e9SA1rQsFe1ZB5NVqF2LhqmjCO1o/p9OPoT0RoY5z/E168ZjUBv83d197K
 Ta3vGJjMlOIct4TbSa/GiCtdVq8NU897XITaTlQ4=
Received: by mail-qt1-f177.google.com with SMTP id j19so652842qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 13:44:26 -0700 (PDT)
X-Gm-Message-State: APjAAAXUlwzFxVua+pmderaXPFst4Q46uEMaxikiRtrvIjGm1+lAoX23
 33JPWtTJ2GTVmA1nS3y0RfsiXv5ymMkFzNMXiA==
X-Google-Smtp-Source: APXvYqyVAwxgOJDLFwnKUkBgoRpv1RMyh0FtU2bURQqffQhs//0pjSXX6+r6qT6fEnddczKAAfSd98UZabnH3BaOarM=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr106885352qtb.224.1560977065877; 
 Wed, 19 Jun 2019 13:44:25 -0700 (PDT)
MIME-Version: 1.0
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <e7c13fc3c4e287df6292dbee27ae1caeca0c06c4.1560937626.git-series.maxime.ripard@bootlin.com>
 <CAL_Jsq+A+jspyCpu9USL6FQ9y5qL_yqYS=DTE=aM5YzyeZwd0w@mail.gmail.com>
In-Reply-To: <CAL_Jsq+A+jspyCpu9USL6FQ9y5qL_yqYS=DTE=aM5YzyeZwd0w@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 Jun 2019 14:44:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLUDKi8jcJ=eZOAR9-ECX0bo9F8+d59sokWGOJzph_q7w@mail.gmail.com>
Message-ID: <CAL_JsqLUDKi8jcJ=eZOAR9-ECX0bo9F8+d59sokWGOJzph_q7w@mail.gmail.com>
Subject: Re: [PATCH v3 06/16] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_134428_455642_3508DA00 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 8:46 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Jun 19, 2019 at 3:48 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Switch our Allwinner A10 EMAC controller binding to a YAML schema to enable
> > the DT validation.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > ---
> >
> > Changes from v2:
> >   - Switch from the deprecated phy property to phy-handle
> > ---
> >  Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt      | 19 -------------------
> >  2 files changed, 55 insertions(+), 19 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun4i-emac.txt
> >
> > diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
> > new file mode 100644
> > index 000000000000..2ff9e605cd26
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
> > @@ -0,0 +1,55 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/allwinner,sun4i-a10-emac.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A10 EMAC Ethernet Controller Device Tree Bindings
> > +
> > +allOf:
> > +  - $ref: "ethernet-controller.yaml#"
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: allwinner,sun4i-a10-emac
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  allwinner,sram:
> > +    description: Phandle to the device SRAM
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - phy-handle
>
> Doesn't this throw an error if not listed in properties?

NM, it doesn't.

Reviewed-by: Rob Herring <robh@kernel.org>

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
