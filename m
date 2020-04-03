Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC9419E064
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 23:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvPVjvVBJiyoUAzbTC12OXk7FioByd0RDRdQ7hMC6AA=; b=RwMnkJpccXfhqt
	nES80pmLmbqKQojj7jIQAloIB58UP5aiPrimiZhgQXDkd1LM+OPJg59BYJwIVVuWM+KP85MkFCuXP
	LYs1gA3ZuNOGDSGU8r6pD9yDOmrSfnP99BlRdSqTgvJeb7JdfECVDeEw5q+qdSAXDtllXJRdbfqYj
	4lZQWYp1/rrG35iQyy4ZTLnaixiKlcK+6H/K+jn/kMVV1PLuSDKRC7IlDLYyICTWeqrdwNbpRjnNR
	3EY4HZnYi/wT+PXY7kBu2KfeJXvRU2jUs/g5nsxFCCtyTyU1/AkrlqMGDe6MUxq97m9gmBSNKhgNr
	35pWHX5osR+gL+R814fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTyV-0000aX-2V; Fri, 03 Apr 2020 21:35:39 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTyK-0000Zp-La
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 21:35:30 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MoNy4-1j0WMZ05JA-00omYk for <linux-arm-kernel@lists.infradead.org>; Fri,
 03 Apr 2020 23:35:27 +0200
Received: by mail-qv1-f43.google.com with SMTP id bp12so4379423qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 14:35:26 -0700 (PDT)
X-Gm-Message-State: AGi0PuaE6xXUmTxRe54ddYIYUixKozttHAG+7H2Q3LUNX6kczJnN0Ua+
 5yISpAkLvAXt9WE/0fz+j0oQQ3MJByIiXG3J6k0=
X-Google-Smtp-Source: APiQypKuSl73lVJtADJSwHMirPnVIrpUbge7bKeeDmUqQVP2gryUkv3FPgZFAFc537SRr8QmargpKqzJp5W6h6MBOkI=
X-Received: by 2002:a0c:9e2f:: with SMTP id p47mr9812907qve.211.1585949725814; 
 Fri, 03 Apr 2020 14:35:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 3 Apr 2020 23:35:09 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0Z7yj0wgMkT2YsWBU56557O66rLGLzGSJSuC+8nWx1zA@mail.gmail.com>
