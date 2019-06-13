Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDA2449C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAFSfozk8rQqAZqV9ssGgEP49U5l5CJBxQgJGxH5rr8=; b=Js2F5OdbS79W9r
	btTqb4CMBKKRPP2x8QDI7sTWQurw31t+7S5EW2Y6KnW+NKyAouPD7SMaIpTEUvl7pZ5WibE/en5V+
	VWJz43xDQqj2RUPavA3N70jDUuGTx4Gw5BoeXtPUY/9Chb0b+5i5eiKuD7XdW8rn3mgDrFgYB4Joh
	PTYC3TsuIeVCFnoYoVVn7uEcB2bciyDJQJH30tM57/DfACBj+ftMltn8ZvZVAaF3ZqsnSHo+Lm84V
	Pyhfn4MqScZS0x4Dboys4z+5sqydSCSWm8sXUrfWI20rNfsdpHZxx6u5+aqVky+4qKLitRuAbclPl
	iHCL4sqA9b9mhQ4yO74w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbTaq-0007ZA-JD; Thu, 13 Jun 2019 17:32:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbTad-0007Yj-Qw
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 17:32:45 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E5E62190D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 17:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560447163;
 bh=Z9+nxGUJArxeFNYRLc7IZW2T3WdcyvPDoWI9vdbOCxs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PS5kC4e73Tv2xsIzb5MWZQ9bzHBAklZop5cN4+cyF5arB+Vn5FbzZ2fgmpJcKv7gO
 eGC+3fD3AqJbh7v46e3A0F9+quva2hYH3aB99ktr2A9pBGHLSOdwY5ODN9Kkxc01uZ
 ErQYE9mGDWs8yus4piR5x1SKr32Vxm8ZVwHa3U5s=
Received: by mail-qk1-f176.google.com with SMTP id s22so13280348qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 10:32:43 -0700 (PDT)
X-Gm-Message-State: APjAAAUhQi8PBptWPt7H7pT/xtWZDA32zb/d1ZLXVfqopuSr7WG+CO/G
 azSwQVbdI8rBGcFwBBdUQ7kmQr6/jLny3CXAEQ==
X-Google-Smtp-Source: APXvYqyQf5z98o/AaM03N71A5iiVUyUqY3CW7taVTqWxgwcOdoed18snklLHmhUZo6pOY3PC3itTfd1UgNrr739MpLY=
X-Received: by 2002:a37:a6c9:: with SMTP id
 p192mr74202516qke.184.1560447162583; 
 Thu, 13 Jun 2019 10:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <d198d29119b37b2fdb700d8992b31963e98b6693.1560158667.git-series.maxime.ripard@bootlin.com>
 <20190610143139.GG28724@lunn.ch>
 <CAL_JsqJahCJcdu=+fA=ewbGezuEJ2W6uwMVxkQpdY6w+1OWVVA@mail.gmail.com>
 <20190611145856.ua2ggkn6ccww6vpp@flea>
In-Reply-To: <20190611145856.ua2ggkn6ccww6vpp@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Jun 2019 11:32:30 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+KwH-j8f+r+fWhMuqJPWcHdBQau+nUz3NRAXYTpsyuvg@mail.gmail.com>
Message-ID: <CAL_Jsq+KwH-j8f+r+fWhMuqJPWcHdBQau+nUz3NRAXYTpsyuvg@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_103243_907207_8ED5722E 
X-CRM114-Status: GOOD (  24.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
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

On Thu, Jun 13, 2019 at 7:25 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Mon, Jun 10, 2019 at 12:59:29PM -0600, Rob Herring wrote:
> > On Mon, Jun 10, 2019 at 8:31 AM Andrew Lunn <andrew@lunn.ch> wrote:
> > >
> > > > +required:
> > > > +  - compatible
> > > > +  - reg
> > > > +  - interrupts
> > > > +  - clocks
> > > > +  - phy
> > > > +  - allwinner,sram
> > >
> > > Quoting ethernet.txt:
> > >
> > > - phy: the same as "phy-handle" property, not recommended for new bindings.
> > >
> > > - phy-handle: phandle, specifies a reference to a node representing a PHY
> > >   device; this property is described in the Devicetree Specification and so
> > >   preferred;
> > >
> > > Can this be expressed in Yaml? Accept phy, but give a warning. Accept
> > > phy-handle without a warning? Enforce that one or the other is
> > > present?
> >
> > The common schema could have 'phy: false'. This works as long as we've
> > updated (or plan to) all the dts files to use phy-handle. The issue is
> > how far back do you need kernels to work with newer dtbs.
>
> I guess another question being raised by this is how hard do we want
> to be a deprecating things, and should the DT validation be a tool to
> enforce that validation.
>
> For example, you've used in you GPIO meta-schema false for anything
> ending with -gpio, since it's deprecated. This means that we can't
> convert any binding using a deprecated property without introducing a
> build error in the schemas, which in turn means that you'll have a lot
> of friction to support schemas, since you would have to convert your
> driver to support the new way of doing things, before being able to
> have a schema for your binding.

I've err'ed on the stricter side. We may need to back off on some
things to get to warning free builds. Really, I'd like to have levels
to separate checks for existing bindings, new bindings, and pedantic
checks.

For '-gpio', we may be okay because the suffix is handled in the GPIO
core. It should be safe to update the binding to use the preferred
form.

> And then, we need to agree on how to express the deprecation. I guess
> we could allow the deprecated keyword that will be there in the
> draft-8, instead of ad-hoc solutions?

Oh, nice! I hadn't seen that. Seems like we should use that. We can
start even without draft-8 support because unknown keywords are
ignored (though we probably have to add it to our meta-schema). Then
at some point we can add a 'disallow deprecated' flag to the tool.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
