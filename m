Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109111FB41A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4BRS7GM/DB0DFKOHEjmFOTbQ1rUCHuhPPBl9HjVcyK4=; b=gskprlZeWAH80P
	jMmlUgALFB8T0Yv29nXbsx9wfdliQjBX9kWkhNmsrqo0t1oI07wn+bGrGjV3rJ0PiSu7Ka62TsrkS
	Pk0ir0pUYQyJWNtSTUZ6MURJ2yDYnP/Z/GJM1TyxHvgc9kbn+pBOgizF0tFJKDJdYkVJdEL4m812q
	dVBSOCN0NmAj1XEggmXiS3Huqor3AHbMmoHd23anLtLm9+NJMpr3D9j1ag9bZgTLylwP9GAgmat4X
	m2SKkQ9K+fa7ZlcbqqxT2KkhmnW0/tx0dPg6X62pe5Bt9V2b3z7kCjborVjsxTzyY9MRdnEduNn2v
	eFOEM23qItJPuEzTPWUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCSc-0002WB-Rq; Tue, 16 Jun 2020 14:21:10 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC8h-0002JC-QQ
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592316035; x=1623852035;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=unQ0smonLVJdukLZdKp67AJLTTij5kY3nS4sy5MJHsY=;
 b=0bUb7WqRFV9cx3a/PYs+v0QEEYqtxjhzF2cZUGeX9MCqd3wNdR5j+Ys7
 k90gPuuhToHNSqqeSasXbC6l7/46UowWJtB0r3YkJOxdDl63g8Ytpr46O
 IJX1A8LW9HmrcmZQs8UY+KBIUzlbc6cskUZAak54Ncdq32siIlkiMsOcX
 Us0TEG/tEFth3wNtUQjADeqWwqoZZhjqG9ckUymOoo5Of17dWQr3lh3Du
 UAYAUQHBiIRblIUaw2YuGfVbMqrhbOvDqYgrW32OdUG4B1Z4tDvdA3fIM
 RNigxE198Nve3gd53+JKE5MxvEmp4LpdQXUrfrtMPwnKTJ1Ux31PQv7qM g==;
IronPort-SDR: YS7CfaPxcZ7Eqli+xu8y6DhdDKr/sFi6fKYNs7GCDf/f/ArlySlb6tgXpUTH0LMNdPtH1LN6rr
 ZcR8Z1QXNnbS8VAgRP/CUdO+GpPDUk5E7bD/+FXDwaaDeyos8UFc5OJWyfq+3AFwvUeAIVbRyT
 jQT1/BwXzj120JPWUZhvZi2E5uybmrVP0KQb9fjPIuUAA3nWekIlUdR+D4esATpchRcv0vDdJV
 TB/OpHL+Nq+ssG4wNpc2bqWSiQjUFQ8jtJumesalNdZzmcjJbdAm1SoE8gFQyD8Ux/q+YqU82u
 hZc=
X-IronPort-AV: E=Sophos;i="5.73,518,1583218800"; d="scan'208";a="79657991"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Jun 2020 07:00:33 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Jun 2020 07:00:33 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Jun 2020 07:00:26 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>, SoC Team <soc@kernel.org>
Subject: [PATCH v3 0/3] mmc: Adding support for Microchip Sparx5 SoC
Date: Tue, 16 Jun 2020 16:00:24 +0200
Message-ID: <20200616140027.4949-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070040_862214_7C0704D2 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.71.150.166 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an add-on series to the main SoC Sparx5 series
(Message-ID: <20200615133242.24911-1-lars.povlsen@microchip.com>

It adds eMMC support for Sparx5, by adding a driver for the SoC SDHCI
controller, DT configuration and DT binding documentation.

Changes in v3:
- Add dt-bindings for property "microchip,clock-delay"
- Enforce "microchip,clock-delay" valid range in driver
- Removed a noisy pr_debug() in sdhci_sparx5_adma_write_desc()

Changes in v2:
- Changes in driver as per review comments
 - Drop debug code
 - Drop sysfs code
 - use usleep_range()
 - use mmc_hostname() in pr_debug()
 - Remove deactivated code
 - Minor cosmetics

Lars Povlsen (3):
  dt-bindings: mmc: Add Sparx5 SDHCI controller bindings
  sdhci: sparx5: Add Sparx5 SoC eMMC driver
  arm64: dts: sparx5: Add Sparx5 eMMC support

 .../mmc/microchip,dw-sparx5-sdhci.yaml        |  65 +++++
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |  24 ++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  23 ++
 .../boot/dts/microchip/sparx5_pcb134_emmc.dts |  23 ++
 .../boot/dts/microchip/sparx5_pcb135_emmc.dts |  23 ++
 drivers/mmc/host/Kconfig                      |  13 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/sdhci-of-sparx5.c            | 269 ++++++++++++++++++
 8 files changed, 441 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
 create mode 100644 drivers/mmc/host/sdhci-of-sparx5.c

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
