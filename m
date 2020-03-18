Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9861894FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 05:38:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4WI/N9H9h0ovuw4Iuw3X3PyfqzEm7jq3s4F4YCo+FwU=; b=Y9U94Jca6AAbMT
	YtjurlOvb2sLp/p9CuzmZ/HV9iJ+sRT6lb2BnpD+of39t96pV35gY/1psEeONxff+ef9dkEUzjnSU
	gtOWIBeB0jTSPgX6OoJRvRHZ1HFrOfCyEcg7UWL/cjSn8/sdFebuP0416nETubmKNhj5sioISIy7A
	dHz92KfmdFlRGSkVR0kaGgTooOrJ7hCD812ulT8ETgDu2pIZBS31MSuCPwwb2jOtT2YGprUzkPtTt
	rLEo3VQ3ULt6XlarygvVeB51iZNHS9pZatuRjlSlBOS4qLf82t9YWE3KgJIWB1mIKMeFEdmHAEwE+
	1K2aDW4yw0M1KOk8oR3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEQTd-0001PV-9W; Wed, 18 Mar 2020 04:38:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEQTS-0001P9-2J
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 04:38:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id h11so10615069plk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 21:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=E65jDiVqebjNzL9E9brggzHs8VPxaJs856eFDKIjQwY=;
 b=ukSU2cLZMHHztJJCKW0IeEevQj4F2vNWVw4cqb8lcUUFCz5eTwF8sNMLxCkjW/h6IW
 ID1XJfDB4/46hhotDyLgCunSrNLblQ+aPPR1OHqwLBIuEbMfRkYXxMf8nmgrA9gSymkb
 WEZ1vzPedLo6nDnj93fLFHSB9880lU4+3V+rPMtlpdNm61h9WHVi8TMmkupevXsQEiqj
 GBa3u/uFnPU4UGgQS1P39uCGWwIAwfXZ1PdyF0dsyP2kKPWq/+4fcExwHeIMFMqrQQQb
 hXI/Tqsxc2HUhYGIh52TSDMcNUeD7M0r3c4CEc6i/QE1YMnksVRwL5c+yJMJx9fwHza/
 nXXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=E65jDiVqebjNzL9E9brggzHs8VPxaJs856eFDKIjQwY=;
 b=hI//5upuuEHvTalaFwZFhRgl0WGZRegWmE2LlWQdgPJfTveeFoPnb2bmY5c8vlaQxL
 IuKTW2V/atQGuHiKoSPY+MQGYb8dk7UWYAOn1xACuXdNbRlimQUf8ZAeXfOL5kQcMnGP
 7KOQGLQbuIeBgplPVxSEm7LOpr7yM/k/W49kjbvvSdb4BDnoV1EyGVAI7Fe4EZuA/cWe
 Qr65haY5gh44UPGHl9516MVOYq/DMGffY14VYz1KNF8Iopxl+FIs7S3+pRJDEzmBcfPx
 Q6Xul6fF9bNEJGE+9ZcJaMXsmzNcFsOJgJl41mqcMi9h5BDR1ATqfoBmBgMFurmX8Em4
 mURQ==
X-Gm-Message-State: ANhLgQ3nIBds21leDjas0lEqwymCOJNSKXnzVWUfIomJ7tnsE9x69THp
 J6900kJwcpCHXZ/g8xZ4NmabLg==
X-Google-Smtp-Source: ADFU+vsHeUFd79bp4tdw3X+CGiJ9Kq+RQ17IFfN8vyKvs9NkeA33PhOAPGgEO2FYwmZMlZEXN5+aWQ==
X-Received: by 2002:a17:90a:ab0a:: with SMTP id
 m10mr2728022pjq.105.1584506307552; 
 Tue, 17 Mar 2020 21:38:27 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 73sm4241879pgg.90.2020.03.17.21.38.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 21:38:26 -0700 (PDT)
