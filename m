Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D97C0B83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7Wr14eCVzTHPqBW4wgEM+QBWmMzABND+7pZr6oIe8MY=; b=G35
	BxT4HQnA8Sybw4nbu3gQbTJT92OGLT4u1I/ZYLNM1v7jZxEbU9UdhxXkKuqDXdQMqANu/sgTkW/zU
	sKp2QzxzMBseEaIcZjmgN8y874LC+gylA3hfy0qc/GU9Layqir6bL/Wtg//lUcZFsGb1zCyUb7x9A
	FFqJH13WPyxjWydV2LjfUaRr7retRT6odLi1+U4a8EoMuapfISziUtQjjpPOZ9MfrDWOaEuCXf6Il
	LRCd5Fbkqqa3yapvhgmnZWzQ5CflEMvxr/y2evK02yqU1DuEmWMfmFEEmnxKd17mzLecistA8vx+K
	/UM5YDr9ACAX/CJoxvDGfxdF7P4Jebw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvDy-0000Uw-5N; Fri, 27 Sep 2019 18:44:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDvDg-00007j-1A
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:43:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id v8so4344385wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=BlLuKMnAqwTIEJThXWcT+NCQrpuc31hvcyRBdlbTc+8=;
 b=gEAZsKg36xaTruyiqdmuUhST/Lw16pTt6NvZCi8oFmvWKVaq3wQVtqci8/3EnBkk3/
 HT5sfz/tfMSyCyYHnRd+jOUKuOOSIPtna3cgYa8t9fGu0Km8O+zeG01iQQDUfpt6GBLh
 ica5zJitiOvbmJYuWnzr36l++X1vsvvRL/75xfhhdgQPJrjIKByvv2yWVEy5hH3INNpM
 aQLPAjfgmHfpfOcOslLrksDQ4eocq/BBrKJuIDXSHOXOu6Yt8wYBjF/bGiga2KeX8BaY
 +J/l5zJGL0WzQQhwA8w3RegQUC/JiwnokFq4w3ogg04g3OxBn4YF7WuXF73uOTmPlnW0
 kCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BlLuKMnAqwTIEJThXWcT+NCQrpuc31hvcyRBdlbTc+8=;
 b=JIWX/WRYnDX/KgK+MsH5YtmFrxf8jLbcVdlV2x+7XHeNIuEPB1Stskrk20j9HKVESF
 l7cisZiX4/RYRq9W+/PUtB+IG/BhAD0Is5dLrpHHERscG5q/2+WZDizld3g/gZlB8wUO
 szn0lFP/sAdj9LDJ2ISM40JGjLAEs2/c/TyB/YPE3Lc3kYZkiK4YKwmYcL6iV6W4dG/6
 1p1huP8SYNX0N5bd8FyD9HicVWoQ247Ufx8v9OfdHHbDGdUvGkntuNU9l9Lh0Ow9X6Gk
 OstQXB1CKMW45dqSb6Q7HvU32HZGUveKzmvHcqdk/NdHSX+SWa73ldAsqD8P4hHPJN0S
 B5fg==
X-Gm-Message-State: APjAAAWm5hcIcxKrP2oTK0TQJp/RG5zuZw6sHu0pKuCLPglyv0OdJPAZ
 xr4xY3M10Asuxkc5sSug+g03EkL3/0QMkg==
X-Google-Smtp-Source: APXvYqxgRo3KRebRbFSHXBAYv8zrdjIWybW5ueEgqgeeDgsADeXUR38eeRp/Rru7dKw/2IGg4cEpDw==
X-Received: by 2002:adf:e488:: with SMTP id i8mr4333542wrm.20.1569609834506;
 Fri, 27 Sep 2019 11:43:54 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home
 ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id r13sm6246272wrn.0.2019.09.27.11.43.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:43:53 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v6 0/7] Add support of New Amlogic temperature sensor for G12
 SoCs
Date: Fri, 27 Sep 2019 20:43:45 +0200
Message-Id: <20190927184352.28759-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_114356_111388_530E7C28 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchs series add support of New Amlogic temperature sensor and minimal
thermal zone for SEI510 and ODROID-N2 boards.

First implementation was doing on IIO[1] but after comments i move on thermal framework.
Formulas and calibration values come from amlogic.

Changes since v5:
  - fix patch 5 and 6 send twice

Changes since v4:
  - Move thermal-zone in soc dtsi file
  - Remove critical trip point and add passive one
  - fix commit message
  - use devm_platform_ioremap_resource instead of platform_get_resource

Changes since v3:
  - Add cooling map and trip point for hot type
  - move compatible on g12a instead of g12 to be aligned with others
  - add all reviewer, sorry for this mistake

Changes since v2:
  - fix yaml documention
  - remove unneeded status variable for temperature-sensor node
  - rework driver after Martin review
  - add some information in commit message

Changes since v1:
  - fix enum vs const in documentation
  - fix error with thermal-sensor-cells value set to 1 instead of 0
  - add some dependencies needed to add cooling-maps

Dependencies :
- patch 3,4 & 5: depends on Neil's patch and series :
              - missing dwc2 phy-names[2]
              - patchsets to add DVFS on G12a[3] which have deps on [4] and [5]

[1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
[2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
[3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-1-narmstrong@baylibre.com/
[4] https://lore.kernel.org/linux-amlogic/20190731084019.8451-5-narmstrong@baylibre.com/
[5] https://lore.kernel.org/linux-amlogic/20190729132622.7566-3-narmstrong@baylibre.com/

Guillaume La Roque (7):
  dt-bindings: thermal: Add DT bindings documentation for Amlogic
    Thermal
  thermal: amlogic: Add thermal driver to support G12 SoCs
  arm64: dts: amlogic: g12: add temperature sensor
  arm64: dts: meson: g12: Add minimal thermal zone
  arm64: dts: amlogic: g12a: add cooling properties
  arm64: dts: amlogic: g12b: add cooling properties
  MAINTAINERS: add entry for Amlogic Thermal driver

 .../bindings/thermal/amlogic,thermal.yaml     |  54 +++
 MAINTAINERS                                   |   9 +
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  66 ++++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  24 ++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  29 ++
 drivers/thermal/Kconfig                       |  11 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/amlogic_thermal.c             | 333 ++++++++++++++++++
 8 files changed, 527 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
 create mode 100644 drivers/thermal/amlogic_thermal.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
