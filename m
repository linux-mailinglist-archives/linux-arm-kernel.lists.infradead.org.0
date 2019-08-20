Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0799396C05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 00:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1DiwwVm7wBgrGsS+gop0Q0sNdG3qTpoYNcuIkmZ8QvM=; b=lcSBUSraGs98Bc
	NY3PvLfyAkFP5BL8rWGriVyiVTiDVVomuMIcU6pvoocL71U3CCASmqoEFAyYUD6uRidqpUGnkH9X+
	niT35rTuknYF0jZ36ipq1rG/Y7w8X/g9EtdIAfgIrIp9vK+if6lN3fJOla3gPIPonsyKqKen6i/Vu
	X1cTNbwa0FEBe9FacJ2/ZOSbBz1vjyMebRh0cJl90EOrSRS/tEmCsVZi1UMQX4kg2eIdp+7RkMxHp
	kZojvGUNswfp+KXqq1KUfbHR7otz9BT30XC+QvA2Tdn/VDRxovgmSO1LsPa/eufWSQiafQIfTEmWZ
	ugjBfVFEy4d9HWVX4+yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0CNP-0007PU-Hu; Tue, 20 Aug 2019 22:13:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0CNG-0007Os-Ss
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 22:13:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id k3so81739pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 15:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=k2Wuee+uRdE3duVB1p3kOH3bI6LlcO35mEgSoRoQop4=;
 b=l1SBFn/YrSKYKs+hrfBTvXymBEUh0R7ZovD43eoFrnL0NGy6fe7WnQS0B16/U5P2vp
 kxVa2Xm5Nc0I4ueN3QAyStlNVEpX0Qc9FSZlOiJL2tlZ5UNBsvUMHOOC+CpWnnxmYhuE
 lHjX51f4jszNJe2YERgTIhTETt9Yns0lnWVNn6IHBWtaENFRGTvvXY08kKpMnjXLYltT
 FKMSgTI4rFU27KMssVKuusacC1XpvN9ERQRkPznMVSN33DNNPsuitjOKHqabk41EsKkw
 QbuuN6I62P2IOflni9NrYlnBVtjVuuIYQkSt4xh6HEI4wpUCgSDcfpMwmaGcMgxKz01L
 s7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=k2Wuee+uRdE3duVB1p3kOH3bI6LlcO35mEgSoRoQop4=;
 b=TC5DEdnbtWE8nsIADwsZ6NsnisMh1FDHmMSsgrMTWHMrLeRF25GTSk6PdPsJERNoD4
 BzjY/WKIFiA2jKj87i9pF3Llt9LNL+d7m9HpkyFQ60klK5eVrsEWV5TavGilE9uJB26a
 /RJjYbS5Q4X+5MUlGcluvt7fSH4p9yW5JPnUGBS0+nnBdxmwFRzjDlb5+yvUjeY5kxCg
 Wq3Hn9y7wjcsy9PnHlc/JcxpuST+OvPcVoBnat/ciG2SPu3gCq7IG/7Eb8o8Ode4pCZu
 BTAfT1vxjKjL8frTq4XJTRsq2UWtw6ju4WdovLdXdVGEBNEzz3QsczRYDFPYy8tI4Ogt
 y+8Q==
X-Gm-Message-State: APjAAAUAmFVRsp+hlVWeo7+tM3sP5shwj8e8DChnKgyFqfv9LCN05vQo
 Yz9aNdawUFcV2nX1mwvJhNxUgg==
X-Google-Smtp-Source: APXvYqyvpp314PMghrqC196URurtP785sPDptHj3sbn3LABt45bkP5DvLy3IyXRWgGeNNyOESg4kzQ==
X-Received: by 2002:a63:ff66:: with SMTP id s38mr27122269pgk.363.1566339185776; 
 Tue, 20 Aug 2019 15:13:05 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id j6sm23320072pfa.141.2019.08.20.15.13.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 15:13:05 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] arm64: dts: Amlogic updates for v5.4
Date: Tue, 20 Aug 2019 15:13:04 -0700
Message-ID: <7hr25fbi4v.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_151306_931561_65C57C37 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Below is a regular round of DT updates for the 64-bit Amlogic SoCs.

Of note is a set of clock patches I've merged in from a stable tag
(already merged into clk-next.)  This was needed for some new IDs added
for the handful of new SoCs we've added this cycle.

Please pull.

Thanks,

Kevin


The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt64

for you to fetch changes up to e9a12e14322d7ddafeed6aec0d3fb02c0b5dc03c:

  arm64: dts: add support for SM1 based SEI Robotics SEI610 (2019-08-20 13:31:11 -0700)

----------------------------------------------------------------
arm64: dts: Amlogic updates for v5.4

Highlights
- new SoCs (G12B family): S922X, A311D
- new SoCs (SM1 family): S905X3
- new board: SEI Robotics SEI610 (SM1/S905X3)
- new board: Khadas VIM3 (G12B/A311D)
- DVFS/CPUfreq support on G12[AB] family

----------------------------------------------------------------
Alexandre Mergnat (13):
      clk: meson: g12a: fix hifi typo in mali parent_names
      clk: meson: axg-audio: migrate to the new parent description method
      clk: meson: g12a-aoclk: migrate to the new parent description method
      clk: meson: gxbb-aoclk: migrate to the new parent description method
      clk: meson: axg-aoclk: migrate to the new parent description method
      clk: meson: remove ao input bypass clocks
      clk: meson: g12a: migrate to the new parent description method
      clk: meson: gxbb: migrate to the new parent description method
      clk: meson: axg: migrate to the new parent description method
      clk: meson: meson8b: migrate to the new parent description method
      clk: meson: clk-regmap: migrate to new parent description method
      clk: meson: remove ee input bypass clocks
      clk: meson: remove clk input helper

