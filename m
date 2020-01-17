Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498F114095E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 12:59:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nregUEVZga7g8CcOO1wJmMdpbwqvr6JW1lw3+WVGFRo=; b=QKMvCWfXOa4Xp4
	9hwHa9DwEcqUty3IMi62cKNy/XqR8rzsVbj6KhskbqnLJfiNrPo1UP4fjPywjcvUKqDBBuZunNcTw
	eOcDB3MjjyZI+bwfpcZTxZgSu5SvomHoVqmJSjx80LAqLYxuvVdFJzUYWsDA+uzbn5UKB9mB9EpYU
	+lzOGSFBG4g9wosCe2J4HytqaXu14M1JIckpfzlnbYYvrcrDhJuMwD8Y5l4yw3YgPuFNGR1g2Oaah
	0n+rHjBP756mP3TvPKqJBGxS8DZYV7c+DkZRcD32gAfq9qGKquc4UkNHLuuyvnCpV8n/KfxrM/ay6
	9azV+RH31ovqrxXl9Vcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQH5-00047R-Io; Fri, 17 Jan 2020 11:58:51 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQGr-00045m-B8
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 11:58:43 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: FgvdYU/Gcd1OKOqQOfFME9o+87htsyBdSmJirRmi7ZNkdbypGQULhOZNsmLahpU25dsmt70bkK
 ZccR+CmD1IVrua4ZyCdfWZ+giPIGEdMZNeLc2e5eoFd4lpwm2st7cdJfaDiYjIU1ZMi8yiMVGh
 Za4MnLokUPZMY1P6a1FhgWGRIhHchezjp6NiPWQ3nMhjPSYSEmds0WESgzpciFiwuRiToQfld4
 WEZia90k4ssTUf/f4Vgg3ICZXZYiMXha3bOA8Tl6QptvBmekUcILZuxWl9sSVurS7Y6OV5F2Ep
 10Y=
X-IronPort-AV: E=Sophos;i="5.70,330,1574146800"; d="scan'208";a="61130320"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jan 2020 04:58:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jan 2020 04:58:35 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 17 Jan 2020 04:58:31 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <radu_nicolae.pirea@upb.ro>, <richard.genoud@gmail.com>,
 <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH v5 0/2] add device tree for SAM9X60 SoC and SAM9X60-EK board
Date: Fri, 17 Jan 2020 13:58:27 +0200
Message-ID: <1579262309-6542-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_035837_417092_D3D7A4FB 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series contains only DT binding documentation for
microchip,sam9x60-usart and add microchip,sam9x60-dbgu. I kept its
title and versioning for reference. Only these 2 patches in this
version left. The other were applied by Alexandre.

Thank you,
Claudiu Beznea

Changes in v5:
- remove patches:
	- dt-bindings: atmel,at91rm9200-rtc: add microchip,sam9x60-rtc
	- ARM: at91/defconfig: enable MMC_SDHCI_OF_AT91 and MICROCHIP_PIT64B
	- ARM: dts: at91: sam9x60: add device tree for soc and board
  as they were applied.
- collected Acked-for-mfd-by

Changes in v4:
- remove patches:
	- dt-bindings: atmel-tcb: remove wildcard
	- dt-bindings: atmel-tcb: add microchip,sam9x60-tcb
  since they were applied
- address review comments
- fix compatible list for dbug in sam9x60.dtsi

Changes in v3:
- remove applied patches from series
- split patch "dt-bindings: atmel-tcb: add microchip,sam9x60-tcb" in two patches:
	- dt-bindings: atmel-tcb: add microchip,sam9x60-tcb
	- dt-bindings: atmel-tcb: remove wildcard
- split patch "dt-bindings: atmel-usart: remove wildcard" in two patches:
	- dt-bindings: atmel-usart: add microchip,sam9x60-{usart, dbgu}
	- dt-bindings: atmel-usart: remove wildcard
  and adapt them as per review comments
- collect acked-by tags

Changes in v2:
- replace patch "dt-bindings: at_xdmac: add entry for microchip compatibles"
  by patches:
	- dt-bindings: at_xdmac: add microchip,sam9x60-dma
	- dt-bindings: at_xdmac: remove wildcard.
- replace patch "dt-bindings: atmel-usart: add microchip,<chip>-usart"
  by patches:
	- dt-bindings: atmel-usart: add microchip,sam9x60-{usart, dbgu}
	- dt-bindings: atmel-usart: remove wildcard
- remove patch "dt-bindings: spi_atmel: add microchip,sam9x60-spi"
  as it was accepted
- collect reviewed-by tags

Claudiu Beznea (2):
  dt-bindings: atmel-usart: remove wildcard
  dt-bindings: atmel-usart: add microchip,sam9x60-{usart, dbgu}

 Documentation/devicetree/bindings/mfd/atmel-usart.txt | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
