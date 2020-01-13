Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D48F139AE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 21:42:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g0xCi+mWCACMJevvcDwMmBqRzbhwuHuu/9JFsM8q0Qk=; b=KmUDzzTqcJKM/l
	svyModBX3PhmE52/ZjF1azIjyZ/L/Vs2n37jyuyRmmawbj677K1BY+teWUbjc1T5J1HMM97CaUSnF
	X2s0ThUKpUI7mJvEnsSoIRYTMlO/W358AsRJ0IJYzCzDepMCrgqPv2Osz5dkf1SVpPrMYexaLS5Fm
	KnxPdnwSBkcmt6yM7Sv/J2FJbT1vWZEq/WV50YPBZ8lnlODEC0uHrCUwf5TIXgLFnqmY5RA9v+6Q/
	wHh4pNOWVm88wnvU5JvkI23HtGrxNQddmWH96Boe2xrJuFxe81aOTKiLVZLtv82wqF++XjKbTe9VU
	EPq3R35QT4utyVtqBMEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6Xm-0005Lm-JU; Mon, 13 Jan 2020 20:42:38 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6Xe-0005L7-HD
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 20:42:32 +0000
Received: by mail-pj1-x1044.google.com with SMTP id s7so4805546pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 12:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hY20W2qHbAbl8BdCKhSUfSuDHATVC5lCYMS6zXJoRCY=;
 b=iH8XwlgJoYTzMzeP3Hgv2bbVEa+KrhjQqPGz8+xTMSrMMDlL0+/AVx+i+swIg2vTTd
 0YByNqIRsjdpYiq7ol4t5EJERpCwNg0m8xZsspIbDyPuFji6kTJAUOZDRhnE8u/3sqwX
 4BzrFlW9ey5uY4DCZVXbco3HLEFm2hGRkpskVB0ZqHUQA4buCq2pg5jlJTmz6UIOWTka
 VXdcG2gmkTLXIyKZuE3Hjt3BOnWQd9xfcuZDznp+rrGf9SI9mQZXLTYNpy29uU4wlz2H
 RnOGmLs84h5VmXnP7bwssDjEhjMJHS7taPPjKIB6+kDxWWq1nW2UXNPx6u5ZRvjLt2Yy
 EMzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hY20W2qHbAbl8BdCKhSUfSuDHATVC5lCYMS6zXJoRCY=;
 b=YKQifPAShh5Ay084eo4JFiM/3d42w1QtRnfP8nDKDQfsn50rmHoz9USrrfRKYhLUV3
 OnBdpsXpmjEpuZPEzKNTJCTtbd6ujM/ijt3N57Nl+y5Qg59oaQz+A1KXK1k6OcraucRz
 OJtFqY3EpGOPVkkQCUvEhLqzv12o3FNYvi6FGLaycJzwm9E0SOjsYLyup+t+wmdzCUq8
 modRabPM4yTuj+zp10gLv8LEMDEYeka2Hylvse2ZERYsQxMRDxOg0Os4I5sAKwaexAuf
 Ink5/tnX7c2AuA9IT611B6rDEEQag6Ux8Mm9tJZHsH/6p6z1C4GBIPRILJLQHgIZrvOv
 pt1g==
X-Gm-Message-State: APjAAAWpAK1FgSYv3fdo4mleTiSXFRga+V4fxhYfyHzzZfeSHzQwgGVb
 qM38t3gwvf2SQf4yKrMtcQIfhw==
X-Google-Smtp-Source: APXvYqyJ2xnl+hjS4Ek1j5BbiW549zp52s6E178X0hosrOBfCVOp/WTupug5ndROQzYHVkxJTn5hMw==
X-Received: by 2002:a17:902:d210:: with SMTP id
 t16mr9812748ply.45.1578948149688; 
 Mon, 13 Jan 2020 12:42:29 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l66sm14718579pga.30.2020.01.13.12.42.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 12:42:29 -0800 (PST)
