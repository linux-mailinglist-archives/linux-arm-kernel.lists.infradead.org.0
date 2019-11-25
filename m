Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5403210955A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 23:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcwrzFCsYzfk5Ts78JdYLInRgMiLiIomXrtRs2hR6v8=; b=DjwmA9mXV/9L9f
	IIEMXUHU09r1EjYMjRQve4hMhj2kM3Xz9RlKbEwEMDrqcZcvnb3jaSjxbOVhZqvqmAejTIDOEy8qv
	yu7PUrcgCfzqHf14huw980fhQKGDwwZSTMGygrImm3VbcwbCy0qNgpa8p5TLAOb/0J5qKr885UlVc
	0oERbXtfstJ0rFDVwpAS3mMfwQOeSyufvG9wPswmyl9jXfF+DkuYmVMkC2sXyeLHps3/0SdzmXl7A
	k9rA7/2BQql7k37+lqnjvegFkJ0MwBwPK5X6I0CzFMQGDtz4bAgIXMk1YV0kMAwrofkJWspl0UCso
	Ll1HLrEKfJ7WzW4QajcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMRk-0007z0-7y; Mon, 25 Nov 2019 22:03:04 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMRZ-0007xu-8P; Mon, 25 Nov 2019 22:02:55 +0000
Received: by mail-oi1-x244.google.com with SMTP id a69so7461727oib.2;
 Mon, 25 Nov 2019 14:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lzw1koOlG6AU/5fLlo3Vm5FYX8EGSzhUjEGJB0YbmZI=;
 b=Euc8qOQryfLxQGHFEmQspkPxC5+krVH0fJqiVlzF/VBEUJZ77CwlRrhVWol+93ELp+
 3tXRgpl+gI9iHklzMUyyAKdGwZPbninkagQyjKK2c9FJeers6WbSTLt/E9vL00IZ/JOD
 b9no+vQduOZ7CoAvlRR22JSGsNietL09Npvy9t5NfxiEFXe9MVXuFekcqXoGSmpsYbrN
 RHa+Nl3eqAZsQriZ/q8HkHkGHj86A/zF4eEXlq+RYAkJJrYUApHE34RXkJjXf7OLizyw
 CBWb4Ds9a93pNbBtfTADm9RGWhynlJId5mBtvvksMTDa/axGG8rAAvyTT9uu4Gh+Ozw1
 PIbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lzw1koOlG6AU/5fLlo3Vm5FYX8EGSzhUjEGJB0YbmZI=;
 b=DddT15hHjs38L58iip+VplpjbBT3DqkzcZnqhyHuNOGTPTnah/eGg06rdVd9ngEJb9
 i12CTGlfYv7PfPna7xQUElfVix/I2JzlNRWQhzdQPTh+It+Ejo1nHdp1TStLjVabbnmd
 T3OsEfgNp5oBXTVSOJtApScxFPxGM6O/7Fq440toANdGd8ZfpcSE4NYtjWMN2NDiWj1E
 ho+f8zFtQCWq3aQnGRvzQIt0SRVva1+dMNKUex3jOQdTSvHseNMXTcRJB9lrmoQbP9vO
 HL1ENcjwPyqX2GH2RG/9UFODG7QSxTvNlCBewVgoe2sxBBA4HfG4P3/dWdgkURkadeZi
 iBOw==
X-Gm-Message-State: APjAAAVWtA6JVcHbShpcQzb4ITSF/ZA8/vTNHfMl3QUveTniS5yEcytV
 1dC4gSSyf8p1N43+8g4i/6NUpswcW9HLuMQaU2A=
X-Google-Smtp-Source: APXvYqz2+uidMUMLdNPqKNBo+rgLlQc8P1ma/5QS/iXoES2Nu/oybeV80n0xcKuG+JaAuSMC59DQ4pufmrhKpQozzCc=
X-Received: by 2002:aca:110f:: with SMTP id 15mr911822oir.47.1574719371254;
 Mon, 25 Nov 2019 14:02:51 -0800 (PST)
MIME-Version: 1.0
References: <1574405757-76184-1-git-send-email-hanjie.lin@amlogic.com>
 <CAFBinCDA=ZekRC0hgQnPLRZM3LMnqBZ6TWCvXhyixAmgDyTAsw@mail.gmail.com>
 <5c0029ec-7377-4c1a-0062-3b59a87f8dea@amlogic.com>
