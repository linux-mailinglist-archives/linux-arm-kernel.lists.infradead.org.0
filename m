Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186876B812
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBD2XjpWsIjVzksfLuXZSMCu+nS6QLXEVAqPkUU7iBE=; b=Tl43TrCX9FO599
	J6Jh4gHMPZhPNaOowALxjdauV+KRD5NRGP/+vXPD2v/memF7+k+DoZlXaIUe5uCNjLT5PjsuRrxOn
	zcW4pRb8ysiw3js4fhqL1qyz8EL2s2LMkwp4deVgrI358qwfChuosY92Jw4ImRQJMHkATQ4QsyVLY
	VbZQT8/euP5HvIy4Rq8Nn4RD/9o8+h81+ZNoQWuLz8ip40WeebFRdVIVeYqFUcE7AZ0YOkiuGOrJB
	mBMw6bEyKvq6+XB3x34NbhByc3AaMHdI8O0Ml+DnqUIYUq8+rimbGH1PsijDxFXmCWnTpa3OnPoW2
	xydA7Kd3UIj7RKCnq+aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfBI-0007VV-Ih; Wed, 17 Jul 2019 08:20:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf8b-0004AF-1C
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:18:10 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A960C217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 08:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563351488;
 bh=5GNQoM7T3OZ2EwjYuZ7fJtx8Y6qQF3hP9lT0ttHPpvQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BMk82FbNEX+ScgsGCO0TrFEo5sKOIUbK5ki+a7Wp3dBgcRxNpGjwSOStaJ8QPCblm
 KAKapKaVZTat/7/27NdE3ZLBc2oBo1+69lm3o387UzZc5uNX5PEPq7pqZHF0/lmGFM
 OoSvbBOnZkfov7Tz20pMcQ1yN75tnvNVZPksyyuk=
Received: by mail-lj1-f173.google.com with SMTP id r9so22694588ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:18:07 -0700 (PDT)
X-Gm-Message-State: APjAAAVRzRuGDe/JcTA21TQZd0yx7JkkQ8GwgXLs+CuNDRt7Tg5sNZNK
 VyPEcxq6xa4ojFzDx18iAKHpaXbbofu3yU2cSfc=
X-Google-Smtp-Source: APXvYqylYz7gNmzlXqUoO2oJVnfuYOhDlPlxB7yrdES0wr8vBhhh8uj9yF8LJHi/hEx9u2UnvjdI9FfTGNOF6wdZ8Fc=
X-Received: by 2002:a2e:3008:: with SMTP id w8mr20519868ljw.13.1563351485856; 
 Wed, 17 Jul 2019 01:18:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190712141242.4915-1-krzk@kernel.org>
 <cde6f251-4b15-a4f0-57ed-ca2ed014b511@kontron.de>
In-Reply-To: <cde6f251-4b15-a4f0-57ed-ca2ed014b511@kontron.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 10:17:54 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcLdfo6XCc--HneYjCHOYKdKgWDBDSVjxQBR+pc+1mcfg@mail.gmail.com>
Message-ID: <CAJKOXPcLdfo6XCc--HneYjCHOYKdKgWDBDSVjxQBR+pc+1mcfg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6ul-kontron-ul2: Add Exceet/Kontron iMX6-UL2
 SoM
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011809_147125_51596BE9 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jul 2019 at 17:38, Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> Hi Krzysztof,
>
> On 12.07.19 16:12, Krzysztof Kozlowski wrote:
> > Add support for iMX6-UL2 modules from Kontron Electronics GmbH (before
> > acquisition: Exceet Electronics) and evalkit boards based on it:
> >
> > 1. i.MX6 UL System-on-Module, a 25x25 mm solderable module (LGA pads and
> >     pin castellations) with 256 MB RAM, 1 MB NOR-Flash, 256 MB NAND and
> >     other interfaces,
> > 1. UL2 evalkit, w/wo eMMC, without display,
> > 2. UL2 evalkit with 4.3" display,
> > 3. UL2 evalkit with 5.0" display.
>
> We will use a new naming scheme for these and other boards. The new
> names would be:
>
> 1. Kontron N6310 SOM    (i.MX6UL SoM with 256MB RAM/NAND)
> 2. Kontron N6310 S      (Evalkit with SoM)
> 3. Kontron N6310 S 43   (Evalkit with SoM and 4.3" display)
> 4. Kontron N6310 S 50   (Evalkit with SoM and 5.0" display)

OK (and OK for all other comments which I will skip below).

(...)

> > +
> > +     memory@80000000 {
> > +             reg = <0x80000000 0x10000000>;
> > +     };
> > +};
> > +
> > +&cpu0 {
> > +     clock-frequency = <528000000>;
> > +     operating-points = <
> > +             /* kHz  uV */
> > +             528000  1175000
> > +             396000  1025000
> > +             198000  950000
> > +     >;
> > +     fsl,soc-operating-points = <
> > +             /* KHz  uV */
> > +             528000  1175000
> > +             396000  1175000
> > +             198000  1175000
> > +     >;
> > +};
>
> What's the reason behind overwriting the operating-points and setting
> clock-frequency? Doesn't imx6q-cpufreq.c already read the speed grades
> from the hardware and adjust the operating-points accordingly?

Good point. From the driver point of view overwriting of opps is not
needed. As you said, the driver will adjust the speed to the reported
grade. This could have meaning for the completeness of hardware
description however I see that there are no even bindings for CPU and
other boards do not overwrite it. I'll skip it then.

(...)

> > +
> > +     regulators {
> > +             compatible = "simple-bus";
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
>
> We copied this from some other devicetree and I'm not sure in what case
> we should really group the regulators in a simple-bus, or what's the
> reason behind this. But others do it like this, so it's probably not so
> wrong.

Either simple-bus with regulator@address or unique regulator node
names (regulator-1, no unit address). Both are popular but I think in
recent submissions and comments Rob Herring was proposing the second
option - unique regulator names without addresses. I can use such
approach (unless DTC complains).

Thanks for review and feedback!

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
