Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9A0A47D4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 07:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JyBH6DZUL+2QNUWfVAwPUmOUipQzLQXEvPZuebO88vc=; b=YoJ0jO0rbyvSz1ERQrskgR9a0E
	VpfEiOjfInmSiVbDQZmiVQ6a2GIkbS+PcEVxC8Y8dTpNg3d12lusBqtNuDs/+yiEFHO+5EoZPe2Vz
	VddepMbxIRa2w975scWMvLT4p+gnwsMIALEijWyjn2scw6Sd1CeS2URgj9wm370NC5AHiJotQabNL
	XP/Ake0FsmoUhw8WzSGgQ2Xsj6nEDNt88I5iJPeQpohbMeXVFS92g3fDcUaAGLDVjkdvClWk1ttOC
	KcRiepmsDY+8xcCWGulh3Zy3mv5/2yL//SkhATqWRVMUlo8XWWSXZScTGzUDav87eMObNBsReg+N9
	ISzzcXrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Ipo-00009a-P6; Sun, 01 Sep 2019 05:55:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Ip6-0008T1-FY
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 05:54:49 +0000
Received: from localhost (mobile-107-107-187-231.mycingular.net
 [107.107.187.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0EB222CF7;
 Sun,  1 Sep 2019 05:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567317288;
 bh=P9OZelalII8xL534w1i82O97rpizGTntoD9ovwihX8U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OdY9AK8vv8TTcBsCUnDoTCLJssULVK6Dp5wRqKdL0+p/ftNWUeGxd2ox+F+GHwXFA
 RU/OCJ71VVUx/VwtZHNKDZSO3Gu7utgSRJfjGuhjlqfiMrtjFfyzbpNFonDR5hwNBa
 o3zIZ3DaWAE9VPPFhsSzx5kAIWcMVZeuU1LclQPU=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 DT updates for 5.4
Date: Sun,  1 Sep 2019 00:54:43 -0500
Message-Id: <1567317285-8555-2-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567317285-8555-1-git-send-email-agross@kernel.org>
References: <1567317285-8555-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_225448_562130_059354CD 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.4

for you to fetch changes up to 1dd70853f8131f1674c4496b1d24de7251cad42c:

  arm64: dts: sdm845: Add parent clock for rpmhcc (2019-08-26 17:43:23 -0700)

----------------------------------------------------------------
Qualcomm ARM64 Updates for v5.4

* Add Lenovo Miix 630, HP Envy x2, and Asus Novago TP370QL support
* Assorted cleanups for SDM845 nodes
* Add video nodes, cpu coefficients, adsp, csdp, and
  fastrpc nodes for SDM845
* Add coresight for MSM8996, SDM845, and MSM8998
* Misc cleanups on QCS404 and PMS405
* Update memory map for QCS404
* Add wifi rails, update WCSS clocks, and add ADS unit names on QCS404
* Add Longcheer and Samsung Galaxy A3U/A5U support
* Add initial support for SM8150 and PM8150

----------------------------------------------------------------
Bjorn Andersson (3):
      arm64: dts: qcom: msm8996: Rename smmu nodes
      arm64: dts: qcom: qcs404-evb: Mark WCSS clocks protected
      arm64: dts: qcom: qcs404: Update memory map to v3

Geert Uytterhoeven (1):
      arm64: dts: qcom: sdm845-cheza: Spelling s/conenctors/connectors/

Govind Singh (1):
      arm64: dts: qcom: qcs404: Add wifi rails in QCS404 dt node for proxy votes

Jeffrey Hugo (4):
      arm64: dts: qcom: Add Lenovo Miix 630
      arm64: dts: qcom: Add HP Envy x2
      arm64: dts: qcom: Add Asus NovaGo TP370QL
      arm64: dts: qcom: msm8998: Node ordering, address cleanups

Malathi Gottam (1):
      arm64: dts: sdm845: Add video nodes

Matthias Kaehlcke (1):
      arm64: dts: sdm845: Add dynamic CPU power coefficients

Sai Prakash Ranjan (3):
      arm64: dts: sdm845: Add device node for Last level cache controller
      arm64: dts: qcom: sdm845: Add Coresight support
      arm64: dts: qcom: msm8998: Add Coresight support

Srinivas Kandagatla (1):
      arm64: sdm845: add adsp and cdsp fastrpc nodes

Stanimir Varbanov (1):
      arm64: dts: qcom: msm8996: Add Venus video codec DT node

Stephan Gerhold (4):
      dt-bindings: vendor-prefixes: Add Longcheer Technology Co., Ltd.
      dt-bindings: qcom: Document bindings for new MSM8916 devices
      arm64: dts: qcom: Add device tree for Samsung Galaxy A3U/A5U
      arm64: dts: qcom: Add device tree for Longcheer L8150

Thara Gopinath (1):
      arm64: dts: qcom: Extend AOSS QMP node

Vinod Koul (17):
      arm64: dts: qcom: sdm845: Add unit name to soc node
      arm64: dts: qcom: sdm845: remove unnecessary properties for dsi nodes
      arm64: dts: qcom: sdm845: remove unit name for thermal trip points
      arm64: dts: qcom: sdm845-cheza: remove macro from unit name
      arm64: dts: qcom: sdm845: remove macro from unit name
      arm64: dts: qcom: pms405: add unit name adc nodes
      arm64: dts: qcom: pms405: remove reduandant properties
      arm64: dts: qcom: qcs404: remove unit name for thermal trip points
      arm64: dts: qcom: sm8150: Add base dts file
      arm64: dts: qcom: pm8150: Add base dts file
      arm64: dts: qcom: pm8150b: Add base dts file
      arm64: dts: qcom: pm8150l: Add base dts file
      arm64: dts: qcom: sm8150-mtp: Add base dts file
      arm64: dts: qcom: sm8150-mtp: Add regulators
      arm64: dts: qcom: sm8150: Add reserved-memory regions
      arm64: dts: qcom: sm8150: Add apps shared nodes
      arm64: dts: sdm845: Add parent clock for rpmhcc

Vivek Gautam (1):
      arm64: dts: qcom: msm8996: Add Coresight support

 Documentation/devicetree/bindings/arm/qcom.yaml    |   8 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/qcom/Makefile                  |   7 +
 .../boot/dts/qcom/msm8916-longcheer-l8150.dts      | 228 +++++++
 .../dts/qcom/msm8916-samsung-a2015-common.dtsi     | 236 +++++++
 .../boot/dts/qcom/msm8916-samsung-a3u-eur.dts      |  10 +
 .../boot/dts/qcom/msm8916-samsung-a5u-eur.dts      |  10 +
 arch/arm64/boot/dts/qcom/msm8996.dtsi              | 544 +++++++++++++++-
 .../boot/dts/qcom/msm8998-asus-novago-tp370ql.dts  |  47 ++
 arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi    | 240 +++++++
 arch/arm64/boot/dts/qcom/msm8998-hp-envy-x2.dts    |  30 +
 .../boot/dts/qcom/msm8998-lenovo-miix-630.dts      |  30 +
 arch/arm64/boot/dts/qcom/msm8998.dtsi              | 689 +++++++++++++++++----
 arch/arm64/boot/dts/qcom/pm8150.dtsi               |  97 +++
 arch/arm64/boot/dts/qcom/pm8150b.dtsi              |  86 +++
 arch/arm64/boot/dts/qcom/pm8150l.dtsi              |  80 +++
 arch/arm64/boot/dts/qcom/pm8998.dtsi               |   2 +-
 arch/arm64/boot/dts/qcom/pms405.dtsi               |  16 +-
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi           |   7 +-
 arch/arm64/boot/dts/qcom/qcs404.dtsi               |  60 +-
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi         |  12 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi               | 646 +++++++++++++++++--
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts            | 375 +++++++++++
 arch/arm64/boot/dts/qcom/sm8150.dtsi               | 482 ++++++++++++++
 24 files changed, 3735 insertions(+), 209 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
 create mode 100644 arch/arm64/boot/dts/qcom/msm8916-samsung-a2015-common.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/msm8916-samsung-a3u-eur.dts
 create mode 100644 arch/arm64/boot/dts/qcom/msm8916-samsung-a5u-eur.dts
 create mode 100644 arch/arm64/boot/dts/qcom/msm8998-asus-novago-tp370ql.dts
 create mode 100644 arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/msm8998-hp-envy-x2.dts
 create mode 100644 arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
 create mode 100644 arch/arm64/boot/dts/qcom/pm8150.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pm8150b.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pm8150l.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sm8150-mtp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sm8150.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
