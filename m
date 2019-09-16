Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5767EB3AB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pS+gURR8Dle6ElZrDrA6JaOAIWNIh/H2hbhHXV/oZS8=; b=CnN/UuHw2us4WT
	dehwG6Mu/qSN2NnhoswgkGVs8pqLcCb2KgdV04/jYkABpwaZ3USoG6bgu7BTuKpkQq/noUkKnZ5cA
	joHf8UgGYMTltlJnqT6D73E82gZZBYNn0152cf+yxurJ5BXUlyrwiPtWZwuLYrZrqWXvV+c6hc+jU
	qxfAY28vy3Bfm6aX13Tua/BGeJGORBeVPik6xuxs3R7T/rBFO+qFbCLEpI7MOJcG1pjFzvx7A2kmz
	Co6TAXpae03EYgX/Jwjb4gOK0DdnFQW0vZTsYK930tbTFWynJUylMAKHOXtJ+u1PhIPHM8U6hkq4Z
	rccUmEi3TYKBh7RZTapw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qTb-0003Er-Kt; Mon, 16 Sep 2019 12:51:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qSY-0002n5-PR
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:50:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id x2so10002431wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 05:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n0nWXjEKuyezEGLTlcOc5a95BxXTlVx30DizfXSeliY=;
 b=rCcoPIlrwFYixV0LYkox3EHEWUvNOSmGLVZr5kMmD8v9E4IyKfdkDQSIWvEui/KKuh
 GmfhSKP0nsPa/pvtOtmMfUqNtNxD4LOxUG4mC09v0Z+6hbiaoouuyEmbSi2R6HzIhIcp
 1Fxc50tbkGLdh+IpSlrXopG/0K5wIxL8/MbFIEv2eGaV9/HICIQw2mSCnYuum97wTzq1
 Rxo3OfhlWw5DMCmwSPNejV3DzEgEkj5x7M2ucP58Kz5/FpR/eu5QlBElqOXgoC4G25vZ
 iuIzjhePr/rH6ZSQwjjx14oCB3niPwUoex6SW6Np5cxXkaGSCDd9tPSCyJOpiF3AMrXr
 7bVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n0nWXjEKuyezEGLTlcOc5a95BxXTlVx30DizfXSeliY=;
 b=GwU9FIpQhoF/z5ofIf26BITAk+Fvzzu8y3VbNnH/Fq9PRuXQi87FFUY+PqTUlbUAD4
 cOtVQlr6l4mwOqdJisTguODAgAOzI9c2zZ1zYfjKxcIbqyYqikzR4pwfALoPGNOwejgB
 lwx5QEstqiDX82frWGHPmC2x68t67Ro9wCmmozDehwQ3uGcFmR4Sfki/PR3LaQG2P4cA
 xNI4dQxUbfNVipWDRHUrh2Kq7nyMkNL6XRIpSBw/TZ5hT2WSWH3Rq3KgrbUDzOa7EJRz
 2W4Ylfq8Lfufp4zhTNH6WIO20h8eoXgGccqIkSn3HTQqtxY/vgz9O9nOWopMGOn5ARwd
 Bitg==
X-Gm-Message-State: APjAAAXML0P6yFbUUQ5EdzsXhNBVt4Z54jbbk706Qs4RZ9qAAEdcMsto
 2v5TTS6BkJKkImAXoYWlTObPQA==
X-Google-Smtp-Source: APXvYqxt1quSs6ZODA5XRA7qdpJ1rjqMP7CeuDbJm5vLj3TnHa4eGsYXp/6f5dSgZsxBwneSvqn0tQ==
X-Received: by 2002:a7b:ce0e:: with SMTP id m14mr14440842wmc.138.1568638224331; 
 Mon, 16 Sep 2019 05:50:24 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o12sm15109960wrm.23.2019.09.16.05.50.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 05:50:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, lorenzo.pieralisi@arm.com, kishon@ti.com,
 bhelgaas@google.com, andrew.murray@arm.com
Subject: [PATCH v2 0/6] arm64: dts: meson-g12: add support for PCIe
Date: Mon, 16 Sep 2019 14:50:16 +0200
Message-Id: <20190916125022.10754-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_055027_118783_DACCD9D5 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: gouwa@khadas.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-pci@vger.kernel.org, nick@khadas.com, linux-kernel@vger.kernel.org,
 yue.wang@Amlogic.com, repk@triplefau.lt, maz@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset :
- updates the Amlogic PCI bindings for G12A
- reworks the Amlogic PCIe driver to make use of the
G12a USB3+PCIe Combo PHY instead of directly writing in
the PHY register
- adds the necessary operations to the G12a USB3+PCIe Combo PHY driver
- adds the PCIe Node for G12A, G12B and SM1 SoCs
- adds the commented support for the S922X, A311D and S905D3 based
VIM3 boards.

The VIM3 schematic can be found at [1].

This patchset is dependent on Remi's "Fix reset assertion via gpio descriptor"
patch at [2].

This patchset has been tested in a A311D VIM3 and S905D3 VIM3L using a
128Go TS128GMTE110S NVMe PCIe module.

For indication, here is a bonnie++ run as ext4 formatted on the VIM3:
     ------Sequential Output------ --Sequential Input- --Random-
     -Per Chr- --Block-- -Rewrite- -Per Chr- --Block-- --Seeks--
Size K/sec %CP K/sec %CP K/sec %CP K/sec %CP K/sec %CP /sec %CP
  4G 93865  99 312837  96 194487  23 102808  97 415501 21 +++++ +++

and the S905D3 VIM3L version:
     ------Sequential Output------ --Sequential Input- --Random-
     -Per Chr- --Block-- -Rewrite- -Per Chr- --Block-- --Seeks--
Size K/sec %CP K/sec %CP K/sec %CP K/sec %CP K/sec %CP  /sec %CP
  4G 52144  95 71766  21 47302  10 57078  98 415469  44 +++++ +++

Changes since v1 at [3]:
 - Collected Andrew's and Rob's Reviewed-by tags
 - Added missing calls to phy_init/phy_exit
 - Fixes has_shared_phy handling for MIPI clock
 - Add comment in the DT concerning firmware setting the right properties
 - Added SM1 Power Domain to PCIe node

[1] https://docs.khadas.com/vim3/HardwareDocs.html
[2] https://patchwork.kernel.org/patch/11125261/
[3] https://patchwork.kernel.org/cover/11136927/

Neil Armstrong (6):
  dt-bindings: pci: amlogic,meson-pcie: Add G12A bindings
  PCI: amlogic: Fix probed clock names
  PCI: amlogic: meson: Add support for G12A
  phy: meson-g12a-usb3-pcie: Add support for PCIe mode
  arm64: dts: meson-g12a: Add PCIe node
  arm64: dts: khadas-vim3: add commented support for PCIe

 .../bindings/pci/amlogic,meson-pcie.txt       |  12 +-
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  33 +++++
 .../amlogic/meson-g12b-a311d-khadas-vim3.dts  |  25 ++++
 .../amlogic/meson-g12b-s922x-khadas-vim3.dts  |  25 ++++
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |   4 +
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |  25 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |   4 +
 drivers/pci/controller/dwc/pci-meson.c        | 132 ++++++++++++++----
 .../phy/amlogic/phy-meson-g12a-usb3-pcie.c    |  70 ++++++++--
 9 files changed, 292 insertions(+), 38 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
