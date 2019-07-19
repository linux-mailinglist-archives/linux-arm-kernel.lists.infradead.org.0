Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF206ECD7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 01:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wg3yLmdt1xtnT8CR0kAFJI56VQBfWx1tKzUctJJD6d8=; b=dH58EdDQ3RMvBD
	SUOu0meSl5fvFz4X2zKDDoi0Pusp6twfEs0U27b3i8PEiUmuR7sRWaanzuXQHT1IROaN1qaYPGK0G
	MzYBJCSpD6BtOnHKbg/u/zvsas/Hqgfo8EJWkQwMmI+XTIZPiryWJdgMB8Dc1mpn59UgAJ74zDB9X
	8+KnM01aNOuqUM4HGePuTEt/8jW+5/bn0P9x9ntTYcpEEHlPltx67vGyO6sZ7KWqCUANafG2gP2Wm
	q+fS6nKmo7sJKpROtxh+w2wUkVpURd5SAWUJ9bSRglCzqdrD0V1JJKGF7XF/xhtSeX/7eugC50vLg
	OKaaH9Gi62AsO+ZFl/gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hocjO-0005j4-3d; Fri, 19 Jul 2019 23:56:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hociB-0003ZU-GM
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 23:54:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so14819935pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 16:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ufhL4yHfqoXd/Lsuj3L+wDyuVwa9Hu5CekOmZYpj4Co=;
 b=v8cOBHhMnK387AweH5DFMd0ckR/tnKEKEJFVqCgrKXGxjAbJnlm6f96vj249izU+Aq
 cmp1qlH7wl8MoMvV8yzVpDFmRceHOOPKNuSKIZeYw2h4MEFzhDKoGBDYK+hCKKj0A2mB
 VcsADVvvnkMNCzU98UNg65h6QccWeH/KOm4VuxkgacRQByMranC2u7xL+zHawi+kbtzZ
 ENUIjW6GB3G7Ytdy+355RB1GbwkEaG8pMbIWWbfCeSpQCp2thchrRUc1kt08PSRMXPfE
 fYKLa0aFaMmqdUsctODXSNnydJQfXZAlihkcHZ1GhPNBN1OkO1shVcUGFAufl+6vo1OL
 HMcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ufhL4yHfqoXd/Lsuj3L+wDyuVwa9Hu5CekOmZYpj4Co=;
 b=smoLq8+p8fl+DKeiC5IsfJVo6MqXg7yi0fGf/nCmznhxSrMlmFWxBdaiY52foqnrj7
 nCNZpRbg9pS7g/1DrwB7456nb/WE2hUC0UrJLQr3/bPgfh8n/cgMYXFjMZWlbShRBGTJ
 2mDZhzqsB2HfrQeGOn9odRdA8dowI6HjWsNAI1wXB6Zoy9n/vr4x4LNQg9OMl3hI03ps
 EC4naANtjRpkUDClWsAtag6XGLJYu1O/qS1a37q6Mp0noOjS5pIKOaZ8eJKzbWpEsuIq
 L0QC+Ix9o7clvuaScaw3qBRlRk+k24Kr/TQbko3Evp6OHyNhlbFDeZXu5zqGI3i3lU45
 1Acg==
X-Gm-Message-State: APjAAAXOYQiV9DPNsSUPUNNCQC5Sw5UDUQhAi8X/Gbw6yGPPjKy2S71D
 Cs8Qr70lRaHZuadFrzLh0uw=
X-Google-Smtp-Source: APXvYqxRGagdfjRddfQVUzAjoZJ5Qf93NrGFvaYD2FJ1XHB/E+OuchMteM+gWWzROqYDlFnnqWpsSQ==
X-Received: by 2002:a65:6288:: with SMTP id f8mr51849631pgv.292.1563580490566; 
 Fri, 19 Jul 2019 16:54:50 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id v184sm31975215pfb.82.2019.07.19.16.54.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 16:54:48 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 2/4] ARM: SoC-related driver updates