Message-ID: <CAK8P3a0Z7yj0wgMkT2YsWBU56557O66rLGLzGSJSuC+8nWx1zA@mail.gmail.com>
Subject: [GIT PULL 2/4] ARM: driver updates
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Provags-ID: V03:K1:R8NOxFxEVwDDqWc5mdTHyRtLXo9Fx/JtimS/FzquWsrFpgFpstr
 fy4+fLUI7Nn8/ZAzJtbYxsPYgCO365lWpA9E6xuaQNJ9B6ho/mfe8eCVjXxF0wK95AeV8BN
 5LbEb1G4VCGt7MrEqU7IY1RDlFnJy5SK37nOg8xlCtGftYmWd2+FIo86OB3BFqg7wgDoH7Z
 /lJKmNmjIMNOxk4INGVIA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vX0XlBeRWTI=:8Y8WkuuudJYAYZPUUE9al7
 iy1zGkD/ddxf2F9BLqHhNBVsBqprNTJghIJUVkdMgeQ4BkFYkNwhHbLiB3r9/fQe9m0uRHURY
 EoAgjetfiAJkbV90goolEm5IqSgqZz3BSi+0XOZopZkPnodrocOKRtjlQqlBrA+N6Drlg+CLv
 xu9LyXGSqH+EZ/Ugf9pDNt9uxZBzMUb/poB2hfGsTIlhjtAKwCeK1Wzb4+9sgFrguRtbbltxb
 vJ1LcEmx5HOkoLvIIQxtzJfS1dA+uxSCJEJs8tGTMa/UrWjkz94DpTVR7BuTPadclRPBcDAG8
 fGXs4DfLXB33MI9FxYe3a2dtVZjDB8Zbh1RK/rNoox1mE1vjITEOWD74RiQNngooE5GoDFaFa
 uz7HmsIDi1b3Q37RVqIqiN7YfRvB5hVusfWfoUKKTuCi53qnNwXwzQQG6R7koox1HldPLLNRs
 tFvQx2G8bppNUxki6z4FwGcSKIeRZZaFKxzFOp5ZY/uRwqWvnJdehSVX+Xdr4uXZ77hl6tBvv
 LFrKMQctZzXQ8LW0uhz2eOmDA1YFjWXh2G+jm2Ovi8oK0U9wNdlJYqN79Hulq9MhVPNi9CNwY
 RT3ldIQx9zYlGr2SnKsJzys/olkke4mQk6aRMwO5qHAbSbN05LkAlBDk7OcoRea3cgB4fuDUb
 TWJHK+X7jQ+HKVwXTgtvntCeeF+2/QdhL2XI+bjPgvD4qo2vyekVUmsQar8Vdk2Cfg4y9W4f7
 TO47ZA2HW/oqctni7P2F0hIc8CDbrFF2fO0HQV1VmQnCxAPHat/DcdK886ULqBiG9RT2P6for
 /08ASObGLDXBh0xBlM/0ky7TlVhTfmLPBcNG0XcS3ERs4ppYh0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_143529_000760_CBC182E3 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit cfaf6051eccc7b8b2354f68c5125d2497b046052:

  bus: ti-sysc: Fix quirk flags for lcdc on am335x (2020-03-09 09:41:14 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-drivers-5.7

for you to fetch changes up to cedb414aa8c31ce2f178ea9dc29b6c0200b9893f:

  Merge tag 'scmi-updates-5.7' of
git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux into
arm/drivers (2020-03-27 14:26:14 +0100)

----------------------------------------------------------------
ARM: driver updates

These are the usual updates for SoC specific device drivers and related
subsystems that don't have their own top-level maintainers:

- ARM SCMI/SCPI updates to allow pluggable transport layers

- TEE subsystem cleanups

- A new driver for the Amlogic secure power domain controller

- Various driver updates for the NXP Layerscape DPAA2, NXP i.MX SCU and
  TI OMAP2+ sysc drivers.

- Qualcomm SoC driver updates, including a new library module for
  "protection domain" notifications

- Lots of smaller bugfixes and cleanups in other drivers

Signed-off-by: Arnd Bergmann <arnd@arndb.de>

----------------------------------------------------------------
Anson Huang (1):
      firmware: imx: add COMPILE_TEST for IMX_SCU driver

Ansuel Smith (1):
      devicetree: bindings: firmware: add ipq806x to qcom_scm

Arnd Bergmann (12):
      Merge tag 'renesas-drivers-for-v5.7-tag1' of
git://git.kernel.org/.../geert/renesas-devel into arm/drivers
      Merge tag 'hisi-drivers-for-5.7' of
git://github.com/hisilicon/linux-hisi into arm/drivers
      Merge tag 'omap-for-v5.7/ti-sysc-signed' of
git://git.kernel.org/.../tmlind/linux-omap into arm/drivers
      Merge tag 'amlogic-drivers' of
git://git.kernel.org/.../khilman/linux-amlogic into arm/drivers
      Merge tag 'qcom-drivers-for-5.7' of
git://git.kernel.org/.../qcom/linux into arm/drivers
      Merge tag 'imx-drivers-5.7' of
git://git.kernel.org/.../shawnguo/linux into arm/drivers
      Merge tag 'omap-for-v5.7/ti-sysc-fix-signed' of
git://git.kernel.org/.../tmlind/linux-omap into arm/drivers
      Merge tag 'tegra-for-5.7-firmware' of
git://git.kernel.org/.../tegra/linux into arm/drivers
      Merge tag 'tegra-for-5.7-memory' of
git://git.kernel.org/.../tegra/linux into arm/drivers
      Merge tag 'soc-fsl-next-v5.7' of
git://git.kernel.org/.../leo/linux into arm/drivers
      Merge tag 'tee-cleanup-for-5.7' of
https://git.linaro.org/people/jens.wiklander/linux-tee into
arm/drivers
      Merge tag 'scmi-updates-5.7' of
git://git.kernel.org/.../sudeep.holla/linux into arm/drivers

Arun Kumar Neelakantam (2):
      soc: qcom: aoss: Use wake_up_all() instead of wake_up_interruptible_all()
      soc: qcom: aoss: Read back before triggering the IRQ

Bjorn Andersson (1):
      soc: qcom: Fix QCOM_APR dependencies

Christophe JAILLET (1):
      firmware: tegra: Fix a typo in Kconfig

Colin Ian King (1):
      soc: fsl: dpio: fix dereference of pointer p before null check

Daniel Baluta (1):
      firmware: imx: scu-pd: Add missing audio PD ranges

Dmitry Osipenko (3):
      memory: tegra: Correct debugfs clk rate-range on Tegra20
      memory: tegra: Correct debugfs clk rate-range on Tegra30
      memory: tegra: Correct debugfs clk rate-range on Tegra124

Geert Uytterhoeven (1):
      soc: renesas: Remove ARCH_R8A7795

Gustavo A. R. Silva (4):
      firmware: arm_scmi: Replace zero-length array with flexible-array member
      firmware: arm_scmi/perf: Replace zero-length array with
flexible-array member
      firmware: arm_scpi: Replace zero-length array with flexible-array member
      misc: vexpress: Replace zero-length array with flexible-array member

Jens Wiklander (5):
      tee: remove linked list of struct tee_shm
      tee: remove unused tee_shm_priv_alloc()
      tee: don't assign shm id for private shms
      tee: remove redundant teedev in struct tee_shm
      tee: tee_shm_op_mmap(): use TEE_SHM_USER_MAPPED

Jianxin Pan (5):
      firmware: meson_sm: Add secure power domain support
      dt-bindings: power: add Amlogic secure power domains bindings
      soc: amlogic: Add support for Secure power domains controller
      soc: amlogic: fix compile failure with MESON_SECURE_PM_DOMAINS & !MESON_SM
      dt-bindings: power: Fix dt_binding_check error

Joakim Zhang (1):
      firmware: imx: scu-pd: add power domain for I2C and INTMUX in CM40 SS

John Garry (1):
      bus: hisi_lpc: Fixup IO ports addresses to avoid use-after-free
in host removal

Leonard Crestez (2):
      soc: imx: gpcv2: include linux/sizes.h
      firmware: imx: Remove IMX_SC_RPC_SVC_ABORT

Li Yang (7):
      soc: fsl: qe: fix sparse warnings for qe.c
      soc: fsl: qe: fix sparse warning for qe_common.c
      soc: fsl: qe: fix sparse warnings for ucc.c
      soc: fsl: qe: fix sparse warnings for qe_ic.c
      soc: fsl: qe: fix sparse warnings for ucc_fast.c
      soc: fsl: qe: ucc_slow: remove 0 assignment for kzalloc'ed structure
      soc: fsl: qe: fix sparse warnings for ucc_slow.c

Lucas Stach (1):
      soc: imx: gpc: fix power up sequencing

Manivannan Sadhasivam (1):
      soc: qcom: Do not depend on ARCH_QCOM for QMI helpers

Maulik Shah (2):
      drivers: qcom: rpmh: fix macro to accept NULL argument
      drivers: qcom: rpmh: remove rpmh_flush export

Nathan Chancellor (1):
      soc: qcom: pdr: Avoid uninitialized use of found in pdr_indication_cb

Nishad Kamdar (1):
      soc: renesas: rcar-sysc: Use the correct style for SPDX License Identifier

Peng Fan (2):
      soc: imx: increase build coverage for imx8m soc driver
      soc: imx: drop COMPILE_TEST for IMX_SCU_SOC

Roger Quadros (1):
      dt-bindings: bus: ti-sysc: Add support for PRUSS SYSC type

Sebastien Fagard (1):
      firmware: imx: scu-pd: enlarge PD range for mu_b

Sibi Sankar (3):
      soc: qcom: Introduce Protection Domain Restart helpers
      dt-bindings: soc: qcom: apr: Add protection domain bindings
      soc: qcom: apr: Add avs/audio tracking functionality

Stephen Boyd (2):
      drivers: qcom: rpmh-rsc: Use rcuidle tracepoints for rpmh
      soc: qcom: socinfo: Use seq_putc() if possible

Suman Anna (1):
      bus: ti-sysc: Add support for PRUSS SYSC type

Tony Lindgren (13):
      drm/omap: Prepare DSS for probing without legacy platform data
      bus: ti-sysc: Rename clk related quirks to pre_reset and post_reset quirks
      bus: ti-sysc: Improve reset to work with modules with no sysconfig
      bus: ti-sysc: Consider non-existing registers too when matching quirks
      bus: ti-sysc: Don't warn about legacy property for nested ti-sysc devices
      bus: ti-sysc: Implement SoC revision handling
      bus: ti-sysc: Handle module unlock quirk needed for some RTC
      bus: ti-sysc: Detect display subsystem related devices
      bus: ti-sysc: Implement display subsystem reset quirk
      Merge branch 'omap-for-v5.7/dss-probe' into omap-for-v5.7/ti-sysc
      bus: ti-sysc: Fix wrong offset for display subsystem reset quirk
      bus: ti-sysc: Detect EDMA and set quirk flags for tptc
      Merge branch 'fix-lcdc-quirk' into omap-for-v5.7/ti-sysc

Viresh Kumar (3):
      firmware: arm_scmi: Update doc style comments
      firmware: arm_scmi: Move macros and helpers to common.h
      firmware: arm_scmi: Make scmi core independent of the transport type

Youri Querry (3):
      soc: fsl: dpio: Adding QMAN multiple enqueue interface
      soc: fsl: dpio: QMAN performance improvement with function
pointer indirection
      soc: fsl: dpio: Replace QMAN array mode with ring mode enqueue


 Documentation/devicetree/bindings/bus/ti-sysc.txt  |   1 +
 .../devicetree/bindings/firmware/qcom,scm.txt      |   1 +
 .../bindings/power/amlogic,meson-sec-pwrc.yaml     |  40 ++
 .../devicetree/bindings/soc/qcom/qcom,apr.txt      |  50 ++
 arch/arm/mach-omap2/pdata-quirks.c                 |   6 +
 drivers/bus/hisi_lpc.c                             |  27 +-
 drivers/bus/ti-sysc.c                              | 607 +++++++++++++---
 drivers/firmware/arm_scmi/Makefile                 |   3 +-
 drivers/firmware/arm_scmi/common.h                 | 115 ++-
 drivers/firmware/arm_scmi/driver.c                 | 293 +-------
 drivers/firmware/arm_scmi/mailbox.c                | 184 +++++
 drivers/firmware/arm_scmi/perf.c                   |   2 +-
 drivers/firmware/arm_scmi/shmem.c                  |  83 +++
 drivers/firmware/arm_scpi.c                        |   4 +-
 drivers/firmware/imx/Kconfig                       |   2 +-
 drivers/firmware/imx/scu-pd.c                      |  13 +-
 drivers/firmware/meson/meson_sm.c                  |   2 +
 drivers/firmware/tegra/Kconfig                     |   2 +-
 drivers/gpu/drm/omapdrm/dss/dss.c                  |  25 +-
 drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c    |  25 +-
 drivers/memory/tegra/tegra124-emc.c                |   5 +
 drivers/memory/tegra/tegra20-emc.c                 |   5 +
 drivers/memory/tegra/tegra30-emc.c                 |   5 +
 drivers/misc/vexpress-syscfg.c                     |   2 +-
 drivers/soc/Makefile                               |   2 +-
 drivers/soc/amlogic/Kconfig                        |  13 +
 drivers/soc/amlogic/Makefile                       |   1 +
 drivers/soc/amlogic/meson-secure-pwrc.c            | 204 ++++++
 drivers/soc/fsl/dpio/dpio-service.c                |  69 +-
 drivers/soc/fsl/dpio/qbman-portal.c                | 767 ++++++++++++++++++---
 drivers/soc/fsl/dpio/qbman-portal.h                | 158 ++++-
 drivers/soc/fsl/qe/qe.c                            |   4 +-
 drivers/soc/fsl/qe/qe_common.c                     |   2 +-
 drivers/soc/fsl/qe/qe_ic.c                         |   2 +-
 drivers/soc/fsl/qe/ucc.c                           |   2 +-
 drivers/soc/fsl/qe/ucc_slow.c                      |  33 +-
 drivers/soc/imx/Kconfig                            |  11 +-
 drivers/soc/imx/Makefile                           |   2 +-
 drivers/soc/imx/gpc.c                              |  24 +-
 drivers/soc/imx/gpcv2.c                            |   1 +
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c}        |   0
 drivers/soc/qcom/Kconfig                           |   7 +-
 drivers/soc/qcom/Makefile                          |   1 +
 drivers/soc/qcom/apr.c                             | 123 +++-
 drivers/soc/qcom/pdr_interface.c                   | 757 ++++++++++++++++++++
 drivers/soc/qcom/pdr_internal.h                    | 379 ++++++++++
 drivers/soc/qcom/qcom_aoss.c                       |   6 +-
 drivers/soc/qcom/rpmh-internal.h                   |   1 +
 drivers/soc/qcom/rpmh-rsc.c                        |   2 +-
 drivers/soc/qcom/rpmh.c                            |  22 +-
 drivers/soc/qcom/socinfo.c                         |   2 +-
 drivers/soc/renesas/Kconfig                        |  16 +-
 drivers/soc/renesas/rcar-sysc.h                    |   4 +-
 drivers/soc/renesas/renesas-soc.c                  |   2 +-
 drivers/tee/tee_core.c                             |   1 -
 drivers/tee/tee_private.h                          |   3 +-
 drivers/tee/tee_shm.c                              |  85 +--
 include/dt-bindings/bus/ti-sysc.h                  |   4 +
 include/dt-bindings/power/meson-a1-power.h         |  32 +
 include/linux/firmware/imx/ipc.h                   |   1 -
 include/linux/firmware/meson/meson_sm.h            |   2 +
 include/linux/platform_data/ti-sysc.h              |   5 +
 include/linux/soc/qcom/apr.h                       |   1 +
 include/linux/soc/qcom/pdr.h                       |  29 +
 include/linux/soc/qcom/qmi.h                       |   1 +
 include/linux/tee_drv.h                            |  19 +-
 include/soc/fsl/dpaa2-io.h                         |   6 +-
 include/soc/fsl/qe/ucc_fast.h                      |   6 +-
 include/soc/fsl/qe/ucc_slow.h                      |  13 +-
 include/soc/qcom/rpmh.h                            |   5 -
 70 files changed, 3696 insertions(+), 636 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