Christian Hewitt (4):
      dt-bindings: arm: amlogic: add support for the Khadas VIM3
      arm64: dts: meson-g12b: support a311d and s922x cpu operating points
      dt-bindings: arm: amlogic: fix x96-max/sei510 section in amlogic.yaml
      arm64: dts: meson-g12b-khadas-vim3: add initial device-tree

Jerome Brunet (2):
      Merge branch 'v5.4/dt' into v5.4/drivers
      arm64: dts: meson: add ethernet fifo sizes

Kevin Hilman (2):
      arm64: dts: amlogic: g12 CPU timers stop in suspend
      Merge tag 'clk-meson-v5.4-1' of git://github.com/BayLibre/clk-meson into v5.4/dt64

Maxime Jourdan (3):
      dt-bindings: media: amlogic,vdec: add default compatible
      arm64: dts: meson-gx: add video decoder entry
      arm64: dts: meson: add video decoder entries

Neil Armstrong (17):
      arm64: dts: meson-g12a: add missing dwc2 phy-names
      arm64: dts: meson-g12a-sei510: enable IR controller
      clk: core: introduce clk_hw_set_parent()
      clk: meson: add g12a cpu dynamic divider driver
      clk: meson: g12a: add notifiers to handle cpu clock change
      clk: meson: g12a: expose CPUB clock ID for G12B
      arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi
      arm64: dts: meson-g12-common: add pwm_a on GPIOE_2 pinmux
      arm64: dts: meson-g12a: add cpus OPP table
      arm64: dts: meson-g12a: enable DVFS on G12A boards
      arm64: dts: meson-g12b: add cpus OPP tables
      dt-bindings: arm: amlogic: add bindings for G12B based S922X SoC
      dt-bindings: arm: amlogic: add bindings for the Amlogic G12B based A311D SoC
      arm64: dts: meson-g12b-odroid-n2: enable DVFS
      dt-bindings: arm: amlogic: add SM1 bindings
      dt-bindings: arm: amlogic: add SEI Robotics SEI610 bindings
      arm64: dts: add support for SM1 based SEI Robotics SEI610

Xavier Ruppen (1):
      arm64: dts: amlogic: odroid-n2: keep SD card regulator always on

 Documentation/devicetree/bindings/arm/amlogic.yaml           |   20 +-
 Documentation/devicetree/bindings/media/amlogic,vdec.txt     |    5 +-
 arch/arm64/boot/dts/amlogic/Makefile                         |    3 +
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi                   |    2 +
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi            | 2420 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts            |   61 +++
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts              |   54 +++
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts           |   52 ++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi                  | 2417 ++-------------------------------------------------------------------------------------------
 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts |   15 +
 arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi            |  149 ++++++
 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi      |  544 +++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts         |   99 +++-
 arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts |   15 +
 arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi            |  124 +++++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi                  |   30 +-
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi                    |   16 +
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi                  |   11 +
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi                   |   11 +
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi                   |    4 +
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts             |  300 ++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi                   |   68 +++
 drivers/clk/clk.c                                            |    6 +
 drivers/clk/meson/Kconfig                                    |   11 +-
 drivers/clk/meson/Makefile                                   |    2 +-
 drivers/clk/meson/axg-aoclk.c                                |   63 ++-
 drivers/clk/meson/axg-audio.c                                |  261 +++++------
 drivers/clk/meson/axg.c                                      |  207 +++++---
 drivers/clk/meson/clk-cpu-dyndiv.c                           |   73 +++
 drivers/clk/meson/clk-cpu-dyndiv.h                           |   20 +
 drivers/clk/meson/clk-input.c                                |   49 --
 drivers/clk/meson/clk-input.h                                |   19 -
 drivers/clk/meson/clk-regmap.h                               |   12 +-
 drivers/clk/meson/g12a-aoclk.c                               |   81 ++--
 drivers/clk/meson/g12a.c                                     | 1626 +++++++++++++++++++++++++++++++++++++++++++++------------------
 drivers/clk/meson/g12a.h                                     |    1 -
 drivers/clk/meson/gxbb-aoclk.c                               |   55 ++-
 drivers/clk/meson/gxbb.c                                     |  657 ++++++++++++++++++--------
 drivers/clk/meson/meson-aoclk.c                              |   37 --
 drivers/clk/meson/meson-aoclk.h                              |    8 -
 drivers/clk/meson/meson-eeclk.c                              |   10 -
 drivers/clk/meson/meson-eeclk.h                              |    2 -
 drivers/clk/meson/meson8b.c                                  |  710 +++++++++++++++++++---------
 include/dt-bindings/clock/g12a-clkc.h                        |    1 +
 include/linux/clk-provider.h                                 |    1 +
 45 files changed, 6660 insertions(+), 3672 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
 create mode 100644 drivers/clk/meson/clk-cpu-dyndiv.c
 create mode 100644 drivers/clk/meson/clk-cpu-dyndiv.h
 delete mode 100644 drivers/clk/meson/clk-input.c
 delete mode 100644 drivers/clk/meson/clk-input.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
