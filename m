Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 078CCCB6D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l19BlgpFW2BTeC53/MMOZLZigqjURzPDg02ELUinp4w=; b=bAZ
	zPX8KL7JXOUZwQLpecgXt8hT09j3KUqLgltEfGR04jVBxpTlqBwcztEa1u5bVCmwjJSH0WLHHe1ly
	OCWHd9nzHtMC7XPch9NR53OUlFaa6Zd4JsQwnaM0u4Bkb06yYka5VSECSxnSjDBtvJkz3Cf9x0r4P
	areKZgwUiSowm+WdohcCnrJawX92rEWrK21c5eio9NTnSUC2+wuH81I6RrXmI60a2P6mOdYkS91dc
	XsJLjKwtTD/72nA9iz4Zhlo3LJd+BFYWDRu8la7OfUk8RY58+JV+b20YV5WoylvtQbqW/bKeHgCaO
	7PHZVNaYalqwUMfiUUUm1DVkL+kdFOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJSu-0000hv-Hn; Fri, 04 Oct 2019 09:01:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJSg-0000f5-3R
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:01:20 +0000
Received: by mail-wr1-x441.google.com with SMTP id j11so358297wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 02:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=EFydY0lgIP899wnAH99dy6et3EG1uYQ9KTgGCBLycYs=;
 b=qF0GVukplt92gp1dIgMULefb5vjDSNNhk+Ho8zlhKs5lWbidTiPF3rXtAV/OMf/cWA
 YLkSKjy8nyUM1mp1oJRyBI52MX4/1ErOfaNIxvRvwAubX3kc3rBJH3v3qLHXKvMs3UbI
 YcI/Ok0ScCFkD8rDOZoGkYDiJwXlmBWCFD3XB2uGQSV9jjBXM70JO/9HSPqcK/BGDIEC
 xWpCVkzTSpsysEwc2JVgLgsC4zIZNcdtrpK7cDk+k73kpVSC7zypLxAG7HiTT1tBNPJo
 6wpcKeA3yYNu+7hfFihagaIfl0fv0Ennk/vsC72bxoG/8zycuhVhESXsBE60rKCZT7qp
 u7MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EFydY0lgIP899wnAH99dy6et3EG1uYQ9KTgGCBLycYs=;
 b=hAsr13uluVfvZHZxkRfvCuBu63ULSrmgiUOKSXH0rmRhQKQoI5RirS7j3qSo67MWlB
 MEYOVLJWFH2VCPgpwQjddJKR7iS6R1IO1xvBVKjdV8VjyKL7f3O1vr1AZekiTOmzj4nK
 KbMCQiO9PEqMZkL3qdw62raA3LVKhol9k37/A5O/QPQgmC4VubGbqk/KoDL9zxqqR38J
 Bg+1/+g5CDXxbNpnaj2hReqE/ux7L6pYmVAE34yJ2huzFHFloFlxslI1HSdVd+DQFN2r
 dxo6rrBspzQo33bz3fITFEFwlg9bqcyzxMe+Q7eBzcF8rTKTQnV4I/uWqhogvLj4IEZ1
 tgjA==
X-Gm-Message-State: APjAAAUuxaIAPiEHl2pv6T3wHxnxymoIt3/TkLY+LrKp+ucQjDiLjPew
 XY5fmlT/XCTFAX0/PDnZMm5fMg==
X-Google-Smtp-Source: APXvYqyRiGMXW/wfqsay/UYMA7JeRdE57EW6un20v5k0NxiOZ3sdeT1X4JHfTYukfhmSHqxi20GgMQ==
X-Received: by 2002:a5d:630d:: with SMTP id i13mr10380588wru.230.1570179676023; 
 Fri, 04 Oct 2019 02:01:16 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v8sm7765170wra.79.2019.10.04.02.01.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 02:01:15 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v7 0/7] Add support of New Amlogic temperature sensor for G12
 SoCs
Date: Fri,  4 Oct 2019 11:01:07 +0200
Message-Id: <20191004090114.30694-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_020118_194818_6E576598 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Changes since v6:
 - add missing critical trip point.

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
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  77 ++++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  24 ++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  29 ++
 drivers/thermal/Kconfig                       |  11 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/amlogic_thermal.c             | 333 ++++++++++++++++++
 8 files changed, 538 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
 create mode 100644 drivers/thermal/amlogic_thermal.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
