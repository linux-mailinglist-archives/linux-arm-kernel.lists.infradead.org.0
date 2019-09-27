Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDEDC057B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PFU5/2kdXC56VX6S0S+V3YCic5DlE8Yr3j2jJm2riPs=; b=H3k
	4DRlN3z8kdhMEPkLqiJ7kGGCzuwHop4i0Z+tTswE5S35soVkUUHlhISM9GWTTcacVv/yAVmTDWexE
	ZsG3qX1yWXNrEEOaWqYCQj1+oLkYbCBKCoIJK09smGhPQX3oz3YKgbzFiTGMy2q/z3jfszNHoj32A
	Etwl6AEeX/8VcamE539Oq0qfXIL0SUraRwGKL7DGnvTgaqU4PE53Le88Z/8yN9D2Vq00py9LAHy3d
	eEWU/Ad1+P2veb2i5zxSqnqgzDwl3kWvrBG9kSNYGyB1nELwmA0+hc7Oi+gezwZyR4or/+xFqgFfY
	9Ywz5O/ruqEb05THJDpRZqrQhnnBsOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpfQ-0001lv-Ih; Fri, 27 Sep 2019 12:48:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpf8-0001ir-Cb
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:47:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id v17so6026487wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 05:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=5nfsuBQARAaBBmwNqsfwCMEnjyOr8SwXnC8MGaFfPbc=;
 b=Lmd5I2weT/CLbzqu8U0AzVZ02d19bxTe+oGwl7weveUIH5QqjVhLpCn2ppfW4UwOdb
 BAQXl+idGpTR2JqZYmDG2jfUuDlB7o+9m0izlMk9efwnBQCgLp3sDZv9DCRkWApwhl/C
 27gqFXsobnH0uvNGPKrCHMopDzJhZdi4gciwKydh6pyULekFY6mx0EHldxQcwbVDDYoG
 YKV+Cm0pDgGZyn3vjAoH23TjOjzsDHB7IDBKgblKrKSLw/qQQX6LTlg83EdIyT/tC2Oq
 +3uC/RBKI7AwNln6XPDks5o5bYossAjdx2K8OqvUaQih9kXN8oYcU3aqxFWM9mfMHRCj
 TQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5nfsuBQARAaBBmwNqsfwCMEnjyOr8SwXnC8MGaFfPbc=;
 b=RXUPl4pl6tNKrfdjilsEOHBP3h4TkeEA4zZYBf+7VmAUV/ZcxMOdc+7MolUMWKdOFl
 UxH9SnGgYXnazSzR3i31vkHk0ZjDH0h84FWnDl9u9OHAbIz8RnhoE3T71jnWE5IMVwEB
 MWKPpwNL1tmy0UQ3N6wohV5eOiTflg9nI1UyAbmsP9ZYTZ540/XsFObbxIHUsBilQlo5
 nKFki4TlglVw6FCYkKTGbZuOy+4HpoX1KXPH1nNsP9w9HQEtuGxcHVjBp52yJvCU+o3c
 J92dRhm734nzkQjXuGfV5W9WzonQTds6hKE2k7X4m9qxnjTukVq9OPh3FL9r7dMH1P8e
 1yHA==
X-Gm-Message-State: APjAAAXIuCT4u6PbGbDhCae7lHFPgrWri/GH/q/FDR7hs9PAwiBZwSYb
 pGCcQJmENQuHty+OHB4Vv41wbg==
X-Google-Smtp-Source: APXvYqxLUxcPLNObTAWH3B8Ce/vrxLkKzpczxQPY4N2mta6NTnGqrSrm/65RoiX/D+py9JoOesJGdg==
X-Received: by 2002:a1c:7c10:: with SMTP id x16mr6776554wmc.175.1569588471586; 
 Fri, 27 Sep 2019 05:47:51 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h9sm2985564wrv.30.2019.09.27.05.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 05:47:51 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v5 0/7] Add support of New Amlogic temperature sensor for G12
 SoCs
Date: Fri, 27 Sep 2019 14:47:41 +0200
Message-Id: <20190927124750.12467-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_054754_718075_846AFC5A 
X-CRM114-Status: GOOD (  12.49  )
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
