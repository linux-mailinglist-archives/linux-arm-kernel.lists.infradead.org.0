Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BC3DAFB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PmZTJVOXa01bqQa8jOGkrhEm9iHB5T2SP47dVD47+IE=; b=bap9LaEKCGF+hK
	Do1tK9sDyy7vTNU94gmWuOfpAQLCPKG2o77oxYlFqHpN9ZM8SlhUczxfoeTeMwheHw62ITDs0560G
	n3c6wrogQY8anGXU6q+kPYEAODAaXBgAHuWfbY83mxq6urXzWYl4ejadoxRtkITP/e2L4EX2MgM6p
	dGrJRpKIOBjD96EHTrMMdIbaRt98JiuFaj08+09204SpXa+gGELTZUexfimrNe4oflfw+uqsV2LmQ
	pKA7MLo7g/Gt7tSGcCNKpDYf1K5hdaT86guiz8M0wXPhmGUVwxFIiSzmMz7yDb4CJHA7s1RNRzz65
	0vViP4vFnuXinZGMIwOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6ca-0000wx-GU; Thu, 17 Oct 2019 14:19:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6cO-0000rz-0e
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:19:09 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BAAA2089C;
 Thu, 17 Oct 2019 14:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571321946;
 bh=haIta56mXL6EUqLqr7XmvNCs19Oo0mASjFD/E/c/+EQ=;
 h=Date:From:To:Cc:Subject:From;
 b=NgWjSxyehn9xMByyx9DBGJQinP+c3GyAWEAS3LoX7XmMePgHMLoxigeyfMqk8weeB
 yd+C2Jfoizl5oGDw7f+kxAWySMETd23112/RCPevwn7lbUq2Qz2ebi9fEPAJ2ELUEE
 DBnFYQqQhuNSMDMHV67G8fQauJD/GEiCAYdc3fNs=
Date: Thu, 17 Oct 2019 22:18:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.4
Message-ID: <20191017141851.GA22506@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_071908_088087_B3FE3CBF 
X-CRM114-Status: GOOD (  12.50  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.4

for you to fetch changes up to 95993238b29b3f0f9a5eb9db84e0e38e5bfe76d8:

  ARM: imx_v6_v7_defconfig: Enable CONFIG_DRM_MSM (2019-10-14 21:27:47 +0800)

----------------------------------------------------------------
i.MX fixes for 5.4:
 - Re-enable SNVS power key for imx6q-logicpd board which was accidentally
   disabled by a SoC level change.
 - Fix I2C switches on vf610-zii-scu4-aib board by specifying property
   i2c-mux-idle-disconnect.
 - A fix on imx-scu API that reads UID from firmware to avoid kernel NULL
   pointer dump.
 - A series from Anson to correct i.MX7 GPT and i.MX8 USDHC IPG clock.
 - A fix on DRM_MSM Kconfig regression on i.MX5 by adding the option
   explicitly into imx_v6_v7_defconfig.
 - Fix ARM regulator states issue for zii-ultra board, which is impacting
   stability of the board.
 - A correction on CPU core idle state name for LayerScape LX2160A SoC.

----------------------------------------------------------------
Adam Ford (1):
      ARM: dts: imx6q-logicpd: Re-Enable SNVS power key

Andrey Smirnov (1):
      ARM: dts: vf610-zii-scu4-aib: Specify 'i2c-mux-idle-disconnect'

Anson Huang (5):
      soc: imx: imx-scu: Getting UID from SCU should have response
      ARM: dts: imx7s: Correct GPT's ipg clock source
      arm64: dts: imx8mq: Use correct clock for usdhc's ipg clk
      arm64: dts: imx8mm: Use correct clock for usdhc's ipg clk
      arm64: dts: imx8mn: Use correct clock for usdhc's ipg clk

Fabio Estevam (1):
      ARM: imx_v6_v7_defconfig: Enable CONFIG_DRM_MSM

Lucas Stach (1):
      arm64: dts: zii-ultra: fix ARM regulator states

Ran Wang (1):
      arm64: dts: lx2160a: Correct CPU core idle state name

 arch/arm/boot/dts/imx6-logicpd-som.dtsi            |  4 +++
 arch/arm/boot/dts/imx7s.dtsi                       |  8 ++---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts           |  2 ++
 arch/arm/configs/imx_v6_v7_defconfig               |  1 +
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     | 36 +++++++++++-----------
 arch/arm64/boot/dts/freescale/imx8mm.dtsi          |  6 ++--
 arch/arm64/boot/dts/freescale/imx8mn.dtsi          |  6 ++--
 .../arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi |  4 +--
 arch/arm64/boot/dts/freescale/imx8mq.dtsi          |  4 +--
 drivers/soc/imx/soc-imx-scu.c                      |  2 +-
 10 files changed, 40 insertions(+), 33 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
