Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5331A128E99
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:58:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rxwnd0NQ+YtOUDiy9VKwaaIucIryaMvTOli3AUtQtHE=; b=NtuukHaBcB1L2r
	VCmjb7L7MfQ8lhAo1EBzcRw0mGiEUX/Ejg36zT1Ar1hlzHORV//bP21IQnxCtX9veGqcY+BiawC43
	c1xqJGPRZNgatonLys9tkUlH3iT5bkWahKdgySXhGwVbG7SPvP10aeTxiPupCd7BoDY3mPjg4T2AL
	oggdrKVC7oPUsx5xyhC2XZ2Ma0oTM3b9FlaMwDTNSROFzY98+RnDuFjUYwWdGPTEpjGogt7RM43Ec
	kRHdbM8UMmJEQNcuVhLg6Xfc+zYasq2WIVSBzi29Xbo448fcomxspGf8EDkO3HwlegUgD36JdhiBC
	V/wl5mkIZSNgeFeL3ogQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij2gz-0001v9-G4; Sun, 22 Dec 2019 14:58:49 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij2gq-0001qr-05
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:58:41 +0000
Received: by mail-io1-xd44.google.com with SMTP id n21so12360466ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e46uQFQTWmPxySVGOnVDnMR0Vq/breujBptRTHkRtEo=;
 b=Dsq6D07hwAfWRqT+mst18Y6cyq6FdUxNdpkwpkJIP0tcuj2QR2/IfItcBqXITPHDQj
 yskKG7ykem1MW+85i27wBUULgefjjH0t/UgG137z4Zi0C7YHJ9zBtHhdXW1OIzyBQcDw
 YQlCoTUCQaEHwxrDG7y211gxClhfrgBV80PXie+Y5Bb591HN5QqSK50445+We2ZSsDL6
 Y1TBB04O3T5l2iG4bjXjVclYL659VnwSYlAe0bmItEzTnKOSYMpFayesD9WVSERCB2Nw
 1qufae1STYXwX63cZY9B8wmCbi/E655mVNWUwAXPRyZSxYDuCkg4OE/tb5cv6A8BpN4Q
 0sFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e46uQFQTWmPxySVGOnVDnMR0Vq/breujBptRTHkRtEo=;
 b=FcldRcbY8eeMp1QaqFmy2Ag+D1TfIXMfwpf9p/YYBlvWza0rYX/XJQQEc7V/NXqso2
 tHWOsxR8sHXx0NXcw6jmGLELvIaB7o02rQsByxNApZvfrQ2PfyBgk3i6yVczDqHy7JtT
 wR6vEYysoiuEcyY5ml0ngymgugKWBeFiiSuuEnKk0DVUCVIAFu7z6PyfIgJiUA+oaiKs
 PUG0VRjmuVLBjyfRLq6/ke7uVtero01c4YPQQouwTBdgVDtZk5q/JjsSw85jVVXQltl/
 Grr+1VAYezaYdcCBRWgUlPY82M3O83KmG0EtnY6Grlg1hwczKN6VoNFosn3ggrUWxMYE
 Thjw==
X-Gm-Message-State: APjAAAVC/a0s90mD8yvvA+NkPD7g9DccN+RQ9/NFDnXwGkYag82gjvCM
 zqRzbUpY7poqOHQlD9zfo+EZ7FbPV4PqL0iNeiw=
X-Google-Smtp-Source: APXvYqzEZ4N1k3wco5tAG7OfTqaUYpIinWmS9sijseBxbpCF6TmbB3laZ71W4Lov8h4mdE4ETTqg/ObVe5ScUZhjayM=
X-Received: by 2002:a05:6638:76c:: with SMTP id
 y12mr20529558jad.95.1577026715317; 
 Sun, 22 Dec 2019 06:58:35 -0800 (PST)
MIME-Version: 1.0
References: <20191213160542.15757-1-aford173@gmail.com>
 <CAHCN7xKuVCGqgRpixa9UPkWq92Gg=dm4XxAczBKAZCoMzcBVJg@mail.gmail.com>
 <DB7PR04MB5178EA739587B2DB084570B9872F0@DB7PR04MB5178.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB5178EA739587B2DB084570B9872F0@DB7PR04MB5178.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 22 Dec 2019 08:58:23 -0600
Message-ID: <CAHCN7xKa1+=_K_cYXvZW3vfT1gEoYDyK=_8ERBdxvOhB3gTvww@mail.gmail.com>
Subject: Re: [PATCH V2 0/7] soc: imx: Enable additional functionality of
 i.MX8M Mini
