Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC82915830D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyLrS5dce8bvJGE60KLx2DJac0aQb56CwjlGlulOC3M=; b=H0AmDZFF02XPfH
	ho8Sw1D/L+m+0fZidkY6bWrPG210td03NMx5WoWHDeZIXIcqSQy1ISBl7XGQRydHIucomEcgBtfNP
	+TJ/S2nTzmWZ3kSQiBPcwcpf/PJObr5MwVregx6i03mlceOVavGDdS0jgapfiTDZIyIaM27U32mSm
	xXRFikp2CSD9/cuB4ENlEh/W/OX6C35lsEosBZoWMefzadKR2ZR6LiedNFeefxAmNPObv3/bElIIQ
	30WHi0s0vFXw6qb2U7nv11t3UoXXVsXXsC/Vm7otcjF9JIxQ1LVR1/6MYkJgewRjUuyJQErdrDgJ9
	+oJihsXFsE8vTE2W3V7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EDD-0006yR-CG; Mon, 10 Feb 2020 18:55:15 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ED1-0006MB-0x
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:55:04 +0000
Received: by mail-ed1-f65.google.com with SMTP id f8so1608732edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 10:55:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jlkep5BMgERBHRiRFRjnqMtZPt75n7yCPDHspM4Vr4s=;
 b=J01Z+nhWycPur74bRrprfFzbEkIriNkUtcj7eIY/cTRT37OImDvYrtHtGPXz6tKx3I
 AkXT4469fYLn/vEaPpsXoxhllhfX9/kTdznuxuhStmNEQn4+KHTwW+9UivC0R9r38zVb
 0tisSIZ5pQnV1SO96pBbRYHaXYCUTqKrySBYgyUc0Xf+pC0mkvQgz8HXa2I8ZTPly8I0
 Nk8tACXOKXAioPn0uYN1ZqD+BbmLMlQKfvf2PvB4W1qvibX0uQAi46UPyMOYPO5J5HUW
 8s2X8lAtfvXn+2IFHe2h2ii8rV/x1CLHmaGqwFn+H6UDbBlqwrtyKoq1Gn9tlROBFjef
 Xtuw==
X-Gm-Message-State: APjAAAULlfLzZcyt6LLvDEFO5ZX08pwC9NXpEdB/cJfWfSgQ2mTVDI/b
 1fTUPkiYfE580pU6wfne6D8=
X-Google-Smtp-Source: APXvYqw0gOeAueOeG/UOMWpy/5re47tSz7mLAaISIcnPIQ/kq1PJH7gsUfZZce4d+I4k2uUUDYoxfQ==
X-Received: by 2002:a05:6402:14d6:: with SMTP id
 f22mr2415351edx.59.1581360901336; 
 Mon, 10 Feb 2020 10:55:01 -0800 (PST)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id j21sm74756eds.8.2020.02.10.10.54.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Feb 2020 10:55:00 -0800 (PST)
Date: Mon, 10 Feb 2020 19:54:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv3 2/3] ARM: dts: exynos: Add missing usbdrd3 suspend clk
Message-ID: <20200210185458.GA16433@kozik-lap>
References: <20200210105108.1128-1-linux.amoon@gmail.com>
 <20200210105108.1128-3-linux.amoon@gmail.com>
 <20200210135008.GA2163@pi3>
 <CANAwSgT9_8JhjyN9yfZ6=AUE7kVhrrTwdK1KFQLwxuNSYyBKKA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgT9_8JhjyN9yfZ6=AUE7kVhrrTwdK1KFQLwxuNSYyBKKA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_105503_080432_1914CF3C 
X-CRM114-Status: GOOD (  23.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 10:43:45PM +0530, Anand Moon wrote:
> Hi Krzysztof,
> 
> Thanks for your review comments.
> 
> On Mon, 10 Feb 2020 at 19:20, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Mon, Feb 10, 2020 at 10:51:07AM +0000, Anand Moon wrote:
> > > This patch adds new combatible strings for USBDRD3
> > > for adding missing suspend clk, exynos5422 usbdrd3
> > > support two clk USBD300 and SCLK_USBD300, so add missing
> > > suspemd_clk for Exynos542x DWC3 nodes.
> > >
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > ---
> > >  arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
> > >  arch/arm/boot/dts/exynos54xx.dtsi | 4 ++--
> > >  2 files changed, 6 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> > > index b672080e7469..bd505256a223 100644
> > > --- a/arch/arm/boot/dts/exynos5420.dtsi
> > > +++ b/arch/arm/boot/dts/exynos5420.dtsi
> > > @@ -1372,8 +1372,8 @@ &trng {
> > >  };
> > >
> > >  &usbdrd3_0 {
> > > -     clocks = <&clock CLK_USBD300>;
> > > -     clock-names = "usbdrd30";
> > > +     clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
> > > +     clock-names = "usbdrd30", "usbdrd30_susp_clk";
> > >  };
> > >
> > >  &usbdrd_phy0 {
> > > @@ -1383,8 +1383,8 @@ &usbdrd_phy0 {
> > >  };
> > >
> > >  &usbdrd3_1 {
> > > -     clocks = <&clock CLK_USBD301>;
> > > -     clock-names = "usbdrd30";
> > > +     clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
> > > +     clock-names = "usbdrd30", "usbdrd30_susp_clk";
> > >  };
> > >
> > >  &usbdrd_dwc3_1 {
> > > diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
> > > index 8aa5117e58ce..0aac6255de5d 100644
> > > --- a/arch/arm/boot/dts/exynos54xx.dtsi
> > > +++ b/arch/arm/boot/dts/exynos54xx.dtsi
> > > @@ -143,7 +143,7 @@ hsi2c_7: i2c@12cd0000 {
> > >               };
> > >
> > >               usbdrd3_0: usb3-0 {
> > > -                     compatible = "samsung,exynos5250-dwusb3";
> > > +                     compatible = "samsung,exynos5420-dwusb3";
> > >                       #address-cells = <1>;
> > >                       #size-cells = <1>;
> > >                       ranges;
> > > @@ -165,7 +165,7 @@ usbdrd_phy0: phy@12100000 {
> > >               };
> > >
> > >               usbdrd3_1: usb3-1 {
> > > -                     compatible = "samsung,exynos5250-dwusb3";
> > > +                     compatible = "samsung,exynos5420-dwusb3";
> >
> > This affects also Exynos5410 but you do not add new clock there.
> >
> > Best regards,
> > Krzysztof
> >
> 
> Ok I will update this Exynos5410 dts.
> 
> Is samsung,exynos54xx-dwusb3 is valid compatible string
> for both the SoC.

The compatible should not be wildcard so keep it as
samsung,exynos5420-dwusb3.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
