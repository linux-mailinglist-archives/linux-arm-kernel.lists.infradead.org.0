Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B701A9A81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nyIYE4pIqAbIISh2F8y8mzkUL9nxo9m7LkCLZiWf7Kw=; b=I2SE9//0/UgFwa
	kA7wnUJEoUJi0Ft5OYu9ifA0QAKm5JpRuj+ZAwiMrgmI7X/w/aeX+D74qVTZOCT3zgloXBQSeWVlu
	rUg8o5XPSAPq1CsyNOuVLx22zR2aTYGFKLfEuUPLR0gYmJ4s9qE0DQl0rL6Nd208sL7auu1kt3QEs
	FO+Bke7Kny5U10dLznWckFEymHNAeEk7LHJfV+XA7ch8353kpphGJrxP/O/xUcNXQmJFRQCLgD/q1
	Pt5kIFvt9KuyIvWxi7Vl0rj7sUHNSPABo1b/MAAdx82SuUksk4FfLfGxjqvHxOgYhNPCxMNXWmzkZ
	OjjwdXD6VP/Q3B5SN7qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfKj-0001qB-KM; Wed, 15 Apr 2020 10:31:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfKX-0001o6-FJ; Wed, 15 Apr 2020 10:31:43 +0000
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCEED208FE;
 Wed, 15 Apr 2020 10:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586946701;
 bh=uRks2HYiRyRdiR4g4ENZwFdl3nuMvUwAgHch1gvWFtU=;
 h=From:To:Cc:Subject:Date:From;
 b=LjvFPPv18vTxu7vRGD7+5SofqLQC3JFt2Yh/g1J8TyUMrRbcnYNDjKFZXMbTvP+l2
 2b6QydhAIOc5+m83jy/p6rLevh6dSKnSQATtz2x1JvYlUAG1VDGoiNvLGHpZQ7NVpv
 YUWuwFJRmt04Jol1FBOsxz2sWmgBvn5JgZW8sQPg=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jOfKV-006gM0-23; Wed, 15 Apr 2020 12:31:39 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH v2 0/6] Move CEC drivers and menu to be out of MEDIA_SUPPORT
Date: Wed, 15 Apr 2020 12:31:31 +0200
Message-Id: <cover.1586946605.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_033141_559596_BB941465 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Ettore Chimenti <ek5.chimenti@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Guenter Roeck <groeck@chromium.org>, linux-stm32@st-md-mailman.stormreply.com,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CEC_CORE doesn't depend on MEDIA_SUPPORT. So, it doesn't make
much sense to keep it under its menu.

This series move it to be just after RC support. As a side effect, now
dependencies like PCI and USB are now selected, making easier to
enable CEC drivers.

- v2:
  - move more CEC drivers from platform/
  - rename kconfig options to be more coherent

