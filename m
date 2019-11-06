Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE073F1EE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ieAZognD05QbO6Lhi1rkFpneVTvMABzt02qJBZS2gSg=; b=k3VFqVIsQtH316exJsgQRHvwNs
	3NpoieNbHEMXaUcDhF6UE314gQJzn5Os4wN1VjUnb86fyX4c/A2lsy8G278oNFSOMPITX1tbqOG6i
	/lkSCqjlSXSPCjz87MXyjpAoBJt+KplJd/wejqMd4oFRmndOpoIAh2US49M785AhOdXKZHLEN6J/8
	rT0OoEdaVDi9NQpjJ943zaDBu2HEemRVxb9aakaiXGZH8fER3nfd1os6yFmGAm17BAAZsLnX8pyjU
	Vk/yinwICkZI8ZRR4msDTaCa5AfgRbcFZWIzWvEQFeboeRPfpV1ok52EibiBD1S1zDFlbfXwASgim
	qSipdW2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR56-0008TS-OW; Wed, 06 Nov 2019 19:35:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR4B-0007pM-4L
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:34:08 +0000
Received: from localhost (mobile-107-92-63-247.mycingular.net [107.92.63.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A1E9217F9;
 Wed,  6 Nov 2019 19:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573068846;
 bh=niydE8E8tlgbxMzgPkVPuiVBj9Wdqn5HKmXxLh73XmQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tiFWWrH840xpypCQo+Y9E+A6OJCOeqSrWLI0IQtYZ5NsIRjUpEl2QIc3UOxCvRBQl
 kpDW78Wbditu1ot/rtfAUlUdyGjsbAFY5LuQIIlJggiBu8fRlPbKrOUBqFCBB7JlFV
 dSZ6WhPuKFnN4xYHLUwk6OTpJdozBwDIV2XltqnI=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Driver updates for 5.5
Date: Wed,  6 Nov 2019 13:33:59 -0600
Message-Id: <1573068840-13098-4-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573068840-13098-1-git-send-email-agross@kernel.org>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113407_227581_3EBB1495 
X-CRM114-Status: GOOD (  13.48  )
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-drivers-for-5.5

for you to fetch changes up to 971112e072938517fe80ab2adcbfffc568a8838e:

  MAINTAINERS: Add myself as co-maintainer for QCOM (2019-11-04 22:35:46 -0600)

----------------------------------------------------------------
Qualcomm ARM Based Driver Updates for v5.5

* Add Bjorn as QCOM co-maintainer
* Add LLLC yaml bindings and SC7180 support
* Fixups/Cleanup for LLLC
* Add SMD-RPM MSM8976 compatible and interconnect device
* Add missing RPMD SMD perf level

----------------------------------------------------------------
Angelo G. Del Regno (2):
      soc: qcom: smd-rpm: Add MSM8976 compatible
      dt-bindings: power: Add missing rpmpd smd performance level

AngeloGioacchino Del Regno (1):
      soc: qcom: rpmpd: Add rpm power domains for msm8976

Bjorn Andersson (1):
      MAINTAINERS: Add myself as co-maintainer for QCOM

Georgi Djakov (1):
      soc: qcom: smd-rpm: Create RPM interconnect proxy child device

Sai Prakash Ranjan (2):
      dt-bindings: msm: Convert LLCC bindings to YAML
      dt-bindings: msm: Add LLCC for SC7180

Srinivas Kandagatla (1):
      soc: qcom: socinfo: add sdm845 and sda845 soc ids

Stephen Boyd (2):
      soc: qcom: llcc: Name regmaps to avoid collisions
      soc: qcom: llcc: Move regmap config to local variable

Vivek Gautam (4):
      soc: qcom: llcc cleanup to get rid of sdm845 specific driver file
      soc: qcom: Rename llcc-slice to llcc-qcom
      soc: qcom: Make llcc-qcom a generic driver
      soc: qcom: llcc: Add configuration data for SC7180

YueHaibing (1):
      soc: qcom: Fix llcc-qcom definitions to include

 .../devicetree/bindings/arm/msm/qcom,llcc.txt      |  41 -------
 .../devicetree/bindings/arm/msm/qcom,llcc.yaml     |  55 +++++++++
 .../devicetree/bindings/power/qcom,rpmpd.txt       |   1 +
 .../devicetree/bindings/soc/qcom/qcom,smd-rpm.txt  |   1 +
 MAINTAINERS                                        |   1 +
 drivers/soc/qcom/Kconfig                           |  14 +--
 drivers/soc/qcom/Makefile                          |   3 +-
 drivers/soc/qcom/{llcc-slice.c => llcc-qcom.c}     | 130 ++++++++++++++++++---
 drivers/soc/qcom/llcc-sdm845.c                     | 100 ----------------
 drivers/soc/qcom/rpmpd.c                           |  23 ++++
 drivers/soc/qcom/smd-rpm.c                         |  18 ++-
 drivers/soc/qcom/socinfo.c                         |   2 +
 include/dt-bindings/power/qcom-rpmpd.h             |   9 ++
 include/linux/soc/qcom/llcc-qcom.h                 |  94 ++++-----------
 14 files changed, 250 insertions(+), 242 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/msm/qcom,llcc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
 rename drivers/soc/qcom/{llcc-slice.c => llcc-qcom.c} (68%)
 delete mode 100644 drivers/soc/qcom/llcc-sdm845.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
