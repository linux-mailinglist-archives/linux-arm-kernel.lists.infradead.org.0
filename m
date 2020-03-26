Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817B6194015
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:46:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dgo76eIh2V9cK2miaiqay6ZDucRL0tJrsRVLA5nE3uM=; b=ozfddstd6gbC5r
	+J3UVi66HyDdPRuXkMaDhMP++LfDiNc2qyLusnLEF29Nq+o/zrBjiUCkNDrfllnmWrTulzFU7nGc7
	T4etcfCR+0B2SoqVaUwvZU3DeiMwbgzjzqfYPj45IAdZf1tZR4GFu2N/984np5rRuqDYmctYHqrLk
	ZdO0ndrhFBRLue0aEnO5xxuVuPzKV1RLLhIeqrmziNpkWeiFSEyrhR7eP+AOzs4yaH4TLW83ZyinW
	Zj9hjTxtroSs5OjrvXoIqBOR86XI1d+fMo9v09b79JHbxyS8TUMRUIVjjFj+eJVkh5D+OvrVQDWSK
	/fHwFSIxRbfLx1ibshbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSpX-0005yQ-Hq; Thu, 26 Mar 2020 13:45:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSoq-0005Za-FV
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id d5so7905905wrn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MRpXPRnvMHphy1rE/lS9Q+pcM8R6cY/UAWlotJHG3f8=;
 b=O6pHgO2UFROBlOyqKsOduNAxXJHE7whRi12MWJkDR/vx8irlnJ0SY0ok5h/aWe00EJ
 rQTJKYaERdS060GGm0vAYGSrGzrpTgC8N790w/PF5VD3H+uG8iJdrn+EkKi0sEfwwO63
 HabTQD5+ETQBG4k+KW8B9Wugyq/pi64hloxe30oX4PBEEBuAgGHo9vOEHbuc/Lc0VOx/
 QIt5Jr8KM+CwlnmL5ApZKwMTlzRIJYobhaupkXHNJHc1DmD9CUv5YD7OCTP3/sdxcJDh
 2PvOh9l59vFe4m5KRFwnfQz7FmEG2ayWeqZqB13lyWXVOsJTNZhvyV9LZmZ60IlJBz3i
 zFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MRpXPRnvMHphy1rE/lS9Q+pcM8R6cY/UAWlotJHG3f8=;
 b=fuOouPYGW/WemGZxPawd+stqYMwRn22M9izFfi/I0CQB/OI8Jqum2dz25w1AgSX7L0
 YsnC84fLoDFaNVIFnsGz+j3jBSImLfNEvEmJ45bTtAv1GKxjcxQkH1VD4dX7cznGBxPc
 SsiYBVLoiqNQAZvZuSIgWg0LK4qy+lK+j8HayqIOtIIPjfkuswnDPf17KD87ATfILjEa
 mE97LWQh2RLdLjs9+1nxOjsx2noUJein1h4VarVIhp83yXEBtIpewVQbmXX7a1Ai4QQO
 DSIdNIcv2JfF83t6F+Bd9E4PLwhigjpy/fnUtFWGT+T1SsIFMUumh1gEEjviH8O07ZS4
 8pmw==
X-Gm-Message-State: ANhLgQ1ihs7lQpf9J8h/Y9nYi3groI4zRhY+tH6i9noAvYlyRvpolcUc
 VdiGtmha0xingqGXRUP+DHkDng==
X-Google-Smtp-Source: ADFU+vvXGkEfouXX7y1+sdqh+EsGCX1Rk8sMRmpR+O8yOAt2hdBafRMo+nYkAAFLziTJ7sTB8kpp2g==
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr9840366wrw.313.1585230310112; 
 Thu, 26 Mar 2020 06:45:10 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:09 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 00/14] usb: dwc3: meson: add OTG support for GXL/GXM
Date: Thu, 26 Mar 2020 14:44:52 +0100
Message-Id: <20200326134507.4808-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064512_519639_38001C85 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
  to peripheral when the DWC2 controller probes. For now it's handled by simply
  switching to device when probing the subnodes, but it may be not enough
