Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CA211A99B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 12:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c2eM/GOtRn1cWloLRYGpD2G0J646CDVS6GpWoeTzhnw=; b=ozTKMq8A2FRNMQ
	62cPJNxGEIvu9wHqgmiNfZU1p2nEOvQ7z4WRx0E526QNct+rO57g5S1yHPeJavNdr1eSWX+VH4ZxX
	ph/fLiFzw28WUOeLRBZAN6S1Gm9hgdqb7oDShlRDT+xAOwcj7UlppzxlZZ6JBH4lQUAZt1tOpFXuA
	A1JcNTxKHFmlnxuUvvJwi/MFrnrPyE+Aea/X/CtWln0f3Q5H6Fc8OkhPiyP6mm99CFd3yAmLFRylZ
	qqu8eIQKA3hC/ngcDmQ/nm8HLTl+5lW3IHGrJ+Y2MAFdtTzX+j6bLl5XpHyu+0ABYi/Qa1e9SOaoh
	Je1RZ+Urqcpv3n5vvvYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieznF-0008Kr-E6; Wed, 11 Dec 2019 11:04:33 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezmx-0008Cr-Cp
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 11:04:16 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: x5BEYydDoUiARx9BXsQuf9b16jqHJlOzawKjpEKw7Im19AhchnFefRPClNde8mHA8G+KqdLwSS
 hcL6wud7RJfRrJ2MQsTQXqnvRHeQ88x+7/VA+F+DWMp9HAotbXg5rAWEa8mWF7tGdt2r5mXbeL
 7Dgp7q7wyStWfaFQiyXEAAG61p+2bunv5fGFWGusa1PfF3FOXTcWPD4ungvwFcJl1LCS1Wvwg2
 mSPbMKqlFpc7IAn6IevgAcPPpySEM3DRGGkncnqp4K9VguifOwYy1WQiSKgHKdxXavwndNaEAe
 tGA=
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="61346702"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Dec 2019 04:04:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Dec 2019 04:04:21 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 11 Dec 2019 04:04:10 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>
Subject: [PATCH 0/2] pm fixes for SAM9X60
Date: Wed, 11 Dec 2019 13:04:06 +0200
Message-ID: <1576062248-18514-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_030415_454370_726C6591 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shutdown controller and PMC changes for SAM9X60 were not integrated
when PM patches for SAM9X60 were submitted.

Thank you,
Claudiu Beznea

Claudiu Beznea (2):
  ARM: at91: pm: use SAM9X60 PMC's compatible
  ARM: at91: pm: use of_device_id array to find the proper shdwc node

 arch/arm/mach-at91/pm.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
