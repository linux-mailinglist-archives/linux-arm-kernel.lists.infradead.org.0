Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D908BD2119
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 08:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSIBNMBFnqY8120kdXDlElnt+hLKk9IKgaaLfRcL/3s=; b=JO3clesu4X/xtG
	X5bHHT+UlWLEGdwuszYeyfRxbh4bgghNDZSmH0g+5eGqGUBQdKU7haUnmfyUhQcugcgSltl4lxFWX
	yDxTL99PJkmFIyvIDQm8/8Mjj8amDkbpUnvNpTGb/JISsnvePpjk6KZdia9Sl1hsqDlXhHTTeodvg
	k4idsZQWRfxUmKssj/48pBfO5+pcghZSwMAbevJ9PcCAThLHJUpGRXSdpzgq8+0V7mfbBfox2MMnq
	ArNfRUdnCo4ySLfm791h4vnJjTPIKHH4FVAFnHlwFepB1WTy4kpM3N+eqtdoDpL8ZeQoly0dpwJXc
	OfigQ0giBlB8ZspcHHJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISLG-00024P-Nw; Thu, 10 Oct 2019 06:54:30 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISL2-00023b-0D
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 06:54:19 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 56/nY0LiIN/XQ6ARaaD2NWSw2YJpxUgWH2WdPoN9k70jvh2TFLojEBQX4o6320lmoKeMed9Rpe
 GeAzg7PgNmmOPPDAkT0gn0+f18qBXoPv6L+HihKLNKChx3uswal27XjEq/ER5bwYgVQsAch3tZ
 Ga/xMHtPXCwrCtNIyHaeaS69ozV8Mk3/zF2sICBzVXRq/Im/JhvVuFwKJuqrOUu/7V+hD4Ec7h
 lwXsg7VHR2nQzdImqDFhhzh2DLsvBf76It9ZV6JTJcrfGfMbCqOo10VD00cYKVwgsrVfTcMQ9O
 pzY=
X-IronPort-AV: E=Sophos;i="5.67,279,1566889200"; d="scan'208";a="51112714"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Oct 2019 23:54:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Oct 2019 23:54:10 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 9 Oct 2019 23:54:09 -0700
Date: Thu, 10 Oct 2019 08:54:09 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Message-ID: <20191010065408.y7i7aywdztgixv47@M43218.corp.atmel.com>
Mail-Followup-To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Wolfram Sang <wsa@the-dreams.de>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <20191009135500.ufkxcemccwfcfys7@M43218.corp.atmel.com>
 <20191009140145.GE4254@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009140145.GE4254@piout.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_235418_271081_E246FF1D 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: Kamel Bouhara <kamel.bouhara@bootlin.com>, Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-i2c@vger.kernel.org, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 04:01:47PM +0200, Alexandre Belloni wrote:
> 
> On 09/10/2019 15:55:00+0200, Ludovic Desroches wrote:
> > On Wed, Oct 02, 2019 at 04:46:56PM +0200, Kamel Bouhara wrote:
> > > External E-Mail
> > > 
> > > 
> > > Implement i2c bus recovery when slaves devices might hold SDA low.
> > > In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
> > > until the slave release SDA.
> > > 
> > 
> > Hi Kamel,
> > 
> > Thanks for adding this new feature. As I see patches only for sama5d3 and
> > sama5d4, I assume it has not been tested with a sama5d2, isn't it?
> > 
> 
> I there a point having it on sama5d2 as the controller already supports
> this feature?
> 

Right, I was focused on pinctrl and forget we have this feature
supported by the IP.

> > I doubt it works with a sama5d2 because of the pinctrl. I also wonder if it can
> > work if we add .strict = true to pinmux_ops which is something plan for the
> > future...
> > 
> 
> I don't see why it wouldn't work with strict as this is switching muxing
> properly instead of using the pins for two functions at the same time.
> 

Not sure devm_gpiod_get won't fail with strict.

Ludovic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
