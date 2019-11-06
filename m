Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E8CF1EE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jo6jmJywgY95MwpIp9DXnM3IpvHpA7gQ4n8d2GC/PqU=; b=oL5KoLdeJSGVAYLjKdAAxuyauc
	dIKr96vl8mEYaNyeVjiD5I3jMOzNT1VLh5DO3rH+xkIMmyO0+RnT0dMAVJ9NBXUTAx2/VE7wIvFrc
	n+F6u5iyL2LzMRCupj1TvNF3WcvjDgcP1YldjH6tVDJQnbMgT7tO6yvP6aDyibuX3aToMsYFROMDH
	+RTqlzhitH77FbHP944tLfERKvkW5RvyGFFlHQqITzi76gO/jyqZM54jlOUY2gMrKs9gwnrI3qpbM
	P5R+77vNm1QJC971bsA9w9egfG+t6+Rf2IOdRo5S2MkKdvSXZcdbPJUuTmaq7ULO32NSLkGC6G+xh
	I4VMk86w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR5V-0001ho-Qm; Wed, 06 Nov 2019 19:35:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR4C-0007qw-Ec
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:34:09 +0000
Received: from localhost (mobile-107-92-63-247.mycingular.net [107.92.63.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3AAC21882;
 Wed,  6 Nov 2019 19:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573068848;
 bh=L6z/fy593ih1VelBHJtxIfR7dAjL9slg0ehkYH3tD1Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CyHJu8JSpcvBojxhl7S1pPYSq7XApPY0aMIlMjiRWfAeL6N7oQFniB1ZDx8Ck4htO
 bejEK/pB0lftrzNWyumvqJ1qrsVGF7qqS3fmJVEMFpo48VsVlF3emos/T3czcrRzSx
 m2G3dtY4o5ke0gnDM6rqBFPJiXdEdicUd9C9av5I=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Device Tree updates for 5.5
Date: Wed,  6 Nov 2019 13:34:00 -0600
Message-Id: <1573068840-13098-5-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573068840-13098-1-git-send-email-agross@kernel.org>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113408_539487_863B4439 
X-CRM114-Status: GOOD (  11.67  )
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

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-dts-for-5.5

for you to fetch changes up to 140647f84dd8d895da2bf3e540dfd038f5076d46:

  ARM: dts: msm8974: thermal: Add thermal zones for each sensor (2019-10-27 01:06:59 -0500)

----------------------------------------------------------------
Qualcomm Device Tree Changes for v5.5

* Add thermal zones and IRQ support for MSM8974
* Add 5vs2 regulator node for PM8941
* Add reboot-mode node, fix sdhci and card detect on MSM8974-FP2
* Add IPQ4019 SDHCI node

----------------------------------------------------------------
Amit Kucheria (2):
      ARM: dts: msm8974: thermal: Add interrupt support
      ARM: dts: msm8974: thermal: Add thermal zones for each sensor

Brian Masney (1):
      ARM: dts: qcom: pm8941: add 5vs2 regulator node

Luca Weiss (3):
      ARM: dts: msm8974-FP2: Drop unused card-detect pin
      ARM: dts: msm8974-FP2: Increase load on l20 for sdhci
      ARM: dts: msm8974-FP2: add reboot-mode node

Robert Marko (1):
      ARM: dts: qcom: ipq4019: Add SDHCI controller node

 arch/arm/boot/dts/qcom-ipq4019.dtsi              |  12 +++
 arch/arm/boot/dts/qcom-msm8974-fairphone-fp2.dts |  22 +++--
 arch/arm/boot/dts/qcom-msm8974.dtsi              | 103 +++++++++++++++++++++++
 arch/arm/boot/dts/qcom-pm8941.dtsi               |  10 +++
 4 files changed, 138 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
