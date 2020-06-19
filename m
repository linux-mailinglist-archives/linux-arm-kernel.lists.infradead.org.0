Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DE32007D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3d7XpZn6yc1TmPlHdIZ/5/rffX8tSZ5sESUL6M51ZNo=; b=rt4UpbvApbGUGI
	RELj+ZPWvGMNEMhFQgfc8IjBGGOgBuxq61dUvcWSY11CIjQ3KVdBgCyFFgrOlJspSceMsRNy6zgCY
	THM4ZRATsLqiHZyLyioc5ViWfQyV9JvtaRHOEKethhKKOQpIscLTx9B3AgXJ1MsEOruSvQE0aORvb
	cnhVEkTSLbTr5PZzqVSEboTaUc0HbuWo/wAIN67kRDigHfjC2E4dmL81JRnZrOqlnsrYttIlinicH
	bXeQgOunj5NFp3S+TwtT+hCK9AFUcb6QRTVYbCtX1E6NFOe3kMYK3gkSZ7GgHMKNjAWZFs54RxumY
	iHQU2+SxRZwigu6WwLFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFFo-0000Yx-Eb; Fri, 19 Jun 2020 11:32:16 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFFI-0000NK-0S
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 11:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592566303; x=1624102303;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UfVOSLTcqF6xKAGoXoeHxnEVgPiigXyHa28boyXOH6Q=;
 b=G4Ze1grzQ9Fpz8HZMFNR73zB+KgdMi6tC6aOheNjlTu4JGBdFDLzosjk
 xGYp9trZIrt7xWkrGu3H2F8wkvsWiU1tfBU3fWK6WlWnGRG0IAl+Y43eo
 wwY4aXMgAkd1UQma1f/vQ88vAbSRd8gJl43m/fNG8lz+THLjWqe8B7E5U
 efjZVScb6kTQjEuoy57R4V340zIGA2sXVlDtpPqlZlTXbpzqf2AptMDUr
 OVPijVc9hcL4g17TWLb75GKNgbAYYsKgFw+Kt+zjdwYZbCjIhz5ehsAbR
 MwwdbF7QgINdbJQprs6fmfkWWrEb06EPZZs+b5phLv5UAsZxFpcbeogrX w==;
IronPort-SDR: OC/IJX71ViysRevrfGLlaWcMy5Nz1nSqUhqRmG9vQjTkpyGFoX5wfRZGRLk0ZSps4TDWUYMd5g
 w0312+f0izYSgJgl4K3gm9PrWhV90FhwXMPC0QHKlJNgFQmg2WwsQ27tc9twYFRJLGa8XvsAN3
 GMAHXJcOlF9G6b5guyyz15UgAz15ZJucXxDD1SoZIqsRStNwZR1+A9ZSeGRbIjQknL4khuw90X
 rlRvojNCLunFOFFbh1+uIGODUaW3SNv5xd63EBOkksGBpBOxjlWvIaGbeJYE75eZxaOzHeGg7c
 j0c=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="84298522"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 04:31:33 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 04:31:26 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 04:31:24 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH v2 0/6] spi: Adding support for Microchip Sparx5 SoC
Date: Fri, 19 Jun 2020 13:31:15 +0200
Message-ID: <20200619113121.9984-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_043144_086602_AC54A016 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an add-on series to the main SoC Sparx5 series
(Message-ID: <20200615133242.24911-1-lars.povlsen@microchip.com>

The series add support for the Sparx5 SoC SPI controller in the
spi-dw-mmio.c spi driver.

v2 changes:
- Moved all RX sample delay into spi-dw-core.c, using
  the "snps,rx-sample-delay-ns" device property.
- Integrated Sparx5 support directly in spi-dw-mmio.c
- Changed SPI2 configuration to per-slave "microchip,spi-interface2"
  property.
- Added bindings to existing snps,dw-apb-ssi.yaml file
- Dropped patches for polled mode and SPI memory operations.

Lars Povlsen (6):
  spi: dw: Add support for RX sample delay register
  arm64: dts: sparx5: Add SPI controller
  spi: dw: Add Microchip Sparx5 support
  dt-bindings: snps,dw-apb-ssi: Add sparx5, SPI slave
    snps,rx-sample-delay-ns and microchip,spi-interface2 properties.
  arm64: dts: sparx5: Add spi-nor support
  arm64: dts: sparx5: Add spi-nand devices

 .../bindings/spi/snps,dw-apb-ssi.yaml         |  24 ++++
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |  34 ++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  16 +++
 .../boot/dts/microchip/sparx5_pcb134.dts      |  22 ++++
 .../dts/microchip/sparx5_pcb134_board.dtsi    |   9 ++
 .../boot/dts/microchip/sparx5_pcb135.dts      |  23 ++++
 .../dts/microchip/sparx5_pcb135_board.dtsi    |   9 ++
 drivers/spi/spi-dw-core.c                     |  20 ++++
 drivers/spi/spi-dw-mmio.c                     | 113 +++++++++++++++++-
 drivers/spi/spi-dw.h                          |   2 +
 10 files changed, 271 insertions(+), 1 deletion(-)

--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