Date: Mon, 13 Jan 2020 12:42:25 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 DT updates for v5.6
Message-ID: <20200113204225.GB3325@yoga>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_124230_581919_235C4014 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maulik Shah <mkshah@codeaurora.org>, Taniya Das <tdas@codeaurora.org>,
 Kiran Gunda <kgunda@codeaurora.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Sandeep Maheswaram <sanm@codeaurora.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rajeshwari <rkambl@codeaurora.org>, Lina Iyer <ilina@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Rob Clark <robdclark@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Stephan Gerhold <stephan@gerhold.net>, Kevin Hilman <khilman@baylibre.com>,
 Andy Gross <agross@kernel.org>, Sibi Sankar <sibis@codeaurora.org>,
 Roja Rani Yarubandi <rojay@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 Douglas Anderson <dianders@chromium.org>,
 Amit Kucheria <amit.kucheria@linaro.org>, Manu Gautam <mgautam@codeaurora.org>,
 Vinod Koul <vkoul@kernel.org>, Niklas Cassel <niklas.cassel@linaro.org>,
 Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.6

for you to fetch changes up to f489b13dae02a0217b9702913074526d3669bdc8:

  arm64: dts: qcom: sdm845: move gpu zap nodes to per-device dts (2020-01-13 11:45:51 -0800)

----------------------------------------------------------------
Qualcomm ARM64 DT updates for v5.6

* Align SDM845 firmware paths with linux-firmware
* Make WiFi work on Dragonboard845c
* Wire up wakeup controller for SDM845
* Critical thermal interrupt support for SDM845, MSM8996 and MSM8998
* Enable UFS for SM8150
* Add remoteproc enablers and nodes for SM8150
* Add CPUfreq for SM8150
* Add RPMH power-domain node for SM8150
* Cleanup and refactor MSM8996 dts structure
* Add initial Inforce Computing IFC6640 dts
* Increase MSM8996 core voltage
* Fix MSM8996 USB phy settings
* Add missing alias for BLSP UART in MSM8998 MTP
* Add remoteproc nodes for ADSP, modem and sensor core for MSM8998
* Enable WiFI for MSM8998
* Introduce the SC7180 platform and the IDP development board
* Add CPUfreq, QUPs, USB, remoteproc etc for SC7180
* Enable USB OTG for Dragonboard 410c
* Add vibrator motor node for PM8916
* Properly specify APCS clocks for MSM8916
* Add CPR and HFPLL for QCS404
* Enable full CPUfreq (with AVS) for QCS404

----------------------------------------------------------------
Amit Kucheria (4):
      arm64: dts: sdm845: thermal: Add critical interrupt support
      arm64: dts: msm8916: thermal: Add interrupt support
      arm64: dts: msm8996: thermal: Add critical interrupt support
      arm64: dts: msm8998: thermal: Add critical interrupt support

AngeloGioacchino Del Regno (1):
      arm64: dts: pm8004: Add SPMI regulator and add phandles to lsids

Bjorn Andersson (15):
      arm64: dts: qcom: db845c: Enable ath10k 8bit host-cap quirk
      arm64: dts: qcom: db820c: Move non-soc entries out of /soc
      arm64: dts: qcom: msm8996: Use node references in db820c
      arm64: dts: qcom: msm8996: Move regulator consumers to db820c
      arm64: dts: qcom: msm8996: Move regulators to db820c
      arm64: dts: qcom: db820c: Group root nodes
      arm64: dts: qcom: db820c: Sort all nodes
      arm64: dts: qcom: db820c: Remove pin specific files
      arm64: dts: qcom: msm8996: Pad addresses
      arm64: dts: qcom: msm8996: Sort all nodes in msm8996.dtsi
      arm64: dts: qcom: db820c: Use regulator names from schematics
      arm64: dts: qcom: msm8996: Introduce IFC6640
      arm64: dts: qcom: db845c: Move remoteproc firmware to sdm845
      arm64: dts: qcom: msm8998-mtp: Add alias for blsp1_uart3
      arm64: dts: qcom: sm8150: Hard code rpmhpd constants

