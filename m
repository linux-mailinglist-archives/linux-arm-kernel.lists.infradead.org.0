Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A178ACF606
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofYJGt/iWCKXE79UVRscuJSPbdIOpzCTbEM2eIR86Fc=; b=e+hvxezkPn6LSL
	qG6ohdd0bENInr2j7vm3hQUVnNEqCKkBn3qU66FmNmofqvvSpC7Vjk+CfUNcund3QGCCIX1S111zB
	enm8oJdLTd5vilUMaPo4ZPQAYDclemp5fDMU/qXte292Xsh1uCT7ydaOOYiwSm9uUqQORaURfJl3D
	hwxlWW+faYtfICOrhhnBWhjcO5WeKwbHWv0H8XhY8JN8I0yrFQZeKL5KCKTVJvPZWtXgXyoEFZzB6
	GBfXCpP/s4xyr5Euy3gJGr65ZkiF1TwdtJTgW74PxpRaATnOohyo+TfeCAVCoLFa6/v4xfECEfQWA
	VIIwAY7WTQvcMEbpDhfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHlnH-0000U5-S4; Tue, 08 Oct 2019 09:28:35 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHln2-0000QZ-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:28:21 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: pDzxr0OUpql/p028ANa/qShsuGwVQJ+VlFqqMdoAYI3NgErKPw/kU2uB+3PGIK3tUS8gy6VRkD
 Weq23HT8B2olfafGZccCnOLgf69Q93nz5ojgpkiH50uFyUjnC5HGlvKic/xSR2O+wHsSPk/fDC
 9+le4PgmTTiJkCI8WO+YNI9TG2IGlRX0UhNfKjHdE2acXwLlEDUF6eP1GTxS5DTvOfvGSGGbWk
 svbwmDuVNGlkJ8xw2NcOUxDu3jHDRPLlO7W3v/Kt+rP7NXSWmmBbs1KpFkj8fpT7gP8VYQGZpl
 a5g=
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="51904800"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Oct 2019 02:28:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Oct 2019 02:28:18 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 8 Oct 2019 02:28:17 -0700
Date: Tue, 8 Oct 2019 11:28:27 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: sdhci-of-at91: new compatible string
 and update properties
Message-ID: <20191008092826.63kbia2wkggeab74@M43218.corp.atmel.com>
Mail-Followup-To: Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, ulf.hansson@linaro.org,
 nicolas.ferre@microchip.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 claudiu.beznea@microchip.com
References: <20190912200908.31318-1-ludovic.desroches@microchip.com>
 <20190930145613.GA11254@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930145613.GA11254@bogus>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_022820_220426_284480BB 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, claudiu.beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 09:56:13AM -0500, Rob Herring wrote:
> On Thu, Sep 12, 2019 at 10:09:06PM +0200, Ludovic Desroches wrote:
> > There is a new compatible string for the SAM9X60 sdhci device. It involves
> > an update of the properties about the clocks stuff.
> > 
> > Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> > ---
> >  .../devicetree/bindings/mmc/sdhci-atmel.txt   | 25 ++++++++++++++++---
> >  1 file changed, 22 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> > index 1b662d7171a0..364ceea330b6 100644
> > --- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> > +++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> > @@ -5,12 +5,19 @@ Documentation/devicetree/bindings/mmc/mmc.txt and the properties used by the
> >  sdhci-of-at91 driver.
> >  
> >  Required properties:
> > -- compatible:		Must be "atmel,sama5d2-sdhci".
> > +- compatible:		Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci".
> >  - clocks:		Phandlers to the clocks.
> > -- clock-names:		Must be "hclock", "multclk", "baseclk";
> > +- clock-names:		Must be "hclock", "multclk", "baseclk" for
> > +			"atmel,sama5d2-sdhci".
> > +			Must be "hclock", "multclk" for "microchip,sam9x60-sdhci".
> >  
> > +Optional properties:
> > +- assigned-clocks:	The same with "multclk".
> > +- assigned-clock-rates	The rate of "multclk" in order to not rely on the
> > +			gck configuration set by previous components.
> >  
> > -Example:
> > +
> > +Examples:
> >  
> >  sdmmc0: sdio-host@a0000000 {
> >  	compatible = "atmel,sama5d2-sdhci";
> > @@ -18,4 +25,16 @@ sdmmc0: sdio-host@a0000000 {
> >  	interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
> >  	clocks = <&sdmmc0_hclk>, <&sdmmc0_gclk>, <&main>;
> >  	clock-names = "hclock", "multclk", "baseclk";
> > +	assigned-clocks = <&sdmmc0_gclk>;
> > +	assigned-clock-rates = <480000000>;
> > +};
> > +
> > +sdmmc0: sdio-host@80000000 {
> 
> mmc@...
> 
> Though I don't see much value in a second example. Examples are not a 
> complete enumeration of all possible dts entries.
> 

Ok, I'll skip this example.

Ludovic

> > +	compatible = "microchip,sam9x60-sdhci";
> > +	reg = <0x80000000 0x300>;
> > +	interrupts = <12 IRQ_TYPE_LEVEL_HIGH 0>;
> > +	clocks = <&pmc PMC_TYPE_PERIPHERAL 12>, <&pmc PMC_TYPE_GCK 12>;
> > +	clock-names = "hclock", "multclk";
> > +	assigned-clocks = <&pmc PMC_TYPE_GCK 12>;
> > +	assigned-clock-rates = <100000000>;
> >  };
> > -- 
> > 2.23.0
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