Date: Fri, 19 Jul 2019 16:54:32 -0700
Message-Id: <20190719235434.13214-3-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20190719235434.13214-1-olof@lixom.net>
References: <20190719235434.13214-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_165451_785058_6EA3169F 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Olof Johansson <olof@lixom.net>, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Various driver updates for platforms and a couple of the small driver
subsystems we merge through our tree:

- A driver for SCU (system control) on NXP i.MX8QXP
- Qualcomm Always-on Subsystem messaging driver (AOSS QMP)
- Qualcomm PM support for MSM8998
- Support for a newer version of DRAM PHY driver for Broadcom (DPFE)
- Reset controller support for Bitmain BM1880
- TI SCI (System Control Interface) support for CPU control on AM654
processors
- More TI sysc refactoring and rework

----------------------------------------------------------------

The following changes since commit ae8f8e20bb698788a3a124b4916f3f3f9a4f216c:

  Merge tag 'armsoc-soc' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-drivers

for you to fetch changes up to 8c0993621c3e5fa52e5425ef2a0f67a0cde07092:

  Merge tag 'reset-for-v5.3' of git://git.pengutronix.de/git/pza/linux into arm/drivers

----------------------------------------------------------------

Amit Kucheria (1):
      MAINTAINERS: fix typo in file name

Andrew F. Davis (1):
      firmware: ti_sci: Always request response from firmware

Anson Huang (6):
      soc: imx: Add SCU SoC info driver support
      soc: imx: soc-imx8: Avoid unnecessary of_node_put() in error handling
      soc: imx: soc-imx8: Correct return value of error handle
      soc: imx8: Fix potential kernel dump in error path
      soc: imx8: Use existing of_root directly
      soc: imx: Add i.MX8MN SoC driver support

Arnd Bergmann (1):
      soc: rockchip: work around clang warning

Bitan Biswas (1):
      firmware: tegra: Early resume BPMP

Bjorn Andersson (6):
      soc: qcom: rpmpd: Modify corner defining macros
      dt-bindings: power: Add rpm power domain bindings for qcs404
      soc: qcom: rpmpd: Add QCS404 power-domains
      dt-bindings: soc: qcom: Add AOSS QMP binding
      soc: qcom: Add AOSS QMP driver
      soc: qcom: apr: Don't use reg for domain id

Colin Ian King (1):
      reset: remove redundant null check on pointer dev

David Brown (1):
      MAINTAINERS: Remove myself as qcom maintainer

Fabio Estevam (1):
      dt-bindings: reset: imx7: Fix the spelling of 'indices'

Florian Fainelli (3):
      bus: brcmstb_gisb: Remove print of base address
      firmware: arm_scmi: fetch and store sensor scale
      hwmon: scmi: Scale values to target desired HWMON units

Ioana Ciornei (2):
      Documentation: DT: Add entry for DPAA2 console
      soc: fsl: add DPAA2 console support

Jean-Philippe Brucker (1):
      firmware/psci: psci_checker: Park kthreads before stopping them

Joel Stanley (1):
      soc: aspeed: lpc-ctrl: Fix probe error handling

Krishna Yarlagadda (1):
      soc/tegra: Select pinctrl for Tegra194

Laurentiu Tudor (2):
      soc: fsl: qman: fixup liodns only on ppc targets
      soc: fsl: qbman_portals: add APIs to retrieve the probing status

Lee Jones (1):
      soc: qcom: geni: Add support for ACPI

Leonard Crestez (1):
      soc: imx: Read imx8mm soc revision from anatop

Manivannan Sadhasivam (2):
      dt-bindings: reset: Add devicetree binding for BM1880 reset controller
      reset: Add reset controller support for BM1880 SoC

