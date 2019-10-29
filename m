Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F55DE8643
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:04:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTYz+LfYqvMXXWk79bpEwG4K1gHo7UzWFL6r6TwZ2mM=; b=rFshaeC+vaowdb
	kWKFL6Z3h+U/tmuCJwnxXUKZbExwME4iE47cdNTLQY+WkmzrlkKM9adG8wZ5itRFpVpogIAzPH/pS
	L/RS8t20pLJ3R7MQH+hnYw8WNg8b6KPCkNK2QmtjhzMG8l+gGK/uzW1YLSAODAuT45gNqAA4vmhKQ
	KNjdtGxhju52Gszm5tKw3Fe4WCkM87UO2OrBmxNYkzSOw3HuZXmlu0qNkjwEQau3ReYcIx+kJh/E2
	WhoFMIbWKsongF9LgHaHI+3g7r2d4lpDTQBowUMQgvIl+TwKKd/lPFq3dC1qlGuBYdpXNBhgfQnbV
	WLDePujQzm+nXCbNQcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPI6-0004Su-S1; Tue, 29 Oct 2019 11:03:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPHw-0004SB-BQ
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:03:49 +0000
Received: from dragon (li1038-5.members.linode.com [45.33.96.5])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64D9020717;
 Tue, 29 Oct 2019 11:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572347027;
 bh=jlpMwY7JwkbPKZo92rX4nNESII7MyewFS2/7ckP+BBI=;
 h=Date:From:To:Cc:Subject:From;
 b=q1vOfqGbUb5sLUOAUY5M5ATUp+opoaY7w9ZbuGXBG9b7cyBJTkkbR+Ni1bUWpmc6Q
 SGEY6xz+zLaJcrXf2X1Pj9DJI+c3Yo6CoPM2KfvU+yMq9ktDOd+ZKPAh1EgtDB/PH8
 LeiROmejPquBwAyLFTduxEYXKyaEFb27cOpkNTjI=
Date: Tue, 29 Oct 2019 19:03:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.4, 2nd round
Message-ID: <20191029110334.GA20928@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_040348_414159_A4984DB3 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 95993238b29b3f0f9a5eb9db84e0e38e5bfe76d8:

  ARM: imx_v6_v7_defconfig: Enable CONFIG_DRM_MSM (2019-10-14 21:27:47 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.4-2

for you to fetch changes up to 958c6014c64ef51e5f647d2de527c53e773c8a84:

  arm64: dts: imx8mn: fix compatible string for sdma (2019-10-28 20:17:59 +0800)

----------------------------------------------------------------
i.MX fixes for 5.4, 2nd round:
 - Get SNVS power key back to work for imx6-logicpd board. It was
   accidentally disabled by commit 770856f0da5d ("ARM: dts: imx6qdl:
   Enable SNVS power key according to board design").
 - Fix sparse warnings in IMX GPC driver by making the initializers
   in imx_gpc_domains C99 format.
 - Fix an interrupt storm coming from accelerometer on imx6qdl-sabreauto
   board. This is seen with upstream version U-Boot where pinctrl is not
   configured for the device.
 - Fix sdma device compatible string for i.MX8MM and i.MX8MN SoC.
 - Fix compatible of PCA9547 i2c-mux on LS1028A QDS board to get the
   device probed correctly.

----------------------------------------------------------------
Adam Ford (1):
      ARM: dts: imx6-logicpd: Re-enable SNVS power key

Ben Dooks (1):
      soc: imx: gpc: fix initialiser format

Fabio Estevam (1):
      ARM: dts: imx6qdl-sabreauto: Fix storm of accelerometer interrupts

Shengjiu Wang (2):
      arm64: dts: imx8mm: fix compatible string for sdma
      arm64: dts: imx8mn: fix compatible string for sdma

Yuantian Tang (1):
      arm64: dts: ls1028a: fix a compatible issue

 arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi     | 4 ++++
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi          | 8 ++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi         | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi         | 6 +++---
 drivers/soc/imx/gpc.c                             | 8 ++++----
 6 files changed, 23 insertions(+), 11 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
