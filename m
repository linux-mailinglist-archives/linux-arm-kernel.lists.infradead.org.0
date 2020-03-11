Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB0E181BA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:47:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWNJXIoJBgzXRRBmM22KlDYUyjVcY4bSPpSjWewlzJQ=; b=GU/xmoJqchU6Hr
	aIldNQDcOi8g7WvqhuWyrdkRPsYYOw1jnqS+wtk5WOIbls1zaXH2l/szP2YkAv59x2sAq5WavEXaK
	YIABQSuRrUJAvypFYpD+zMbmlcIziPMwTKIVl592lP28I2TQfzCBMlm+TICpuN/wDiaGFWL5zZrpk
	oxwZKt8oPOGQULMloTo3cfeIzcvn/hTonL8mTVBNPSgNs1rzqLB/LH2jQ943/laR54iwPf8bYyzoV
	emRs5U9LHpcdLUARE/MdblQVV42qd+5BLVbwwaxid/ei/WyOzsKQt+Psd/dfiLNsIK40fzbWPxdVP
	rqEFLcNZR7rWPSiRHKZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2df-0006st-L0; Wed, 11 Mar 2020 14:47:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2dR-0006qb-Pw
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 14:47:03 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02B71206B1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 14:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583938019;
 bh=ruBwn5wDj74e/K+r4986L1gfq+eU0+k3w7VbVctWE10=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NzjBVMdxDd+Kl49LOjGaBd3WYnkCvYkNm1wU4P9GhVG5t0/K9oS+4AIwW69cVpoMV
 FPtGYDiYkuwXkUld5nRYYBRD3nWNrbrJGDY5/wC8JnVTMzsNRttYPblFKwfKsM7WD3
 T0z2XFq1FUMLJpWJd+zpaTrZ9ieDU6xdTQqMWoJI=
Received: by mail-wr1-f50.google.com with SMTP id v9so2964363wrf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 07:47:00 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3CWRWL0c/b6OSsQtSi+nBEHVE8OXwJrsk8p+D6cSogtZwwUslP
 3/Pkx/Hc7miarTBwLuYoF9sqCBoQKbsUTnZ6o7E=
X-Google-Smtp-Source: ADFU+vs8B8EgCnwrcFOwMq4EMagcV8OTKEEHRsPEaHmM1MNKm2z5pWXx/gJgkDDoe/YZ41fGgMvzQ6EnRqYtBNoKsaY=
X-Received: by 2002:adf:97c1:: with SMTP id t1mr618684wrb.365.1583938018853;
 Wed, 11 Mar 2020 07:46:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200310174709.24174-1-wens@kernel.org>
 <20200310174709.24174-2-wens@kernel.org>
 <20200311105937.040cd947@donnerap.cambridge.arm.com>
In-Reply-To: <20200311105937.040cd947@donnerap.cambridge.arm.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 11 Mar 2020 22:46:49 +0800
X-Gmail-Original-Message-ID: <CAGb2v66dWGSJD0sS6BmbT6nb3J0xFex=3ATwm2s9Hot4ua4kcw@mail.gmail.com>
Message-ID: <CAGb2v66dWGSJD0sS6BmbT6nb3J0xFex=3ATwm2s9Hot4ua4kcw@mail.gmail.com>
Subject: Re: [PATCH 1/3] ARM: dts: sun8i: r40: Move AHCI device node based on
 address order
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_074701_886164_AE9ACE13 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 6:59 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Wed, 11 Mar 2020 01:47:07 +0800
> Chen-Yu Tsai <wens@kernel.org> wrote:
>
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > When the AHCI device node was added, it was added in the wrong location
> > in the device tree file. The device nodes should be sorted by register
> > address.
> >
> > Move the device node to before EHCI1, where it belongs.
> >
> > Fixes: 41c64d3318aa ("ARM: dts: sun8i: r40: add sata node")
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  arch/arm/boot/dts/sun8i-r40.dtsi | 22 +++++++++++-----------
> >  1 file changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> > index d5442b5b6fd2..b278686d0c22 100644
> > --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> > @@ -307,6 +307,17 @@ crypto: crypto@1c15000 {
> >                       resets = <&ccu RST_BUS_CE>;
> >               };
> >
> > +             ahci: sata@1c18000 {
> > +                     compatible = "allwinner,sun8i-r40-ahci";
> > +                     reg = <0x01c18000 0x1000>;
> > +                     interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&ccu CLK_BUS_SATA>, <&ccu CLK_SATA>;
> > +                     resets = <&ccu RST_BUS_SATA>;
> > +                     reset-names = "ahci";
> > +                     status = "disabled";
> > +
>
> Did this empty line serve any particular purpose before? If not, you could remove it on the way.

Can't say there is. Removed when applied.

> With that fixed:
>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
>
> Thanks,
> Andre.

Thanks
ChenYu

> > +             };
> > +
> >               ehci1: usb@1c19000 {
> >                       compatible = "allwinner,sun8i-r40-ehci", "generic-ehci";
> >                       reg = <0x01c19000 0x100>;
> > @@ -733,17 +744,6 @@ spi3: spi@1c0f000 {
> >                       #size-cells = <0>;
> >               };
> >
> > -             ahci: sata@1c18000 {
> > -                     compatible = "allwinner,sun8i-r40-ahci";
> > -                     reg = <0x01c18000 0x1000>;
> > -                     interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
> > -                     clocks = <&ccu CLK_BUS_SATA>, <&ccu CLK_SATA>;
> > -                     resets = <&ccu RST_BUS_SATA>;
> > -                     reset-names = "ahci";
> > -                     status = "disabled";
> > -
> > -             };
> > -
> >               gmac: ethernet@1c50000 {
> >                       compatible = "allwinner,sun8i-r40-gmac";
> >                       syscon = <&ccu>;
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
