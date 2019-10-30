Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB328E9884
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 09:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fMXxFplJNFthkdgMdmVz6U8MckhUeCAO74LfD0/JZQ=; b=n9DW/hHnF6+K29
	7Fz15SMQUhaUrh1bq4KquxjKqBpJLB5aTkK4yFSmDiV/xxA0wF3AVfgD3RUEzgm8PkdKwl5drqoyG
	Ib/zYtzubHaKZqLu9m5lVqPHgnLcOqiIdFTZhnmfoHOcaBb5EKuhXM1BeSOXTow9h8sY+mdha/ZyU
	8nXZ5OttNIns6OrcKzKCkomon77k08QdsVDFusUEN2NTCq+syMrJ64y6kVXfz1It/GZOJL+4B8xZg
	7eM8jQ7VVU+8aA0Z+6wGsKzEFKIjzpy0WQLpDQsS7blm64DI6v/xtWN8EVnKX6CvcIKwSudDxBvmE
	tjWTf+lhv2QDodyPiJFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjjL-0008OP-9f; Wed, 30 Oct 2019 08:53:27 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjjA-0008NV-Vl
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 08:53:18 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: cI+a4Vq/q5z7vdc74fDOKro/iJQP/AVCXSmzsTcb1alrbT5d75PBB5UIyhnOScb+Fs1uPHNX6e
 8aGqe9kmE4x20O+5eBwGsnAfT8zIx7lVKQ5/3/2YhdSBGdG5Akc+HSnovvC+YzuUnnYc3wMnDQ
 Fnvbfk4QT5wK0wZRAqTV3eBtwuv4pfAZLqc92ENP5e1mV2kB9uwo/j15g/ijk05lrHzf8ZrWQ4
 lNbuHZ1ItAFaHG036TBKt9O2T/oFH3ve36HXnVZS4531+IxBu55o5oNon1b3pnvJwoQh8Oeacy
 mQU=
X-IronPort-AV: E=Sophos;i="5.68,246,1569308400"; d="scan'208";a="52107702"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Oct 2019 01:53:14 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Oct 2019 01:53:06 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 30 Oct 2019 01:53:06 -0700
Date: Wed, 30 Oct 2019 09:53:05 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] pinctrl: at91: Enable slewrate by default on SAM9X60
Message-ID: <20191030085305.uwrt5g3mmbwthwms@M43218.corp.atmel.com>
Mail-Followup-To: Rob Herring <robh@kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linus.walleij@linaro.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com
References: <20191024172234.5267-1-codrin.ciubotariu@microchip.com>
 <20191029213757.GA8829@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029213757.GA8829@bogus>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_015317_060478_F7FABBF6 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 claudiu.beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 04:37:57PM -0500, Rob Herring wrote:
> On Thu, Oct 24, 2019 at 08:22:34PM +0300, Codrin Ciubotariu wrote:
> > On SAM9X60, slewrate should be enabled on pins with a switching frequency
> > below 50Mhz. Since most of our pins do not exceed this value, we enable
> > slewrate by default. Pins with a switching value that exceeds 50Mhz will
> > have to explicitly disable slewrate.
> > 
> > Suggested-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> > Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> > ---
> >  drivers/pinctrl/pinctrl-at91.c     | 4 ++--
> >  include/dt-bindings/pinctrl/at91.h | 4 ++--
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
> > index 117075b5798f..c135149e84e9 100644
> > --- a/drivers/pinctrl/pinctrl-at91.c
> > +++ b/drivers/pinctrl/pinctrl-at91.c
> > @@ -85,8 +85,8 @@ enum drive_strength_bit {
> >  					 DRIVE_STRENGTH_SHIFT)
> >  
> >  enum slewrate_bit {
> > -	SLEWRATE_BIT_DIS,
> >  	SLEWRATE_BIT_ENA,
> > +	SLEWRATE_BIT_DIS,
> >  };
> >  
> >  #define SLEWRATE_BIT_MSK(name)		(SLEWRATE_BIT_##name << SLEWRATE_SHIFT)
> > @@ -669,7 +669,7 @@ static void at91_mux_sam9x60_set_slewrate(void __iomem *pio, unsigned pin,
> >  {
> >  	unsigned int tmp;
> >  
> > -	if (setting < SLEWRATE_BIT_DIS || setting > SLEWRATE_BIT_ENA)
> > +	if (setting < SLEWRATE_BIT_ENA || setting > SLEWRATE_BIT_DIS)
> >  		return;
> >  
> >  	tmp = readl_relaxed(pio + SAM9X60_PIO_SLEWR);
> > diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pinctrl/at91.h
> > index 3831f91fb3ba..e8e117306b1b 100644
> > --- a/include/dt-bindings/pinctrl/at91.h
> > +++ b/include/dt-bindings/pinctrl/at91.h
> > @@ -27,8 +27,8 @@
> >  #define AT91_PINCTRL_DRIVE_STRENGTH_MED			(0x2 << 5)
> >  #define AT91_PINCTRL_DRIVE_STRENGTH_HI			(0x3 << 5)
> >  
> > -#define AT91_PINCTRL_SLEWRATE_DIS	(0x0 << 9)
> > -#define AT91_PINCTRL_SLEWRATE_ENA	(0x1 << 9)
> > +#define AT91_PINCTRL_SLEWRATE_ENA	(0x0 << 9)
> > +#define AT91_PINCTRL_SLEWRATE_DIS	(0x1 << 9)
> 
> This is an ABI. You can't just change the definition.

There is no DT using these definitions. They have been introduced for our new
SoC but its DT is not submitted yet. I assume it's not too late to do this
change as nothing will be broken.

Regards

Ludovic

> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
