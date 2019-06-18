Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43D84A2D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z7rHVtekIu2O983USTgkjUz8UnoaWewmnwAEDld8p8w=; b=km58zvdzElaQIh
	FeI8fcYeJaYAywmAluyIbMzFWjGUVGQDlM/6avhajOsA/5Djcpb3PRTKO12FprjOyK+3VjIA+kqtW
	OaKDyGNv7ugxRaE7K6oPOzFtEYYnAXMEFbQ94mcPBC6guWaf0Z6gMQ1xVz1QUDnJX9mfXxd2zxWXG
	/hkN/OPGJ5+BMvqEKcrlljeqkJuKhtsMMSMS8W2bat3m+1wEQoUsrXPa6maloQ3lbbDD467uyK/VU
	H4qmN9GJK9rRrOSu03HGMQ/mOamkN2W814BD0hiQwJQfSJUWwPI3I7BBZhGgNYybYMWzLeYweFpUR
	/ClWJUfYg+SZOAz1HP5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEXT-0000o0-VL; Tue, 18 Jun 2019 13:52:44 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEXG-0000na-PD
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:52:32 +0000
Received: by mail-lf1-x141.google.com with SMTP id b11so9359617lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 06:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=Tp6pSGItECabiInnE9Caqe18zqPg1Fve4rR/mM7hyuc=;
 b=F6dubypzJ/v8tbut1uljgh+pvVq26FalV6oVqvNC3pGqrqGHaaM5NXlPGFf3tfxOxX
 F8iISsaH/OPhKKOdtXoggRCyxgU5y02OBz3HUysL3kwrMqMT0C1midD9aoTYFtgIGPsH
 G7ENayvIaRhiECkVqVzvSCkQBED3GVBT2a0KGHVKooColtKvaS/2Z+e+w6G2UIlK3k15
 MYg2rpoUO2o2BEOeKFMHvpuKmRPkMKDiUlV/SA5nZzT4Q6YvBlJJkFjJjLPoEiXyvvty
 7PGUxNba9tdMNwVpWkgLUaGD7B8h4OZgpM6F867W3kFNHEjfFBwNuHvkDKJoTvnYmq2A
 Ew3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=Tp6pSGItECabiInnE9Caqe18zqPg1Fve4rR/mM7hyuc=;
 b=XuOeNQNmD4jX9JqbrZMexN1WTL9fv/ZYjnQwb9CIiiyVwXCuhM8bqTBjfHNg5kGdTK
 CfytVGp91/6QieJgPmrw++kZZNe5GBQTBbUvOwwfriY75q9t/GUdvcfMVJ1+m4gXxrD/
 hTxgY7hm4B0AXQqPePLM2Kksg/xx5ur8i7C7IcJSjwk+yB+CbBHwa34SevYSWtZbtADh
 ecu4+7MsTfHL8nbaU7Lp2GYDdmBAAJITEUn6Gjvb171RmB2B8S4gsjvBSIDAGMN3dfLw
 +Kx2Y/xaaRmtCVl61X3i/zRf1C8q+q2EpqOf7ds4lj0Wo1rVK2zNrCNl10VzVr9AysIV
 6D2Q==
X-Gm-Message-State: APjAAAV/fsi28IRMpg6Fo7s8To3LvDbGluTEZJ8UDfVm8tB4qOU2G4uT
 ljjaN9gYMGEWrqeT/qL6tw9IgQ==
X-Google-Smtp-Source: APXvYqxu/TwKIMLs1gZs9ZRV9O88YLKy5XC3QzS/0bzTaxNwgTSZyMmw/gSYHyqiSFuzPbbew6lIGQ==
X-Received: by 2002:a19:41cc:: with SMTP id
 o195mr41931799lfa.166.1560865948594; 
 Tue, 18 Jun 2019 06:52:28 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id c15sm2604896lja.79.2019.06.18.06.52.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 06:52:26 -0700 (PDT)
Date: Tue, 18 Jun 2019 06:52:16 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20190618135216.u66gpj5s3kc766cp@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_065230_816559_8A0F73AC 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: olof@lixom.net, arm@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 9e0babf2c06c73cda2c0cd37a1653d823adb40ec:

  Linux 5.2-rc5 (2019-06-16 08:49:45 -1000)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fix=
