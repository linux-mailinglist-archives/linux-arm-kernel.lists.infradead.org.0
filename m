Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E5B15810C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZqSH2DGz0/4UEMGY9JKD+EI5Q3/f8AAlDb45dbb4NE=; b=qXItEBVfHvvz1P
	7BjM88BFNkN7iSFL9qNluaFLEz3ROHEqTBKK5iBpVOQdTiFjREUBc5HEltqlyDyfVvBPFOF/DLLN/
	gZEz7sAmWQ6JCcutsfq+B5XscYtZmxdulquPRwsaQS4dWhEMLWpTt6TNr1IuE2nOzu6iSWOnfG80i
	hV3WmjyTmZgLHnfT+PszKSwK9p+pw36UVZ5RMECQ8EWYYK8Ewm48ujpp5T+gOLf7LmZIS8l9ZBRvU
	c7m2MxhOL4ppI5XEY+2SlkLxkpBC1pPDRtbmhuLXqKT4ZVnojuxXa01Ez02cwcvH5pIofyG1hTu0I
	mseH1T8c8DoXB1GHaC9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CdI-0004nQ-7m; Mon, 10 Feb 2020 17:14:04 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CdB-0004n4-0Y
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:13:58 +0000
Received: by mail-il1-x143.google.com with SMTP id b15so880447iln.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 09:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2OMBPex9jA3tUl+7G1mNGvd+gODbNk9naFIiYtHyZvE=;
 b=K3+u35TRE63GpeI94Hcn56aHL8TkE541qoXK4T7pzDuUVHd/PJJs0tLOqs6FC8yY5o
 726WSroyELFlw1KtSEUQLBCA0g1r7uzJt/iSTVqQUSUw/Jg7nrgOrsdPhmF2s95Cbs9F
 WlN10IwmMwrfqN+rIKiJSzFhVo4BY3/ZvpEvNt97HH68wf5XE4Ky0RsiiGauGEWUNuOd
 3l4uNYCbPjjBzRJYg7thZs6TGobcYZhGNhVymUQvPaUR6ttu0q6Fof7fg9Pgt32Xr72p
 9xf9tMegJuvTL1Jm7qdxggl5uKd7lHKwSzXxA7eJ/FEViiylzLaBH9tnDPFwGuvKz7bA
 zrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2OMBPex9jA3tUl+7G1mNGvd+gODbNk9naFIiYtHyZvE=;
 b=r8dh8xREkAhARhSA1PAkXV2IOyLGXKjZGw6CcoiKCoG8QSSmeI65NchULFnOyq96Hu
 /VKKlosqiQAgLiwIAApEv7Fs4BLkBDwbpw27incioAcLj2v1JMlgt+iDqJi6CzKeTi92
 SrJ2GELMrh1eGzFGc4sKxrWhWh5xl8ghA9h99rE/C5ux13PSBwrsYvHurfAnaOqaxGZu
 kt8F6pz4IhYN7mxvk7101wCpciDL/OE5mIyJRXphsqWZbtcYvNNZIGdETWe9ALRlQqER
 WBZhzqEY/WUWEQl1zPzJYPjpLSmR/mpyFDCk5VhhC9AtR0Xd+SyhcMIIdMTsSUGGRuNq
 BZPw==
X-Gm-Message-State: APjAAAVch02/pfpMUhlST11wFVVrtx2D6ZOdinyl4a1tAkFuoq6R5Ajd
 sjmqwzIh7iOku41mfvBFVHGw1521iNLekRkHnmw=
X-Google-Smtp-Source: APXvYqxOleLjjkfnqGbk8s3yYuPx72eh3yoUqE6ukevQxdLc3Qx2eaHu6jnI3/Zfma3Bg3N/Oppma3JGFLT047sLatM=
X-Received: by 2002:a92:9507:: with SMTP id y7mr2270185ilh.243.1581354835793; 
 Mon, 10 Feb 2020 09:13:55 -0800 (PST)
MIME-Version: 1.0
References: <20200210105108.1128-1-linux.amoon@gmail.com>
 <20200210105108.1128-3-linux.amoon@gmail.com>
 <20200210135008.GA2163@pi3>
In-Reply-To: <20200210135008.GA2163@pi3>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 10 Feb 2020 22:43:45 +0530
Message-ID: <CANAwSgT9_8JhjyN9yfZ6=AUE7kVhrrTwdK1KFQLwxuNSYyBKKA@mail.gmail.com>
Subject: Re: [PATCHv3 2/3] ARM: dts: exynos: Add missing usbdrd3 suspend clk
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_091357_051676_DF5650DB 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Krzysztof,

Thanks for your review comments.

On Mon, 10 Feb 2020 at 19:20, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Feb 10, 2020 at 10:51:07AM +0000, Anand Moon wrote:
> > This patch adds new combatible strings for USBDRD3
> > for adding missing suspend clk, exynos5422 usbdrd3
> > support two clk USBD300 and SCLK_USBD300, so add missing
> > suspemd_clk for Exynos542x DWC3 nodes.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
> >  arch/arm/boot/dts/exynos54xx.dtsi | 4 ++--
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> > index b672080e7469..bd505256a223 100644
> > --- a/arch/arm/boot/dts/exynos5420.dtsi
> > +++ b/arch/arm/boot/dts/exynos5420.dtsi
> > @@ -1372,8 +1372,8 @@ &trng {
> >  };
> >
> >  &usbdrd3_0 {
> > -     clocks = <&clock CLK_USBD300>;
> > -     clock-names = "usbdrd30";
> > +     clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
> > +     clock-names = "usbdrd30", "usbdrd30_susp_clk";
> >  };
> >
> >  &usbdrd_phy0 {
> > @@ -1383,8 +1383,8 @@ &usbdrd_phy0 {
> >  };
> >
> >  &usbdrd3_1 {
> > -     clocks = <&clock CLK_USBD301>;
> > -     clock-names = "usbdrd30";
> > +     clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
> > +     clock-names = "usbdrd30", "usbdrd30_susp_clk";
> >  };
> >
> >  &usbdrd_dwc3_1 {
> > diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
> > index 8aa5117e58ce..0aac6255de5d 100644
> > --- a/arch/arm/boot/dts/exynos54xx.dtsi
> > +++ b/arch/arm/boot/dts/exynos54xx.dtsi
> > @@ -143,7 +143,7 @@ hsi2c_7: i2c@12cd0000 {
> >               };
> >
> >               usbdrd3_0: usb3-0 {
> > -                     compatible = "samsung,exynos5250-dwusb3";
> > +                     compatible = "samsung,exynos5420-dwusb3";
> >                       #address-cells = <1>;
> >                       #size-cells = <1>;
> >                       ranges;
> > @@ -165,7 +165,7 @@ usbdrd_phy0: phy@12100000 {
> >               };
> >
> >               usbdrd3_1: usb3-1 {
> > -                     compatible = "samsung,exynos5250-dwusb3";
> > +                     compatible = "samsung,exynos5420-dwusb3";
>
> This affects also Exynos5410 but you do not add new clock there.
>
> Best regards,
> Krzysztof
>

Ok I will update this Exynos5410 dts.

Is samsung,exynos54xx-dwusb3 is valid compatible string
for both the SoC.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
