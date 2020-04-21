Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D831B209B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dqYUB7HR3X6Q1A8u7Oojmt4YJSTVrj3t/YLeT1bPCRk=; b=lwwc88oLUgHMMw
	hMAGPSgBz5F7BYWUFHWOIUwR/x+RPIiUplvCggN+ePzoRpcIRxLHT6l1GuTsEN5UxsM6zBBgKGT3D
	eKaeZV6d3bXoALsbq/pnqJ6jl+6vvBKnmf7mNJ7xUxlnUB4izUEHvlv1Ia0dTze7nQk0GGPaEQ6iI
	Y66IYHlj+kWgtrN0uk/32mYOV55nxGtxzFJeV+1EchDCWvAyvVOXVZJHpvyLx8AOsXSUTo3KJALhb
	+5w/32mn53uMBfVzgjAoZ3RXwal9ltgrjTBrv0Jt/PiBE8JjlvzN3FP1oPcXy4Rc+Ysd9SQhbTB2o
	YosO1xr32845tzYqOdrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnqT-00018A-Fa; Tue, 21 Apr 2020 08:01:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnq8-000169-78
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:01:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id b11so15314648wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KBv83Opptndn2jdIJyA6t7FILIlZmdOYex4CsUwqmNQ=;
 b=pt5x0o+FSwY0eW4M36QP7Qu/0mEXdNl9eRQzQt1YLuknSOtQaMwUeXjppkFtvacSYH
 2l9rbyHQBVVzLz8SdnFXc0R2tnf9T1dxyjbjDg1/moFCMVmD8Sgq9wDhlZEllEGTl2gG
 My5sG9HTAR/p3XzFKEwVltOKCwzBSotoYW74GLD7g11seGLF278ocBsNWMksG+OjTu5T
 sn7mTCplD7/5iFY1Nmd6sh7dKZ7cIjRRtgQDAvQ6HLMpvvnspbm5bwFBjPRPir9bBDgg
 LTq+sro56EUOk2da/pALgphV8CjCnfsNBQuHe25I9nVTGwqEYqdVxhakKyGMrA4BOCct
 ehmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KBv83Opptndn2jdIJyA6t7FILIlZmdOYex4CsUwqmNQ=;
 b=rE4HvrGgctpQGFL9OxcideUTR48kmFy64YHHfPLO8F+Rtx7na6fJXqjrn+nZUzPZxm
 b91qvTr2JsVv8AFe4luIdkuTEzNqsy6WpCXB4mKALWB2w9liZQP1ps/0isbGHxXcdFvB
 acAcHWllc6cuJyA9N06sYGXr5dAyAxoQ5GqWhQxFFlXwxegJ0cm45vHTacoojytbrEFf
 h1qPPGlntgejxNi0Qhce7BcQ0Jt8th20IO3+xkzoxFzhT6pR+bnsVIhS+6s51SL4xpWz
 V5yin2DRb0jjunpgM4jNM6AGenc0jqXdsEtpXFbqIA8X3gi+SJk+NT5kuAxaBOnc8ssr
 YFtg==
X-Gm-Message-State: AGi0PuY+3dIgfqJ1vlBNoZvrg0PyUBuTlzR9UsqDmF623Wd4Lxvp+LRD
 sZ+yJHG+dpyUnWpwFTEl+h7hzw==
X-Google-Smtp-Source: APiQypKTi6JDVYSaT1z2mVhN2/bDq93mvCWZgHVF5JFa9trwb10pl44CHnxvZAwdqrksgM/Q+RQvdw==
X-Received: by 2002:a5d:62cc:: with SMTP id o12mr22278772wrv.75.1587456066485; 
 Tue, 21 Apr 2020 01:01:06 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 x132sm2561552wmg.33.2020.04.21.01.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:01:05 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, jdelvare@suse.com, linux@roeck-us.net,
 srinivas.kandagatla@linaro.org
Subject: [RFC 0/8] mfd: Add support for Khadas Microcontroller
Date: Tue, 21 Apr 2020 10:00:54 +0200
Message-Id: <20200421080102.22796-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010108_261888_AB8B0BD5 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, art@khadas.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new Khadas VIM2, VIM3 and Edge boards embeds an on-board microcontroller
connected via I2C.

This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
boards.

It has multiple boot control features like password check, power-on
options, power-off control and system FAN control on recent boards.

Thie serie adds :
- the bindings
- the MFD driver
- the HWMON cell driver
- the NVMEM cell driver
- updates MAINTAINERS
- add support into the Khadas VIM3/VIM3L DT

Neil Armstrong (8):
  dt-bindings: mfd: add Khadas Microcontroller bindings
  mfd: add support for the Khadas System control Microcontroller
  hwmon: add support for the MCU controlled FAN on Khadas boards
  nvmem: add support for the Khadas MCU Programmable User Memory
  MAINTAINERS: add myself as maintainer for Khadas MCU drivers
  arm64: dts: meson-g12b: move G12B thermal nodes to meson-g12b.dtsi
  arm64: dts: meson-sm1: add cpu thermal nodes
  arm64: dts: meson-khadas-vim3: add Khadas MCU nodes

 .../devicetree/bindings/mfd/khadas,mcu.yaml   |  44 ++++
 MAINTAINERS                                   |  11 +
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi    |  23 --
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  22 ++
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  23 ++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  24 ++
 drivers/hwmon/Kconfig                         |   9 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/khadas-mcu-fan.c                | 230 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  14 ++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/khadas-mcu.c                      | 143 +++++++++++
 drivers/nvmem/Kconfig                         |   8 +
 drivers/nvmem/Makefile                        |   2 +
 drivers/nvmem/khadas-mcu-user-mem.c           | 128 ++++++++++
 include/linux/mfd/khadas-mcu.h                |  91 +++++++
 16 files changed, 751 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
 create mode 100644 drivers/hwmon/khadas-mcu-fan.c
 create mode 100644 drivers/mfd/khadas-mcu.c
 create mode 100644 drivers/nvmem/khadas-mcu-user-mem.c
 create mode 100644 include/linux/mfd/khadas-mcu.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
