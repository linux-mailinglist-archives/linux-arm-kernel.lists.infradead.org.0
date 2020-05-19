Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F1F1D8F30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 07:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aOhqILXp12XhVA+Bc7PWDy5F8jH+GnmeL7PPiw4tjw8=; b=deGOIlXiv351aS
	KqFxfO0gA9zC6nOHZAceR1yeUnUpDcpocBRjagVQ5ckbkQsMXBr8DYESYFGcDJEZLKqbZm76tiPlG
	DfijIbETvB6UPogEb2IuDfl7DhtR+uLOr+hG56JA+T0aSrwDlYjE4w+H/SkDR0OUjKmzgVlAThsMA
	yJ6RvnwL/XwlUINm5MbPHYKZ/AFqfkjYs/cKMOGOSbTQqsJq6y6Y64QXoDQSDvp1SwWpiIaWtz0Cx
	bs9r9KC4t120ESxcGFZrHzzKNFQgZVRDrAUhekueRcdYdbGHoAKkL4/WZkMOZC9KAdKU8S2TnrYUo
	JR1zU7ZqqMexhE/1ggCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaumL-0005eH-KL; Tue, 19 May 2020 05:27:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaumB-0005dk-6z
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 05:26:53 +0000
Received: by mail-pl1-x642.google.com with SMTP id d3so436639pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 22:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Rjv8JCeTyKeUMk8tk1UJUBDDgzIUyViRdBjBrvWoPFM=;
 b=vyTmGM9WtwE/LTJhI8em0RpT84gAtfdokyJO5cA5AbJExYnTtXcQmNiQSeyRsnwwj1
 C5ZwVZDbWH2lwKEizUE+Dmpe53MQxoH0xWK/nD7B6k4/5kUs1eUI2iLBq/g5c/8ne/Gh
 gjTpN3iWu5IWAPs7XON7P2gENpj9XPDSVm5Wc5nO2tg+EIO5FjBy9KMTRAPPr2InvUrG
 xSbSHpy1DjSk7Kud/0gb0s2LvGLujZW2EilTwdg48IYe+B392EC5NrPnBaz013O4aIn6
 u12MGQLatY7R6JEYiyv7/vs0XqBCZnOSGqkPeOqQe/waPlAVc1qcmqspche4MAyYbczO
 8Wfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Rjv8JCeTyKeUMk8tk1UJUBDDgzIUyViRdBjBrvWoPFM=;
 b=mkVEgEV11PSKRyrBq5Z8eMVe8+5LSfrkuqfs9K6qoKbnt/Y4RYCIRsXAJOfwpVxp79
 JzTeM5MxLYGvcwPJGEASf+vhXEbXcS2X4P+JF07kQtyC5WNleoFSQMtDYKaO+tpGAAAU
 IUafaqXlzZT3I9N3HZ245WQgtRcMv2lKDwkx5l1+H31ACEqqaMas9qhRYIqqOeWiPGs8
 EkHjyGiTcE1AoHVVOSqCuF5YsJr74HoQpQ8ge3X6Z8fBjMpxXIChIS2Eb5F1qqiSLtmV
 xiEZsc/eNqlDacClOwgpj7ETjF8DNGpNPP+CHOYWlkEKeU47Ljyfai/uMCm1rj8UQeMs
 rmqw==
X-Gm-Message-State: AOAM530ScCBndzfVjjF8CP8Rj5Im/jaOx5440wEr89nESunwSbDs79w7
 Djckj+yl4C+6pcq9l2wp0G3D8e+Pt8MjIg==
X-Google-Smtp-Source: ABdhPJzuNoc8xPPwILGNy2gB0dGlAuaPbQd/6ATRtClov2xzWJBtr62YDDHnK9dPjFW2HqEpF2zJCQ==
X-Received: by 2002:a17:90a:7c48:: with SMTP id
 e8mr3177959pjl.135.1589866010410; 
 Mon, 18 May 2020 22:26:50 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id i12sm997767pjk.37.2020.05.18.22.26.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 22:26:49 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 DT updates for v5.8