Markus Mayer (9):
      memory: brcmstb: dpfe: use msleep() over udelay()
      memory: brcmstb: dpfe: optimize generic_show()
      memory: brcmstb: dpfe: use byte 3 of registers MR4-MR8
      memory: brcmstb: dpfe: remove unused code and fix formatting
      memory: brcmstb: dpfe: report firmware loading error
      memory: brcmstb: dpfe: wait for DCPU to be ready
      memory: brcmstb: dpfe: prepare support for multiple API versions
      memory: brcmstb: dpfe: prepare for API-dependent sysfs attributes
      memory: brcmstb: dpfe: introduce DPFE API v3

Martin Blumenstingl (2):
      dt-bindings: soc: amlogic: canvas: document support for Meson8/8b/8m2
      soc: amlogic: canvas: add support for Meson8, Meson8b and Meson8m2

Masahiro Yamada (2):
      memory: move jedec_ddr_data.c from lib/ to drivers/memory/
      memory: move jedec_ddr.h from include/memory to drivers/memory/

Nathan Huckleberry (1):
      memory: tegra: Fix -Wunused-const-variable

Nishad Kamdar (1):
      firmware: ti_sci: Use the correct style for SPDX License Identifier

Olof Johansson (15):
      Merge tag 'soc-fsl-next-v5.3' of git://git.kernel.org/.../leo/linux into arm/drivers
      Merge tag 'tee-maint-for-5.3' of https://git.linaro.org/people/jens.wiklander/linux-tee into arm/drivers
      Merge tag 'arm-soc/for-5.3/drivers' of https://github.com/Broadcom/stblinux into arm/drivers
      Merge tag 'omap-for-v5.3/ti-sysc-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/drivers
      Merge tag 'scmi-updates-5.3' of git://git.kernel.org/.../sudeep.holla/linux into arm/drivers
      Merge tag 'drivers_soc_for_5.3' of git://git.kernel.org/.../ssantosh/linux-keystone into arm/drivers
      Merge tag 'qcom-drivers-for-5.3' of git://git.kernel.org/.../qcom/linux into arm/drivers
      Merge tag 'amlogic-drivers' of https://git.kernel.org/.../khilman/linux-amlogic into arm/drivers
      Merge tag 'tegra-for-5.3-firmware' of git://git.kernel.org/.../tegra/linux into arm/drivers
      Merge tag 'tegra-for-5.3-memory' of git://git.kernel.org/.../tegra/linux into arm/drivers
      Merge tag 'tegra-for-5.3-soc' of git://git.kernel.org/.../tegra/linux into arm/drivers
      Merge tag 'aspeed-5.3-soc' of git://git.kernel.org/.../joel/aspeed into arm/drivers
      Merge tag 'imx-drivers-5.3' of git://git.kernel.org/.../shawnguo/linux into arm/drivers
      Merge tag 'reset-fixes-for-v5.2' of git://git.pengutronix.de/git/pza/linux into arm/drivers
      Merge tag 'reset-for-v5.3' of git://git.pengutronix.de/git/pza/linux into arm/drivers

Peng Fan (1):
      firmware: arm_scmi: update rate_discrete in clock_describe_rates_get

Peter Ujfalusi (2):
      firmware: ti_sci: Add resource management APIs for ringacc, psi-l and udma
      firmware: ti_sci: Parse all resource ranges even if some is not available

Randy Dunlap (1):
      soc: qcom: fix QCOM_AOSS_QMP dependency and build errors

Roy Pledge (2):
      bus: mc-bus: Add support for mapping shareable portals
      soc: fsl: dpio: Add support for memory backed QBMan portals

Sibi Sankar (4):
      soc: qcom: rpmpd: fixup rpmpd set performance state
      soc: qcom: rpmpd: Add support to set rpmpd state to max
      dt-bindings: power: Add rpm power domain bindings for msm8998
      soc: qcom: rpmpd: Add MSM8998 power-domains