Douglas Anderson (9):
      arm64: dts: sc7180: Fix indentation/ordering of qspi nodes in sc7180-idp
      arm64: dts: sc7180: Add a comment to i2c7 about external pullup
      arm64: dts: qcom: sc7180: Add SoC name to compatible
      arm64: dts: qcom: sc7180: Rename gic-its node to msi-controller
      arm64: dts: qcom: sc7180: Add "#clock-cells" property to usb_1_ssphy
      arm64: dts: qcom: pm6150: Remove macro from unit name of adc-chan
      arm64: dts: qcom: sc7180: Avoid "phy" for USB QMP PHY wrapper
      arm64: dts: qcom: sc7180: Fix I2C/UART numbers 2, 4, 7, and 9
      arm64: dts: qcom: sdm845: Rename gic-its node to msi-controller

Jeffrey Hugo (6):
      arm64: dts: qcom: msm8998: Add anoc2 smmu node
      arm64: dts: qcom: msm8998: Add wifi node
      arm64: dts: qcom: msm8998: Fix tcsr syscon size
      arm64: dts: qcom: msm8998: Add gpucc node
      arm64: dts: qcom: msm8998: Fixup uart3 gpio config for bluetooth
      arm64: dts: msm8998-clamshell: Add pm8005_s1 regulator

Jorge Ramirez-Ortiz (4):
      arm64: dts: qcom: msm8916: Add the clocks for the APCS mux/divider
      arm64: dts: qcom: qcs404: Add HFPLL node
      arm64: dts: qcom: qcs404: Add the clocks for APCS mux/divider
      arm64: dts: qcom: qcs404: Add DVFS support

Kiran Gunda (3):
      arm64: dts: qcom: sc7180: Add SPMI PMIC arbiter device
      arm64: dts: qcom: pm6150: Add PM6150/PM6150L PMIC peripherals
      arm64: dts: qcom: sc7180-idp: Add RPMh regulators

Lina Iyer (2):
      arm64: dts: qcom: add PDC interrupt controller for SDM845
      arm64: dts: qcom: setup PDC as the wakeup parent for TLMM on SDM845

Loic Poulain (2):
      arm: dts: qcom: db410c: Enable USB OTG support
      arm64: dts: apq8096-db820c: Fix VDD core voltage

Manu Gautam (1):
      arm64: dts: qcom: msm8996: Disable USB2 PHY suspend by core

Matthias Kaehlcke (1):
      arm64: dts: qcom: sc7180: Fix node order

Maulik Shah (4):
      arm64: dts: qcom: sc7180: Add cmd_db reserved area
      arm64: dts: qcom: sc7180: Add rpmh-rsc node
      arm64: dts: qcom: sc7180: Add pdc interrupt controller
      arm64: dts: qcom: sc7180: Add wakeup parent for TLMM

Niklas Cassel (2):
      arm64: dts: qcom: qcs404: Add CPR and populate OPP table
      arm64: dts: qcom: qcs404-evb: Set vdd_apc regulator in high power mode

Rajendra Nayak (4):
      dt-bindings: qcom: Add SC7180 bindings
      arm64: dts: sc7180: Add minimal dts/dtsi files for SC7180 soc
      arm64: dts: sc7180: Remove additional spi chip select muxes
      arm64: dts: sc7180: Add aliases for all i2c and spi devices

Rajeshwari (2):
      arm64: dts: qcom: sc7180: Add device node support for TSENS in SC7180
      arm64: dts: qcom: sc7180: Add critical interrupt and cooling maps for TSENS in SC7180

Rob Clark (1):
      arm64: dts: qcom: sdm845: move gpu zap nodes to per-device dts

Roja Rani Yarubandi (1):
      arm64: dts: sc7180: Add qupv3_0 and qupv3_1

Sai Prakash Ranjan (5):
      arm64: dts: sdm845: Update the device tree node for LLCC
      arm64: dts: qcom: sc7180: Add APSS watchdog node
      arm64: dts: qcom: sm8150: Add APSS watchdog node
      arm64: dts: qcom: sc7180: Add Last level cache controller node
      arm64: dts: qcom: qcs404: Update the compatible for watchdog timer

