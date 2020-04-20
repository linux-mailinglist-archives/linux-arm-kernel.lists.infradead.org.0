Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB451B0C8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDduAIj1nKezlQIAQJckd33eKBVZuDGDNmvTfTwHoA8=; b=IT9HmFlFOWZLG1
	05FBejZ5dGP2Fe6a0Qu0MWRO9N806hLpCW0zG4FAaxVaYtJJQodQM2tO6vvsuj92+QfLfVNSoZVg8
	aIn5CzKUEnq5GBpkTSXR50RGAWGb0JJ/1TOJ808Hk0Esr/iGBbVa4Mp9xiEQwQ9sr28bv/c1FKNaO
	rPS1ZyaMZtmlKcaNHinS3qtZMk12x/098mbrkQP5KgaEJY0qRAzmOuRtKkxItqdsL9VrJNEHynJ5A
	dPNN2CtyZdySY0CBe4V//K4YD/V6iFlj9kwisqU64H1PlNCCm5uNz9PcP95ns7qaRn05z79Usaoqo
	1959Kq1a+yyvNYC0PDrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWOo-0006dx-5b; Mon, 20 Apr 2020 13:23:46 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWOc-0006c0-PV
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:23:36 +0000
Received: from plaes.org (localhost [127.0.0.1])
 by plaes.org (Postfix) with ESMTPSA id CCD8740A7B;
 Mon, 20 Apr 2020 13:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1587389012; bh=C6Dtbg3q0uXybP36NbU5y1NPoiLkrqHskL4a1HmkXWU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XODGn7RM9T0LNlWavtietxGietUiG8szqR/r/Ex8cH53BxJoy/0sxZfiVUiDoNyuC
 hrg3crDPBSZHsnYNejAbkrjpBitLNS7R+huQ80GG4dy8r+h2Nfyw5rhFFtecBZ1Um3
 ZoNMkzvaBlAMYLnGKegF78CMqQtL4ru9+sqmfoCeJTrD7kIGeBPgWNxA+jRzS2MyGX
 kMV+h8IfKk/ua0qqJqxirDZ4WG7gS7AFPt7xX6nSe4fCS6tr/2f8z5Tr0Bqb9ZIZQF
 LCe15byUGKpGdooDQ5b1frNivo2UklScnIyoRZVHCxZljVoBSbbn15V66bxuwEkyKg
 1XIujwiTlFzFw==
Date: Mon, 20 Apr 2020 13:23:31 +0000
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 4/4] ARM: dts: sun7i: Use syscon-based implementation for
 gmac
Message-ID: <20200420132331.GB18522@plaes.org>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-5-plaes@plaes.org>
 <20200420125919.3bqosps7nzwvmasn@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420125919.3bqosps7nzwvmasn@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_062334_967482_C3A4F589 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 02:59:19PM +0200, Maxime Ripard wrote:
> On Sat, Apr 18, 2020 at 01:17:30AM +0300, Priit Laes wrote:
> > Use syscon-based approach to access gmac clock configuration
> > register, instead of relying on a custom clock driver.
> > 
> > As a bonus, we can now drop the custom clock implementation
> > and dummy clocks making sun7i fully CCU-compatible.
> > 
> > Signed-off-by: Priit Laes <plaes@plaes.org>
> > ---
> >  arch/arm/boot/dts/sun7i-a20.dtsi | 36 +++-----------------------------
> >  1 file changed, 3 insertions(+), 33 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
> > index ffe1d10a1a84..750962a94fad 100644
> > --- a/arch/arm/boot/dts/sun7i-a20.dtsi
> > +++ b/arch/arm/boot/dts/sun7i-a20.dtsi
> > @@ -219,37 +219,6 @@ osc32k: clk-32k {
> >  			clock-frequency = <32768>;
> >  			clock-output-names = "osc32k";
> >  		};
> > -
> > -		/*
> > -		 * The following two are dummy clocks, placeholders
> > -		 * used in the gmac_tx clock. The gmac driver will
> > -		 * choose one parent depending on the PHY interface
> > -		 * mode, using clk_set_rate auto-reparenting.
> > -		 *
> > -		 * The actual TX clock rate is not controlled by the
> > -		 * gmac_tx clock.
> > -		 */
> > -		mii_phy_tx_clk: clk-mii-phy-tx {
> > -			#clock-cells = <0>;
> > -			compatible = "fixed-clock";
> > -			clock-frequency = <25000000>;
> > -			clock-output-names = "mii_phy_tx";
> > -		};
> > -
> > -		gmac_int_tx_clk: clk-gmac-int-tx {
> > -			#clock-cells = <0>;
> > -			compatible = "fixed-clock";
> > -			clock-frequency = <125000000>;
> > -			clock-output-names = "gmac_int_tx";
> > -		};
> > -
> > -		gmac_tx_clk: clk@1c20164 {
> > -			#clock-cells = <0>;
> > -			compatible = "allwinner,sun7i-a20-gmac-clk";
> > -			reg = <0x01c20164 0x4>;
> > -			clocks = <&mii_phy_tx_clk>, <&gmac_int_tx_clk>;
> > -			clock-output-names = "gmac_tx";
> > -		};
> >  	};
> >  
> >  
> > @@ -1511,11 +1480,12 @@ mali: gpu@1c40000 {
> >  
> >  		gmac: ethernet@1c50000 {
> >  			compatible = "allwinner,sun7i-a20-gmac";
> > +			syscon = <&ccu>;
> >  			reg = <0x01c50000 0x10000>;
> >  			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
> >  			interrupt-names = "macirq";
> > -			clocks = <&ccu CLK_AHB_GMAC>, <&gmac_tx_clk>;
> > -			clock-names = "stmmaceth", "allwinner_gmac_tx";
> > +			clocks = <&ccu CLK_AHB_GMAC>;
> > +			clock-names = "stmmaceth";
> 
> I guess you also need to update the binding so that it considers it valid?

Yes, will do it in the next round.

> 
> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
