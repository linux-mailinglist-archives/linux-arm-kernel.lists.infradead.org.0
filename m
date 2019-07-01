Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B86E5B941
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xci3PJdRU2FJrH0oiQf8r3Won+iD1+ajOXHcdESpVHc=; b=SDkYZT1/+LFP0H
	1Ydspsq4WccVfML7qPbk4Hg4LJXIfynIv5nAm5uUnIguIyzFoYGmKs3jrMjh7gqtjqkdHAQzMM6UL
	CWt7CikSyQNNyOCcOio6G/xkkqxVgxku/8FKNRFE+aR0Y9xqdD37Zk+OBJ+RKKBxOieQWsT8nWhQz
	KDB3zO8DprVFS8pn8g8QIzp5W6S68/pFvZgi7Uxhm6R72ExJZ/hK2pVomIKbCCgoy6Inkaq3026ow
	mhaD3qbZUGp+AbyEtdSa/DF07lc5kMRuxNQ2dcqdZeoPXe2g3YBT3GpBStqyv8IVc8emqcw0ZPCBF
	QhSHbjKXEkENH7+xMuEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtqb-0006b9-W8; Mon, 01 Jul 2019 10:47:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtqH-0006Y0-W7
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:47:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so15356784wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 03:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A7rpMOf4wxLFtawlTyWVY4xaI18jSPPLrKFDVZa4/PQ=;
 b=1znE4gl4nBKL3TrkCEXR49QIExUOwN5zY5wtDDRfCBLxB5wwxsi9jHSFgQsvLSJatz
 XCft5Q4hnZfg5oF1D0c0ccWaK+DhNGkBR6dC9TgY7wqmz6v6wOZDQuDhiQ3ey6XvQXOK
 IiaUv+e/1nwJjlMZVoe+rtJeBh0PC7oBf0vokvUbJ/zZoFKfPyl0oaaBRGn7GFQNZLFM
 WzNgO50BkV+7m5Jskz8qCN9lXwbccrGRVZG+yJXR3ZD6E7A+fqGZuWFltXK+sbHvBu9V
 ky7MnEXAkj95GpQw6WUdxkSVekZfjx2kvhX0sqVKNcaT36fIcL8Nnn/lD7S+8fZeNMgr
 ikxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A7rpMOf4wxLFtawlTyWVY4xaI18jSPPLrKFDVZa4/PQ=;
 b=W4GUlklf/cPgRLsU7pw51VBb0RpzrVdpxMSdl6z1tl85gWGkKsti4tNoIvNdpwSojG
 zbIzcind6cKXjg6Lp7ThLmqI7p6rIlNNsqZdl8easaAYaKgZX+KuM8rVnn41kzB5mriZ
 Ov1bSaLzlQqu2ea7wzGLT0zyLjlQzFUgCGckNy+SwEv0HMxlDnlBP+ba39C7CrxITWIb
 lFQQmULuF2n+OUYW0d3V0vq3ekvvgOPWp771T1S634QaUm762P1LFepTvCWV9eWLSwW2
 0ytBiHjlOJ16Otg2SZH5AboJIeRoov8hkxgluwizmxx1njfA4F+EqZTBy65/ArcjRZee
 efJA==
X-Gm-Message-State: APjAAAVN8lsJHGE7i62vYEb7qTBwb8eCLt51XLVBFntL5W49jwinwz6Q
 7ww1PQe1hdGNowWnXCSu7/GW1A==
X-Google-Smtp-Source: APXvYqztw6hZgyYXumNmOMmn1IVeX/nJA3RXzBHSo1EL+/+nMOoG6rGaaCmTgnIE4oKyzcxkjdwJBw==
X-Received: by 2002:a1c:b707:: with SMTP id h7mr16511863wmf.45.1561978044141; 
 Mon, 01 Jul 2019 03:47:24 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 03:47:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC 00/11] arm64: Add support for Amlogic SM1 SoC Family
Date: Mon,  1 Jul 2019 12:46:54 +0200
Message-Id: <20190701104705.18271-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_034726_059739_FCE5F210 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new Amlogic SM1 SoC Family is a derivative of the Amlogic G12A
SoC Family, with the following changes :
- Cortex-A55 cores instead of A53
- more power domains, including USB & PCIe
- a neural network co-processor (NNA)
- a CSI input and image processor
- some changes in the audio complex, thus not yet enabled
- new clocks, for NNA, CSI and a clock tree for each CPU Core

This serie does not add support for NNA, CSI or DVFS, it only
aligns with the current G12A Support.

With thie serie, the SEI610 Board has supported :
- Default-boot CPU frequency
- 4k60 HDMI without audio
- USB3 & USB-C OTG
- Ethernet
- LEDs
- IR
- GPIO Buttons
- eMMC
- SDCard
- SDIO WiFi
- UART Bluetooth

Audio (HDMI, Embedded HP, MIcs), IR Output, & RGB Led would be
supported in following patchsets.

Dependencies:
- g12-common.dtsi from the DVFS patchset at [1]

[1] https://patchwork.kernel.org/cover/11025309/

Neil Armstrong (11):
  soc: amlogic: meson-gx-socinfo: Add SM1 and S905X3 IDs
  dt-bindings: power: amlogic, meson-gx-pwrc: Add SM1 bindings
  soc: amlogic: gx-pwrc-vpu: add SM1 support
  soc: amlogic: Add support for SM1 power controller
  dt-bindings: soc: amlogic: clk-measure: Add SM1 compatible
  soc: amlogic: clk-measure: Add support for SM1
  dt-bindings: media: meson-ao-cec: add SM1 compatible
  media: platform: meson-ao-cec-g12a: add support for SM1
  dt-bindings: arm: amlogic: add SM1 bindings
  dt-bindings: arm: amlogic: add SEI Robotics SEI610 bindings
  arm64: dts: add support for SM1 based SEI Robotics SEI610

 .../devicetree/bindings/arm/amlogic.yaml      |   5 +
 .../bindings/media/meson-ao-cec.txt           |   8 +-
 .../bindings/power/amlogic,meson-gx-pwrc.txt  |  35 ++
 .../bindings/soc/amlogic/clk-measure.txt      |   1 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../boot/dts/amlogic/meson-sm1-sei610.dts     | 329 ++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  77 ++++
 drivers/media/platform/meson/ao-cec-g12a.c    |  37 +-
 drivers/soc/amlogic/Kconfig                   |  11 +
 drivers/soc/amlogic/Makefile                  |   1 +
 drivers/soc/amlogic/meson-clk-measure.c       | 134 +++++++
 drivers/soc/amlogic/meson-gx-pwrc-vpu.c       | 120 +++++++
 drivers/soc/amlogic/meson-gx-socinfo.c        |   2 +
 drivers/soc/amlogic/meson-sm1-pwrc.c          | 245 +++++++++++++
 include/dt-bindings/power/meson-sm1-power.h   |  15 +
 15 files changed, 1017 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
 create mode 100644 drivers/soc/amlogic/meson-sm1-pwrc.c
 create mode 100644 include/dt-bindings/power/meson-sm1-power.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
