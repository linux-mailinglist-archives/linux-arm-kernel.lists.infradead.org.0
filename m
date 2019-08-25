Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736EC9C4B7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 17:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPP/0br3ongswuaKQValK44S386leu90Z3xE8HMAbhk=; b=ush+5axNo2q+Gn
	PrJhF0xg+/M+orcTEMThRBzFgqW/vMBjZLixvcmgNf7ddQHI6RHTPAQ34Ntb/IgsF8sGa62O3iqA2
	KS14fPF0k6i+7X8ZYTGc3t9Ms93l6MuaH6tNgEdVUqXrAws5ax4adDxuYNApxUuS/9owJp14QbMki
	A3Q3UkyS4hyTak9XwV6NJYurVxI8CYudL999yS+71geMEcIiXiAMwe9SUSxhfiUm+D/Vu1bB8QPRY
	Au+VpWxejQpwzxjLrG0I2Y0CGXOwFKJsTGuoHkJCQWyZAzfanTiLhzJZ1GBWDwUW8MnuC6LgYBqDY
	iYhh+Vd/MpVSGzusaDBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1uY2-0001PQ-PC; Sun, 25 Aug 2019 15:35:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uWN-0000JE-Vv
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 15:33:37 +0000
Received: from X250.getinternet.no (cm-84.211.118.175.getinternet.no
 [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78C2D21848;
 Sun, 25 Aug 2019 15:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566747215;
 bh=7wvmh/g/huwwERJZwrIreryiWxyd6ycDX/9sLoI0Ovo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ArCaVt+lHOv3Md4L9fh3U/UX/QcFjsW7xY3mOA3YgbhuVrGVknb6Qq3Aeqq3TOwPp
 /wAovECQNSUcvuNdUrk0x+FWnXnwL599TfpR12fIBG0W0nojfXPsQYFQYOK3ig1FmE
 pJu1kR4FFWMGADDSVeYcEKrN8gzpnIwcn1C1RL3E=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 7/7] i.MX defconfig update for 5.4
Date: Sun, 25 Aug 2019 17:32:37 +0200
Message-Id: <20190825153237.28829-7-shawnguo@kernel.org>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190825153237.28829-1-shawnguo@kernel.org>
References: <20190825153237.28829-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_083336_208717_C4EED03B 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.4

for you to fetch changes up to cd1b1264632a3fe739016843005e49e42c60be55:

  arm64: defconfig: CONFIG_DRM_ETNAVIV=m (2019-08-03 17:15:37 +0200)

----------------------------------------------------------------
i.MX defconfig update for 5.4:
 - Enable pinctrl and clock driver support for i.MX8MN SoC.
 - Enable SDMA support for i.MX8MQ and i.MX8MM SoC, including
   FW_LOADER_USER_HELPER and FW_LOADER_USER_HELPER_FALLBACK to support
   SDMA firmware loading via udev.
 - Enable module build of i.MX8 DDR PMU driver and ETNAVIV GPU driver.
 - Enable module build of OV5645 camera driver in imx_v6_v7_defconfig.

----------------------------------------------------------------
Anson Huang (2):
      arm64: defconfig: Select CONFIG_PINCTRL_IMX8MN by default
      arm64: defconfig: Select CONFIG_CLK_IMX8MN by default

Christian Gmeiner (1):
      arm64: defconfig: CONFIG_DRM_ETNAVIV=m

Fabio Estevam (1):
      ARM: imx_v6_v7_defconfig: Select the OV5645 camera driver

Leonard Crestez (1):
      arm64: defconfig: Build imx8 ddr pmu as module

Robin Gong (1):
      arm64: defconfig: Enable SDMA on i.mx8mq/8mm

 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 arch/arm64/configs/defconfig         | 7 +++++++
 2 files changed, 8 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
