Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825C2ADA12
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtYmPnvamLSUX9QliWKZ9gDGIGvU3oJsJv9oh1O8N4o=; b=eTJApX6/fBLZaT
	j2ZeLwyyLYwAq+LbsO2TJLU8K4OqWt0Kf0CVHMFV3GNJRo5H42Kve94T+99g0MCGsOtqWtTi3mdzy
	QsG+qF5NBXN0TOP8GjeOaOqPWTZpSAMy3wyfMqz1wVNzTkJx7BDOLGCIVbWMW+44qU3Z768uQOof5
	jvIf7It24bbF+tb9mrAAL6hsJ00M4FaoSAgwxuf95l8r0SkT7kyjeU030/axThDkBz4zfcG2zrSO8
	pfEKpAp46NG/kVxmecbAWEEaTUaO3QXHGOTtyc6XQul6wg6D3nVSxbuinnX8ZY+plygLNEydTyk6V
	8kPqKrkcAipkDn/r6qDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JrK-00067S-H9; Mon, 09 Sep 2019 13:37:34 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Jr8-00066y-Be
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:37:23 +0000
Received: by mail-io1-xd41.google.com with SMTP id m11so28733087ioo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 06:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yh5I34I3F+kfotLecJXxZJWCxaSx2fVhdlna36vlC/Q=;
 b=aMjYbIgkkBOM4kFGelnj0CRr0XsK616LuEIBdWHa9oQUjj0CAGINRicUeroEu9gczK
 S4rD+z3DtU83yn88vV/t8iPfliEYHa29cYU0+0KKObloJYilOTnlM/Sa+sVi1JW4J5pX
 v0E73NBQ8LSkMYfyRJSaimQ8uBE0hNloy9kq/q9JapEbnJa14f/df4kHpswzkb+F0E0A
 mC6ki7e6q674qnVL5OrCPCgG24lGF5mnBpC7x7j92FeFALc37r2hywEdPpj23cySjR2e
 C2QCUC47GcJrWxOMYvoXMUOXRn3zDs4IZsu3nCVxa6vYz3Bh9LoRSH1QKkvS2QfC0Axb
 jiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yh5I34I3F+kfotLecJXxZJWCxaSx2fVhdlna36vlC/Q=;
 b=ic8uNQ1brfJQHgz+UAVh1d5PjVz5lAd1Hfn71cPeRdFW51aGWlowCzZMd8Y0i3MFqv
 afBy8Vq4ZoFtkp/f0AjYNQTqkvCLMYBMgaIwozBzY01CQiTt9bFTNcsGWWJkfkLz3daY
 8dRQd9vVRQsFo2M8mnjRQD+sWOegcIvw64cnGdaQry4qd57ZwBuylqpYb6xAuz9xmWQb
 ibvGIgZSbn0Cd3PkX6fvmr5M4xeZIKDd5M/zyrSrzZQfLgFzpnlSNT4hibD/YwSIapAp
 MJiPSuXJshPqWW3pP9KsSKTyptlzVB8CdnmuPwC34iq3kLc5HXJJi3klRaciKNcx9aj3
 Sfug==
X-Gm-Message-State: APjAAAW971hu2+SbkbeODWhU07hiPWNzbbqTUKN+WlKQ4Yexi/B7VyDh
 TWtau0XNgb8zkXYfEosMvIm/WqglXICf2+KdpO0=
X-Google-Smtp-Source: APXvYqyp7hx2ZCMIfDI5DkTtuxBM/fx0HuShxFbt9jNMkXe/jgYYg8kF8aWEGdXk2I4SrI2LI8SYRU+FTsVSCybZo4Y=
X-Received: by 2002:a6b:8e92:: with SMTP id q140mr4178546iod.205.1568036240538; 
 Mon, 09 Sep 2019 06:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
In-Reply-To: <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 9 Sep 2019 08:37:09 -0500
Message-ID: <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_063722_429584_A5764F25 
X-CRM114-Status: GOOD (  27.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 7:13 AM Adam Ford <aford173@gmail.com> wrote:
>
> On Thu, Sep 5, 2019 at 6:04 PM Tony Lindgren <tony@atomide.com> wrote:
> >
> > Hi,
> >
> > * Adam Ford <aford173@gmail.com> [190828 15:01]:
> > > The datasheet for the AM3517 shows the RNG is connected to L4.
> > > It shows the module address for the RNG is 0x480A0000, and it
> > > matches the omap2.dtsi description.  Since the driver can support
> > > omap2 and omap4, it seems reasonable to assume the omap3 would
> > > use the same core for the RNG.
> > >
> > > This RFC, mimics much of the omap2 hwmods on the OMAP3. It
> > > also adds the necessary clock for driving the RNG.  Unfortunately,
> > > it appears non-functional.  If anyone has any suggestions on how
> > > to finish the hwmod (or port it to the newer l4 device tree
> > > format), feedback is requested.
> >
> > Yup I'll take the bait :) The patch below seems to do the trick
> > for me on dm3730 based on translating your patch to probe with
> > ti-sysc.
> >
> > Not sure about 34xx, it seems we're missing rng_clk? Care
> > to give it a try and attempt simlar patches for 34xx and
> > 3517?
> >
> > At least I'm not needing the "ti,no-reset-on-init" property
> > that your patch has a comment for. Maybe that's needed on
> > some other omap3.
> >
> > Oh and this needs to default to status = "disabled" for
> > HS devices like n900 as it needs to use the omap3-rom-rng.
> >
> > Regards,
> >
> > Tony
> >
> > 8< -----------------------
> > diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
> > --- a/arch/arm/boot/dts/omap36xx.dtsi
> > +++ b/arch/arm/boot/dts/omap36xx.dtsi
> > @@ -140,6 +140,29 @@
> >                         };
> >                 };
> >
> > +               rng_target: target-module@480a0000 {
> > +                       compatible = "ti,sysc-omap2", "ti,sysc";
> > +                       reg = <0x480a003c 0x4>,
> > +                             <0x480a0040 0x4>,
> > +                             <0x480a0044 0x4>;
> > +                       reg-names = "rev", "sysc", "syss";
> > +                       ti,sysc-mask = <(SYSC_OMAP2_AUTOIDLE)>;
> > +                       ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> > +                                       <SYSC_IDLE_NO>;
> > +                       ti,syss-mask = <1>;
> > +                       clocks = <&rng_ick>;
> > +                       clock-names = "ick";
> > +                       #address-cells = <1>;
> > +                       #size-cells = <1>;
> > +                       ranges = <0 0x480a0000 0x2000>;
> > +
> > +                       rng: rng@0 {
> > +                               compatible = "ti,omap2-rng";
> > +                               reg = <0x0 0x2000>;
> > +                               interrupts = <52>;
> > +                       };
> > +               };
> > +

I applied this on 5.3 and it is working.  I assume the same is true in for-next.

Do you want to submit a formal patch?  I  can mark it as 'tested-by'
This really helps speed up the startup sequence on boards with sshd
because it delays for nearly 80 seconds waiting for entropy without
the hwrng.

adam
>
> Tony,
>
> Can you tell me what branch you're using?  I am not seeing the note
> below, so I am not exactly sure what version to base my testing.
>
> ada,
> >                 /*
> >                  * Note that the sysconfig register layout is a subset of the
> >                  * "ti,sysc-omap4" type register with just sidle and midle bits

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
