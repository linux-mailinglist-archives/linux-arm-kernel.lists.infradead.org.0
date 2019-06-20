Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CADE4C66D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 07:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FEirm9TvqwTOOxI0RaZPBewECWe9AUDznaVBMVrfQLs=; b=TKq
	4/cKTBzTqEhSODDCPTPZbu9hHXJyM8thF/X5FmI0smi+kk1B52yw3pNgzRcJ/+U2ailPfDpNg9sT4
	3WR7ao9xfY58PfzhddRsqwmmCq+H7nLO2lWa/OiOfPv6K8fqDZ+BhhSCLyattELV3hROwVfnOy/st
	+9M0TOEygo0rAG3MukYSHd+TyqnHmKhKf00AgURBMFYlezpXJmR17b9k2lJLgMhlQ5yaSk0oitfo2
	jIzWk3/NFnX5yrGo6UmuD3lYhKZmS/huvkuRD+nyF8obtluS4/nldAV9tjGiLQOHgmgbolZ1N8SMY
	in50oOLsOWc5nqE1ItxqlIbJGiumsSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpD4-0005d9-Bj; Thu, 20 Jun 2019 05:02:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpCs-0005c4-Nb
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 05:01:56 +0000
Received: from hector.attlocal.net
 (107-207-74-175.lightspeed.austtx.sbcglobal.net [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 131A6208CB;
 Thu, 20 Jun 2019 05:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561006913;
 bh=phnydbrve6D9xWDJP0v1HDzHr04Ms8FK11DaWWwlAs4=;
 h=From:To:Cc:Subject:Date:From;
 b=obsCth2fJ+sYkH022X1dCT2N735J26yg3H/XHCPb+ieerpVgDdtmkjy0969DG9YJR
 SSCsVA9A4Mr31pUX4F0o8mflebca1itWNk+g3O5gsjxDqLxSZr2ULjVRpVWm1G/MR3
 e9+RKx0A8tVtmt61XxjIYbMkwdI5adwqgOIrqyqg=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 DT updates for 5.3
Date: Thu, 20 Jun 2019 00:01:48 -0500
Message-Id: <1561006911-28519-1-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_220154_803001_98DF5180 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.3

for you to fetch changes up to 2410fd450c09a126aefefc9106b4652285b5d60f:

  arm64: dts: qcom: qcs404-evb: fix vdd_apc supply (2019-06-19 23:50:52 -0500)

----------------------------------------------------------------
Qualcomm ARM64 Updates for v5.3

* Switch to use second gen PON on PM8998
* Add PSCI cupidle states for MSM8996, MSM8998,and SDM845
* Add MSM8996 UFS phy reset controller
* Add propre cpu capacity scaling on MSM8996
* Fixups for APR domain, legacy clocks, and PSCI entry latency on MSM8996
* Enable SMMUs on MSM8996
* Add Dragonboard 845C
* Add Q6V5, GPU, GMU, and AOSS QMP node on SDM845
* Fixup CPU topology on SDM845
* Change USB1 to be peripheral on SDM845 MTP
* Add PCIe Phy, RC nodes, ANOC1 SMMU, and RPMPD node on MSM8998
* Update coresight bindings for MSM8916
* Update idle state names and entry-method on MSM8916
* Add PCIe, RPMPD, LPASS, Q6, TCSR, TuringCC, PSCI cpuidle states,
  and CDSP on QCS404
* Add reset-cells property to QCS404 GCC node
* Fixup s3 max voltage, l3 min voltage, drive strength typo, and
  s3 supply definition on QCS404-evb
* Fixup ADC outputs and VADC calibration on PMS405

----------------------------------------------------------------
Amit Kucheria (8):
      arm64: dts: sdm845: Fix up CPU topology
      arm64: dts: qcom: pms405: calibrate the VADC correctly
      arm64: dts: qcom: pms405: Rename adc outputs as per schematics
      arm64: dts: qcom: msm8916: Add entry-method property for the idle-states node
      arm64: dts: qcom: msm8916: Use more generic idle state names
      arm64: dts: qcom: msm8996: Add PSCI cpuidle low power states
      arm64: dts: msm8996: Add proper capacity scaling for the cpus
      arm64: dts: qcom: msm8998: Add PSCI cpuidle low power states

Andy Gross (1):
      arm64: dts: qcom-qcs404: Add reset-cells to GCC node

Bjorn Andersson (14):
      arm64: dts: qcom: sdm845-mtp: Make USB1 peripheral
      arm64: dts: qcom: qcs404: Add turingcc node
      arm64: dts: qcom: qcs404-evb: Mark CDSP clocks protected
      arm64: dts: qcom: qcs404: Add TCSR node
      arm64: dts: qcom: qcs404: Fully describe the CDSP
      arm64: dts: qcom: qcs404: Move lpass and q6 into soc
      arm64: dts: qcom: qcs404: Add rpmpd node
      arm64: dts: qcom: Add AOSS QMP node
      arm64: dts: qcom: msm8996: Stop using legacy clock names
      arm64: dts: qcom: qcs404: Add PCIe related nodes
      arm64: dts: qcom: qcs404-evb: Enable PCIe
      arm64: dts: qcom: Add Dragonboard 845c
      arm64: dts: qcom: msm8996: Correct apr-domain property
      arm64: dts: qcom: msm8996: Enable SMMUs

Evan Green (1):
      arm64: dts: msm8996: Add UFS PHY reset controller

John Stultz (1):
      arm64: dts: qcom: pm8998: Use qcom,pm8998-pon binding for second gen pon

Jordan Crouse (2):
      arm64: dts: sdm845: Add gpu and gmu device nodes
      arm64: dts: sdm845: Add zap shader region for GPU

Jorge Ramirez-Ortiz (1):
      arm64: dts: qcom: qcs404-evb: fix vdd_apc supply

Leo Yan (1):
      arm64: dts: qcom-msm8916: Update coresight DT bindings

Marc Gonzalez (2):
      arm64: dts: qcom: msm8998: Add ANOC1 SMMU node
      arm64: dts: qcom: msm8998: Add PCIe PHY and RC nodes

Niklas Cassel (4):
      arm64: dts: qcom: qcs404-evb: fix l3 min voltage
      arm64: dts: qcom: qcs404-evb: increase s3 max voltage
      arm64: dts: qcom: qcs404: Add PSCI cpuidle low power states
      arm64: dts: msm8996: fix PSCI entry-latency-us

Raju P.L.S.S.S.N (1):
      arm64: dts: qcom: sdm845: Add PSCI cpuidle low power states

Sibi Sankar (2):
      arm64: dts: qcom: msm8998: Add rpmpd node
      arm64: dts: qcom: sdm845: Add Q6V5 MSS node

Vinod Koul (1):
      arm64: dts: qcom: qcs404-evb: Fix typo

 arch/arm64/boot/dts/qcom/Makefile          |   1 +
 arch/arm64/boot/dts/qcom/msm8916.dtsi      |  17 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi      |  59 +--
 arch/arm64/boot/dts/qcom/msm8998.dtsi      | 185 ++++++++++
 arch/arm64/boot/dts/qcom/pm8998.dtsi       |   2 +-
 arch/arm64/boot/dts/qcom/pms405.dtsi       |  20 +-
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi   |  43 ++-
 arch/arm64/boot/dts/qcom/qcs404.dtsi       | 364 ++++++++++++++-----
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 557 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts    |   4 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi       | 283 ++++++++++++++-
 11 files changed, 1393 insertions(+), 142 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sdm845-db845c.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
