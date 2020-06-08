Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87271F1539
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XZ3TLSU8/j40JOGYUp955+1kKHBbaPl4NRMDZxGqt9U=; b=motr3GXR1/etkY
	ATxXm6SBHpQnY03wQ9GlNOtQbEqlafVPzlyv5mBnwFeN749hFK3lXJNfCr64cN5RygJWxrBweTNjv
	0ETkO/nIz1PcXeKWf6Clu+Cgb6KvfFk7Kjmy0Up/MQ1j8/XVk/h8ASfdvN4uu3nzsmDOVv3Euvxwj
	R7srKLyS/y047C8sYEtBsGmbE7AnW5RlL4mUvIQDWDFtGtVyx2MuF7v6Jtn7UKPa15vx/2t7FAqCi
	CwghJK9z/DprWDx0+JfWMDGdnRepEGUklk+SBsyyJeQsePF2eWxfVuNHfR20IWzzM58VhVZsjfOlg
	iu0anab2O7SP17IhtU5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDur-0002L1-8i; Mon, 08 Jun 2020 09:18:01 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDub-0002IF-LM
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:17:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id d128so15731136wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 02:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4Fm1rwtOISvK8gr+7LuMXZ/qPS5BDlq5HB6zyGZJxGw=;
 b=WFLvXLljBM6V1NmppMID2bA5jT2HXO415vnRZxi3guuwvHkqqI1fio60qbVJenv9y1
 SeVA1WczH4p6ZAdZQXh1Kqfl6k2eD44MmBJsiy/QQHs0A6Oet4X/ux6mzTZvhMhESIHd
 mnXyfKz/WS3zE53m3JdhAiDzmwQrkJ9EMMSFSABw3h5/YlY6Bj/Q+cy0PCmrg1FOr0iu
 5FXCkwzBx2wl86k2NvvfFCDG11F5jgjsI8YcmrOibVTw9lP+EOu0WZxM3ufQU83nZ2HR
 eVRdH02+tYD4NTVAp1jMy2RniJaBZOI4NYzfYIsReSQWsrxnK68oAw9MB/H7C1aWGQnI
 5wyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4Fm1rwtOISvK8gr+7LuMXZ/qPS5BDlq5HB6zyGZJxGw=;
 b=nEIN5ZyBELxC420dsQByKNGu6NyzUKPzvrKjloXQmy31a7qbYu7un/OUMdimlKsKFP
 z/H1WGdDe7G86A/TBpiLf4ojld0QqRsiDix2Uu3DpWeLwTrY4Tce8TVzAa7ubbIxYABt
 0PXW36OcdfqHwZlFzW1vGg6oWjnOzKpJUiAAh9hN/p41Ww2zgk3CQPKBwH5/aKqhI22R
 W/KWTSdGwikNzwS3YLsfM0Si0AhDXH7ViK9BwZa0avjJOJ8YooDwSPmcFdzE04NXHds6
 Rsi0S8jWsNhAnu29C8nQNVvJcPXDjpATIC+l4cMKw/swtn76aBJibJPddaM9kZtmiCUm
 OCuQ==
X-Gm-Message-State: AOAM531trRjFM7nOAYH2P9ojpV/4z+60e3s2Y06eYkc4hEeW5gHhH1qn
 ziZSg0w3VtULlv33uCVCglHm7Q==
X-Google-Smtp-Source: ABdhPJyCtnfLmNUkx7DrKCb4pwHApmhfPCWmAwzBNq7fE7AzanzmZTIYoP+MO6W7EOpfC/5BKbDo9A==
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr16300196wmi.126.1591607862942; 
 Mon, 08 Jun 2020 02:17:42 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 t7sm22732326wrq.41.2020.06.08.02.17.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:17:42 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, lee.jones@linaro.org, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com
Subject: [PATCH v3 0/5] mfd: Add support for Khadas Microcontroller
Date: Mon,  8 Jun 2020 11:17:34 +0200
Message-Id: <20200608091739.2368-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_021745_824053_31FCA1F7 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
- the Thermal Cooling cell driver
- updates MAINTAINERS
- add support into the Khadas VIM3/VIM3L DT

Changes since v2 at [3]:
- Removed NVMEM driver for separate submission
- fixed MFD driver, header and Kconfig
- fixed Thermal Kconfig
- fixed MAINTAINERS files and path

Changes since RFC v1 at [2]:
- moved hwmon driver to thermal-only
- moved the SM1 thermal nodes in a separate serie
- added the bindings review tag from rob

[1] http://lore.kernel.org/r/20200512093916.19676-1-narmstrong@baylibre.com
[2] http://lore.kernel.org/r/20200421080102.22796-1-narmstrong@baylibre.com
[3] http://lore.kernel.org/r/20200512132613.31507-1-narmstrong@baylibre.com

Neil Armstrong (5):
  dt-bindings: mfd: add Khadas Microcontroller bindings
  mfd: add support for the Khadas System control Microcontroller
  thermal: add support for the MCU controlled FAN on Khadas boards
  MAINTAINERS: add myself as maintainer for Khadas MCU drivers
  arm64: dts: meson-khadas-vim3: add Khadas MCU nodes

 .../devicetree/bindings/mfd/khadas,mcu.yaml   |  44 +++++
 MAINTAINERS                                   |   9 +
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  23 +++
 drivers/mfd/Kconfig                           |  21 +++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/khadas-mcu.c                      | 142 ++++++++++++++
 drivers/thermal/Kconfig                       |  11 ++
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/khadas_mcu_fan.c              | 174 ++++++++++++++++++
 include/linux/mfd/khadas-mcu.h                |  91 +++++++++
 10 files changed, 517 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
 create mode 100644 drivers/mfd/khadas-mcu.c
 create mode 100644 drivers/thermal/khadas_mcu_fan.c
 create mode 100644 include/linux/mfd/khadas-mcu.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
