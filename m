Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FE41710AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 06:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmsPU4/5GF5y7IjDcYDHVp22gPUzdGTjAmsWqNBEQQs=; b=loDzDIzbmOS68k
	pejP4iKMH66Ukj1AIyjfY6BlqFtfLRQwlGCT/FzUNF/wHl4bmkVn/pmCxhoAkGzMCzdxnnJibd2Sb
	1LGRmwjiNYgg9Y5o4KMok1ySu4kwHGeYW3fZu8DA/Q6e3+xIgD7gw8RcefulJttHNk3irXBQdoWJ6
	wnYHKlwyfyTn5aeT9aegnMRe4bZXjMEmNi06X5Kv+XJoxZKvGfGi+eSs7ks2jm26/O7Ig1zrMw1bw
	1No5DEt9cNW5KlycsL4ZayirklnZAanaMZZ6F5XovlQIGOwsOonjvN0enS1Xx4WUr9gHHMJ6AVZJ3
	FLIIR/b9yeUKp6zj89Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7C88-0002re-QM; Thu, 27 Feb 2020 05:54:40 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7C7z-0002rF-Pf
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 05:54:33 +0000
Received: by mail-qt1-x843.google.com with SMTP id l16so1468877qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 21:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JG6Di4Gll3ra/P/kq24/31+1wa1Oo6M8vrUkvuZY4ls=;
 b=dtw6/+Ad0LCrN8QWEFAr0Kq717Kpi210ws5TZRsscrzkH6qznd71bIsRibeXXIii7H
 D9H+5XIcpLvVvDFTfJZyUFQkXPWDmnnbywN7tCgCoP3uFWYPIJOLw3tjCyM+8ShSd5xf
 eb1LJyIBbg3qkOzNsCiwLkZI6M0Uep7JPbw2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JG6Di4Gll3ra/P/kq24/31+1wa1Oo6M8vrUkvuZY4ls=;
 b=CEjDfWaXekAA3YHjT43y+mW1F/W7DzF8PWkJyrMWZgcychRrNTS2VuZ2BdoszEyu7k
 HutLPUxbL+m19U7Hat/8vKWA0gADW7r2Ovo6L62xV3UHwnIdDcAYRqo37OwYgKzEbtYg
 eqEBp71xcMvV/Tfy4c0dhxAlDzYsg7N7mATrwEbe64Z6zOK1dFnXPnvpqKgFx5HO0dsq
 5nnB0Sd3k7FxSp4vnmhqrPqPB+f3j6RzDDNMbaxt1arESmN89bC7KV0ate6LTxl4WLIM
 t2CQAqym5Ae/3VCFNsoMOSIlcqu4frb4c6CQujC86NQHEmu6aIcH0aogD8PG6iz7IHx2
 q3RA==
X-Gm-Message-State: APjAAAWUhAIoIgPTmsaL9abMLSVmp82l7QgWupPv5QpxTRhjxsosrdo9
 vgWyHOTs8UPXTVzAUFQ8vEEERSaKRXGtOQcrToM=
X-Google-Smtp-Source: APXvYqwOTL0JsvR5hVzDIrVzEDRplaPhO41VCXL2WSvZ91+hn3KwgtVR4fKkEaxwcoirvnDYS32rvgGm5x23WhE7Pi0=
X-Received: by 2002:ac8:4244:: with SMTP id r4mr2803245qtm.169.1582782870414; 
 Wed, 26 Feb 2020 21:54:30 -0800 (PST)
MIME-Version: 1.0
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-5-rentao.bupt@gmail.com>
 <7a210c19a7793b925275dbd8392e3c1ef538b229.camel@kernel.crashing.org>
In-Reply-To: <7a210c19a7793b925275dbd8392e3c1ef538b229.camel@kernel.crashing.org>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 27 Feb 2020 05:54:19 +0000
Message-ID: <CACPK8XeDBeU+c=Fgcj_CYo3AG02+JX9eD4ABkwO64uMXh+hTtQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] ARM: dts: aspeed-g6: add usb functions
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_215431_835403_518AA9AC 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Tao Ren <taoren@fb.com>,
 Tao Ren <rentao.bupt@gmail.com>, Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 at 04:10, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> >