Date: Mon, 18 May 2020 22:25:28 -0700
Message-Id: <20200519052528.1249950-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_222651_255257_51F4B016 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maulik Shah <mkshah@codeaurora.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Craig Tatlor <ctatlor97@gmail.com>, Sandeep Maheswaram <sanm@codeaurora.org>,
 Rajeshwari <rkambl@codeaurora.org>, Amit Kucheria <amit.kucheria@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Arnd Bergmann <arnd@arndb.de>, Jonathan Marek <jonathan@marek.ca>,
 Kevin Hilman <khilman@baylibre.com>, Evan Green <evgreen@chromium.org>,
 Andy Gross <agross@kernel.org>, Sibi Sankar <sibis@codeaurora.org>,
 Alex Elder <elder@linaro.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Alexey Minnekhanov <alexey.min@gmail.com>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org,
 Sharat Masetty <smasetty@codeaurora.org>,
 Sivaprakash Murugesan <sivaprak@codeaurora.org>,
 Michael Srba <michael.srba@seznam.cz>, linux-arm-kernel@lists.infradead.org,
 Krishna Manikandan <mkrishn@codeaurora.org>,
 Loic Poulain <loic.poulain@linaro.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 Douglas Anderson <dianders@chromium.org>, Robert Foss <robert.foss@linaro.org>,
 Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.8

for you to fetch changes up to 7d2f29e49477aa51339e719cf73f0945c39c8a9e:

  arm64: dts: qcom: sc7180: Correct the pdc interrupt ranges (2020-05-18 20:08:35 -0700)

----------------------------------------------------------------
Qualcomm ARM64 DT updates for v5.8

For SDM845 this defines the IPA network accelerator and the CCI camera
control bus, it defines the required UFS reset and adds WiFi for the
Lenovo Yoga C630 and defines GPIO pin names and adds OV8856 and OC7251
camera nodes for DB845c.

For SC7180 it adds GPU support, defines the modem remoteproc, adds the
IPA network accelerator, Coresight and ETM support, adds cpuidle low
power states and updates the CPUs' compatible.

For SM8250 it adds regulators from the PM8150, PM8150L and PM8009 and
adds voltage corners, it defines the nodes for UFS PHY and controller
and finally corrects a typo in the PDC node to make SPMI functional.

For MSM8916 I2C1 and I2C5 are defined, a node for the CCI camera control
interface bus is added and Coresight is disabled by default to match
some product configurations. The Samsung A3U gained display support and
Samsung A5U gained touchscreen support.

MSM8996 now property describes the power supply chain for the GPU, the
CCI camera control interface bus is added and the DB820c has the
regulators of the secondary PMIC defined.

For QCS404 USB PHYs and controllers are defined and wired up for the
EVB.

SDM630/SDM660 platform support is added and the Xiaomi Redmi Note 7
defined.

It also contains a number of changes throughout to improve DT binding
compliance.

----------------------------------------------------------------
Alex Elder (2):
      arm64: dts: sdm845: add IPA iommus property
      arm64: dts: qcom: sc7180: add IPA information

Alexey Minnekhanov (2):
      dt-bindings: arm: qcom: Add sdm630 and sdm660 SoCs
      arm64: dts: qcom: Add Xiaomi Redmi Note 7 (lavender)

Amit Kucheria (5):
      dt-bindings: arm: cpus: Add kryo468 compatible
      arm64: dts: qcom: sc7180: Fix cpu compatible
      arm64: dts: qcom: msm8916: remove unit name for thermal trip points
      arm64: dts: qcom: msm8996: remove unit name for thermal trip points
      arm64: dts: qcom: msm8998: remove unit name for thermal trip points

