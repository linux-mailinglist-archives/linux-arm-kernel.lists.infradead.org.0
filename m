Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B38E120769
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUv+F+ffFEBWksdWFTmkVc02bgIVdyrzuujqJTpLI5o=; b=Ejn78QUSMISyCC
	568Xi+C9Pi5ajgNOF7OAWkhk9aucY9Pg6Ec0qpC5a8Ygox7kQ2kUx303NKsUedKOkmHLnlQbS19At
	CTpiQAlfvHYUgiSQHt8JA+kbWnpZYeJVCnId03WxbIpks5nxGh7+VCJh7Ps0bgtBlJw+pm5XqZpra
	gnQtd2XThF4bFT2CtrdqTYaE7TzZFnYMllyiBzWjdgrZ5VdJB2g5MTNwyCUEIzt6puPA4QjPp3kCd
	bdrSK2JpHB6Cnsnm6weFOp39qkyiTH8zFR0FiCIfRBnA+CEzRjTmVZpvHc4A8JOWF/ynwK+mVCGhe
	p+Yp1QchJm/BS7SuTkhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqeI-0008Qz-FO; Mon, 16 Dec 2019 13:42:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqe4-0008Q7-MZ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:42:48 +0000
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F257206EC
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 13:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576503764;
 bh=0v1JfGDc126fBItXKyc4ZIJSHxrFHERbL9A2i0S0nOw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ruVVJXDbduFLcwmSg679iQNeoDdg2lFWVI2v2BkPye/QTPMzJtCbNQkVk3HdtCzPL
 vIiVV5+GGHi5bfDHgRz48mDmGjUs3RWbjuphkSYfuT5JxVD5AGMfaCaPQ6crSKK8AE
 62YZgGLK9jZFrziJ90Rr9otNwUAt5e96ZzUklCbo=
Received: by mail-wr1-f49.google.com with SMTP id z3so7312419wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 05:42:44 -0800 (PST)
X-Gm-Message-State: APjAAAXP9Ae2EgZAyNrKmeOPNAkhI1umDhSwwtPLHPBMDdZDTkUC54jk
 hQmsk9xKsX5No4NQsabmKqSAiY1X0Drfr0NDD8Y=
X-Google-Smtp-Source: APXvYqxPODUBwPoRDFD7zdAeQAap8dbisfaU0qDmq581xzIb9kxHBDLrHbRDpofwtqywSNRWgqebLus37HOu3FGBw5s=
X-Received: by 2002:a5d:6b88:: with SMTP id n8mr31556564wrx.288.1576503762492; 
 Mon, 16 Dec 2019 05:42:42 -0800 (PST)
MIME-Version: 1.0
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-12-wens@kernel.org>
 <20191216133931.wliwn5woy3hstdg3@gilmour.lan>
In-Reply-To: <20191216133931.wliwn5woy3hstdg3@gilmour.lan>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 16 Dec 2019 21:42:30 +0800
X-Gmail-Original-Message-ID: <CAGb2v64=p7RX_visHWawAFfPr8=ZDH4JqsoK__xnHKo6s3QOwg@mail.gmail.com>
Message-ID: <CAGb2v64=p7RX_visHWawAFfPr8=ZDH4JqsoK__xnHKo6s3QOwg@mail.gmail.com>
Subject: Re: [PATCH 11/14] ARM: dts: sun8i: r40: Add device node for CSI0
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_054244_778595_5767FBE7 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 9:39 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Dec 16, 2019 at 12:59:21AM +0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > The CSI0 and CSI1 blocks are the same as found on the A20. However only
> > CSI0 is supported upstream right now.
> >
> > Add a device node for CSI0 using the A20 compatible as a fallback, and
> > the standard pinctrl options. Also add the MBUS interconnect.
> >
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  arch/arm/boot/dts/sun8i-r40.dtsi | 36 ++++++++++++++++++++++++++++++++
> >  1 file changed, 36 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> > index 82ea0b5b0710..2d1e97cc4155 100644
> > --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> > @@ -180,6 +180,20 @@ nmi_intc: interrupt-controller@1c00030 {
> >                       interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
> >               };
> >
> > +             csi0: csi@1c09000 {
> > +                     compatible = "allwinner,sun8i-r40-csi0",
> > +                                  "allwinner,sun7i-a20-csi0";
> > +                     reg = <0x01c09000 0x1000>;
> > +                     interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&ccu CLK_BUS_CSI0>, <&ccu CLK_CSI_SCLK>,
> > +                              <&ccu CLK_DRAM_CSI0>;
> > +                     clock-names = "bus", "isp", "ram";
> > +                     resets = <&ccu RST_BUS_CSI0>;
> > +                     interconnects = <&mbus 5>;
> > +                     interconnect-names = "dma-mem";
> > +                     status = "disabled";
> > +             };
> > +
> >               mmc0: mmc@1c0f000 {
> >                       compatible = "allwinner,sun8i-r40-mmc",
> >                                    "allwinner,sun50i-a64-mmc";
> > @@ -355,6 +369,20 @@ clk_out_a_pin: clk-out-a-pin {
> >                               function = "clk_out_a";
> >                       };
> >
> > +                     /omit-if-no-ref/
> > +                     csi0_8bits_pins: csi0-8bits-pins {
> > +                             pins = "PE0", "PE2", "PE3", "PE4", "PE5",
> > +                                    "PE6", "PE7", "PE8", "PE9", "PE10",
> > +                                    "PE11";
> > +                             function = "csi0";
> > +                     };
> > +
> > +                     /omit-if-no-ref/
> > +                     csi0_mclk_pin: csi0-mclk-pin {
> > +                             pins = "PE1";
> > +                             function = "csi0";
> > +                     };
> > +
> >                       gmac_rgmii_pins: gmac-rgmii-pins {
> >                               pins = "PA0", "PA1", "PA2", "PA3",
> >                                      "PA4", "PA5", "PA6", "PA7",
> > @@ -624,6 +652,14 @@ gmac_mdio: mdio {
> >                       };
> >               };
> >
> > +             mbus: dram-controller@1c62000 {
> > +                     compatible = "allwinner,sun8i-r40-mbus";
> > +                     reg = <0x01c62000 0x1000>;
> > +                     clocks = <&ccu 155>;
>
> We should export the clock too?

I meant to do it separately. Haven't gotten to it though.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