> > Add USB components and according pin groups in aspeed-g6 dtsi.
> >
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
>
> Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

Reviewed-by: Joel Stanley <joel@jms.id.au>

I will take this patch through the aspeed tree for 5.7.

Cheers,

Joel


>
> > ---
> >  No change in v3/v4.
> >  Changes in v2:
> >    - added port/endpoint properties for vhub dt node.
> >
> >  arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 25 +++++++++++++
> >  arch/arm/boot/dts/aspeed-g6.dtsi         | 45
> > ++++++++++++++++++++++++
> >  2 files changed, 70 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
> > b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
> > index 045ce66ca876..7028e21bdd98 100644
> > --- a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
> > +++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
> > @@ -1112,6 +1112,31 @@
> >               groups = "UART9";
> >       };
> >
> > +     pinctrl_usb2ah_default: usb2ah_default {
> > +             function = "USB2AH";
> > +             groups = "USBA";
> > +     };
> > +
> > +     pinctrl_usb2ad_default: usb2ad_default {
> > +             function = "USB2AD";
> > +             groups = "USBA";
> > +     };
> > +
> > +     pinctrl_usb2bh_default: usb2bh_default {
> > +             function = "USB2BH";
> > +             groups = "USBB";
> > +     };
> > +
> > +     pinctrl_usb2bd_default: usb2bd_default {
> > +             function = "USB2BD";
> > +             groups = "USBB";
> > +     };
> > +
> > +     pinctrl_usb11bhid_default: usb11bhid_default {
> > +             function = "USB11BHID";
> > +             groups = "USBB";
> > +     };
> > +
> >       pinctrl_vb_default: vb_default {
> >               function = "VB";
> >               groups = "VB";
> > diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi
> > b/arch/arm/boot/dts/aspeed-g6.dtsi
> > index 796976d275e1..0a29b3b57a9d 100644
> > --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> > +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> > @@ -245,6 +245,51 @@
> >                       status = "disabled";
> >               };
> >
> > +             ehci0: usb@1e6a1000 {
> > +                     compatible = "aspeed,ast2600-ehci", "generic-
> > ehci";
> > +                     reg = <0x1e6a1000 0x100>;
> > +                     interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> > +                     pinctrl-names = "default";
> > +                     pinctrl-0 = <&pinctrl_usb2ah_default>;
> > +                     status = "disabled";
> > +             };
> > +
> > +             ehci1: usb@1e6a3000 {
> > +                     compatible = "aspeed,ast2600-ehci", "generic-
> > ehci";
> > +                     reg = <0x1e6a3000 0x100>;
> > +                     interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&syscon ASPEED_CLK_GATE_USBPORT2CLK>;
> > +                     pinctrl-names = "default";
> > +                     pinctrl-0 = <&pinctrl_usb2bh_default>;
> > +                     status = "disabled";
> > +             };
> > +
> > +             uhci: usb@1e6b0000 {
> > +                     compatible = "aspeed,ast2600-uhci", "generic-
> > uhci";
> > +                     reg = <0x1e6b0000 0x100>;
> > +                     interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> > +                     #ports = <2>;
> > +                     clocks = <&syscon ASPEED_CLK_GATE_USBUHCICLK>;
> > +                     status = "disabled";
> > +                     /*
> > +                      * No default pinmux, it will follow EHCI, use
> > an
> > +                      * explicit pinmux override if EHCI is not
> > enabled.
> > +                      */
> > +             };
> > +
> > +             vhub: usb-vhub@1e6a0000 {
> > +                     compatible = "aspeed,ast2600-usb-vhub";
> > +                     reg = <0x1e6a0000 0x350>;
> > +                     interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> > +                     aspeed,vhub-downstream-ports = <7>;
> > +                     aspeed,vhub-generic-endpoints = <21>;
> > +                     pinctrl-names = "default";
> > +                     pinctrl-0 = <&pinctrl_usb2ad_default>;
> > +                     status = "disabled";
> > +             };
> > +
> >               apb {
> >                       compatible = "simple-bus";
> >                       #address-cells = <1>;
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