Date: Tue, 17 Mar 2020 21:38:23 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 DT updates for v5.7
Message-ID: <20200318043823.GA470201@yoga>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_213834_174351_1EF0C255 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Taniya Das <tdas@codeaurora.org>, Sandeep Maheswaram <sanm@codeaurora.org>,
 David Dai <daidavid1@codeaurora.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Douglas Anderson <dianders@chromium.org>, Rajeshwari <rkambl@codeaurora.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Dikshita Agarwal <dikshita@codeaurora.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Balakrishna Godavarthi <bgodavar@codeaurora.org>,
 Stephan Gerhold <stephan@gerhold.net>, Kevin Hilman <khilman@baylibre.com>,
 Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>,
 Andy Gross <agross@kernel.org>, Sibi Sankar <sibis@codeaurora.org>,
 Alex Elder <elder@linaro.org>,
 Veerabhadrarao Badiganti <vbadigan@codeaurora.org>,
 Odelu Kukatla <okukatla@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, Sivaprakash Murugesan <sivaprak@codeaurora.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Loic Poulain <loic.poulain@linaro.org>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexandre Courbot <acourbot@chromium.org>,
 Christian Lamparter <chunkeey@gmail.com>,
 Harigovindan P <harigovi@codeaurora.org>,
 Amit Kucheria <amit.kucheria@linaro.org>, Olof Johansson <olof@lixom.net>,
 Sricharan R <sricharan@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.7

for you to fetch changes up to dfaf16014f55eebbb2a812c8ebdc6ce30681bb81:

  arm64: dts: qcom: sdm845-mtp: Relocate remoteproc firmware (2020-03-16 22:20:34 -0700)

----------------------------------------------------------------
Qualcomm ARM64 DT updates for v5.7

This brings initial support for the SM8250 and IPQ6018 platforms.

SDM845 gets audio, PCIe and IP-accelerator support, and the interconnect
providers are refactored. The Lenovo Yoga C630 has audio enabled and the
DB845c has PCIe, analog audio and low-speed interfaces enabled. The
SDM845 MTP has its display enabled and firmware location updated to
match linux-firmware.

SC7180 gains CPU topology and power properties. Interconnect providers,
eMMC, SD-card, multimedia clocks, display, Bluetooth, Venus are added.
Critical trip points are added as well as various fixes.

For MSM8916 FastRPC support is added, ETM power management and reserved
memory for Samsung A2015 are corrected.

MSM8996 switches to generic QMP phy driver for its UFS support. MSM8998
temporarily disables part of Coresight to boot without
clk_ignore_unused.  CEQ for eMMC on QCS404 is enabled.

Fixes throughout the platforms to fix binding compliance, correct
compatibles for SDHCI nodes and add gpio-ranges.

----------------------------------------------------------------
Alex Elder (1):
      arm64: dts: sdm845: add IPA information

Alexandre Courbot (1):
      arm64: dts: qcom: add Venus firmware node on Cheza

Amit Kucheria (3):
      arm64: dts: qcom: msm8916:: Add qcom,tsens-v0_1 to msm8916.dtsi compatible
      arm64: dts: qcom: msm8996:: Add qcom,tsens-v2 to msm8996.dtsi compatible
      arm64: dts: qcom: msm8998: Fix cpu compatible

Balakrishna Godavarthi (1):
      arm64: dts: qcom: sc7180: Add bluetooth node on SC7180 IDP board

Bjorn Andersson (8):
      arm64: dts: qcom: sdm845: Add first PCIe controller and PHY
      arm64: dts: qcom: sdm845: Add second PCIe PHY and controller
      arm64: dts: qcom: db845c: Enable PCIe controllers
      arm64: dts: qcom: sdm845-mtp: Add Truly display
      arm64: dts: qcom: msm8996: Define parent clocks for gcc
      arm64: dts: qcom: msm8996: Use generic QMP driver for UFS
      arm64: dts: qcom: msm8998-mtp: Disable funnel 4 and 5
      arm64: dts: qcom: sdm845-mtp: Relocate remoteproc firmware

Christian Lamparter (1):
      ARM64: dts: qcom: add gpio-ranges property

David Dai (1):
      arm64: dts: sdm845: Redefine interconnect provider DT nodes

Dikshita Agarwal (2):
      arm64: dts: sc7180: Add Venus video codec DT node
      arm64: dts: sc7180: Add Venus firmware subnode

Douglas Anderson (6):
      arm64: dts: sc7180: Add the sleep_clk to gcc-sc7180 node
      arm64: dts: qcom: qcs404: Fix sdhci compat string
      arm64: dts: qcom: sdm845: Add the missing clocks on the dispcc
      arm64: dts: qcom: sdm845: Add missing clocks / fix names on the gpucc
      arm64: dts: qcom: sdm845: Add the missing clock on the videocc
      arm64: dts: sc7180: Add unit name to soc node

Harigovindan P (1):
      arm64: dts: sc7180: add display dt nodes

Loic Poulain (1):
      arm64: dts: qcom: apq8016-sbc: Remove wrong regulator supply

Mathieu Poirier (1):
      arm64: dts: msm8916: Properly deal with ETMv4 power management

