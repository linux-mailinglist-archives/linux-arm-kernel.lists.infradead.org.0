Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE94CDC482
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqTJnIn7PTnhGH2MXTBAr00Npffql2GkWgcaAWWReqs=; b=WrxRq9+xQwGhgE
	lzl1DVXEFRFRmPwb72ubd/gyIZ28CzS+wM6cs9du2Ovc+y05AKQe9IPSEybNPA6Iq1vaPSc/tTZo6
	2Dt3JFuIxFfwjke3S7J2DKbkrbkifQs7evbaoBpjdpQTDPMJjszHxO1a1w1T5ZiK9QBpSKBY7UrK8
	J8wf/HmaC6wYA2Qce3w5pZoGZ+Gun7g2X5ovmCYAfxBpDzcB20H2p8cHSQ74kqIklktGHTqjc5whP
	UyetLPhdvdt05S+NJSVUiOS0Ut3pWLDc5+faVHjYoRVSiJ5Gy28QswOYN2u72Vnr4sMgtpeifyx9E
	Og1mitCKKE7R3n/R4+TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRA3-0005e4-IF; Fri, 18 Oct 2019 12:15:15 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLR9i-0005Ty-6z
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:14:56 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: WpcM4t+h+BiSE5DAkXqotBcFPlp7WhdvXZzB+lFIrne06zK9oZZQtt/2uL6ioL8hRCVMTmzKTY
 1I7aE6yfQ7Tvd78K9cB7L7cca9Zpw/cDYRkKA4fQe9wg0cogpmgQUq25RnZ+oiufmSGojNgfux
 BanWzd7u24H2pi0KDtDD8ycCQA/dPxSXw3myTUhUPk4Qm9Yxl8DWBIrqi/lcQy9BPIPaSRBJlt
 XD7RgHNjgKOy1nojLVf/1rNcQmMl5c9oQxedlxweIG56qVKoRj75XapEjtthOWIo751UnZNNnk
 F2M=
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="53522909"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Oct 2019 05:14:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Oct 2019 05:14:49 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 18 Oct 2019 05:14:50 -0700
Date: Fri, 18 Oct 2019 14:15:23 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: sdhci-of-at91: new compatible string
 and update properties
Message-ID: <20191018121522.vq2co7b42kb2ykox@M43218.corp.atmel.com>
Mail-Followup-To: Ulf Hansson <ulf.hansson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 DTML <devicetree@vger.kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, claudiu.beznea@microchip.com,
 Eugen.Hristev@microchip.com
References: <20191011103340.26749-1-ludovic.desroches@microchip.com>
 <CAPDyKFqxfBG-CDd_O9d8X89GZmNFXh=CoFE2QqptgtLtOU5=_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqxfBG-CDd_O9d8X89GZmNFXh=CoFE2QqptgtLtOU5=_Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_051454_284349_29710FA8 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Eugen.Hristev@microchip.com,
 Adrian Hunter <adrian.hunter@intel.com>, claudiu.beznea@microchip.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 12:56:14PM +0200, Ulf Hansson wrote:
> On Fri, 11 Oct 2019 at 12:33, Ludovic Desroches
> <ludovic.desroches@microchip.com> wrote:
> >
> > There is a new compatible string for the SAM9X60 sdhci device. It involves
> > an update of the properties about the clocks stuff.
> >
> > Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> 
> This doesn't apply any more, can you please re-spin it?

Sure, I'll rebase these patches and send a v2

Regards

Ludovic

> 
> Kind regards
> Uffe
> 
> 
> > ---
> >
> > Changes:
> > - v2: remove the extra example and fix node label
> >
> > This patch conflicts with Nicolas' one: "dt-bindings: sdhci-of-at91: add
> > the microchip,sdcal-inverted property". Let me know which one has to be
> > rebased or you can handle it.
> >
> > Ludovic
> >
> >
> >  .../devicetree/bindings/mmc/sdhci-atmel.txt       | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> > index 1b662d7171a0..5d541ad4d4eb 100644
> > --- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> > +++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> > @@ -5,17 +5,26 @@ Documentation/devicetree/bindings/mmc/mmc.txt and the properties used by the
> >  sdhci-of-at91 driver.
> >
> >  Required properties:
> > -- compatible:          Must be "atmel,sama5d2-sdhci".
> > +- compatible:          Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci".
> >  - clocks:              Phandlers to the clocks.
> > -- clock-names:         Must be "hclock", "multclk", "baseclk";
> > +- clock-names:         Must be "hclock", "multclk", "baseclk" for
> > +                       "atmel,sama5d2-sdhci".
> > +                       Must be "hclock", "multclk" for "microchip,sam9x60-sdhci".
> > +
> > +Optional properties:
> > +- assigned-clocks:     The same with "multclk".
> > +- assigned-clock-rates The rate of "multclk" in order to not rely on the
> > +                       gck configuration set by previous components.
> >
> >
> >  Example:
> >
> > -sdmmc0: sdio-host@a0000000 {
> > +mmc0: sdio-host@a0000000 {
> >         compatible = "atmel,sama5d2-sdhci";
> >         reg = <0xa0000000 0x300>;
> >         interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
> >         clocks = <&sdmmc0_hclk>, <&sdmmc0_gclk>, <&main>;
> >         clock-names = "hclock", "multclk", "baseclk";
> > +       assigned-clocks = <&sdmmc0_gclk>;
> > +       assigned-clock-rates = <480000000>;
> >  };
> > --
> > 2.23.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
