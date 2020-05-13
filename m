Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2C51D14F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXb9zvtvH2taZDoUznN+P02vjRY765RGGCv0LTonrYU=; b=YO5r+gfbvBvbRc
	Mr0p3td6U8G9nb/X87yde8jyTeLwhHFyydX7TRhU4QKhvBXZ6IeBaKduTNIo2lzO6QH4ZsQtW8FAN
	RGaAlFIYFFlP4Q1azZrTVFyRv8ebRFdhxZKLxs3oDUVEtg7y5+dZS/I3r2UaVfCHTod1hzJDg963s
	hqnge/3OQkJcSlb7IhPDLB/X25cptS7MteHTY2r3P1Zsm13jlaoj9gV5o25tSqkHjSd/nPzuBZdzD
	gY6WzyiHZZNYGmmSKQk400mPB9ch06X+UoJ/xmmEDomKCrAXoiFmOISHUN68W1ikTGPACgDAkdNNh
	sINqeuDriGRFMGnRRr5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrUJ-0000Gx-Oa; Wed, 13 May 2020 13:31:55 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrU3-0000EZ-Dn
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:31:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589376700; x=1620912700;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t4aCbU2kHB3bhhe/yGQIKD1b0a2xuEV7ZDV6usSs6jg=;
 b=DXrcmJp8g4r6YWmyyITJ38zBfKjNchded1hhEvtmv4bIJwxz76Xc3dJN
 ulOvRlKZ+a4YeIlxqRYY7/XtfsN3mXtAKFILPIbNW2yrBWm0JYI/4mHsV
 Q/cjqRq4f5cobuo4cjfweX9Dcxh8cmpknQQy34VLco7tfmDHaUfdnvqDM
 88Cx3C+JK3uaUmc0t1IrUViv/NTRXNrX76gw8xHoA7JUSmE/bRwsfPcOZ
 bl8MHMxNdY2qKKrDFKjzJjqEA2jo2pwSphZ0DXyKRVsuAeHmn5jeC/xNR
 88A3VueTgNnG4zZcthg4aPwp77oEddwtTEXzR/xsJhgyDjF32cyldYTOB w==;
IronPort-SDR: bUWPzFdWKX2/k51R9GST6UyKSuQiwjQpNUP4sqAL0kaIvI/PVupWW5wInfBl3DCG/OalO0JfXs
 xplVwZwEwkQsQKeqND3sE0Gzq9C8M6o2QgCm4wNj36JW/bDwvDJLifefNkpBRrnszpXEtmrS53
 upstPfDAcPqWqFlxCHwC2ma66TRhknZvnmdzHQOQvw1YTFywC8rFsOri6R/cUs+ghKQSXUduVU
 MrrUW+Qd2MO1823QRxdvuzSfpo4IgMuQSGtFcV4RImTP3doQjndbb5j0ZcI6WTH6ZQtehDatRs
 evg=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75770577"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:31:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:31:35 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:31:33 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>, SoC Team <soc@kernel.org>
Subject: [PATCH 0/3] mmc: Adding support for Microchip Sparx5 SoC
Date: Wed, 13 May 2020 15:31:19 +0200
Message-ID: <20200513133122.25121-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063139_480282_F29350BD 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
(Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>).

It adds eMMC support for Sparx5, by adding a driver for the SoC SDHCI
controller, DT configuration and DT binding documentation.

Lars Povlsen (3):
  dt-bindings: mmc: Add Sparx5 SDHCI controller bindings
  sdhci: sparx5: Add Sparx5 SoC eMMC driver
  arm64: dts: sparx5: Add Sparx5 eMMC support

 .../mmc/microchip,dw-sparx5-sdhci.yaml        |  57 +++
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |  24 ++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  23 ++
 .../boot/dts/microchip/sparx5_pcb134_emmc.dts |  23 ++
 .../boot/dts/microchip/sparx5_pcb135_emmc.dts |  23 ++
 drivers/mmc/host/Kconfig                      |  13 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/sdhci-of-sparx5.c            | 348 ++++++++++++++++++
 8 files changed, 512 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
 create mode 100644 drivers/mmc/host/sdhci-of-sparx5.c

--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
