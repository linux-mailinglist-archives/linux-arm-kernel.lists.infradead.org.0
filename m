Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C5313A5F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:24:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=01ZDHzo9+L74gdHvRoKi7yulhCEfVZl4sC4c5N70R1c=; b=n0MfSP96DXPLUS
	9b8UZCNF4iQzTJB5k0D7zff4q8DL2Sjdsg1GoRtgIUe8Ax8iyJ2dMoPV6m1PHsxEFJw84Adc5DX4w
	H4gQgTFYETFDyn6MqDQRe0qsCXwZ5V0OVNAsaMqF4PF8L4BZ4dIILp6jhWIoNBzMObWyACsksTgRY
	Eqz9Bc1hWa2tRXmMeBa8idUcqmtxaSO4plIuoTqUkBDRsV5jC22Ec6ZgVKwMqRVFCTLhXx2xSQupO
	HzzPbrPiVMDZYmzGqJAFJ4H1vkT+cN+SZP+BmM0kuvL4COqWSMz39QOy6eUX65/lQIm4HTNWYpR7d
	Gc1ZIPln7Uo3OPBIfJ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJMT-0004wm-CZ; Tue, 14 Jan 2020 10:23:49 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJMA-0004uR-9l
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:23:35 +0000
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
IronPort-SDR: jPx5E3KOkH6mR9ry4o1HzOH9N0C78UV0ceTGbcWjgkVKF9MO2PJ3vWKSOu9WWpalK7v3GbXbBz
 pV0RXWL01EP480LvcDCgQvvRYWxYbx8nuwhimqI4U+3Kmo2EU+mZJBnZOhqOs3m7ufGLtZf9Sp
 oXzFEyXNaYsdLk8VE3c+riV2qtQnHkfLy0XvSI/4tYa1lmN34xqYJQ4ZlpsskV922N7HcRjL+F
 JwAEGwA4F7IwO7V1txO9RwkCtmDdC6J+zfagD/WwMKDw6SmgpG7qY6PQ8xv/eQuM4dWr6zsT7o
 mhg=
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="63175793"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 03:23:28 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 03:23:28 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Jan 2020 03:23:24 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <radu_nicolae.pirea@upb.ro>,
 <richard.genoud@gmail.com>, <a.zummo@towertech.it>
Subject: [PATCH v3 0/7] add device tree for SAM9X60 SoC and SAM9X60-EK board
Date: Tue, 14 Jan 2020 12:23:10 +0200
Message-ID: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_022330_348452_1CD906D2 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add device tree for SAM9X60 SoC and SAM9X60-EK board.
Allong with these, there are patches that documents some compatibles
for SAM9X60's IPs.

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

Claudiu Beznea (6):
  dt-bindings: atmel-tcb: remove wildcard
  dt-bindings: atmel-tcb: add microchip,sam9x60-tcb
  dt-bindings: atmel,at91rm9200-rtc: add microchip,sam9x60-rtc
  dt-bindings: atmel-usart: remove wildcard
  dt-bindings: atmel-usart: add microchip,sam9x60-{usart, dbgu}
  ARM: at91/defconfig: enable MMC_SDHCI_OF_AT91 and MICROCHIP_PIT64B

Sandeep Sheriker Mallikarjun (1):
  ARM: dts: at91: sam9x60: add device tree for soc and board

 .../devicetree/bindings/mfd/atmel-tcb.txt          |   7 +-
 .../devicetree/bindings/mfd/atmel-usart.txt        |   8 +-
 .../bindings/rtc/atmel,at91rm9200-rtc.txt          |   3 +-
 arch/arm/boot/dts/Makefile                         |   2 +
 arch/arm/boot/dts/at91-sam9x60ek.dts               | 647 +++++++++++++++++++
 arch/arm/boot/dts/sam9x60.dtsi                     | 691 +++++++++++++++++++++
 arch/arm/configs/at91_dt_defconfig                 |   4 +
 7 files changed, 1355 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/boot/dts/at91-sam9x60ek.dts
 create mode 100644 arch/arm/boot/dts/sam9x60.dtsi

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