es

for you to fetch changes up to cd3967bee004bcbd142403698d658166fa618c9e:

  soc: ixp4xx: npe: Fix an IS_ERR() vs NULL check in probe (2019-06-18 06:4=
7:59 -0700)

----------------------------------------------------------------
ARM: SoC fixes

I've been bad at collecting fixes this release cycle, so this is
a fairly large batch that's been trickling in for a while.

It's the usual mix, more or less:

Some of the bigger things fixed:
 - Voltage fix for MMC on TI DRA7 that sometimes would overvoltage cards
 - Regression fixes for D_CAN on am355x
 - i.MX6SX cpuidle fix to deal with wakeup latency (dropped uart chars)
 - DT fixes for some DRA7 variants that don't share the superset of
   blocks on the chip

+ The usual mix of stuff -- minor build/warning fixes, Kconfig
dependencies, and some DT fixlets.

----------------------------------------------------------------
Andy Gross (1):
      MAINTAINERS: Change QCOM repo location

Anson Huang (1):
      firmware: imx: SCU irq should ONLY be enabled after SCU IPC is ready

Arnd Bergmann (4):
      firmware: trusted_foundations: add ARMv7 dependency
      ARM: ixp4xx: don't select SERIAL_OF_PLATFORM
      ARM: ixp4xx: mark ixp4xx_irq_setup as __init
      ARM: ixp4xx: include irqs.h where needed

Bartosz Golaszewski (2):
      ARM: davinci: da850-evm: call regulator_has_full_constraints()
      ARM: davinci: da8xx: specify dma_coherent_mask for lcdc

Dan Carpenter (1):
      soc: ixp4xx: npe: Fix an IS_ERR() vs NULL check in probe

Fabio Estevam (1):
      ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase to i.MX6SX

Faiz Abbas (2):
      ARM: dts: am57xx-idk: Remove support for voltage switching for SD card
      ARM: dts: dra76x: Update MMC2_HS200_MANUAL1 iodelay values

Florian Fainelli (3):
      soc: brcmstb: Fix error path for unsupported CPUs
      soc: bcm: brcmstb: biuctrl: Register writes require a barrier
      ARM: dts: bcm: Add missing device_type =3D "memory" property

Jan Kundr=E1t (1):
      ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog

Keerthy (5):
      ARM: dts: dra76x: Disable rtc target module
      ARM: dts: dra76x: Disable usb4_tm target module
      ARM: dts: dra71x: Disable rtc target module
      ARM: dts: dra71x: Disable usb4_tm target module
      ARM: dts: dra72x: Disable usb4_tm target module

Olof Johansson (9):
      Merge tag 'arm-soc/for-5.2/drivers-fixes' of https://github.com/Broad=
com/stblinux into fixes
      Merge tag 'arm-soc/for-5.2/maintainers' of https://github.com/Broadco=
m/stblinux into fixes
      Merge tag 'imx-fixes-5.2' of git://git.kernel.org/.../shawnguo/linux =
into fixes
      Merge tag 'omap-for-v5.2/fixes-rc2' of git://git.kernel.org/.../tmlin=
d/linux-omap into fixes
      Merge tag 'arm-soc/for-5.2/devicetree-fixes' of https://github.com/Br=
oadcom/stblinux into fixes
      Merge tag 'am654-fixes-for-v5.2' of git://git.kernel.org/.../kristo/l=
inux into fixes
      Merge tag 'mvebu-fixes-5.2-1' of git://git.infradead.org/linux-mvebu =
into fixes
      Merge tag 'davinci-fixes-for-v5.2' of git://git.kernel.org/.../nsekha=
r/linux-davinci into fixes
      Merge tag 'omap-for-v5.2/fixes-rc4' of git://git.kernel.org/.../tmlin=
d/linux-omap into fixes

Stefan Wahren (1):
      MAINTAINERS: Update Stefan Wahren email address

