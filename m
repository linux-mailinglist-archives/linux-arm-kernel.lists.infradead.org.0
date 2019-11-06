Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC10F1EDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:34:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U8u5c2/ZmBcCAF4BgFXc/9VJSR1q2G0ZzwTNeQcmGYo=; b=HEuGH6SCkNmrv2aee3cCjCKP3j
	At7IVvHG64h0C9rU3c2AsmjPBpuA1IPNZ3I8QBkHhhqfpvzp1lKkMG/Z06im/n/82YDaaZrBqFhaI
	Kc8tzttkDkGsqBJbfy+DFYzD9n2k3B/PBMQkScjhbKOBvrymoKorNbcP0KAbnod9DVuXsnjnwQwyG
	XgGHKJg+96vCdgySvRlfo9StcXfwr/71CJe3pXR2dwtoCuJHc4goeczBTCBHilotBT9d/AqEkuYSG
	6JhmbD9S3tST8btfpTX4ZszIMLfqK228JejwtOigFHwAe+OqvFtpuzskwebLRVMy3LDb+RRYn3+up
	uTi6DcaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR4b-0007xO-HX; Wed, 06 Nov 2019 19:34:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR47-0007nK-RL
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:34:05 +0000
Received: from localhost (mobile-107-92-63-247.mycingular.net [107.92.63.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 215D8217F9;
 Wed,  6 Nov 2019 19:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573068843;
 bh=LwXt+suxcrsMZh6bzLLFxAHg5EDkYE/+FgIc2hs+ltU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cqMTgK5rprV7jPECaZoOpsBScX8ueGlhqLRUik8C+TZm2Tvy868veXWnYqt8uIr2Z
 SXR+2H7QJgxuLLAOKmRROPk+5hAeuKM6Z3n7Uh6N2AGFOdDEqTg0FDng/Ws43SbAwK
 Qq43z7lbqW0eSt8aW291cd417cwq8tKT22yPjvgQ=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
Date: Wed,  6 Nov 2019 13:33:57 -0600
Message-Id: <1573068840-13098-2-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573068840-13098-1-git-send-email-agross@kernel.org>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113403_922444_4249E9EC 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Arnd, Olof, and Kevin,

I have one slight faux paux in this pull request.  A drivers: soc change got
into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
without messing up a lot of people who depend on the SHAs not changing.  So I'm
sorry for this inclusion.  I'll scrub this better next time.

Andy


The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.5

for you to fetch changes up to 915603b106164f966ebc027de96e54011885bdf4:

  arm64: dts: qcom: db845c: Enable LVS 1 and 2 (2019-11-03 20:49:00 -0800)

----------------------------------------------------------------
Qualcomm ARM64 Updates for v5.5

* Add thermal IRQ support on MSM8916, SDM845, MSM8996, and QCS404
* Fix thermal HW ids for cpus on MSM8916
* Add blsp1 UART3 and  blsp1 BAM on MSM8998
* Add volume buttons and WCNSS for Wifi and BT on MSM8916 LongCheer-l8150
* Fixup load on l21 for SD on apq8096-db820c
* Enable LVS1/2, APSS watchdog, and select UFS reset gpio for SDM845
* Disable coresight by default on MSM8998
* Enable bluetooth and remove retention idle state on MSM8998-clamshell
* Enable adsp, cdsp, and mpss on C630
* Enable bluetooth on MSM8998-mtp
* Delete zap shader on SDM845-cheza
* Add tactile buttons and hall sensor on MSM8916-Samsung-A2015
* Add Interconnect nodes, watchdog, and sleep clk on QCS404
* Override Iris compatible on MSM8916-Samsung-A5U
* Enable WCNSS Wifi and bluetooth on MSM8916-Samsung-A2015
* Fixup cooling states for the aoss warming devices

----------------------------------------------------------------
Amit Kucheria (5):
      arm64: dts: qcs404: thermal: Add interrupt support
      arm64: dts: msm8998: thermal: Add interrupt support
      arm64: dts: msm8996: thermal: Add interrupt support
      arm64: dts: sdm845: thermal: Add interrupt support
      arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors

Bjorn Andersson (3):
      arm64: dts: qcom: c630: Enable adsp, cdsp and mpss
      arm64: dts: qcom: sdm845: Add APSS watchdog node
      arm64: dts: qcom: db845c: Enable LVS 1 and 2

Georgi Djakov (1):
      arm64: dts: qcs404: Add interconnect provider DT nodes

Jeffrey Hugo (5):
      arm64: dts: qcom: msm8998: Add blsp1 BAM
      arm64: dts: qcom: msm8998: Add blsp1_uart3
      arm64: dts: qcom: msm8998-mtp: Enable bluetooth
      arm64: dts: qcom: msm8998-clamshell: Enable bluetooth
      arm64: dts: qcom: msm8998-clamshell: Remove retention idle state

Jorge Ramirez-Ortiz (2):
      arm64: dts: qcom: qcs404: add sleep clk fixed rate oscillator
      arm64: dts: qcom: qcs404: add the watchdog node

Loic Poulain (1):
      arm64: dts: apq8096-db820c: Increase load on l21 for SDCARD

Michael Srba (1):
      arm64: dts: msm8916-samsung-a2015: add tactile buttons and hall sensor

Nikita Travkin (2):
      arm64: dts: msm8916-longcheer-l8150: Enable WCNSS for WiFi and BT
      arm64: dts: msm8916-longcheer-l8150: Add Volume buttons

Rob Clark (1):
      arm64: dts: qcom: sdm845-cheza: delete zap-shader

Sai Prakash Ranjan (1):
      arm64: dts: qcom: msm8998: Disable coresight by default

Stephan Gerhold (2):
      arm64: dts: msm8916-samsung-a2015: Enable WCNSS for WiFi and BT
      arm64: dts: msm8916-samsung-a5u: Override iris compatible

Stephen Boyd (1):
      arm64: dts: qcom: sdm845: Use UFS reset gpio instead of pinctrl

Thara Gopinath (1):
      soc: qcom: Invert the cooling states for the aoss warming devices

 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi       |  2 +
 .../boot/dts/qcom/msm8916-longcheer-l8150.dts      | 55 ++++++++++++++
 .../dts/qcom/msm8916-samsung-a2015-common.dtsi     | 80 +++++++++++++++++++++
 .../boot/dts/qcom/msm8916-samsung-a5u-eur.dts      |  6 ++
 arch/arm64/boot/dts/qcom/msm8916.dtsi              |  4 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi              |  4 ++
 arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi    | 54 ++++++++++++++
 arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi          | 82 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/msm8998-pins.dtsi         | 13 ++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi              | 84 +++++++++++++++++-----
 arch/arm64/boot/dts/qcom/qcs404.dtsi               | 41 +++++++++++
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi         | 53 ++------------
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts         | 12 ++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi               | 12 +++-
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 14 ++++
 drivers/soc/qcom/qcom_aoss.c                       |  8 +--
 16 files changed, 449 insertions(+), 75 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
