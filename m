Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EE91F1FCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hCxSYSSKUR6JfgTq6XGB/iZxtZPL2BDbF1l7W8Cu10E=; b=RhXYyv/iMdb3Gm
	Pfgxfvb7Pt2T6joNIqr04uV0R2pM5BVjL7CsY5WVigAvHmfrnJsqGcRJm7W/8lyyooboSgPEnAmmn
	oNZSjab9NqEtGqtmAf/zKlPjaCNAdsk5B0EjF1mKVIBNS7+0QE3J4NecFi4VZLZ37QeDNnei3yBGD
	9EXGlKiXytr2tI+zhlyLHet1e3OxXiwr69FNxuF90ZhePWwAChfCqQ9vIkJisO+cd4kaAWjHLdV9n
	b0/+0yfOY3Uf9HXX9/YYwKIuxbUcxtouL1wWtaSDUrCkjpVdasbZ0Fd6m9xtia6Jdw/DEARe3WoF2
	q+4uwTaueCzgJpqXhy2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNRC-0002RY-HM; Mon, 08 Jun 2020 19:28:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNQj-0002Eg-E7; Mon, 08 Jun 2020 19:27:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E1636AE41;
 Mon,  8 Jun 2020 19:27:31 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 robh@kernel.org, mathias.nyman@linux.intel.com,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH 0/9] Raspberry Pi 4 USB firmware initialization rework
Date: Mon,  8 Jun 2020 21:26:52 +0200
Message-Id: <20200608192701.18355-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_122733_621585_D91385D8 
X-CRM114-Status: GOOD (  12.78  )
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
Cc: lorenzo.pieralisi@arm.com, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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

Note that patch #1 depend on another series[1].

The series is based on next-20200605.

[1] https://lwn.net/ml/linux-kernel/cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech/

---

Nicolas Saenz Julienne (9):
  dt-bindings: reset: Add a binding for the RPi Firmware USB reset
  reset: Add Raspberry Pi 4 firmware USB reset controller
  ARM: dts: bcm2711: Add firmware usb reset node
  ARM: dts: bcm2711: Add reset controller to xHCI node
  usb: xhci-pci: Add support for reset controllers
  Revert "USB: pci-quirks: Add Raspberry Pi 4 quirk"
  usb: host: pci-quirks: Bypass xHCI quirks for Raspberry Pi 4
  Revert "firmware: raspberrypi: Introduce vl805 init routine"
  Revert "PCI: brcmstb: Wait for Raspberry Pi's firmware when present"

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml |  21 +++
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts         |  12 ++
 drivers/firmware/Kconfig                      |   3 +-
 drivers/firmware/raspberrypi.c                |  61 ---------
 drivers/pci/controller/pcie-brcmstb.c         |  17 ---
 drivers/reset/Kconfig                         |   9 ++
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-raspberrypi-usb.c         | 122 ++++++++++++++++++
 drivers/usb/host/pci-quirks.c                 |  22 ++--
 drivers/usb/host/xhci-pci.c                   |   9 ++
 include/soc/bcm2835/raspberrypi-firmware.h    |   7 -
 11 files changed, 184 insertions(+), 100 deletions(-)
 create mode 100644 drivers/reset/reset-raspberrypi-usb.c

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