Bjorn Andersson (9):
      arm64: dts: qcom: qcs404: Add USB devices and PHYs
      arm64: dts: qcom: sm8250: Add rpmhpd node
      arm64: dts: qcom: sm8250: Fix PDC compatible and reg
      arm64: dts: qcom: db820c: Add pmi8994 RPM regulators
      arm64: dts: qcom: db820c: Fix invalid pm8994 supplies
      arm64: dts: qcom: c630: Add WiFi node
      arm64: dts: qcom: c630: Specify UFS device reset
      arm64: dts: qcom: msm8996: Make GPU node control GPU_GX GDSC
      arm64: dts: qcom: sc7180: Fix ETMv4 power management patch

Bryan O'Donoghue (7):
      arm64: dts: qcom: qcs404-evb: Define VBUS pins
      arm64: dts: qcom: qcs404-evb: Define USB ID pin
      arm64: dts: qcom: qcs404-evb: Describe external VBUS regulator
      arm64: dts: qcom: qcs404-evb: Raise vreg_l12_3p3 minimum voltage
      arm64: dts: qcom: qcs404-evb: Enable USB controllers
      arm64: dts: qcom: sm8250-mtp: Add pm8150, pm8150l and pm8009
      arm64: dts: qcom: sm8250: Add UFS controller and PHY

Craig Tatlor (1):
      arm64: dts: qcom: Add SDM660 SoC support

Douglas Anderson (3):
      arm64: dts: qcom: sc7180: Swap order of gpucc and sdhc_2
      arm64: dts: sdm845: Add "no-hpd" to sn65dsi86 on cheza
      arm64: dts: qcom: sc7180: Add "no-map" to cmd_db reserved area

Evan Green (1):
      arm64: dts: qcom: sc7180: Include interconnect definitions

Jonathan Marek (1):
      arm64: dts: qcom: fix pm8150 gpio interrupts

Krishna Manikandan (1):
      arm64: dts: qcom: sc7180: modify assigned clocks for sc7180 target

Loic Poulain (4):
      arm64: dts: qcom: msm8916: Add i2c-qcom-cci node
      arm64: dts: qcom: apq8016-sbc: Add CCI/Sensor nodes
      arm64: dts: msm8996: Fix CSI IRQ types
      arch: arm64: dts: msm8996: Add CCI node

Matthias Kaehlcke (1):
      arm64: dts: qcom: sc7180: Add interconnect paths for the video codec

Maulik Shah (2):
      arm64: dts: qcom: sc7180: Add cpuidle low power states
      arm64: dts: qcom: sc7180: Correct the pdc interrupt ranges

Michael Srba (2):
      arm64: dts: qcom: msm8916: Disable coresight by default
      arm64: dts: qcom: msm8916-samsung-a3u: add nodes for display panel

Mike Leach (1):
      arm64: dts: qcom: msm8916: Add CTI options

Rajendra Nayak (1):
      arm64: dts: qcom: db820c: Add vdd_gfx and tie it into mmcc

Rajeshwari (1):
      arm64: dts: qcom: sc7180: Changed polling mode in Thermal-zones node

Robert Foss (3):
      arm64: dts: qcom: sdm845: Add i2c-qcom-cci node
      arm64: dts: qcom: sdm845-db845c: Add pm_8998 gpio names
      arm64: dts: qcom: sdm845-db845c: Add ov8856 & ov7251 camera nodes

Sai Prakash Ranjan (2):
      arm64: dts: qcom: sc7180: Add Coresight support
      arm64: dts: qcom: sc7180: Support ETMv4 power management

Sandeep Maheswaram (3):
      arm64: dts: qcom: sdm845: Add generic QUSB2 V2 Phy compatible
      arm64: dts: qcom: sc7180: Add generic QUSB2 V2 Phy compatible
      arm64: dts: qcom: sc7180: Update QUSB2 V2 Phy params for SC7180 IDP device

Sharat Masetty (2):
      dt-bindings: arm-smmu: Add sc7180 compatible string
      arm64: dts: qcom: sc7180: Add A618 gpu dt blob

