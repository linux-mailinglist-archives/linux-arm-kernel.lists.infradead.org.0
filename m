Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028DF190A97
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S60dNTYuwKlFBKrtIH7tEJ2cGC5oUOpa69U7PRQ+jwk=; b=K1i2d2252KQ8Cl
	sQzVO8v2AZhbKRKvpuYSNSMTeYGzoTO8KMf5OEtxyvfRZDT0k2lUit/+MiTnBeGul/umh4lpPYr5O
	veSzSgZ29m20EWQmsV9ASvzp0d4AO/Vv0PC23+KimrnbpplxTS60xMy2X+QzUMApvTXBP99WMvndS
	T2lNtvHUvrqQpD+awWSEe+pW+mzRmJyfT1MB8Xd2PixbV0Cp3sARZGmqfbBM4Vc65+yqm6pDiDPXi
	G9EGUqOC2EH3e6rk5ZciUQ+bAbHDxwTc7gtVKCVIMNhsRCgH+EMeiMoQvvA+OTQEmhmmjTejJCXzW
	AUTvFi8WS4l1bIa9pROg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGggB-0001u3-KN; Tue, 24 Mar 2020 10:21:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgfo-0001qD-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:20:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so20673737wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 03:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RHjJI7aShrh91OoV00QHF3f8tRyA7jklYuLyoaLdZpU=;
 b=VJDW48n7k0ddcp7+Y1+gejwqC9PsCLrSpTZ/9jdmEwACaw5iwrnqY806ZRC+0OlwO9
 3oC8uo/6CWdGg+WAI7bBQjVzQPiPbD1gJXoVYQzvIWBqoKIC7qs0YkR5FtIlMd4ZH2b9
 hMdrR/e2DLI3EPdIi7aTE21K50ivfVFcRs/B2/NcPsJAr8QRdAS0h6PIQ3X9RpKu54/c
 YFCeYN464ihgX9YzRe/YLyMSIIdXkA667q6ZD40Yh7ra5keHqkPffOV7DjDwW9Uiw2kb
 6ExvPUJv7i4DwgeoJGoKN88gGVoxBWoJtTRDlwDFJ3etJaGoP0zemtbE81+TExeKzoQS
 wSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RHjJI7aShrh91OoV00QHF3f8tRyA7jklYuLyoaLdZpU=;
 b=hH88SRxddzx55/Ho8tRKrIrw0oPADpbMaPohPYakWk9Xvsph3MeEXDYGqgTpZ+/Obq
 PRKjr1K2Np9Lu8myhX6naTRxrTKaSRSIIWHFjYnEYZdvo+7OLDih3g5qSgzLWzwFwWDN
 iLCU/jqxdMvNYpJetYRQuMrCjoKd1SVi3O2VY9D0g9c2X4KHRCw5zdyejld3WDqNlCzj
 ArzdOE1mixEnGgjKjr3aPhOZShl5kNIpY+3o2F88j6ruVrfAhKsXe7XfFrD0kEjHMz4A
 4AakHN22vlGPOhE4Rf+E7eCSDvgNlLv3I37gAA8qDaF6LzDrEdw+B5pLf0C42I5IRvj4
 P7nA==
X-Gm-Message-State: ANhLgQ3kI4I3D8xwArHrpWdwHHyMSstUWQQ7QSjmO9mc7RuP/1jkPGFc
 GiDyMc8SGHkJ3J1fbPsm66i65Q==
X-Google-Smtp-Source: ADFU+vumN7anU9Np/hM8X3RBvL+hlj4hyYLEch8wVFiIMu+fM9wkQYbSGMWshJXNe6Txlxu/iEWbQg==
X-Received: by 2002:adf:efc9:: with SMTP id i9mr15183022wrp.23.1585045238251; 
 Tue, 24 Mar 2020 03:20:38 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h5sm2879527wro.83.2020.03.24.03.20.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 03:20:37 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH 00/13] usb: dwc3: meson: add OTG support for GXL/GXM
Date: Tue, 24 Mar 2020 11:20:17 +0100
Message-Id: <20200324102030.31000-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_032041_010097_47DBDDBA 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The USB support was initialy done with a set of PHYs and dwc3-of-simple
because the architecture of the USB complex was not understood correctly
at the time (and proper documentation was missing...).

