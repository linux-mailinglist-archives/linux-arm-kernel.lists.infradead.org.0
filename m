Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEE1962AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jfSfVkSS7wY8HphFhqgip1fwkyyNCWx1djP2GzMatWw=; b=D/mPzbGejXu/q4
	QiFUhNK1O5OzOfNkxbd/ceiD4XunM7hBbT1jzWckeE+W7iOkHy+oKtSTjo2DQO5VlsR4G2oCGDEaA
	gMVgcRqj/8ReMA3zgmb4OwLrJx6BDcdYU927/Vj5lv4hXAac8Np4nF5QsbJFvSObJ1WNkq7Zb5vvY
	hWDjuHEiXKR9BuGWPDP9pqoUy32zRVdsnXXe92DuwA+YvpYb9MGRRDxTSknOqr/Vi5lM73yHJHgz5
	mXPtkfdjNDnIAejHtdvnUgVkzomC5vYcKaV/PDW8LxLbBb9hMUEP+618kZyirjyrBZJ1fj0VPnotw
	vbA5qkNgvUr+NP6Nzk3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05Kz-0004Ir-94; Tue, 20 Aug 2019 14:42:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05Jh-0003T4-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:41:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so2872735wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 07:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jltHvKjAETJIx5Aet1GM8of7AnTVjLWtzilPhXCAmqM=;
 b=mPg2aaUcDg9KPuw/ljLGLzHEcQaFd1NWEWs3t2VQLRZI8Xd2HImbkHIX6nScifgjdZ
 1NG7y5ix+iuzhExQIMYUYT+WxNMGQ1m1TmPkANC/TI0KIR8LUT0Xxyw3PjmdJVdSonGs
 QmJ9NNUpJ4oaZ1cv7pacPq8JqqOb+KGm42I7ZKBPbo5aW5tafgTPjvHJw6rpdXtHLxRg
 5uk/udLjT8NimcTB4a9ncKfuk2PoqSSljGseBqjWL+fa9E3hEjn9gQ2qY8yrcxKD4qO/
 /ICO76K3nEL0jBQ92+a2QlF42DVj6BKq9/1KmqTffu3/EJwtafChhjP3c+HYXh0XR9h7
 ezQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jltHvKjAETJIx5Aet1GM8of7AnTVjLWtzilPhXCAmqM=;
 b=UfBrZicTw7HqFNh/oF2sPSqxGcRo1yGdQ7v4GLEcLo8G30PLaYJ3I4rFoi8e+D9XG6
 42CSHB2A1cV9BC44bqcg7E32VpbSxM2EIFYMEJ1DKwZZw4GIZFbXCpvNILTlDIdihbce
 P9fY0H8KSRsN9aKZO0VmuHz9bldasLcZNTVXGCv3MbzvoNg3Yv3XPnigQS8kWh9KOQml
 G1NCpWuSEQx5d+if+Kd96RMvyvXszajSzhFgHsT0DAVP0G3UDzq6l4AXrs8QDqYK2HNM
 9oT8Gq/We0tPTmkdmoi4CxhyNekANGwaO/kpNgh+TaWIwcBMp14uguPMUomFh1f+F4Cf
 KDcg==
X-Gm-Message-State: APjAAAXKEciy0o9UPIB3SQ6EGwcclG5yh6G3r/S4T2XFv6Pj9tkJdcMO
 LEc09ZaQpPS1jo7DfsZ40O0n1w==
X-Google-Smtp-Source: APXvYqzUXEINr7YBgbQt2flcEowzuqsRnsIwXi4jeC62BVn9us9eqyO5LZjv+Whh8Im/bLMUexKj4w==
X-Received: by 2002:a1c:5402:: with SMTP id i2mr349178wmb.41.1566312055209;
 Tue, 20 Aug 2019 07:40:55 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a18sm21826750wrt.18.2019.08.20.07.40.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 07:40:54 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/6] arm64: Add support for Amlogic SM1 SoC Family
Date: Tue, 20 Aug 2019 16:40:46 +0200
Message-Id: <20190820144052.18269-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_074101_624886_604E366A 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This serie does not add support for NNA, CSI, Audio, USB, Display
or DVFS, it only aligns with the current G12A Support.

With this serie, the SEI610 Board has supported :
- Default-boot CPU frequency
- Ethernet
- LEDs
- IR
- GPIO Buttons
- eMMC
- SDCard
- SDIO WiFi
- UART Bluetooth

Audio (HDMI, Embedded HP, MIcs), USB, HDMI, IR Output, & RGB Led
would be supported in following patchsets.

Dependencies:
- g12-common.dtsi from the DVFS patchset at [1]

Changes from rfc at [2]:
- Removed Power domain patches & display/USB support, will resend separately
- Removed applied AO-CEC patches
- Fixed clk-measure IDs
- Collected reviewed-by tags

[1] https://patchwork.kernel.org/cover/11025309/
[2] https://patchwork.kernel.org/cover/11025511/

Neil Armstrong (6):
  soc: amlogic: meson-gx-socinfo: Add SM1 and S905X3 IDs
  dt-bindings: soc: amlogic: clk-measure: Add SM1 compatible
  soc: amlogic: clk-measure: Add support for SM1
  dt-bindings: arm: amlogic: add SM1 bindings
  dt-bindings: arm: amlogic: add SEI Robotics SEI610 bindings
  arm64: dts: add support for SM1 based SEI Robotics SEI610

 .../devicetree/bindings/arm/amlogic.yaml      |   5 +
 .../bindings/soc/amlogic/clk-measure.txt      |   1 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../boot/dts/amlogic/meson-sm1-sei610.dts     | 300 ++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  68 ++++
 drivers/soc/amlogic/meson-clk-measure.c       | 134 ++++++++
 drivers/soc/amlogic/meson-gx-socinfo.c        |   2 +
 7 files changed, 511 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