- when manually switching from Host to Device when the USB port is not
  populated (should not happen with proper Micro-USB/USB-C OTG switch), it
  makes the DWC3 to crash. The only way to avoid that is to use the Host
  Disconnect bit to disconnect the DWC3 controller from the port, but we can't
  recover the Host functionnality unless resetting the DWC3 controller.
  This bit is set when only manual switch is done, and a warning is printed
  on manual switching.

The patches 1-9 should be applied first, then either waiting the next release
or if the usb maintainer can provide us a stable tag, we can use it to merge
the DT and bindings.

Changes since v1 at [1]:
- Fixed DT bindings to take in account usb2-phy2 on GXM
- Added comment in patch2
- Fixed patch 5 and moved fix out
- Collected tags
- Lower DT patch changes, switch p20x-q20x port B as OTG by default

[1] http://lkml.kernel.org/r/20200324102030.31000-1-narmstrong@baylibre.com

Martin Blumenstingl (4):
  arm64: dts: amlogic: use the new USB control driver for GXL and GXM
  phy: amlogic: meson-gxl-usb3: remove code for non-existing PHY
  usb: dwc3: of-simple: remove Amlogic GXL and AXG compatibles
  dt-bindings: usb: dwc3: remove old DWC3 wrapper

Neil Armstrong (10):
  dt-bindings: usb: amlogic,meson-g12a-usb-ctrl: add the Amlogic GXL and
    GXM Families USB Glue Bindings
  usb: dwc3: meson-g12a: specify phy names in soc data
  usb: dwc3: meson-g12a: handle the phy and glue registers separately
  usb: dwc3: meson-g12a: get the reset as shared
  usb: dwc3: meson-g12a: check return of dwc3_meson_g12a_usb_init
  usb: dwc3: meson-g12a: refactor usb2 phy init
  usb: dwc3: meson-g12a: refactor usb init
  usb: dwc3: meson-g12a: support the GXL/GXM DWC3 host phy disconnect
  usb: dwc3: meson-g12a: add support for GXL and GXM SoCs
  doc: dt: bindings: usb: dwc3: remove amlogic compatible entries

 .../bindings/phy/meson-gxl-usb3-phy.txt       |  31 --
 .../devicetree/bindings/usb/amlogic,dwc3.txt  |  42 --
 .../usb/amlogic,meson-g12a-usb-ctrl.yaml      |  73 ++-
 .../devicetree/bindings/usb/dwc3.txt          |   2 -
 .../dts/amlogic/meson-gx-libretech-pc.dtsi    |   3 +-
 .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |   3 +-
 .../amlogic/meson-gxl-s805x-libretech-ac.dts  |   3 +-
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |   3 +-
 .../amlogic/meson-gxl-s905d-phicomm-n1.dts    |   4 +
 .../boot/dts/amlogic/meson-gxl-s905w-p281.dts |   4 +
 .../dts/amlogic/meson-gxl-s905w-tx3-mini.dts  |   4 +
 .../amlogic/meson-gxl-s905x-khadas-vim.dts    |   4 +
 .../amlogic/meson-gxl-s905x-libretech-cc.dts  |   3 +-
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |   3 +-
 .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |   3 +-
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  45 +-
 .../dts/amlogic/meson-gxm-khadas-vim2.dts     |   3 +-
 .../boot/dts/amlogic/meson-gxm-nexbox-a1.dts  |   3 +-
 .../boot/dts/amlogic/meson-gxm-vega-s96.dts   |   4 +
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi    |   7 +-
 drivers/phy/amlogic/Kconfig                   |  12 -
 drivers/phy/amlogic/Makefile                  |   1 -
 drivers/phy/amlogic/phy-meson-gxl-usb3.c      | 283 ------------
 drivers/usb/dwc3/dwc3-meson-g12a.c            | 415 ++++++++++++++----
 drivers/usb/dwc3/dwc3-of-simple.c             |  30 +-
 25 files changed, 477 insertions(+), 511 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-gxl-usb3-phy.txt
 delete mode 100644 Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
 delete mode 100644 drivers/phy/amlogic/phy-meson-gxl-usb3.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