Sandeep Maheswaram (1):
      arm64: dts: qcom: sc7180: Add USB related nodes

Sibi Sankar (8):
      arm64: dts: sm8150: Add rpmh power-domain node
      arm64: dts: qcom: sm8150: Add ADSP, CDSP, MPSS and SLPI smp2p
      arm64: dts: qcom: sm8150: Add ADSP, CDSP, MPSS and SLPI remoteprocs
      arm64: dts: qcom: sm8150: Add cpufreq HW device node
      arm64: dts: qcom: sc7180: Add remoteproc enablers
      arm64: dts: qcom: msm8998: Update reserved memory map
      arm64: dts: qcom: msm8998: Add ADSP, MPSS and SLPI nodes
      arm64: dts: qcom: sc7180: Add rpmh power-domain node

Stanimir Varbanov (1):
      arm64: dts: qcom: msm8996: Fix venus iommu nodename error

Stephan Gerhold (1):
      arm64: dts: qcom: pm8916: Add vibration motor node

Stephen Boyd (1):
      arm64: dts: qcom: sdm845-cheza: Add cr50 spi node

Taniya Das (2):
      arm64: dts: qcom: SC7180: Add node for rpmhcc clock driver
      arm64: dts: sc7180: Add cpufreq HW node for cpu scaling

Vinod Koul (6):
      arm64: dts: qcom: Use gcc clock enums
      arm64: dts: qcom: sm8150: Add ufs nodes
      arm64: dts: qcom: sm8150-mtp: Enable UFS nodes
      arm64: dts: qcom: sm8150-mtp: Add UFS gpio reset
      arm64: dts: qcom: sm8150: Fix UFS phy register size
      arm64: dts: qcom: sdm845: add the ufs reset

Vivek Gautam (1):
      arm64: dts: sc7180: Add device node for apps_smmu

 Documentation/devicetree/bindings/arm/qcom.yaml    |   44 +-
 arch/arm64/boot/dts/qcom/Makefile                  |    2 +
 .../arm64/boot/dts/qcom/apq8016-sbc-pmic-pins.dtsi |   19 +
 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi          |   11 +-
 arch/arm64/boot/dts/qcom/apq8096-db820c-pins.dtsi  |  109 -
 .../boot/dts/qcom/apq8096-db820c-pmic-pins.dtsi    |   92 -
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi       | 1408 +++++---
 arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts       |  385 +++
 arch/arm64/boot/dts/qcom/msm8916.dtsi              |    5 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi              | 3530 ++++++++++----------
 arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi    |   49 +
 arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi          |   41 +
 arch/arm64/boot/dts/qcom/msm8998-pins.dtsi         |   25 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi              |  262 +-
 arch/arm64/boot/dts/qcom/pm6150.dtsi               |   72 +
 arch/arm64/boot/dts/qcom/pm6150l.dtsi              |   31 +
 arch/arm64/boot/dts/qcom/pm8004.dtsi               |   10 +-
 arch/arm64/boot/dts/qcom/pm8916.dtsi               |    6 +
 arch/arm64/boot/dts/qcom/pm8994.dtsi               |    4 +
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi           |    1 +
 arch/arm64/boot/dts/qcom/qcs404.dtsi               |  160 +-
 arch/arm64/boot/dts/qcom/sc7180-idp.dts            |  430 +++
 arch/arm64/boot/dts/qcom/sc7180.dtsi               | 2187 ++++++++++++
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi         |   15 +-
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts         |   18 +-
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts            |    7 +
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |   32 +-
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      |    7 +
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts            |   35 +
 arch/arm64/boot/dts/qcom/sm8150.dtsi               |  391 ++-
 30 files changed, 6766 insertions(+), 2622 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/qcom/apq8096-db820c-pins.dtsi
 delete mode 100644 arch/arm64/boot/dts/qcom/apq8096-db820c-pmic-pins.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts
 create mode 100644 arch/arm64/boot/dts/qcom/pm6150.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pm6150l.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-idp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180.dtsi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
