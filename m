Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2397C6CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Yn098yjy88PbckGsBhwc2SYGlMii4Oxba3KDIP/ofRM=; b=t1A
	bf/7XbitG10XqjbNL7V9ohiDqRfzGD0NY8XaNPWoNvMyyqJok+qRUFJHN4vTRH4kexPQovbc9SDTf
	3wzb2fNUKFSpuI5dANe9tDYyVZ+Rou/lHsyrHz8D5M1Ff4I45ZdlRAt+UM0u8RA5E/tvXYDhYxDsG
	rgKtZxOUViQk/CWilDMUhc3kSpOI7ByGziRJRteLOsPfX15iYcBN+c2KmIPiiT0Lt5Ffk5EyV9lge
	ilgBX6f7KT6XexudGv42Ewjfon5trix06l8xeFOjYdE29iNnzI9bYwzD4SO3nLPV5qiEsJ3H+CHfO
	LYYCMgXngdbTo7PDS46W1JT3lGHvzFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqdp-0005Rv-0a; Wed, 31 Jul 2019 15:35:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqdZ-0005Nj-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:35:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id 207so61318823wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=7WLjxnI8g1thWsUDdq2Hfl/ujp9OHSJIwkbSbhOm62c=;
 b=0BPP66usc+st7NTNLiYHcT9I5K1u3a3FEnCC+97RYYsl5JXVb4fBlUXZzVS5LwBf7n
 JTbKUH4p+DVBgg45Nl6ztxJKXrgO+YkenDp/0q8Eh3Ydn+k4m+f/ktpR+xKmoRLE+g6+
 4X6jN7AGogvDcQWFlsSg8svTa1InuOjfbGbKMGHVxQbsqoGXyDdABcwqcJIHeSKTXv69
 /gefxIJ4R8j1z5lsN+g3Z+OwfZVRSfu+Vqw4JiTWNhmI7MuIho7o3To837fdMnqrN7jP
 Sd5lBLUmT8egE95rs1uVvzchYHQ3G/g+300vxT6y+sc00+5YRAV/HDgkPf/iOGFu/oY9
 aMxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7WLjxnI8g1thWsUDdq2Hfl/ujp9OHSJIwkbSbhOm62c=;
 b=pUYJz6ppdBYHLwMDZ1BnGeKVpmYJ+VU6Ep9LTYBdrmjR5DmceTf45ujqixu7IZ9z5u
 wCLFJ7ZAsjF5aMbOI7L+/Gk6X+SVzhP5AAbBeTJkgPfb/T3rxZTFpzSml+aaF4lFS+WW
 jsIwe26JAUab30qVYtdGSWYRU3AyEaZIoxNdp8PEr/PU0ZnyEQ2VWpz6Sp0vtkNJ7Ucw
 VWr/3QlHek7KqZ4rKk7RP0g9vV1COSGrPna9V6otpCzflmxj35wwoWfnf1LhL+eXnYtm
 7Cfcn25grtQqs2vpLPa+iDuwSpVorHtQnNwmO055W40dwBCBP+ud4JwCmALOwTXAC+Q4
 PjpA==
X-Gm-Message-State: APjAAAVSOyzdmPQ0DI7ZAWrV3FVa6M9QUb0OObgUUpr7rIvvX/ZqgjnP
 AM4W1rVSzgglpsL5pMcyLogoKg==
X-Google-Smtp-Source: APXvYqwwJjY3FtKTWbfPIEqttUCqL8C62yZwUYcZbMGgyaXoMKyDjYkpr7m8Tzh4baLNN8dmQs3MwA==
X-Received: by 2002:a05:600c:c6:: with SMTP id
 u6mr114781417wmm.153.1564587331749; 
 Wed, 31 Jul 2019 08:35:31 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i13sm62834396wrr.73.2019.07.31.08.35.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:35:30 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH v2 0/6] Add support of New Amlogic temperature sensor for G12
 SoCs
Date: Wed, 31 Jul 2019 17:35:23 +0200
Message-Id: <20190731153529.30159-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083533_717126_D9F0923A 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Changes since v1:
  - fix enum vs const in documentation for compatible
  - fix error with thermal-sensor-cells value set to 1 instead of 0
  - add some dependencies needed to add cooling-maps

Dependencies :
- patch 3,4 & 5: depends on Neil's patch and series :
              - missing dwc2 phy-names[1]
              - patchsets to add DVFS on G12a[3] which have deps on [4] and [5]

[1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
[2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
[3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-1-narmstrong@baylibre.com/
[4] https://lore.kernel.org/linux-amlogic/20190731084019.8451-5-narmstrong@baylibre.com/
[5] https://lore.kernel.org/linux-amlogic/20190729132622.7566-3-narmstrong@baylibre.com/

Guillaume La Roque (6):
  dt-bindings: thermal: Add DT bindings documentation for Amlogic
    Thermal
  thermal: amlogic: Add thermal driver to support G12 SoCs
  arm64: dts: amlogic: g12: add temperature sensor
  arm64: dts: meson: sei510: Add minimal thermal zone
  arm64: dts: amlogic: odroid-n2: add minimal thermal zone
  MAINTAINERS: add entry for Amlogic Thermal driver

 .../bindings/thermal/amlogic,thermal.yaml     |  58 +++
 MAINTAINERS                                   |   9 +
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  22 ++
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  56 +++
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  60 ++++
 drivers/thermal/Kconfig                       |  11 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/amlogic_thermal.c             | 332 ++++++++++++++++++
 8 files changed, 549 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
 create mode 100644 drivers/thermal/amlogic_thermal.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
