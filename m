Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627935A351
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KI3HKWHsIhy8C/bJ3c+SX/J4eTvdNemsPmk5y6K2azE=; b=rbkSkjAUi5qB8m
	GvtaBd91D2I0sK9n7dhEZ0rKyP2oI5DpXiDjdB7N9EglXooxW2+Vu/d2auFMKvULuCyR7/Pae6Zrv
	3RMEfUgFxFV5x2oV+U//IEXN7/YD0WgFDoOkrMgovgK4R6ZJE7REYLa7in62gHotlWdoHFGntK09N
	A0Qj78Rh7c+9KdJoVteR++wRHFZlucqBJ97LX/ezb/Q6Tx26Lgr1JWCkfuUO16CxxAqftXW27XJFg
	xXdsdeRSF5E0fvaZWcl+CyZyAAK9TTWql3Cj0V4m0+F+/BRz5WAigBWn1/8WTlTDofV+Q+vpLr6Nw
	bu9GgSV3Bz6oWv0RrnyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvRN-0002Yv-Hh; Fri, 28 Jun 2019 18:17:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvRA-0002YG-Jk
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:17:29 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8085208E3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 18:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561745848;
 bh=WEewm/I8ZtGtlarCL0Kn+22mM26dscf3xRKcIsgTilY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KdZqIh+/dbl2KM/DglLXMr8RRiF37wmqzDnSBG0OOrZm88FHZLWeqoZJTAXBew0vE
 RCjqZ8i+TzSFRbw7sKBA+6RRhbA97gu7+V4Kjj7mLzdGTmlYNbqAlR4UNizwRRdYH1
 NqBARTsG3cRq5LJPstp9NwRsswNJMgDrC0qinUmI=
Received: by mail-qk1-f176.google.com with SMTP id i125so5608215qkd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 11:17:27 -0700 (PDT)
X-Gm-Message-State: APjAAAXCXlnWF7oqY0LSsBv099a9ocOtwvnTMHQY9zaDdxYOq0mSM34R
 hnM01DPeSA+zljbuGp9CHXtRWeMi14clfLKyaA==
X-Google-Smtp-Source: APXvYqy3MzvCjB+KLt1OVmFltrR2WiZ5cZ+Oh3r7gZHAGRF19j+S/sbA4Erqc/j0sd6VdXSFeTDa8FH7AclbdRhxYJg=
X-Received: by 2002:a05:620a:1447:: with SMTP id
 i7mr10092989qkl.254.1561745847189; 
 Fri, 28 Jun 2019 11:17:27 -0700 (PDT)
MIME-Version: 1.0
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <e99ff7377a0d3d140cf62200fd9d62c108dac24e.1561649505.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqKQoj6x-8cMxp2PFQLcu93aitGO2wALDYaH2h72cPSyfg@mail.gmail.com>
 <20190627155708.myxychzngc3trxhc@flea>
 <CAL_JsqLhUP62vP=RY8Bn_0X92hFphbk_gLqi4K48us56Gxw7tA@mail.gmail.com>
 <20190628134553.l445r5idtejwlryl@flea>
In-Reply-To: <20190628134553.l445r5idtejwlryl@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 28 Jun 2019 12:17:15 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+OCN6Mbcc0ztheVc7OS2SF12h-=t_7ZGrcqj93x4m08Q@mail.gmail.com>
Message-ID: <CAL_Jsq+OCN6Mbcc0ztheVc7OS2SF12h-=t_7ZGrcqj93x4m08Q@mail.gmail.com>
Subject: Re: [PATCH v4 03/13] dt-bindings: net: Add a YAML schemas for the
 generic MDIO options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_111728_679539_808A95D3 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Jun 28, 2019 at 7:46 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Thu, Jun 27, 2019 at 10:06:57AM -0600, Rob Herring wrote:
> > On Thu, Jun 27, 2019 at 9:57 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > +
> > > > > +        reset-gpios = <&gpio2 5 1>;
> > > > > +        reset-delay-us = <2>;
> > > > > +
> > > > > +        ethphy0: ethernet-phy@1 {
> > > > > +            reg = <1>;
> > > >
> > > > Need a child node schema to validate the unit-address and reg property.
> > >
> > > This should be already covered by the ethernet-phy.yaml schemas
> > > earlier in this series.
> >
> > Partially, yes.
> >
> > > Were you expecting something else?
> >
> > That would not prevent having a child node such as 'foo {};'  or
> > 'foo@bad {};'. It would also not check valid nodes named something
> > other than 'ethernet-phy'.
>
> Right, but listing the nodes won't either, since we can't enable
> additionalProperties in that schema. So any node that wouldn't match
> ethernet-phy@.* wouldn't be validated, but wouldn't generate a warning
> either.

Perhaps I wasn't clear, but it was missing or incorrect 'reg' property
and unit-address format checks that I was thinking about. Just like we
have for SPI.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
