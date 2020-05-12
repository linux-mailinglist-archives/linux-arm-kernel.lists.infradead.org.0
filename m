Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0E61CF5B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cbkNKxBY31FXVlH3beQ+VwpsLJ5xxoTSj4Ruu6ArRr0=; b=sc7e+fULadufMA
	xLjtV4RUguQaA77PpC+5rZn/2irkvPf5Jew4PYiUouYIHOUQIDiHEjax36VsDTYmt4vg846d1Knal
	DRUgE/OqzlMVjUnIN2a2WyGrfzyiRRnRPlgHAM4eeZxvG+Ef2U0oWFVz8FxUG4b8sNidRNJ3DZWCh
	RPD32Lalh1Ig+A8ZVxuLv3roEFAEsDDHbEPmCrIxBi646M7NtYRuim2a1JDau9+CdrTCtOV5JXbJk
	BqZCVomfOMwHMadZQOTnMPlSmnZk6LavaTQCEaMdNGvTtsXMV0jlrfMuehGNrR5UA9i0RYCp558Zb
	GkgK0EoJ8CgqrlRg5g5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUve-0001YL-Dk; Tue, 12 May 2020 13:26:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUvL-0001Ti-L3
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:26:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id e1so1438649wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 06:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Go6EA70bJtcKVjvR24qLP1HyJXRwhoEX5J2ggLK/lwQ=;
 b=V9IwWVvxcnMOOd8GRgTS4y27COjD5qrtjdcUZMAxV10Dvh5RLePnyv24HbbmrYTZkX
 GKKfzgDe0UDI6SYRYz/oDmbz3Vf/GybO6G0+nMAF4dL3ViBdTUZj4xaP+LFDaXHskxIF
 qwBoko4GWjQI04zwo1UArfZNOHCJGDbkEi6PqMk5LbaukqduKwtZDT5j4Mqb5cKC+Izy
 p0IZgDYZW64qSUSnSR3lli9NcOzExfZtu/PL9Ww5uVv7/K0CuGo0WYfgfRmA0z2zqFmh
 VVgsN/CJOjb2xq6ccsRMrq1VtofyoY+AuAk+E1U3Lhy7znx6YA8nMylVriZHmXBiP8s7
 xsgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Go6EA70bJtcKVjvR24qLP1HyJXRwhoEX5J2ggLK/lwQ=;
 b=reM4R0UjXZ+NLr6D5kuG3RsZdnx3KSukKxuHrEFL66bpny2ee59R7v/97WOjmag35g
 axQ/tCGwy4E7nDx07R77lAnlRiIMZ+QRxbpcXHpLeQ4pYzwX9AVooAgR3g5I+7yISAB5
 dLeCu5v8fX+FEmLR6SP9NyePha+b9QAJXco9Eq5CDZDLE9ZlkkPrcabzapGJOae50gaI
 fCCwGUZWzzn7131A1w97NuOfq1SnvNDf95oWzbeqyFLLRM62YhtapKpEq9YOWwHXS+ip
 qMKkiNt6RlXljYEGH1/Izy4ziNYtihB5KtqUe5JeMmMweedowF8JZUO/cd6PXmwQA35S
 flZQ==
X-Gm-Message-State: AGi0PuYOrA+Qjt/L6rSoWqBmg0lGmvxJYGdY/VbdFxrUMQk+0z53fher
 3555LuYBo4VbM+prg1zujTNPng==
X-Google-Smtp-Source: APiQypI2kanwMn4n6b+uBjRG3a2Lgj0R69NagRGMzqIb2DZ1OgzPeFumG1+jUYUZSQEWNSEXhZ40Pw==
X-Received: by 2002:adf:face:: with SMTP id a14mr24734851wrs.397.1589289977653; 
 Tue, 12 May 2020 06:26:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 g15sm14441844wro.71.2020.05.12.06.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 06:26:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, lee.jones@linaro.org, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 srinivas.kandagatla@linaro.org
Subject: [PATCH v2 0/6] mfd: Add support for Khadas Microcontroller
Date: Tue, 12 May 2020 15:26:07 +0200
Message-Id: <20200512132613.31507-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_062619_696577_FE5A1521 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new Khadas VIM2, VIM3 and Edge boards embeds an on-board microcontroller
connected via I2C.

This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
boards.

It has multiple boot control features like password check, power-on
options, power-off control and system FAN control on recent boards.

Thie serie adds :
- the bindings
- the MFD driver
- the HWMON cell driver
- the NVMEM cell driver
- updates MAINTAINERS
- add support into the Khadas VIM3/VIM3L DT

Patch 6 depends on [1].

Changes since RFC v1 at [2]:
- moved hwmon driver to thermal-only
- moved the SM1 thermal nodes in a separate serie
- added the bindings review tag from rob

[1] http://lore.kernel.org/r/20200512093916.19676-1-narmstrong@baylibre.com
[2] http://lore.kernel.org/r/20200421080102.22796-1-narmstrong@baylibre.com

Neil Armstrong (6):
  dt-bindings: mfd: add Khadas Microcontroller bindings
  mfd: add support for the Khadas System control Microcontroller
  thermal: add support for the MCU controlled FAN on Khadas boards
  nvmem: add support for the Khadas MCU Programmable User Memory
  MAINTAINERS: add myself as maintainer for Khadas MCU drivers
  arm64: dts: meson-khadas-vim3: add Khadas MCU nodes

 .../devicetree/bindings/mfd/khadas,mcu.yaml   |  44 +++++
 MAINTAINERS                                   |  10 +
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  23 +++
 drivers/mfd/Kconfig                           |  14 ++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/khadas-mcu.c                      | 143 ++++++++++++++
 drivers/nvmem/Kconfig                         |   8 +
 drivers/nvmem/Makefile                        |   2 +
 drivers/nvmem/khadas-mcu-user-mem.c           | 128 +++++++++++++
 drivers/thermal/Kconfig                       |  10 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/khadas_mcu_fan.c              | 174 ++++++++++++++++++
 include/linux/mfd/khadas-mcu.h                |  91 +++++++++
 13 files changed, 649 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
 create mode 100644 drivers/mfd/khadas-mcu.c
 create mode 100644 drivers/nvmem/khadas-mcu-user-mem.c
 create mode 100644 drivers/thermal/khadas_mcu_fan.c
 create mode 100644 include/linux/mfd/khadas-mcu.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