Teresa Remmet (1):
      ARM: dts: am335x phytec boards: Fix cd-gpios active level

Tony Lindgren (6):
      ARM: dts: Configure osc clock for d_can on am335x
      bus: ti-sysc: Handle devices with no control registers
      Merge branch 'am5-sdio-fixes' into fixes
      Merge branch 'fixes-dra7' into fixes
      Merge branch 'omap-for-v5.2/ti-sysc' into fixes
      ARM: dts: Drop bogus CLKSEL for timer12 on dra7

YueHaibing (2):
      arm64: imx: Fix build error without CONFIG_SOC_BUS
      arm64: arch_k3: Fix kconfig dependency warning

 MAINTAINERS                                       |  4 +--
 arch/arm/boot/dts/am335x-pcm-953.dtsi             |  2 +-
 arch/arm/boot/dts/am335x-wega.dtsi                |  2 +-
 arch/arm/boot/dts/am33xx-l4.dtsi                  | 14 ++++----
 arch/arm/boot/dts/am437x-l4.dtsi                  |  4 ---
 arch/arm/boot/dts/am57xx-idk-common.dtsi          |  1 +
 arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts       |  1 +
 arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts       |  1 +
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts |  1 +
 arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts   |  1 +
 arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts   |  1 +
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts      |  1 +
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts      |  1 +
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts       |  1 +
 arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts    |  1 +
 arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts     |  1 +
 arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts       |  1 +
 arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts |  1 +
 arch/arm/boot/dts/bcm4709-linksys-ea9200.dts      |  1 +
 arch/arm/boot/dts/bcm4709-netgear-r7000.dts       |  1 +
 arch/arm/boot/dts/bcm4709-netgear-r8000.dts       |  1 +
 arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts |  1 +
 arch/arm/boot/dts/bcm47094-phicomm-k3.dts         |  1 +
 arch/arm/boot/dts/bcm94708.dts                    |  1 +
 arch/arm/boot/dts/bcm94709.dts                    |  1 +
 arch/arm/boot/dts/bcm963138dvt.dts                |  1 +
 arch/arm/boot/dts/dra7-l4.dtsi                    |  4 +--
 arch/arm/boot/dts/dra71-evm.dts                   |  2 +-
 arch/arm/boot/dts/dra71x.dtsi                     | 17 ++++++++++
 arch/arm/boot/dts/dra72x.dtsi                     |  4 +++
 arch/arm/boot/dts/dra76x-mmc-iodelay.dtsi         | 40 +++++++++++--------=
----
 arch/arm/boot/dts/dra76x.dtsi                     |  8 +++++
 arch/arm/configs/mvebu_v7_defconfig               |  1 +
 arch/arm/mach-davinci/board-da850-evm.c           |  2 ++
 arch/arm/mach-davinci/devices-da8xx.c             |  3 ++
 arch/arm/mach-imx/cpuidle-imx6sx.c                |  3 +-
 arch/arm/mach-ixp4xx/Kconfig                      |  1 -
 arch/arm/mach-ixp4xx/goramo_mlr.c                 |  2 ++
 arch/arm/mach-ixp4xx/miccpt-pci.c                 |  2 ++
 arch/arm/mach-ixp4xx/omixp-setup.c                |  2 ++
 arch/arm/mach-ixp4xx/vulcan-pci.c                 |  2 ++
 arch/arm/mach-ixp4xx/vulcan-setup.c               |  2 ++
 arch/arm64/Kconfig.platforms                      |  2 ++
 drivers/bus/ti-sysc.c                             | 23 +++++++------
 drivers/firmware/Kconfig                          |  2 +-
 drivers/firmware/imx/imx-scu-irq.c                |  3 ++
 drivers/irqchip/irq-ixp4xx.c                      |  8 ++---
 drivers/soc/bcm/brcmstb/biuctrl.c                 |  6 ++--
 drivers/soc/ixp4xx/ixp4xx-npe.c                   |  4 +--
 49 files changed, 127 insertions(+), 63 deletions(-)
 create mode 100644 arch/arm/boot/dts/dra71x.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
