Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7871618951E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 06:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WHEPiCp+FfW3UooG2zor/lkGXm7oVEVyL1pnwp1GukY=; b=Eoc
	rLtOoQq4DWxiLNreTsZy4GyT9HzqSWwuJDX0AqueRh1vQtMgLoY3sea/cZ2jfMfK4Q7jPs7N5Xh76
	L8Jc5bITPs3wrgRj67Gnv032f8K2S1OOPl0PvBez3B5Y/7EXhAkHD78zTXdDjGQd399Vr553drwCl
	2YWFYySz7NJ1rcdgVEtz0Qk4dGNsNYaHHaN1fXatdSFXUDy3TpnhuRlfVJoBDdBvwklBDiHyEEoj9
	69xHJlNUjsWyTr/6V1diFP0nFucvKmHqW6qushNwRQltsQHPbUQ8A5ZZePIPwOYL5ZYRIHYZc3seH
	m6ULT40/IjFoiDwAm9xXmGakQ/ewf3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jER7M-0006To-JX; Wed, 18 Mar 2020 05:19:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jER77-0006T5-VN
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 05:19:36 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7365320663;
 Wed, 18 Mar 2020 05:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584508772;
 bh=Y+UZSd1ngMpQbnqqUNdXqp1h5efy1kIhmx7x+N4HUKE=;
 h=From:List-Id:To:Cc:Subject:Date:From;
 b=WfTkv3jVehqJNRR5BsYlas4cpkKtml+O3/suHweUcoTWzZ/NOyvZxkQmUmfvL/jM6
 Ng/MLG7amab1k8vonH3KAie5SJmLCE5JOuBU3mQ3e1csD6+sucEtxZ0NdB/wGiuN/o
 5ar/TCVOExkb5KGKAhy4hBrVR4JbYHI4CNqp737g=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 1/6] i.MX drivers update for 5.7
Date: Wed, 18 Mar 2020 13:19:13 +0800
Message-Id: <20200318051918.32579-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_221934_034337_F2D63AAC 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-drivers-5.7

for you to fetch changes up to 2a52651292ad9e642d205ce2ece2686d3b3395a7:

  soc: imx: drop COMPILE_TEST for IMX_SCU_SOC (2020-03-16 11:44:40 +0800)

----------------------------------------------------------------
i.MX drivers update for 5.7:

 - Update SCU power domain driver to include PD ranges for audio, CM40
   I2C and INTMUX, also  enlarge PD range for mu_b.
 - Remove IMX_SC_RPC_SVC_ABORT from SCU API, as it was added by mistake.
 - Increase build test coverage for i.MX8M SoC and IMX_SCU driver.
 - Improve i.MX GPC power up sequencing to ensure that the reset is
   properly propagated through the peripheral devices in the power
   domain.

----------------------------------------------------------------
Anson Huang (1):
      firmware: imx: add COMPILE_TEST for IMX_SCU driver

Daniel Baluta (1):
      firmware: imx: scu-pd: Add missing audio PD ranges

Joakim Zhang (1):
      firmware: imx: scu-pd: add power domain for I2C and INTMUX in CM40 SS

Leonard Crestez (2):
      soc: imx: gpcv2: include linux/sizes.h
      firmware: imx: Remove IMX_SC_RPC_SVC_ABORT

Lucas Stach (1):
      soc: imx: gpc: fix power up sequencing

Peng Fan (2):
      soc: imx: increase build coverage for imx8m soc driver
      soc: imx: drop COMPILE_TEST for IMX_SCU_SOC

Sebastien Fagard (1):
      firmware: imx: scu-pd: enlarge PD range for mu_b

 drivers/firmware/imx/Kconfig                |  2 +-
 drivers/firmware/imx/scu-pd.c               | 13 ++++++++++++-
 drivers/soc/Makefile                        |  2 +-
 drivers/soc/imx/Kconfig                     | 11 ++++++++++-
 drivers/soc/imx/Makefile                    |  2 +-
 drivers/soc/imx/gpc.c                       | 24 +++++++++++++-----------
 drivers/soc/imx/gpcv2.c                     |  1 +
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} |  0
 include/linux/firmware/imx/ipc.h            |  1 -
 9 files changed, 39 insertions(+), 17 deletions(-)
 rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
