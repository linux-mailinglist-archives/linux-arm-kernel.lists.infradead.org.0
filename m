Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844341D1733
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ZY3mdf5iK+9DyOcQu8RvMboGFQ7qW5U0iDPrGsHapA=; b=YSqs+Sp1TlwVuJ
	HxHSLC8V0OozeKJGoAWSPcirypjEwdZDSy4eGPD5zFHE0kuY3HenlSb3KvsFuli2EubHrVoqsBZHv
	/0P4dvCT1GOE+1EBPCBsL07imDfGA4ETPTN6fF85RAgGY42dS72Ka1IUH8pNlGLl3XpYrylz7A7N7
	kXdkym/jrYsddhLd3vUBLG/UO0PD8m4Vq1+4GdjNFYs5Hi/F0mXbAGFiw6zC6F8yBSXzfPvicEdFM
	msu6hHskV1zq9p7FzHVAFllzZdW/65diCkA+8X6GTQUN68oCC0Nrjuym9UVABYh5jdl0c5bMO2dEq
	nvDcuU/ioWGkM17xS3aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs6z-0000qB-Lw; Wed, 13 May 2020 14:11:53 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYs6o-0000pH-MF
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589379103; x=1620915103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5WXfpxIeLjwdA1AccfrnMornNgh2rcnqXLeB14bOL6M=;
 b=VP3pxKv3p7+MTz3uf/X8tzYXVnjVllLttoYv+8JFlg2Uii8LsUVdMP88
 TLLUVQp7Q/yppBYHQKMkxJs7SVqUPz/A8c+c8zAz9EjJeTuSgo8LTt9q/
 3A/qsl//FRJSfRKZCsn4Z0HSv8mtuiJNBJN8Js2Ndi/niqJor4gEGndnc
 cA+l3HBNk4gPs8hS29JTq8+6vjQxS+TcPAtiYzvpdYF0S1Hk6j5+jkgiN
 YTVzNYMy+LDzyCDI0tJjBGwJdncQTuGs/z8IBAsE9Fr2JRyXIyTmxSqNE
 WE6SVZFKFuYyMGDnp2LVgPzUgTcHHU8zmaBnRFjPu147QgC0+i3sw29uq A==;
IronPort-SDR: 5drTsb9kRZJ4MeOmkRuJ8EtkPi6xB8TWOv1AR2eFoP8emFeXIm8oz3nThGCaoJwGbJeDWK9Vfy
 FJ1YV7e5bzjRDbKG/aLVjnAM1jO0D+PMODePKOSv1kvt//nXj0Ui8aXh8L5CfZtOt4w6FoJCZy
 A00EUEsgEkFGCGLbeawioffwGe0hapGDbq/JDLuOsLoL0Nsqqo5EJFz/9dzBVwnsY2L83V7zpQ
 w/9hvMPiTeYr0BPlqqCJ0c79jJ97ZYtDmbQMi9ZnccHOqyzaMWVLhTle+tiUgsxXbDliwK1YQQ
 qkg=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="75776751"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:11:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:11:41 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:11:40 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/3] pinctrl: Adding support for Microchip serial GPIO
 controller
Date: Wed, 13 May 2020 16:11:31 +0200
Message-ID: <20200513141134.25819-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_071142_769570_951D1350 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an add-on series to the main SoC Sparx5 series
(Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>).

The series add support for the serial GPIO controller used by Sparx5,
as well as (MSCC) ocelot/jaguar2.

The GPIO controller only supports output mode currently.

It is expected that the DT patches are to be taken directly by the arm-soc
maintainers.

Lars Povlsen (3):
  dt-bindings: pinctrl: Add bindings for mscc,ocelot-sgpio
  pinctrl: mchp-sgpio: Add pinctrl driver for Microsemi Serial GPIO
  arm64: dts: sparx5: Add SGPIO devices

 .../bindings/pinctrl/mscc,ocelot-sgpio.yaml   |  66 ++
 MAINTAINERS                                   |   2 +
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |  52 ++
 .../boot/dts/microchip/sparx5_pcb125.dts      |   5 +
 .../dts/microchip/sparx5_pcb134_board.dtsi    |   5 +
 drivers/pinctrl/Kconfig                       |  17 +
 drivers/pinctrl/Makefile                      |   1 +
 drivers/pinctrl/pinctrl-mchp-sgpio.c          | 569 ++++++++++++++++++
 include/dt-bindings/gpio/mchp-sgpio.h         |  21 +
 9 files changed, 738 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/mscc,ocelot-sgpio.yaml
 create mode 100644 drivers/pinctrl/pinctrl-mchp-sgpio.c
 create mode 100644 include/dt-bindings/gpio/mchp-sgpio.h

--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