Srinivas Kandagatla (1):
      qcom: apr: Make apr callbacks in non-atomic context

Sudeep Holla (1):
      firmware: arm_scmi: fix bitfield definitions for SENSOR_DESC attributes

Suman Anna (1):
      firmware: ti_sci: Add support for processor control

Sumit Garg (1):
      MAINTAINERS: Add mailing list for the TEE subsystem

Thierry Reding (4):
      soc/tegra: pmc: Fail to allocate more than one wake IRQ
      soc/tegra: pmc: Avoid crash for non-wake IRQs
      soc/tegra: pmc: Add comments clarifying wake events
      soc/tegra: fuse: Do not log error message on deferred probe

Tony Lindgren (12):
      bus: ti-sysc: Add support for missing clockdomain handling
      bus: ti-sysc: Support 16-bit writes too
      bus: ti-sysc: Make OCP reset work for sysstatus and sysconfig reset bits
      bus: ti-sysc: Allow QUIRK_LEGACY_IDLE even if legacy_mode is not set
      bus: ti-sysc: Enable interconnect target module autoidle bit on enable
      bus: ti-sysc: Handle clockactivity for enable and disable
      bus: ti-sysc: Handle swsup idle mode quirks
      bus: ti-sysc: Set ENAWAKEUP if available
      bus: ti-sysc: Add support for disabling module without legacy mode
      bus: ti-sysc: Do rstctrl reset handling in two phases
      bus: ti-sysc: Detect uarts also on omap34xx
      bus: ti-sysc: Add support for module specific reset quirks

Vabhav Sharma (1):
      soc: fsl: guts: Add definition for LX2160A

Vijay Khemka (1):
      soc: aspeed: lpc-ctrl: make parameter optional

Vinod Koul (1):
      MAINTAINER: Fix Qualcomm ETHQOS ethernet DT file

Volodymyr Babchuk (1):
      dt-bindings: arm: fix the document ID for SCMI protocol documentation

Youri Querry (1):
      soc: fsl: dpio: Increase timeout for QBMan Management Commands

