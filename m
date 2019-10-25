Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD988E481A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaFNG4rLlJitXlUk3WboxqhwzJeRh8Am1z7ZHS5RRc0=; b=MrvtIi7QozxApZ
	ReCP0++fZlPMKBx62O6Xp2NA5Tdgjo5J7P5x7vKcDRXEU3SbiMWNPyhV0eA8sRZM+TmryZYUYF2NM
	t3mrdx1xd2NzGcTFztsl8fkwj0n29lFmb+/QfaiwuVy5QSMZRdw2QN4bQWTr6Jqirx9ltJmvD60i7
	w4+JpF6nCB7VlOPLZh9YF6S5azJ4t9X4wsdslhf1myzW42ofXkHGUxusJBSZSZgsH9yPD+N1d1vW+
	KZXb78K7KWnUKNswmLmCc209jwf5LptNuebNZTVNG7ykOspWUr4j2sdsPgX7zYHWriVMFqvzx6+aJ
	I3TcWPGPVdZBatI0ozTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwSm-0000TB-V6; Fri, 25 Oct 2019 10:04:57 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwSY-0000Rm-Lx
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:04:44 +0000
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
IronPort-SDR: Vo2odXphj/KVzfXpt/vKYWCW+4NLpQZ99A9C2N47hGAgQ0jNaDTC8qQIVcS3vhFkuqMNxJAyH9
 gFEI/d4dEZ7ZrILkTkBR/pEiN3r89MWShBO9WOVcAkJ9NZmFHXLGhySop1YGD2YsFfn9nTb0uT
 3wDmeijlf+5LRnAto2lZjBDiMeoFeIIYqktYNkhkaqE3PQuZA/1LdbtVZ/j8SNsd/clchTL6LP
 QEk01eLvH6ul2ZewjsSeeNBiBhq9rrgC51Gdm7nlKo4haN5u3WzwP+68JkVqMxuIIf57IKqGpJ
 O9k=
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="54399032"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Oct 2019 03:04:38 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Oct 2019 03:04:38 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 25 Oct 2019 03:04:37 -0700
Date: Fri, 25 Oct 2019 12:05:43 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v5 0/9] i2c: add support for filters
Message-ID: <20191025100542.licpieymkbsbm5cd@M43218.corp.atmel.com>
Mail-Followup-To: Wolfram Sang <wsa@the-dreams.de>,
 Eugen.Hristev@microchip.com, peda@axentia.se, mark.rutland@arm.com,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandre.belloni@bootlin.com, robh+dt@kernel.org,
 Nicolas.Ferre@microchip.com
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
 <20191024183035.GA1870@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024183035.GA1870@kunai>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_030442_719676_432CE03C 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, Eugen.Hristev@microchip.com,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 08:30:35PM +0200, Wolfram Sang wrote:
> On Wed, Sep 11, 2019 at 08:24:14AM +0000, Eugen.Hristev@microchip.com wrote:
> > From: Eugen Hristev <eugen.hristev@microchip.com>
> > 
> > Hello,
> > 
> > This series adds support for analog and digital filters for i2c controllers
> > 
> > This series is based on the series:
> > [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
> > and later
> > [PATCH v4 0/9] i2c: add support for filters
> > and enhanced to add the bindings for all controllers plus an extra bindings
> > for the width of the spikes in nanoseconds (digital filters) and cut-off
> > frequency (analog filters)
> > 
> > First, bindings are created for
> > 'i2c-analog-filter'
> > 'i2c-digital-filter'
> > 'i2c-digital-filter-width-ns'
> > 'i2c-analog-filter-cutoff-frequency'
> > 
> > The support is added in the i2c core to retrieve filter width/cutoff frequency
> > and add it to the timings structure.
> > Next, the at91 driver is enhanced for supporting digital filter, advanced
> > digital filter (with selectable spike width) and the analog filter.
> > 
> > Finally the device tree for two boards are modified to make use of the
> > new properties.
> > 
> > This series is the result of the comments on the ML in the direction
> > requested: to make the bindings globally available for i2c drivers.
> 
> Applied patches 1-7 to for-next (patch 3 is v6). Thanks for your
> patience and thanks to Ludovic and Peter for the review! Patches 8-9
> should go via the at91 tree.
> 

Thanks, patch 8 and 9 applied to at91-dt.

Regards

Ludovic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