Mauro Carvalho Chehab (6):
  media: cec: move the core to a separate directory
  media: place CEC menu before MEDIA_SUPPORT
  media: move CEC platform drivers to a separate directory
  media: move CEC USB drivers to a separate directory
  media: cec: rename CEC platform drivers config options
  media: cec: rename USB config options

 arch/arm/configs/exynos_defconfig             |   2 +-
 arch/arm/configs/multi_v7_defconfig           |   2 +-
 drivers/media/Kconfig                         |  30 +----
 drivers/media/cec/Kconfig                     |  25 ++++
 drivers/media/cec/Makefile                    |  16 +--
 drivers/media/cec/core/Makefile               |  16 +++
 drivers/media/cec/{ => core}/cec-adap.c       |   0
 drivers/media/cec/{ => core}/cec-api.c        |   0
 drivers/media/cec/{ => core}/cec-core.c       |   0
 drivers/media/cec/{ => core}/cec-notifier.c   |   0
 .../media/cec/{ => core}/cec-pin-error-inj.c  |   0
 drivers/media/cec/{ => core}/cec-pin-priv.h   |   0
 drivers/media/cec/{ => core}/cec-pin.c        |   0
 drivers/media/cec/{ => core}/cec-priv.h       |   0
 drivers/media/cec/platform/Kconfig            | 121 +++++++++++++++++
 drivers/media/cec/platform/Makefile           |  14 ++
 .../{ => cec}/platform/cec-gpio/Makefile      |   0
 .../{ => cec}/platform/cec-gpio/cec-gpio.c    |   0
 drivers/media/cec/platform/cros-ec/Makefile   |   2 +
 .../platform/cros-ec}/cros-ec-cec.c           |   0
 drivers/media/cec/platform/meson/Makefile     |   3 +
 .../{ => cec}/platform/meson/ao-cec-g12a.c    |   0
 .../media/{ => cec}/platform/meson/ao-cec.c   |   0
 .../s5p-cec => cec/platform/s5p}/Makefile     |   2 +-
 .../platform/s5p}/exynos_hdmi_cec.h           |   0
 .../platform/s5p}/exynos_hdmi_cecctrl.c       |   0
 .../s5p-cec => cec/platform/s5p}/regs-cec.h   |   0
 .../s5p-cec => cec/platform/s5p}/s5p_cec.c    |   0
 .../s5p-cec => cec/platform/s5p}/s5p_cec.h    |   0
 drivers/media/cec/platform/seco/Makefile      |   2 +
 .../seco-cec => cec/platform/seco}/seco-cec.c |   2 +-
 .../seco-cec => cec/platform/seco}/seco-cec.h |   0
 drivers/media/cec/platform/sti/Makefile       |   2 +
 .../sti/cec => cec/platform/sti}/stih-cec.c   |   0
 drivers/media/cec/platform/stm32/Makefile     |   2 +
 .../{ => cec}/platform/stm32/stm32-cec.c      |   0
 drivers/media/cec/platform/tegra/Makefile     |   2 +
 .../platform/tegra}/tegra_cec.c               |   0
 .../platform/tegra}/tegra_cec.h               |   0
 drivers/media/cec/usb/Kconfig                 |   6 +
 drivers/media/cec/usb/Makefile                |   6 +
 .../pulse8-cec => cec/usb/pulse8}/Kconfig     |   5 +-
 drivers/media/cec/usb/pulse8/Makefile         |   2 +
 .../usb/pulse8}/pulse8-cec.c                  |   0
 .../usb/rainshadow}/Kconfig                   |   5 +-
 drivers/media/cec/usb/rainshadow/Makefile     |   2 +
 .../usb/rainshadow}/rainshadow-cec.c          |   0
 drivers/media/platform/Kconfig                | 125 ------------------
 drivers/media/platform/Makefile               |  12 --
 drivers/media/platform/cros-ec-cec/Makefile   |   2 -
 drivers/media/platform/meson/Makefile         |   3 -
 drivers/media/platform/seco-cec/Makefile      |   2 -
 drivers/media/platform/sti/cec/Makefile       |   2 -
 drivers/media/platform/stm32/Makefile         |   1 -
 drivers/media/platform/tegra-cec/Makefile     |   2 -
 drivers/media/usb/Kconfig                     |   6 -
 drivers/media/usb/Makefile                    |   2 -
 drivers/media/usb/pulse8-cec/Makefile         |   2 -
 drivers/media/usb/rainshadow-cec/Makefile     |   2 -
 59 files changed, 218 insertions(+), 212 deletions(-)
 create mode 100644 drivers/media/cec/core/Makefile
 rename drivers/media/cec/{ => core}/cec-adap.c (100%)
 rename drivers/media/cec/{ => core}/cec-api.c (100%)
 rename drivers/media/cec/{ => core}/cec-core.c (100%)
 rename drivers/media/cec/{ => core}/cec-notifier.c (100%)
 rename drivers/media/cec/{ => core}/cec-pin-error-inj.c (100%)
 rename drivers/media/cec/{ => core}/cec-pin-priv.h (100%)
 rename drivers/media/cec/{ => core}/cec-pin.c (100%)
 rename drivers/media/cec/{ => core}/cec-priv.h (100%)
 create mode 100644 drivers/media/cec/platform/Kconfig
 create mode 100644 drivers/media/cec/platform/Makefile
 rename drivers/media/{ => cec}/platform/cec-gpio/Makefile (100%)
 rename drivers/media/{ => cec}/platform/cec-gpio/cec-gpio.c (100%)
 create mode 100644 drivers/media/cec/platform/cros-ec/Makefile
 rename drivers/media/{platform/cros-ec-cec => cec/platform/cros-ec}/cros-ec-cec.c (100%)
 create mode 100644 drivers/media/cec/platform/meson/Makefile
 rename drivers/media/{ => cec}/platform/meson/ao-cec-g12a.c (100%)
 rename drivers/media/{ => cec}/platform/meson/ao-cec.c (100%)
 rename drivers/media/{platform/s5p-cec => cec/platform/s5p}/Makefile (63%)
 rename drivers/media/{platform/s5p-cec => cec/platform/s5p}/exynos_hdmi_cec.h (100%)
 rename drivers/media/{platform/s5p-cec => cec/platform/s5p}/exynos_hdmi_cecctrl.c (100%)
 rename drivers/media/{platform/s5p-cec => cec/platform/s5p}/regs-cec.h (100%)
 rename drivers/media/{platform/s5p-cec => cec/platform/s5p}/s5p_cec.c (100%)
 rename drivers/media/{platform/s5p-cec => cec/platform/s5p}/s5p_cec.h (100%)
 create mode 100644 drivers/media/cec/platform/seco/Makefile
 rename drivers/media/{platform/seco-cec => cec/platform/seco}/seco-cec.c (99%)
 rename drivers/media/{platform/seco-cec => cec/platform/seco}/seco-cec.h (100%)
 create mode 100644 drivers/media/cec/platform/sti/Makefile
 rename drivers/media/{platform/sti/cec => cec/platform/sti}/stih-cec.c (100%)
 create mode 100644 drivers/media/cec/platform/stm32/Makefile
 rename drivers/media/{ => cec}/platform/stm32/stm32-cec.c (100%)
 create mode 100644 drivers/media/cec/platform/tegra/Makefile
 rename drivers/media/{platform/tegra-cec => cec/platform/tegra}/tegra_cec.c (100%)
 rename drivers/media/{platform/tegra-cec => cec/platform/tegra}/tegra_cec.h (100%)
 create mode 100644 drivers/media/cec/usb/Kconfig
 create mode 100644 drivers/media/cec/usb/Makefile
 rename drivers/media/{usb/pulse8-cec => cec/usb/pulse8}/Kconfig (86%)
 create mode 100644 drivers/media/cec/usb/pulse8/Makefile
 rename drivers/media/{usb/pulse8-cec => cec/usb/pulse8}/pulse8-cec.c (100%)
 rename drivers/media/{usb/rainshadow-cec => cec/usb/rainshadow}/Kconfig (85%)
 create mode 100644 drivers/media/cec/usb/rainshadow/Makefile
 rename drivers/media/{usb/rainshadow-cec => cec/usb/rainshadow}/rainshadow-cec.c (100%)
 delete mode 100644 drivers/media/platform/cros-ec-cec/Makefile
 delete mode 100644 drivers/media/platform/meson/Makefile
 delete mode 100644 drivers/media/platform/seco-cec/Makefile
 delete mode 100644 drivers/media/platform/sti/cec/Makefile
 delete mode 100644 drivers/media/platform/tegra-cec/Makefile
 delete mode 100644 drivers/media/usb/pulse8-cec/Makefile
 delete mode 100644 drivers/media/usb/rainshadow-cec/Makefile

-- 
2.25.2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
