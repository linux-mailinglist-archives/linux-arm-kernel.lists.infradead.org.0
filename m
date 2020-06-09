Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F301F37F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iBi2wS5Bn3HvbPHP8E1+96IefKdSxtDMM+x8fzFh6Mo=; b=m1tGRZGWHUp7kS
	aUFdNvHLq6Aj8ABM1y8r7tNRiMSogy2vpNRdTnBgMEORkF2UZQ+3YvRmS0qDMpAIq+fy9R0VhekJE
	cyPSRdices8gDTQwD/uV+6nu+bcLWHLQwkp9uLEciJsyEHVcxR8BLi5nuLoOxL00/osXEPRi03u/v
	/ppNgNIgqSak7noGO9O4cKTh3s3Y1tYwX9NUm2BHyyohixCdHuGEEJ9QVr9/DcotSJ8cFhwqb8Bfx
	SGvEFQYJhSRMYSJ9mqiMKnoiJKRdnI3QFgbDCSx7JdKKEb9m+JnR9xoEhZY0urUdswcfO/lR9MpgG
	/O16qfOUFOx1Apw8IAuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibNh-0001yU-Ij; Tue, 09 Jun 2020 10:21:21 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibMy-000186-8V
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:20:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591698036; x=1623234036;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jog8U1hg1Jb0yOPntlrXCpHzhFdDi4nx+A8hEzkfpIc=;
 b=s+wfFT6T4QWxS5bq8yxTT0Co2z5aDLAunK4vm3qRizlZQ4rqyafhZboy
 cwa+yQ/lu1ZlnEKSlcAR7JYxejO1Q8NlvD6mxABrwjesJnIdwXFfBSM2+
 IZNX6c0zI7M3ikx3UGLQAWQUIY59PjmlSkPX/f6/dUi86b4D+vebxXjWc
 CZa6Z+34+AnT9vQGWA8katR00yWcP7TXgYEHLa2keMHF2XLfQikaNYF9f
 l1g0wab5Kugc2S1TUBKlRAD/ZA0P7sEgEJsBRvxfz4v+ynt8VewMTh9yA
 r2UmAsgYVcR45HvKw8cejm0VVY88yj2fxs80Uj917Q1S+S9UU147kxgcD Q==;
IronPort-SDR: GsUomaDlsyMFGql6N5vKCKqggAS8YTeM8rMEysweN7jreEtYgmsUT9SR7LCgT5iWJHn6yq+KBr
 JcYdSIakI6+vBex31IJhOeiKfHKihHDKm5ZCOwUH9fhXnWy/KxRxYbqgxwXcGeAWeTj3Y+odJK
 WRJUbXsCdmC398dPnffw8iYmYxC69HKWzjaaP1porxdM6EcDPHCYk+l9UA4wNtGvaF0mszvqg1
 LF4sySzldi0r2v3DJPvEH+Uwo+SxpKpKRZ/BwGM8uILdf+uSuYToyvvj9qTX+bn1nswG3MFKYk
 6/g=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="78723000"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 03:20:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 03:20:34 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 03:20:32 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>
Subject: [PATCH v2 0/3] mmc: Adding support for Microchip Sparx5 SoC
Date: Tue, 9 Jun 2020 12:20:05 +0200
Message-ID: <20200609102008.10530-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_032036_385134_737977B8 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an add-on series to the main SoC Sparx5 series
(Message-ID: <20200608123024.5330-1-lars.povlsen@microchip.com>)

It adds eMMC support for Sparx5, by adding a driver for the SoC SDHCI
controller, DT configuration and DT binding documentation.

Changes in v2:
- Changes in driver as per review comments
 - Drop debug code
 - Drop sysfs code
 - Minor cosmetics

Lars Povlsen (3):
  dt-bindings: mmc: Add Sparx5 SDHCI controller bindings
  sdhci: sparx5: Add Sparx5 SoC eMMC driver
  arm64: dts: sparx5: Add Sparx5 eMMC support

 .../mmc/microchip,dw-sparx5-sdhci.yaml        |  57 ++++
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |  24 ++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  23 ++
 .../boot/dts/microchip/sparx5_pcb134_emmc.dts |  23 ++
 .../boot/dts/microchip/sparx5_pcb135_emmc.dts |  23 ++
 drivers/mmc/host/Kconfig                      |  13 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/sdhci-of-sparx5.c            | 274 ++++++++++++++++++
 8 files changed, 438 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
 create mode 100644 drivers/mmc/host/sdhci-of-sparx5.c

--
Cc: Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
Cc: linux-mmc@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