But with the G12A family, the USB complex was correctly understood and
implemented correctly.
But seems the G12A architecture was derived for the GXL USB architecture,
with minor differences and looks we can share most of the USB DWC3 glue
driver.

This patchset refactors and adds callbacks to handle the architecture
difference while keeping the main code shared.

The main difference is that on GXL/GXM the USB2 PHY control registers
are mixed with the PHY registers (we already handle correctly), and
the GLUE registers are allmost (99%) the same as G12A.

But, the GXL/GXM HW is buggy, here are the quirks :
- for the DWC2 controller to reset correctly, the GLUE mux must be switched
  to peripheral when the DWC2 controlle probes. For now it's handled by simply
  switching to device when probing the subnodes, but it may be not enough
- when manually switching from Host to Device when the USB port is not
  populated (should not happen with proper Micro-USB/USB-C OTG switch), it
  makes the DWC3 to crash. The only way to avoid that is to use the Host
  Disconnect bit to disconnect the DWC3 controller from the port, but we can't
  recover the Host functionnality unless resetting the DWC3 controller.
  This bit is set when only manual switch is done, and a warning is printed
  on manual switching.

The patches 1-8 should be applied first, then either waiting the next release
or if the usb maintainer can provide us a stable tag, we can use it to merge
the DT and bindings.

Martin Blumenstingl (4):
  arm64: dts: amlogic: use the new USB control driver for GXL and GXM
  phy: amlogic: meson-gxl-usb3: remove code for non-existing PHY
  usb: dwc3: of-simple: remove Amlogic GXL and AXG compatibles
  dt-bindings: usb: dwc3: remove old DWC3 wrapper

Neil Armstrong (9):
  dt-bindings: usb: amlogic,meson-g12a-usb-ctrl: add the Amlogic GXL and
    GXM Families USB Glue Bindings
  usb: dwc3: meson-g12a: specify phy names in soc data
  usb: dwc3: meson-g12a: handle the phy and glue registers separately
  usb: dwc3: meson-g12a: get the reset as shared
  usb: dwc3: meson-g12a: refactor usb2 phy init
  usb: dwc3: meson-g12a: refactor usb init
  usb: dwc3: meson-g12a: support the GXL/GXM DWC3 host phy disconnect
  usb: dwc3: meson-g12a: add support for GXL and GXM SoCs
  doc: dt: bindings: usb: dwc3: remove amlogic compatible entries

 .../bindings/phy/meson-gxl-usb3-phy.txt       |  31 --
 .../devicetree/bindings/usb/amlogic,dwc3.txt  |  42 --
 .../usb/amlogic,meson-g12a-usb-ctrl.yaml      |  21 +
 .../devicetree/bindings/usb/dwc3.txt          |   2 -
 .../dts/amlogic/meson-gx-libretech-pc.dtsi    |   2 +-
 .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |   2 +-
 .../amlogic/meson-gxl-s805x-libretech-ac.dts  |   3 +-
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |   3 +-
 .../amlogic/meson-gxl-s905d-phicomm-n1.dts    |   4 +
 .../boot/dts/amlogic/meson-gxl-s905w-p281.dts |   4 +
 .../dts/amlogic/meson-gxl-s905w-tx3-mini.dts  |   4 +
 .../amlogic/meson-gxl-s905x-khadas-vim.dts    |   4 +
 .../amlogic/meson-gxl-s905x-libretech-cc.dts  |   7 +-
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |   3 +-
 .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |   7 +-
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  45 +-
 .../dts/amlogic/meson-gxm-khadas-vim2.dts     |   3 +-
 .../boot/dts/amlogic/meson-gxm-nexbox-a1.dts  |   3 +-
 .../boot/dts/amlogic/meson-gxm-vega-s96.dts   |   4 +
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi    |   7 +-
 drivers/phy/amlogic/Kconfig                   |  12 -
 drivers/phy/amlogic/Makefile                  |   1 -
 drivers/phy/amlogic/phy-meson-gxl-usb3.c      | 283 ------------
 drivers/usb/dwc3/dwc3-meson-g12a.c            | 407 ++++++++++++++----
 drivers/usb/dwc3/dwc3-of-simple.c             |  30 +-
 25 files changed, 421 insertions(+), 513 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-gxl-usb3-phy.txt
 delete mode 100644 Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
 delete mode 100644 drivers/phy/amlogic/phy-meson-gxl-usb3.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
