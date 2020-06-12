Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A495B1F7C3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 19:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2jl0YFfLA90j2YEBHhFbEHNBj2hySMepdvRpW73PzV8=; b=WUqKtASCpEjBor
	uOirqxQuPYYi+ewRwWzLmO6IMlTZ3NgHtaAzAy0YMUF09fmbbDZuXG4uYF/pQHe2Bra0x7ZHMIFYe
	o4clHeTkW4Yme/M1VhZwk4zB+tyPqP9OfPJ3oi32ZU5jbmwi5i+SjMnu+zye0O3nV4aX73EXENKuI
	2QeC7VVLWR2Of/MqfM7ehgSm8FFrOEYYDvVOX7hWnbHMRFVYBOGni0+QLFnBUVK6jvBkxI9/ISYSq
	P5fF7XtBD2m9UVIWtAeuwzIbZ+0U4WOLDmi0MYwAkukSw9X+t7hOPxrUMfMDL7yx4UGgvUp3QEc+5
	d+d5A67DJG2hjm0ayAaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjnG5-0001TC-Lh; Fri, 12 Jun 2020 17:14:25 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjnFV-0001Fq-SD; Fri, 12 Jun 2020 17:13:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A2947AED9;
 Fri, 12 Jun 2020 17:13:46 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/9] Raspberry Pi 4 USB firmware initialization rework
Date: Fri, 12 Jun 2020 19:13:24 +0200
Message-Id: <20200612171334.26385-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_101350_072372_BC49A204 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, Eric Anholt <eric@anholt.net>,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
loaded directly from an EEPROM or, if not present, by the SoC's
co-processor, VideoCore. This series reworks how we handle this.

The previous solution makes use of PCI quirks and exporting platform
specific functions. Albeit functional it feels pretty shoehorned. This
proposes an alternative way of handling the triggering of the xHCI chip
initialization trough means of a reset controller.

The benefits are pretty evident: less platform churn in core xHCI code,
and no explicit device dependency management in pcie-brcmstb.

Note that patch #1 depends on another series[1].

The series is based on next-20200611

v2: https://lkml.org/lkml/2020/6/9/875
v1: https://lore.kernel.org/linux-usb/20200608192701.18355-1-nsaenzjulienne@suse.de/T/#t

[1] https://lwn.net/ml/linux-kernel/cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech/

---

Changes since v2:
 - Add reset to resume routine in xhci-pci
 - Correct of refcount in pci-quirks
 - Correct typos
 - Use include file to define firmware reset IDs

Changes since v1:
 - Rework reset controller so it's less USB centric.
 - Use correct reset controller API in xhci-pci
 - Correct typos

Nicolas Saenz Julienne (9):
  dt-bindings: reset: Add a binding for the RPi Firmware reset
    controller
  reset: Add Raspberry Pi 4 firmware reset controller
  ARM: dts: bcm2711: Add firmware usb reset node
  ARM: dts: bcm2711: Add reset controller to xHCI node
  usb: xhci-pci: Add support for reset controllers
  Revert "USB: pci-quirks: Add Raspberry Pi 4 quirk"
  usb: host: pci-quirks: Bypass xHCI quirks for Raspberry Pi 4
  Revert "firmware: raspberrypi: Introduce vl805 init routine"
  Revert "PCI: brcmstb: Wait for Raspberry Pi's firmware when present"

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml |  21 +++
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts         |  14 ++
 drivers/firmware/Kconfig                      |   3 +-
 drivers/firmware/raspberrypi.c                |  61 ---------
 drivers/pci/controller/pcie-brcmstb.c         |  17 ---
 drivers/reset/Kconfig                         |  11 ++
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-raspberrypi.c             | 122 ++++++++++++++++++
 drivers/usb/host/pci-quirks.c                 |  22 ++--
 drivers/usb/host/xhci-pci.c                   |  10 ++
 drivers/usb/host/xhci.h                       |   2 +
 .../reset/raspberrypi,firmware-reset.h        |  13 ++
 include/soc/bcm2835/raspberrypi-firmware.h    |   7 -
 13 files changed, 207 insertions(+), 97 deletions(-)
 create mode 100644 drivers/reset/reset-raspberrypi.c
 create mode 100644 include/dt-bindings/reset/raspberrypi,firmware-reset.h

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
