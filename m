Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B95CA2624
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 20:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mE5YnCUH8UfEeNAS20oJtyp37xK0sy9UcfyX2ip3txQ=; b=OiKge6MXmPvG4k
	CwWtn7qOHEikIc7UBJbySN50msusStMqz2MaeRGMJ2OuqqE3+Tce7f3dbREP1EBegcCBfTRWL4bEL
	ead9yuXie6RPM5aPqrOud2kMOkkpaVxniHt1zhTBAPwfds8vs+SjEK7NYWNZh/Y2F2G8E+1PyaJyP
	CUFF13gN3JsecU8m+KVuGv19trh3ed2r+t2iyrk5iHuDuIOrptmV5omWLByCbhMU5FO7nL6azW8mg
	7/Q1HsZ8bkrvU83CDumzCWSPqdd4ko/irmUIqZ1Mjw7o4HpT2qgQT/afmxum1RLmrrGqsTtU9kOuS
	RtuhXa0/FlSHCk64EJFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3PHm-0007Xg-2M; Thu, 29 Aug 2019 18:36:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PHZ-0007Wz-H7
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 18:36:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so2053914pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 11:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=r5eQHx60AZEp2EvCtEHQAjfXaLzkd6ZeSmX0m8nrcX8=;
 b=vZpuVFHGdubinXoHYQDkmFSCagP7I0L+sorE/9cXtefs3pGkxBCbnHJ3CmJ8x9W7E/
 8GGPGRD1npLv2IaiLiWx9dcwdS9BXRxSLbaAZdG4feeS74V6jXS2337JrSuDHVDkNYCF
 JmX+PEj7/jqqlMJnxiTtM0lBRueL68z7Sc5sty5dwiQV3YEwyKaPCWpKGEGUrAl5XWzV
 23aX1sH2r7SzQ5GSTU1oWsAAJ5gIIAX6N55cW4CFSJSljjVSh38QxZm0nidDoD0KlPc2
 QOjySuO4nKwFWpr95Xw1Fg/2YN27TsG8FRU5HRAqzR+oe4qJLNbBVtPwCIRnMS7A5UWM
 okAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=r5eQHx60AZEp2EvCtEHQAjfXaLzkd6ZeSmX0m8nrcX8=;
 b=FtynaSsAEphrKUxSK8dv2ST4SiGxy5X4QKnF4yw+k94Na9tY7P7werRWv5tvD0dT5G
 QWrlys8lsQE+1y5rCErh5UTGg5dE3aEdZ9jPIdppdsTJaQcRpY/PUnf4L0rtxXSM55Qu
 PXRoJt/E5JC+xbqBFc0+buNgVYwrClqZ9yyAYRUYovHRFmJQSe26+r7D5tcCVJwtGkjo
 R/LhN1ggs1M4sXg0NCIz9S/f7dvgtsVuuKkOtD1H2NvH9GoQ5nt7xM2x0cun9LAFurK5
 NOMjyXJ94mr6yCQ4mIAuUmJXTrpHrQe5rxWJa1Jq5nP8GYWvO0eLE4NVSs4v+w2GzGFi
 lR3A==
X-Gm-Message-State: APjAAAWFreWKZi3n3nd2lSIxOuAqzQbmFN6EEcILvaj3s/IcpH1MPW/z
 DVia/WoKNroUKMhs72CqJaYdxg==
X-Google-Smtp-Source: APXvYqxQ5S5iOBn/oKcNK6LCNECljsX2YS8Y1NTaPIa3FfVFSLBdHo/fiHCzZXVdsB7uJkGMGeA3Bg==
X-Received: by 2002:a63:29c7:: with SMTP id p190mr9421737pgp.124.1567103788676; 
 Thu, 29 Aug 2019 11:36:28 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id s16sm4813490pfs.6.2019.08.29.11.36.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 11:36:28 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] arm64: dts: Amlogic updates for v5.4 (round 2)
Date: Thu, 29 Aug 2019 11:36:27 -0700
Message-ID: <7h4l1zrf84.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_113629_567609_9EC5E398 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Arnd, Olof,

Another (final) round of 64-bit DT updates for Amlogic SoCs for v5.4.
Highlights are in the tag description, but of note is a tag pulled in
from the clock tree due to a handful of new clocks used for DVFS and
power domains.

Please pull.

Thanks,

Kevin


