Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09A91FF464
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g3iKplD7Pvg8HS9KkDfYYCHDV5TGslL/eoASM2mVqAs=; b=jZLqCbDb/1V/yG
	1WDa6JDZN+5PMjuUNQVhGti8H6ouIN3G3qGk8gzC6kV2POBvp5dNZ69ZVV1ZFpbOZqNUWA0CUlD/X
	fnglOX0KUZyVwoD2/HmT8pmiR7kpO0Bt6EBRVn0j6ikDUyFDRnHi/aman3U+1OyPkS7LU8yi2AYum
	3sIVvlK5+YlcIciUny/0wXlrKOrCKJnBFrE4VyTz4AOtYEm9uo/ViQ1O96pCqbLH4FzS6vW4OQK0o
	r6FjnujPg9gXfaIQDndoc7fssUL9Aan8P4qH9sO36IIA8gpsdPKpplYI2VzVdJYRTy3W0BCfXiheh
	5oFvDB8kMV2SM065IWNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvIe-0007Ra-EA; Thu, 18 Jun 2020 14:13:52 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvIU-0007Pp-BP
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592489622; x=1624025622;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qaISx7kIwjmQW7aDNabN0pTA9+hEP2G3tl7DISJo728=;
 b=ukaVhsEIfTUfT7Nu/hEGisajPLCOGfrkAQeiyGzliA1UkgR/LRqDhF1z
 5cCUbl8IQwpEURdFrD3Km6j2HSiV/bp5lh1/Vn08hk/l4uDPhrqp7vmqJ
 rYqJ78J4mz4yYZps5f8pHYr+8WI+uQO4yl8BWwiwnvE4Iw4rVk6zJyEvV
 F+XIlbiyZCJZsi1Pir5/VGUXh0iig45nUbQsPsxoKKjzvYQjBEoETHIFS
 LhJ3BLjvahIbcSu4e62XBDt4Arbq283EKIXZe7mDT1n1REqUKi5okuDno
 z7V+nDgn5WD7B8xS763936ITqXTWQaixnLPUcXP2MIuAcFwgz81ZRtq0Y g==;
IronPort-SDR: sEbG+n7Y5rb+0x5y9CdXAzEWIdWjG5Kma7Ynmj+Zj2Qu/3OMszzWTPCAqqs+E8WTvCRW/mqsJj
 3vHrK5iA/79+6/evapQR0z6lceHxts0aQJOcwYCwnO721lpEFaCNgG6FemyVlLw0yUf2Gu2Ha8
 V7VQgFxE4buHu2moCLZUrhfaswWwZ9gI7iuox+ju/+BpoEByh0+KUUwv+GyX8IU2wqc1X+mOJ7
 kw5geagDknZPZxMjAXy4urmVs8eEc0HulzPp8gr5wTDTA6wq8CbC9hsrjqNymps5V3bfsHmLEn
 7ms=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="78953791"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 07:13:40 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 07:13:33 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 18 Jun 2020 07:13:31 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>, SoC Team <soc@kernel.org>
Subject: [PATCH v4 0/3] mmc: Adding support for Microchip Sparx5 SoC
Date: Thu, 18 Jun 2020 16:13:23 +0200
Message-ID: <20200618141326.25723-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071342_479220_960E8068 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes in v4:
- Disable clock if sdhci_add_host() fails
- Remove dev_err if sdhci_add_host() fails

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