YueHaibing (1):
      firmware: ti_sci: Fix gcc unused-but-set-variable warning


 .../devicetree/bindings/arm/arm,scmi.txt        |    2 +-
 .../bindings/misc/fsl,dpaa2-console.txt         |   11 +
 .../devicetree/bindings/power/qcom,rpmpd.txt    |    2 +
 .../bindings/reset/bitmain,bm1880-reset.txt     |   18 +
 .../devicetree/bindings/reset/fsl,imx7-src.txt  |    2 +-
 .../bindings/soc/amlogic/amlogic,canvas.txt     |   10 +-
 .../bindings/soc/qcom/qcom,aoss-qmp.txt         |   81 ++
 .../devicetree/bindings/soc/qcom/qcom,apr.txt   |    6 +-
 MAINTAINERS                                     |    9 +-
 arch/arm/mach-omap2/omap_hwmod.c                |   39 +-
 arch/arm/mach-omap2/pdata-quirks.c              |   60 +
 drivers/bus/brcmstb_gisb.c                      |    4 +-
 drivers/bus/fsl-mc/dprc.c                       |   30 +-
 drivers/bus/fsl-mc/fsl-mc-bus.c                 |   15 +-
 drivers/bus/fsl-mc/fsl-mc-private.h             |   17 +-
 drivers/bus/ti-sysc.c                           |  454 +++++--
 drivers/firmware/arm_scmi/clock.c               |    2 +
 drivers/firmware/arm_scmi/sensors.c             |   10 +-
 drivers/firmware/psci/psci_checker.c            |   10 +-
 drivers/firmware/tegra/bpmp.c                   |    4 +-
 drivers/firmware/ti_sci.c                       | 1143 +++++++++++++++---
 drivers/firmware/ti_sci.h                       |  810 +++++++++++++
 drivers/hwmon/scmi-hwmon.c                      |   48 +
 drivers/memory/Kconfig                          |    8 +
 drivers/memory/Makefile                         |    1 +
 drivers/memory/brcmstb_dpfe.c                   |  317 +++--
 drivers/memory/emif.c                           |    3 +-
 {include => drivers}/memory/jedec_ddr.h         |    6 +-
 {lib => drivers/memory}/jedec_ddr_data.c        |    5 +-
 drivers/memory/of_memory.c                      |    3 +-
 drivers/memory/tegra/tegra124.c                 |   44 +-
 drivers/reset/Kconfig                           |    3 +-
 drivers/reset/core.c                            |    3 -
 drivers/reset/reset-simple.c                    |    2 +
 drivers/soc/amlogic/meson-canvas.c              |   14 +-
 drivers/soc/aspeed/aspeed-lpc-ctrl.c            |   61 +-
 drivers/soc/fsl/Kconfig                         |   10 +
 drivers/soc/fsl/Makefile                        |    1 +
 drivers/soc/fsl/dpaa2-console.c                 |  329 +++++
 drivers/soc/fsl/dpio/dpio-driver.c              |   23 +-
 drivers/soc/fsl/dpio/qbman-portal.c             |  148 ++-
 drivers/soc/fsl/dpio/qbman-portal.h             |    9 +-
 drivers/soc/fsl/guts.c                          |    6 +
 drivers/soc/fsl/qbman/bman_portal.c             |   20 +-
 drivers/soc/fsl/qbman/qman_ccsr.c               |    2 +-
 drivers/soc/fsl/qbman/qman_portal.c             |   21 +-
 drivers/soc/fsl/qbman/qman_priv.h               |    9 +-
 drivers/soc/imx/Kconfig                         |    9 +
 drivers/soc/imx/Makefile                        |    1 +
 drivers/soc/imx/soc-imx-scu.c                   |  144 +++
 drivers/soc/imx/soc-imx8.c                      |   63 +-
 drivers/soc/qcom/Kconfig                        |   12 +
 drivers/soc/qcom/Makefile                       |    1 +
 drivers/soc/qcom/apr.c                          |   76 +-
 drivers/soc/qcom/qcom_aoss.c                    |  480 ++++++++
 drivers/soc/qcom/rpmpd.c                        |  134 +-
 drivers/soc/rockchip/pm_domains.c               |  230 ++--
 drivers/soc/tegra/Kconfig                       |    1 +
 drivers/soc/tegra/fuse/fuse-tegra.c             |    6 +-
 drivers/soc/tegra/pmc.c                         |   18 +
 include/dt-bindings/power/qcom-aoss-qmp.h       |   14 +
 include/dt-bindings/power/qcom-rpmpd.h          |   34 +
 .../dt-bindings/reset/bitmain,bm1880-reset.h    |   51 +
 include/linux/platform_data/ti-sysc.h           |   12 +
 include/linux/scmi_protocol.h                   |    1 +
 include/linux/soc/ti/ti_sci_protocol.h          |  246 ++++
 include/soc/fsl/bman.h                          |    8 +
 include/soc/fsl/qman.h                          |    9 +
 lib/Kconfig                                     |    8 -
 lib/Makefile                                    |    2 -
 70 files changed, 4760 insertions(+), 635 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/fsl,dpaa2-console.txt
 create mode 100644 Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt
 rename {include => drivers}/memory/jedec_ddr.h (97%)
 rename {lib => drivers/memory}/jedec_ddr_data.c (98%)
 create mode 100644 drivers/soc/fsl/dpaa2-console.c
 create mode 100644 drivers/soc/imx/soc-imx-scu.c
 create mode 100644 drivers/soc/qcom/qcom_aoss.c
 create mode 100644 include/dt-bindings/power/qcom-aoss-qmp.h
 create mode 100644 include/dt-bindings/reset/bitmain,bm1880-reset.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