The following changes since commit e9a12e14322d7ddafeed6aec0d3fb02c0b5dc03c:

  arm64: dts: add support for SM1 based SEI Robotics SEI610 (2019-08-20 13:31:11 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt64-2

for you to fetch changes up to 703d5ec6f8aa59964d78d28d07ca3251345d483f:

  arm64: dts: khadas-vim3: add support for the SM1 based VIM3L (2019-08-29 11:13:39 -0700)

----------------------------------------------------------------
arm64: dts: Amlogic updates for v5.4 (round 2)
- new board: Khadas VIM3L (SM1/S905D3 SoC)
- support power domains on G12[AB] and SM1 SoCs
- DT binding fixups based on YAML schema
- add a bunch of remote control keymap
- enable DVFS on SM1/SEI610 board

----------------------------------------------------------------
Christian Hewitt (7):
      arm64: dts: meson-g12b-odroid-n2: add rc-odroid keymap
      arm64: dts: meson-g12a-x96-max: add rc-x96max keymap
      arm64: dts: meson-gxbb-wetek-hub: add rc-wetek-hub keymap
      arm64: dts: meson-gxbb-wetek-play2: add rc-wetek-play2 keymap
      arm64: dts: meson-gxl-s905x-khadas-vim: use rc-khadas keymap
      arm64: dts: meson-gxl-s905w-tx3-mini: add rc-tx3mini keymap
      arm64: dts: meson-gxm-khadas-vim2: use rc-khadas keymap

Jerome Brunet (3):
      dt-bindings: clock: meson: add resets to the audio clock controller
      arm64: dts: meson: g12a: audio clock controller provides resets
      arm64: dts: meson: g12a: add reset to tdm formatters

Kevin Hilman (2):
      arm64: dts: meson: g12a-common: add VRTC
      Merge tag 'clk-meson-dt-v5.4-3' of git://github.com/BayLibre/clk-meson into v5.4/dt64-rebase

Neil Armstrong (23):
      dt-bindings: clk: meson: add sm1 periph clock controller bindings
      arm64: dts: meson: fix ethernet mac reg format
      arm64: dts: meson-gx: drop the vpu dmc memory cell
      arm64: dts: meson-gx: fix reset controller compatible
      arm64: dts: meson-gx: fix spifc compatible
      arm64: dts: meson-gx: fix watchdog compatible
      arm64: dts: meson-gx: fix mhu compatible
      arm64: dts: meson-gx: fix periphs bus node name
      arm64: dts: meson-gxl: fix internal phy compatible
      arm64: dts: meson-axg: fix MHU compatible
      arm64: dts: meson-g12a: fix reset controller compatible
      arm64: dts: meson-g12a-x96-max: fix compatible
      arm64: dts: meson-gxbb-nanopi-k2: add missing model
      arm64: dts: meson-gxbb-p201: fix snps, reset-delays-us format
      arm64: dts: meson: fix boards regulators states format
      arm64: meson-g12: add Everything-Else power domain controller
      arm64: dts: meson-sm1-sei610: add HDMI display support
      arm64: dts: meson-sm1-sei610: add USB support
      arm64: dts: meson-sm1-sei610: enable DVFS
      dt-bindings: power: add Amlogic Everything-Else power domains bindings
      arm64: dts: khadas-vim3: move common nodes into meson-khadas-vim3.dtsi
      dt-bindings: arm: amlogic: add Amlogic SM1 based Khadas VIM3L bindings
      arm64: dts: khadas-vim3: add support for the SM1 based VIM3L

 Documentation/devicetree/bindings/arm/amlogic.yaml                 |   3 +-
 Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.txt |   1 +
 Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt      |   1 +
 Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml |  93 +++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/Makefile                               |   1 +
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi                         |   6 +-
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi                  | 113 +++++++++++++++++--------------
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts                 |   3 +-
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi                        |   9 +++
 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts       |   1 +
 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi            | 355 -----------------------------------------------------------------------------------------------
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts               |   5 +-
 arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts       |   1 +
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi                        |   9 +++
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi                          |  19 +++---
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts               |   1 +
 arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts             |   4 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts                |   4 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts                    |   2 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi                   |   4 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts               |   4 ++
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts             |   4 ++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts           |   4 ++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts     |   4 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts         |   2 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts        |   4 +-
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi                         |   5 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts              |   2 +-
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi                 | 360 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts             |  70 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts                   |  83 +++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi                         |  85 ++++++++++++++++++++++-
 include/dt-bindings/clock/g12a-clkc.h                              |   5 ++
 include/dt-bindings/power/meson-g12a-power.h                       |  13 ++++
 include/dt-bindings/power/meson-sm1-power.h                        |  18 +++++
 include/dt-bindings/reset/amlogic,meson-g12a-audio-reset.h         |  38 +++++++++++
 36 files changed, 895 insertions(+), 441 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
 create mode 100644 include/dt-bindings/power/meson-g12a-power.h
 create mode 100644 include/dt-bindings/power/meson-sm1-power.h
 create mode 100644 include/dt-bindings/reset/amlogic,meson-g12a-audio-reset.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