Matthias Kaehlcke (1):
      arm64: dts: sc7180: Move venus node to the correct position

Odelu Kukatla (1):
      arm64: dts: sc7180: Add interconnect provider DT nodes

Rajendra Nayak (3):
      arm64: dts: qcom: sc7180: Add dynamic CPU power coefficients
      arm64: dts: qcom: sc7180: Add CPU capacity values
      arm64: dts: qcom: sc7180: Add CPU topology

Rajeshwari (1):
      arm64: dts: qcom: sc7180: Added critical trip point Thermal-zones node

Sai Prakash Ranjan (1):
      arm64: dts: qcom: sc7180: Add iommus property to QUP0 and QUP1

Sandeep Maheswaram (1):
      arm64: dts: qcom: sc7180: Correct qmp phy reset entries

Sibi Sankar (2):
      arm64: dts: qcom: sdm845: Add OSM L3 interconnect provider
      arm64: dts: qcom: sc7180: Add OSM L3 interconnect provider

Sivaprakash Murugesan (1):
      arm64: dts: ipq6018: Add a few device nodes

Sricharan R (2):
      dt-bindings: qcom: Add ipq6018 bindings
      arm64: dts: Add ipq6018 SoC and CP01 board support

Srinivas Kandagatla (7):
      arm64: dts: qcom: db845c: add Low speed expansion i2c and spi nodes
      arm64: dts: msm8916: Add fastrpc node
      arm64: dts: qcom: sdm845: add slimbus nodes
      arm64: dts: qcom: sdm845: add apr nodes
      arm64: dts: qcom: c630: Enable audio support
      arm64: dts: qcom: sdm845: add pinctrl nodes for quat i2s
      arm64: dts: qcom: db845c: add analog audio support

Stanimir Varbanov (1):
      arm64: dts: sdm845: follow venus-sdm845v2 DT binding

Stephan Gerhold (1):
      arm64: dts: qcom: msm8916-samsung-a2015: Reserve Samsung firmware memory

Stephen Boyd (2):
      arm64: dts: qcom: sdm845: Disable pwrkey on Cheza
      arm64: dts: qcom: pm6150: Add label to pwrkey node

Taniya Das (1):
      arm64: dts: sc7180: Add clock controller nodes

Veerabhadrarao Badiganti (3):
      arm64: dts: qcom: sc7180: Add nodes for eMMC and SD card
      arm64: dts: qcom: qcs404: Enable CQE support for eMMC
      arm64: dts: qcom: sc7180: Update reg names for SDHC

Venkata Narendra Kumar Gutta (1):
      arm64: dts: qcom: sm8250: Add sm8250 dts file

 Documentation/devicetree/bindings/arm/qcom.yaml    |   8 +
 arch/arm64/boot/dts/qcom/Makefile                  |   2 +
 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi          |   1 -
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi       |   6 -
 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts       |  64 ++
 arch/arm64/boot/dts/qcom/ipq6018.dtsi              | 443 ++++++++++++++
 arch/arm64/boot/dts/qcom/ipq8074.dtsi              |   1 +
 .../dts/qcom/msm8916-samsung-a2015-common.dtsi     |   8 +
 arch/arm64/boot/dts/qcom/msm8916.dtsi              |  21 +-
 arch/arm64/boot/dts/qcom/msm8992.dtsi              |   1 +
 arch/arm64/boot/dts/qcom/msm8994.dtsi              |   1 +
 arch/arm64/boot/dts/qcom/msm8996.dtsi              |  33 +-
 arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi          |   8 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi              |  16 +-
 arch/arm64/boot/dts/qcom/pm6150.dtsi               |   2 +-
 arch/arm64/boot/dts/qcom/pm8998.dtsi               |   2 +-
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi           |   1 +
 arch/arm64/boot/dts/qcom/qcs404.dtsi               |   4 +-
 arch/arm64/boot/dts/qcom/sc7180-idp.dts            |  64 +-
 arch/arm64/boot/dts/qcom/sc7180.dtsi               | 605 ++++++++++++++++++-
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi         |  15 +
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts         | 283 +++++++++
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts            |  89 +++
 arch/arm64/boot/dts/qcom/sdm845.dtsi               | 672 ++++++++++++++++++++-
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 114 ++++
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts            |  29 +
 arch/arm64/boot/dts/qcom/sm8250.dtsi               | 444 ++++++++++++++
 27 files changed, 2868 insertions(+), 69 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
 create mode 100644 arch/arm64/boot/dts/qcom/ipq6018.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sm8250-mtp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sm8250.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
