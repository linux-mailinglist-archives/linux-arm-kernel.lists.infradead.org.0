Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251D5109EA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 14:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HGE3PN1PJvlNszXeGzLbwLLVxPYedp4qQztLdADaNSY=; b=uQVizYbKYsr9Oq
	ZxiobJi2dLxkwGcM14vQ8W83F35xTGLuhCvR3DB2SP8hgRhQoMUf21658kcioi4vRZ7o1C1xDVHnY
	uzJVU+ym2yvsNLrYCl9qYQummd7Ifw069nkVhmeCy7SUa5Lqeaf+r2f5esKKi2dw/6hxtKayE4OKU
	NAt/hDZjCwAsjbjfFWuGy6uUoLLMGXbckJX7L47aeyWPOQgSSnO2AC3j8rrm+XJw9znAqqXxcbY2k
	/nlkCaxb5qDzWP0yfTJ/5biqAZr1GetFbEQ8eQlpPsET9kcsqC/tZMNhVBREEnNCbZXjFTbcVAjGa
	KSYKOcC/9pf92BZmMEaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZaei-0007g8-TJ; Tue, 26 Nov 2019 13:13:25 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaeH-0006z4-3v
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 13:13:00 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: s1r+VMWgk8BGUsk6zfUdzjdhEn82Pb8LNILPviEHf6UKZVsA7TEfbZZp12ue+QiPgRIrTxS1G9
 EIY0liGmNCUs4qKK372toowLGz37a79E0bwdfueQtWRauFBOVlEcMhqjYwDFdYzZbqB7VUnzK8
 MhIXM0CWnh4AigxQZ+xuJxl9askTSJ2xgSph6ZdvolZa+Zy2zKQOP4Z7k+Ec6m2fwmCc1oeubf
 deGhJlKMKKUZBwApeSwNZj6gMENvLXL5cG1T51cbA3H5sntk/l0djihRRFOyRnbUTZy5ifRn0a
 BCc=
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="58391051"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Nov 2019 06:12:54 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 Nov 2019 06:12:52 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 26 Nov 2019 06:12:49 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <linux@armlinux.org.uk>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <sre@kernel.org>
Subject: [PATCH v2 00/17] SoC and defconfig support for SAM9X60
Date: Tue, 26 Nov 2019 15:12:04 +0200
Message-ID: <1574773941-20649-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_051257_181073_11F0652D 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series enables proper support for SAM9X60 in Kconfig and
defconfig.

Thank you,
Claudiu Beznea

Changes in v2:
- cahnged cover letter title; previously it was:
  "add defconfig support for SAM9X60"
- have new entry in arch/arm/mach-at91/Kconfig for SOC_SAM9X60
  independent of SOC_AT91SAM9 to be able to select only necessary
  config flags for SAM9X60 (patches 02/17, 03/17)
- select POWER_RESET_AT91_RESET and POWER_RESET_AT91_SAMA5D2_SHDWC
  as for SAMA5D2 (patches 04/17, 05/17)
- select DEBUG_AT91_RM9200_DBGU (patch 06/17)
- shaped a bit the patches titles and commit desciptions for defconfig
  patches (patches 09-17/17)

Claudiu Beznea (12):
  ARM: at91: Kconfig: add sam9x60 pll config flag
  ARM: at91: pm: move SAM9X60's PM under its own SoC config flag
  drivers: soc: atmel: move sam9x60 under its own config flag
  power: reset: Kconfig: select POWER_RESET_AT91_RESET for sam9x60
  drivers: soc: atmel: select POWER_RESET_AT91_SAMA5D2_SHDWC for sam9x60
  ARM: debug-ll: select DEBUG_AT91_RM9200_DBGU for sam9x60
  ARM: at91: Kconfig: add config flag for SAM9X60 SoC
  ARM: at91/defconfig: use savedefconfig
  ARM: at91/defconfig: enable config flag for sam9x60 SoC
  ARM: at91/defconfig: enable config flag for atmel maxtouch
  ARM: at91/defconfig: enable config flag for flexcom
  ARM: at91/defconfig: enable config flag for XDMAC

Codrin Ciubotariu (3):
  ARM: at91/defconfig: enable config flag for I2S Multi-channel
  ARM: at91/defconfig: enable config flag for audio PROTO board
  ARM: at91/defconfig: enable config flag for CLASSD

Tudor Ambarus (2):
  ARM: at91/defconfig: enable config flag for SAMA5D2's ADC
  ARM: at91/defconfig: enable config flag for ATMEL QUADSPI

 arch/arm/Kconfig.debug             |  6 ++---
 arch/arm/configs/at91_dt_defconfig | 55 ++++++++++++++++++--------------------
 arch/arm/mach-at91/Kconfig         | 24 +++++++++++++++--
 arch/arm/mach-at91/Makefile        |  1 +
 arch/arm/mach-at91/at91sam9.c      | 18 -------------
 arch/arm/mach-at91/pm.c            |  2 +-
 arch/arm/mach-at91/sam9x60.c       | 34 +++++++++++++++++++++++
 drivers/power/reset/Kconfig        |  4 +--
 drivers/soc/atmel/soc.c            |  5 ++--
 9 files changed, 92 insertions(+), 57 deletions(-)
 create mode 100644 arch/arm/mach-at91/sam9x60.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
