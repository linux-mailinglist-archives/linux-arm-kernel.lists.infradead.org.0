Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E3C5103B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 17:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZCf+aaqCsi4a8mOg1M1fAN9bv00AA5Hxu2Xnyw40SU=; b=o/lZVzJkoSHZTt
	3XbgXc2qiCV6nMQHJg1D5dX2oz93hCItgch0umIIBUiDkMEkuhOEznB6IUzR31T800IMQeRmr6jYx
	Fp/prgwElnumEZUa6x16SnBiZH5Jn6FEZC4J5zky6gcxlrb0rLLgKVPnTyTS0/w6kMLySMmV/ktsX
	PBzmgyEiwtvBT8LP497RnaJ6TIBpa6/Zs9VLEdxsibfttpELa6MvYzUFlVUbL1JhS/f7SYbuFjZ+P
	Fc26e+1WmSfoJctKbLUWOy293V4bxnlUaVTdeRUwl4VY1SXUAkTCMJeXLAF+MPxSogH4An4k63Zlx
	J3851WVDUvpfCRZNBZVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQp7-0002OH-K6; Mon, 24 Jun 2019 15:24:01 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQow-0002Mq-OU
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 15:23:52 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Allan.Nielsen@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="Allan.Nielsen@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Allan.Nielsen@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Allan.Nielsen@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,412,1557212400"; d="scan'208";a="35622915"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jun 2019 08:23:47 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 24 Jun 2019 08:22:48 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 24 Jun 2019 08:22:48 -0700
Date: Mon, 24 Jun 2019 17:23:45 +0200
From: "Allan W. Nielsen" <allan.nielsen@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Message-ID: <20190624152344.3bv46jjhhygo6zwl@lx-anielsen.microsemi.net>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
 <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
 <20190624115558.GA5690@piout.net> <20190624142625.GR31306@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624142625.GR31306@lunn.ch>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_082350_827493_9880982D 
X-CRM114-Status: GOOD (  16.38  )
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

The 06/24/2019 16:26, Andrew Lunn wrote:
> > > Yeah, there are 2 ethernet controller ports (managed by the enetc driver) 
> > > connected inside the SoC via SGMII links to 2 of the switch ports, one of
> > > these switch ports can be configured as CPU port (with follow-up patches).
> > > 
> > > This configuration may look prettier on DSA, but the main restriction here
> > > is that the entire functionality is provided by the ocelot driver which is a
> > > switchdev driver.  I don't think it would be a good idea to copy-paste code
> > > from ocelot to a separate dsa driver.
> > > 
> > 
> > We should probably make the ocelot driver a DSA driver then...
> An important part of DSA is being able to direct frames out specific
> ports when they ingress via the CPU port. Does the silicon support
> this? At the moment, i think it is using polled IO.

That is supported, it requires a bit of initial configuration of the Chip, but
nothing big (I believe this configuration is part of Claudiu's change-set).

But how do you envision this done?

- Let the existing SwitchDev driver and the DSA driver use a set of common
  functions.
- Convert the existing Ocelot driver from SwitchDev to DSA
- Fork (copy) the existing driver of Ocelot, and modify it as needed for the
  Felix driver

My guess is the first one, but I would like to understand what you have in mind.

BTW: The Ocelot switch does exist in an other (register compatible) version
without the MIPS CPU. That version would use a MAC-2-MAC connection to an
external CPU, and would fit the DSA model. And we have been considering how to
best represent that version in the kernel.

/Allan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
