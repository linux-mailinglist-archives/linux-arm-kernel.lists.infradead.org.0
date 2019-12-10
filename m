Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907AD11897C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bBFv44XfQnMGDYshf3g9lV2H5B9CpZNm40clZB84sVg=; b=co3
	FbPF5VChhHUr5j/5C7C+MYZQzRRkCCfxT5aY3nk3S6HugMmefzuYjBgd+xQiNrlv48zx4JtDc2g9Y
	zJe4tfT3QzkpCE6UcTwfI5EnE1oZAz7Geou2q+41GegMePkQD4EmBIXpXmU9PszL2B7O6GW29OSLh
	fcVWGXMIre/tT6d3YoOBGUTpmmy049GkMebPS/2PNz4UmEMlDLsJYhtGhhg8XmWC+wWBOEyG+vg3i
	uxnAZc6+fH8Wurx5yOIX5lyErYCTXvFnXskSru/yJ/qbcirkojSn72w1oxb5cEDBwWF5ACDry9y5J
	/lyl1ranNr/2ENbZMe/TFAyG4kviX8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefUG-0001Ex-UA; Tue, 10 Dec 2019 13:23:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefU8-0001ET-4C
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:23:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so20088826wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 05:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cBnDmOd1oyAwvS/dO5tRG/7xWRMnlpmBTWuorHo1pdg=;
 b=S6zlGdOf2taVM7tSfma9ybnx61nuzOAp7XkqvWLHCdLaJBnwwh/xBFqv/dJLT2b286
 dqAaJj7OTDZHfBJmnAXED9wMc2a5Q86Lau/qG6OAb38OPkgKAuDfmQ86j0cCTZ6XQQgt
 iz2ZkJSeGLBRXbJkueaNlHreuiLIq36eq6erjWu2iax4mAyINQo9/Wn5/XXtCAOrDWsE
 Pl+POaPn5FFf7+7jbxvieygirsduRn5HR8iOl7xl+7D41Y5Hq1kxEZkAeBi5Brb2VvLz
 KEJdIE0npUn8ltDsO7IDNZKOpKeGyeJUh2C5bNJHYBRl8Lbm/Mxa2YYUZZ8s93FxX4+N
 Fl3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cBnDmOd1oyAwvS/dO5tRG/7xWRMnlpmBTWuorHo1pdg=;
 b=nTSLD+3uGZNor56e+U2+PMTVnh1YfKuUOPmCAXXXHf5dmEe0lvur8Dpd0YFLtyCG2u
 6a4JzpwQ9QmjneLcLB6frjVq9/xa3G3Ldc4t7asJuaL5YtiPOb1FX/AzM7Bh3YMvn80/
 c9IFjOPaQVOG/+zi2qFK/hBKPiA6PkBgprPvhN3SC3oKCem008Tuw8SSPGqQ6p2pJIzv
 Y0oJlyOyk4sNNss471XJBaOD9fGCenGz6ee453VF8zaRDHL3HFs1M2u1B5Id9aD+OHec
 xLFcHg/Uh/Isa/0P1Gsh6pz6O1OFmlx0B6iPVJ2W3Ov6UDXWkHYQOFdVlYCkEshLqR9J
 QKuQ==
X-Gm-Message-State: APjAAAV7EHWG5QkxUzhpsWMIhQohCoXp/8Tz7GlexBnnpKQ1XlKzXa38
 mP5a+ZL65ZWgnxYWSXsYyIc=
X-Google-Smtp-Source: APXvYqzK2JasnRBelbXspNc6ewhYIQKQQzH4s2L6GUsgHLkz3gIP7kiOBBpxBAXF2wVXbsdxtQ32uQ==
X-Received: by 2002:a5d:558d:: with SMTP id i13mr189956wrv.364.1575984204569; 
 Tue, 10 Dec 2019 05:23:24 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s82sm3101680wms.28.2019.12.10.05.23.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:23:24 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 00/13] phy: usb: Updates to Broadcom STB USB PHY driver
Date: Tue, 10 Dec 2019 08:21:19 -0500
Message-Id: <20191210132132.41509-1-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052328_167401_0811CB27 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset contains various updates to the Broadcom STB USB Driver.
The updates include:
- Add support for 7216 and 7211 Broadcom SoCs which use the new
  Synopsis USB Controller.
- Add support for USB Wake
- Add various bug fixes.

v3 - Rebase to v5.5-rc1

v2 - Changes based on review feedback
- Add vendor prefix to DT property "syscon-piarbctl"
- Use standard "wakeup" instead of "wake" for DT "interrupt-names"

Al Cooper (13):
  phy: usb: EHCI DMA may lose a burst of DMA data for 7255xA0 family
  phy: usb: Get all drivers that use USB clks using correct
    enable/disable
  phy: usb: Put USB phys into IDDQ on suspend to save power in S2 mode
  phy: usb: Add "wake on" functionality
  phy: usb: Restructure in preparation for adding 7216 USB support
  dt-bindings: Add Broadcom STB USB PHY binding document
  phy: usb: Add support for new Synopsis USB controller on the 7216
  phy: usb: Add support for new Synopsis USB controller on the 7211b0
  phy: usb: fix driver to defer on clk_get defer
  phy: usb: PHY's MDIO registers not accessible without device installed
  phy: usb: bdc: Fix occasional failure with BDC on 7211
  phy: usb: USB driver is crashing during S3 resume on 7216
  phy: usb: Add support for wake and USB low power mode for 7211 S2/S5

 .../bindings/phy/brcm,brcmstb-usb-phy.txt     |  69 ++-
 drivers/phy/broadcom/Makefile                 |   2 +-
 .../phy/broadcom/phy-brcm-usb-init-synopsis.c | 414 ++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.c      | 226 +++++-----
 drivers/phy/broadcom/phy-brcm-usb-init.h      | 148 ++++++-
 drivers/phy/broadcom/phy-brcm-usb.c           | 269 ++++++++++--
 6 files changed, 943 insertions(+), 185 deletions(-)
 create mode 100644 drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
