Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F6FFAC44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 09:51:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gWhlUfIfrHqi9lnMQGFC3ACGHK2xWufICDj3ZJEJyYQ=; b=Lew+W7+ELEPgr4
	X52ngbeRcWVV/RAvX6JTbVpYO8fl2jy6tr78tG47YYgKfePMWJ6ixBVdcn1CS8h/h2VEyPqRgImsp
	J79tdb0QayXzCaaWU73hQi8qgoNQWxCxB29p4QHbMw6ce7hcpFJEhBWJ5fXEsw0hqC+EKg/yOBSOq
	cvxXHMrK4eEVOKpn/vO50ppDSzVx0IJBc5xCVmkn5YU16ByeaGDnB1/3SYsmBiG8EeUpEHMGGDT02
	4++uAuD6MPRsZt8y52gnXAiSnYAYt1wEWi/n8nfhZ3509Fkc2vq9Ehw8yyAp2kIxDEv+WWmgTMThT
	Nz/uI+ERoEYXACEOgeAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoNT-0006QW-PM; Wed, 13 Nov 2019 08:51:51 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoMv-00062o-PV
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 08:51:20 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: lra+25VO4pTiK58An5EnMXM4HMYFjq/Kv3La71l+jNO6qoRoYEBfbpgPbTjYIi4TJdWYcbd0fW
 wVqHr1uelE3zj5T2bCkwkCAiBXn7geXh5W56caI8nc1gvq/8ysv1eN0ladp55yADnycLj4RELs
 ghERICgNRp+huiZv80PMr+KefeNBByE4Q1dCq/4R+kKld6Knmws1t7Gxb7OjQGqLuX07vTefRp
 Ln2rXDO2aBwERBrHYS7qSl39kfRoN14f7wO/LGfJ6R2ohE09+nzfc/Eo99aGa8A9MufQQytJc8
 /Yc=
X-IronPort-AV: E=Sophos;i="5.68,299,1569308400"; d="scan'208";a="54106703"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Nov 2019 01:51:14 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Nov 2019 01:51:14 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 Nov 2019 01:51:12 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <linux@armlinux.org.uk>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>
Subject: [PATCH 00/13] add defconfig support for SAM9X60
Date: Wed, 13 Nov 2019 10:50:56 +0200
Message-ID: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_005117_866423_09D33386 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series enables proper support for SAM9X60 in Kconfig and
defconfig.

Thank you,
Claudiu Beznea

Claudiu Beznea (8):
  ARM: at91: Kconfig: add sam9x60 pll config flag
  ARM: at91: Kconfig: add config flag for SAM9X60 SoC
  ARM: at91/defconfig: use savedefconfig
  ARM: at91/defconfig: add config option for SAM9X60 SoC
  ARM: at91/defconfig: enable atmel maxtouch
  ARM: at91/defconfig: enable SAMA5D2's SHDWC
  ARM: at91/defconfig: enable flexcom
  ARM: at91/defconfig: enable XDMAC

Codrin Ciubotariu (3):
  ARM: at91/defconfig: Add I2S Multi-channel driver
  ARM: at91/defconfig: Add driver for Audio PROTO board
  ARM: at91/defconfig: enable CLASSD

Tudor Ambarus (2):
  ARM: at91/defconfig: enable AT91_SAMA5D2_ADC
  ARM: at91/defconfig: enable ATMEL_QUADSPI

 arch/arm/configs/at91_dt_defconfig | 56 ++++++++++++++++++--------------------
 arch/arm/mach-at91/Kconfig         | 13 +++++++++
 2 files changed, 39 insertions(+), 30 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