Sibi Sankar (4):
      arm64: dts: qcom: sdm845: Add SoC compatible to MTP
      arm64: dts: qcom: sc7180: Update reserved memory map
      arm64: dts: qcom: sc7180: Add Q6V5 MSS node
      arm64: dts: qcom: sc7180: Update Q6V5 MSS node

Sivaprakash Murugesan (1):
      arm64: dts: ipq8074: qcom: Re-arrange dts nodes based on address

Stephan Gerhold (7):
      arm64: dts: qcom: msm8916: Add blsp_i2c1
      arm64: dts: qcom: msm8916: Add blsp_i2c5
      arm64: dts: qcom: msm8916-samsung-a2015: Add touchscreen regulator
      arm64: dts: qcom: msm8916-samsung-a5u: Add touchscreen
      arm64: dts: qcom: msm8916: avoid using _ in node names
      arm64: dts: qcom: msm8916: move gpu opp table to gpu node
      arm64: dts: qcom: apq8016-sbc: merge -pins.dtsi into main .dtsi

Ulf Hansson (2):
      arm64: dts: qcom: msm8916: Conform to the domain-idle-state binding
      arm64: dts: qcom: msm8916: Conform to the nodename pattern PSCI subnodes

 Documentation/devicetree/bindings/arm/cpus.yaml    |   1 +
 Documentation/devicetree/bindings/arm/qcom.yaml    |   7 +
 .../devicetree/bindings/iommu/arm,smmu.yaml        |   1 +
 arch/arm64/boot/dts/qcom/Makefile                  |   1 +
 .../arm64/boot/dts/qcom/apq8016-sbc-pmic-pins.dtsi |  74 --
 arch/arm64/boot/dts/qcom/apq8016-sbc-soc-pins.dtsi |  89 --
 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi          | 257 +++++-
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi       |  53 +-
 arch/arm64/boot/dts/qcom/ipq8074-hk01.dts          | 112 ++-
 arch/arm64/boot/dts/qcom/ipq8074.dtsi              | 474 +++++-----
 .../boot/dts/qcom/msm8916-longcheer-l8150.dts      |  25 +-
 arch/arm64/boot/dts/qcom/msm8916-pins.dtsi         | 221 +++--
 .../dts/qcom/msm8916-samsung-a2015-common.dtsi     |  98 ++-
 .../boot/dts/qcom/msm8916-samsung-a3u-eur.dts      |  54 ++
 .../boot/dts/qcom/msm8916-samsung-a5u-eur.dts      |  35 +
 arch/arm64/boot/dts/qcom/msm8916.dtsi              | 228 ++++-
 arch/arm64/boot/dts/qcom/msm8996.dtsi              |  87 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi              |  38 +-
 arch/arm64/boot/dts/qcom/pm8150.dtsi               |  14 +-
 arch/arm64/boot/dts/qcom/pm8150b.dtsi              |  14 +-
 arch/arm64/boot/dts/qcom/pm8150l.dtsi              |  14 +-
 arch/arm64/boot/dts/qcom/pmi8994.dtsi              |   6 +
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi           |  85 +-
 arch/arm64/boot/dts/qcom/qcs404.dtsi               | 100 +++
 arch/arm64/boot/dts/qcom/sc7180-idp.dts            |  66 +-
 arch/arm64/boot/dts/qcom/sc7180.dtsi               | 955 +++++++++++++++++++--
 .../arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts |  46 +
 arch/arm64/boot/dts/qcom/sdm660.dtsi               | 372 ++++++++
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi         |   2 +
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts         | 210 +++++
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts            |   2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |  98 ++-
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      |  13 +
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts            | 351 ++++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi               | 126 ++-
 35 files changed, 3528 insertions(+), 801 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/qcom/apq8016-sbc-pmic-pins.dtsi
 delete mode 100644 arch/arm64/boot/dts/qcom/apq8016-sbc-soc-pins.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sdm660.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