In-Reply-To: <5c0029ec-7377-4c1a-0062-3b59a87f8dea@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 25 Nov 2019 23:02:40 +0100
Message-ID: <CAFBinCBypbB4W42GOAc8ejAYHVQLTDRdat_z_L92TZvC2p+5rQ@mail.gmail.com>
Subject: Re: [PATCH 0/6] arm64: meson: Add support for USB on Amlogic A1
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_140253_321291_42F24F90 
X-CRM114-Status: GOOD (  29.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjie,

On Mon, Nov 25, 2019 at 8:53 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
>
>
>
> On 2019/11/22 15:52, Martin Blumenstingl wrote:
> > Hello Hanjie,
> >
> > On Fri, Nov 22, 2019 at 7:55 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
> > [...]
> >>   dt-bindings: phy: Add Amlogic G12A USB2 PHY Bindings
> >>   dt-bindings: usb: dwc3: Add the Amlogic A1 Family DWC3 Glue Bindings
> >>   phy: amlogic: Add Amlogic A1 USB2 PHY Driver
> > drivers/phy/amlogic/phy-meson-g12a-usb2.c seems very similar to the A1
> > USB2 PHY you are introducing here.
> >
> >>   usb: dwc3: Add Amlogic A1 DWC3 glue
> > drivers/usb/dwc3/dwc3-meson-g12a.c is also very similar to the dwc3 glue.
> >
> > I have two questions:
> > - how is the PHY and the dwc3 glue different from G12A (or SM1)?
> > - why do we need a separate set of new drivers (instead of updating
> > the existing drivers)?
> >
> > We try to use one driver for the same IP block, even if there are
> > several revisions with small differences (for example the SAR ADC
> > driver supports all SoC generations from Meson8 to G12A/G12B/SM1,
> > because 80-90% of the code is shared across all revisions).
> >
> >
> > Martin
> >
> > .
> >
>
> Hi Martin,
>
> thanks for the comment.
>
> 1, G12A have usb2-phy0/usb2-phy1/usb3-phy0 three phys and an interrupt to support host/peripheral/otg modes.
>    A1 has one usb2-phy0 phy and only support host mode.
dwc3-meson-g12a treats PHYs as optional
so if you only pass "usb2-phy0" and skip usb2-phy1/usb3-phy0 then it
will still work fine
(I didn't check whether the binding also reflects this)

> 2, G12A glue/phy drivers are for G12A SoCs, there are some diffrences to A1.
>    G12A glue driver have dr_mode and interrupts two attributes to support otg mode while A1 hasn't this requirement.
dwc3-meson-g12a ignores the interrupt for HOST-only mode
(I didn't check whether the IRQ is optional in the dt-binding)

>    G12A glue driver has a hard coding vbus regulator code to support otg mode while A1 hasn't this requirement.
my understanding is that whether a board has a VBUS regulator depends
on the board design. it has nothing to do with the SoC itself

>    G12A glue driver has a hard coding support phys while A1 only supports host mode.
>         enum {
>                 USB2_HOST_PHY = 0,
>                 USB2_OTG_PHY,
>                 USB3_HOST_PHY,
>                 PHY_COUNT,
>                 };
this goes together with comment #1 - you can skip USB2_OTG_PHY and
USB3_HOST_PHY and the driver should still work fine

>    G12A glue driver only supports one clock while A1 needs four clocks.
indeed, the dwc3-meson-g12a needs to be updated to support this
I don't think that I have used it myself yet but there's the
clk_bulk_data framework
it seems to fit this use-case pretty well: define an arbitrary number
of clocks for G12A/B an another set of clocks for A1 - then use the
clk_bulk_data framework to enable/disable them all at once

>    G12A and A1 phy drivers have different register configurations since hardware differences.
other drivers have similar requirements: (mostly) identical register
layout but different values per SoC
here are two examples (I'm not sure if they are good examples though):
Lantiq/Intel SoC [0] and Allwinner SoCs [1]

I compared your driver with phy-meson-g12a-usb2 and only found four differences:
1) PHY_CTRL_R18_MPLL_DCO_CLK_SEL is set for A1
2) PHY_CTRL_R13_UPDATE_PMA_SIGNALS is not set for A1
3) PHY_CTRL_R21 is updated twice for A1 (once for earlier gen SoCs)
4) A1 doesn't reference the "xtal" clock

Difference 4) seems to be a general problem because there seems to be
a PLL inside the PHY registers and that PLL must be fed by some input
clock
So I believe that there is some clock input (which is currently
missing from your A1 USB2 PHY driver)

> 3, We have estimated these differences and we thought it's more clear and readable to have a dedicated glue/phy
>    driver for A1 SoCs, so also dedicated dt-bindings.
I think we should separate the driver and dt-bindings

Based on what I have seen so far my preference for the PHY is:
- use the existing dt-binding, because it seems to be the same IP
block with different register configuration
- use the existing driver because there are only three different
register values (to me it feels like a dedicated driver for these
means more overhead for little benefit)

for the glue I think:
- extend the existing dt-bindings and make some of the PHYs and the
interrupt line optional. making the PHYs optional will be needed when
adding GXL/GXM/AXG support anyways
- use the existing driver and make the clock inputs depend on the SoC
- everything else should already work as is

please let me know if I missed something:
comparing/reviewing the new and existing drivers is harder than just
copying the existing one and modifying that copy
(this is one of the reasons why I think that duplicating code makes
the drivers harder to maintain)

I also thought about the negative consequences of extending the
existing driver(s).
modifying the existing code could break the driver for existing boards.
however, I think that is not a problem because BayLibre's Kernel CI
labs have good coverage for G12A, G12B and SM1.
so if you add some A1 boards there (or host your own lab with A1
boards) any breakage will be found early (the Kernel CI bot even does
git bisect and sends emails)


Martin


[0] https://github.com/torvalds/linux/blob/d2912cb15bdda8ba4a5dd73396ad62641af2f520/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c#L47
[1] https://github.com/torvalds/linux/blob/c942fddf8793b2013be8c901b47d0a8dc02bf99f/drivers/phy/allwinner/phy-sun4i-usb.c#L862

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
