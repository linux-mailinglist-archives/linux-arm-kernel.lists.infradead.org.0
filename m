Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2495937A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2w49t3houRmWnmGT4Pqy6ztEOvNk3azIY3uXMJyQ47k=; b=FFU
	P34y31UJwo4jqjd85xgk/pVb4PfIgrFC6ScuEF0KzxRwExMBc/yQcpodRyHh4D+C7QT89zaEnWlNJ
	UCWVXkPLbizRRYL2DXxdtc0LOyXDQ0f72BRykas4HgjuIOvVmUK0tXOEPxsdNMncYDdDhrKNXQOAF
	77kyfEocMjqFe8cT+vkQTZa6c6Ea9qOstq4EuRHgmjlYEIn5ZTJUtmVnT1/kmbrsmy9slfmMcS3qw
	Cn9qtA882XIYO5VwCTZ+Uj02XB4Ui96XUXbDWEHfB+0f4eyJiKG2QY2UgobZ0RgGAvSVHZy/XNtfq
	Hy2WHEKwX1B3XcGmNUldnmkpB4P9+nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjYr-0007g1-Sn; Fri, 28 Jun 2019 05:36:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjYd-0007fI-W7
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:36:25 +0000
Received: from localhost (107-207-74-175.lightspeed.austtx.sbcglobal.net
 [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 045E12070D;
 Fri, 28 Jun 2019 05:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561700183;
 bh=FrgZyULDsdlp/dbM+Ueip3XNqaluGnZEuhCYWvlBMp8=;
 h=From:To:Cc:Subject:Date:From;
 b=Lpg214YQDWPBW/Ca/p5ziGD+MlClogtEDLfmec6VwTsdhAVpTFbpdXfasgn+uG2Sl
 162rV67Ubed1Ud85W63hVISdTleO9NJrZYab2mQQx8GLAl7e1akyJxO5fucfdzRJYN
 aIjhqR1mYD+LunYOd0sW8SrDp5tVcURMynzFSOQE=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 DT updates for 5.3 Part 2
Date: Fri, 28 Jun 2019 00:36:21 -0500
Message-Id: <1561700182-18108-1-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_223624_050944_FA1B6A39 
X-CRM114-Status: GOOD (  10.81  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit 2410fd450c09a126aefefc9106b4652285b5d60f:

  arm64: dts: qcom: qcs404-evb: fix vdd_apc supply (2019-06-19 23:50:52 -0500)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.3-2

for you to fetch changes up to 8291e15108cde33c3e086a34af5381c95cc7aa87:

  arm64: dts: qcom: qcs404: Add missing space for cooling-cells property (2019-06-28 00:20:37 -0500)

----------------------------------------------------------------
Qualcomm ARM64 Updates for v5.3 Part 2

* Add SDM845 Cheza support
* Add TSENS controller and thermal zones for QCS404

----------------------------------------------------------------
Amit Kucheria (2):
      arm64: dts: qcom: qcs404: Add tsens controller
      arm64: dts: qcom: qcs404: Add thermal zones for each sensor

Niklas Cassel (1):
      arm64: dts: qcom: qcs404: Add missing space for cooling-cells property

Rob Clark (1):
      arm64: dts: qcom: sdm845-cheza: add initial cheza dt

 arch/arm64/boot/dts/qcom/Makefile            |    3 +
 arch/arm64/boot/dts/qcom/qcs404.dtsi         |  272 ++++++
 arch/arm64/boot/dts/qcom/sdm845-cheza-r1.dts |  238 +++++
 arch/arm64/boot/dts/qcom/sdm845-cheza-r2.dts |  238 +++++
 arch/arm64/boot/dts/qcom/sdm845-cheza-r3.dts |  174 ++++
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi   | 1326 ++++++++++++++++++++++++++
 6 files changed, 2251 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sdm845-cheza-r1.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sdm845-cheza-r2.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sdm845-cheza-r3.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