To: Jacky Bai <ping.bai@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_065840_072394_64CF5C77 
X-CRM114-Status: GOOD (  39.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 22, 2019 at 2:33 AM Jacky Bai <ping.bai@nxp.com> wrote:
>
> > -----Original Message-----
> > From: Adam Ford <aford173@gmail.com>
> > Sent: Saturday, December 21, 2019 11:07 PM
> > To: arm-soc <linux-arm-kernel@lists.infradead.org>
> > Cc: Peng Fan <peng.fan@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Rob
> > Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> > Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> > <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> > dl-linux-imx <linux-imx@nxp.com>; devicetree <devicetree@vger.kernel.org>;
> > Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Leonard Crestez
> > <leonard.crestez@nxp.com>
> > Subject: Re: [PATCH V2 0/7] soc: imx: Enable additional functionality of
> > i.MX8M Mini
> >
> > On Fri, Dec 13, 2019 at 10:05 AM Adam Ford <aford173@gmail.com> wrote:
> > >
> > > The GPCv2 controller on the i.MX8M Mini is compatible with the driver
> > > used for the i.MX8MQ except for the register locations and names.
> > > The GPCv2 controller is used to enable additional periperals currently
> > > unavailable on the i.MX8M Mini.  In order to make them function, the
> > > GPCv2 needs to be adapted so the drivers can associate their power
> > > domain to the GPCv2 to enable them.
> > >
> > > This series makes one include file slightly more generic, adds the
> > > iMX8M Mini entries, updates the bindings, adds them to the device
> > > tree, then associates the new power domain to both the OTG and PCIe
> > > controllers.
> > >
> > > Some peripherals may need additional power domain drivers in the
> > > future due to limitations of the GPC driver, but the drivers for VPU
> > > and others are not available yet.
> >
> > Before I do a V3 to address Rob's comments, I am thinking I'll drop the items
> > on the GPC that Jacky suggested would not work, and we don't have drivers
> > for those other peripherals (GPU, VPU, etc.) anyway.  My main goal here was
> > to try and get the USB OTG ports working, so I'd like to enabled enough of the
> > items on the GPC that are similar to the i.MX8MQ and leave the more
> > challenging items until we have either a better driver available and/or actual
> > peripheral support coming.  I haven't seen LCDIF or DSI drivers pushed
> > upstream yet, so I doubt we'll see GPU or VPU yet until those are done.
> >
> > Does anyone from the NXP team have any other comments/concerns?
> >
>
> If you look into NXP's release code, you will find that it is not easy to handle the
> power domain more generically in GPCv2 driver for imx8mm. That's the reason why we use
> SIP service to handle all the power domain in TF-A. we tried to upstream the SIP version
> power domain that can be reused for all i.MX8M, but rejected by ARM guys. they think
> we need to use SCMI to implement it. as there is no SCMI over SMC available, upstream is
> on the way, so the power domain for i.MX8MM/MN is pending.
>

Thank you for the background. I appreciate it.

> Actually, I am confused why we can't use SIP service, even if the SCMI over SMC is ready in
> the future, It seems the SMCC function ID still need to choose from SIP service function id bank.
>
> Another concern for adding power domain support in GPCv2 is that, each time a new
> SOC is added, we need to add hundred lines of code in GPCv2 driver. it is not a best way
> to keep driver reuse. The GPCv2 driver is originally used for i.MX7D, then reused by i.MX8MQ,
> as i.MX8MQ has very simple power domain design as i.MX7D. But for i.MX8MM, it is not the
> case.

There are some entries on the 8MM which can be used the same way as
the 8MM.  I have been able to get USB OTG working using the 8MQ's GPC
table.

Until sometime better is available, would you entertain a limited use
of the 8MQ's GPC where the device tree nodes only contain a limited
number of entries (like USB OTG) where we can re-use the similar
functions 8MQ without expanding the driver functions?  I know its not
ideal, but it would be a temporary solution unless you think the
upstream power domain support is coming quickly.  I looked through the
mailing list history and it looked like there were some attempts about
6 months ago, then it appeared to stop.

Once the newer driver is available upstream, we could then remove GPC
references from the 8MM device tree and point it to the new driver.

It would increase some limited functionality for the short term.  I
know Leonard has been working on the DDRC modifications and power
reduction.  I have been trying to use them, but unsuccessful so far.
>
> There is another concern, we don't want to export GPC module to rich OS side, it is not a must.

What about doing it in the U-Boot stage if Linux isn't an option and
ATF isn't accepting them?

adam
>
> BR
> Jacky Bai
>
> > adam
> > >
>
> > > Adam Ford (7):
> > >   soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
> > >   soc: imx: gpcv2: Update imx8m-power.h to include iMX8M Mini
> > >   soc: imx: gpcv2: add support for i.MX8M Mini SoC
> > >   dt-bindings: imx-gpcv2: Update bindings to support i.MX8M Mini
> > >   arm64: dts: imx8mm: add GPC power domains
> > >   ARM64: dts: imx8mm: Fix clocks and power domain for USB OTG
> > >   arm64: dts: imx8mm: Add PCIe support
> > >
> > >  .../bindings/power/fsl,imx-gpcv2.txt          |   6 +-
> > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 127 ++++++++-
> > >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +-
> > >  drivers/soc/imx/gpcv2.c                       | 246
> > +++++++++++++++++-
> > >  .../power/{imx8mq-power.h => imx8m-power.h}   |  14 +
> > >  5 files changed, 387 insertions(+), 8 deletions(-)  rename
> > > include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} (57%)
> > >
> > > --
> > > 2.20.1
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
