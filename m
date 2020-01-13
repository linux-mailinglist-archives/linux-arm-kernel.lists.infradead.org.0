Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2251389DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 04:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tyCx6eIaSsYvfVMaDZB3ZBF7rMRdXRWlKib/6LiXhws=; b=L8zbTGstxNBFhXlOicVdppRMGd
	OJBbJ31/mstQ7ZveVEsUcQNL5VJ1ARgv9Qr0fuujK5ae+840mpbxTKuXEG3FEa3pCkjYvXNVCnWXE
	FKEmxeTyVPWGG0oBTCVms45Zfvk67BnCzoGLQVyGX24GSF7mQwi5zvsdb1zcqFruYZhkzQ4NqEErz
	Zxhh/AOw8/7djr/mk6KDqz14MBMkdaH46SHd6zC/02+rhcbc1Cn5djsrLFDkJQnIPrKbkQnjpZX+V
	oRn6+CrmBW8Npm+OEXBniFWJkDLQGh87PFAjPG8u0ZJ2N8SYuQ9dcLZHWf44VoQ2L5CAzk16cVSZu
	OefrUIzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqqc9-0003pd-HW; Mon, 13 Jan 2020 03:42:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqqav-0002pw-5L
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 03:40:50 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44D9D206D7;
 Mon, 13 Jan 2020 03:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578886848;
 bh=PDbIC2IL2d91yNjtNjBUfm7XRK75aIxlT6Li5endU7E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iFJfQGzh8XRsHWWRsew2nNdJxvmY0Sm3BEN2ae9atGhOL7bMUCrzyjkQqZaunFZiw
 Ok3aNiiIzWV+L9AC2scVesJo075mhn5yrdNvapjdH0g8iZmKdjVie8kly8hgzr/9vn
 7ccb+F4vI5qj8NaIkXOxQtN0fRgACPflqW2FzqVc=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 6/6] i.MX defconfig update for 5.6
Date: Mon, 13 Jan 2020 11:40:06 +0800
Message-Id: <20200113034006.17430-6-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113034006.17430-1-shawnguo@kernel.org>
References: <20200113034006.17430-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_194049_247471_CBBE06F8 
X-CRM114-Status: UNSURE (   9.30  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.6

for you to fetch changes up to 9bfb1294571e831577cc0ec865cc34737c6cc5d9:

  arm64: defconfig: Enable CONFIG_CLK_IMX8MP by default (2020-01-12 14:08:39 +0800)

----------------------------------------------------------------
i.MX defconfig update for 5.6:

 - Enable i.MX8MP clock driver in arm64 defconfig.
 - Enable Crypto CAAM driver support as module in arm64 defconfig.
 - Enable ILI210X touch driver, USB CDC ACM function, NFS_V4 support and
   TFP410 DVI bridge driver support in arm32 imx_v6_v7_defconfig.

----------------------------------------------------------------
Adam Ford (2):
      ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_ILI210X
      arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM

Anson Huang (1):
      arm64: defconfig: Enable CONFIG_CLK_IMX8MP by default

Fabio Estevam (1):
      ARM: imx_v6_v7_defconfig: Select the TFP410 driver

Peter Chen (1):
      ARM: configs: imx_v6_v7_defconfig: enable USB ACM

Sascha Hauer (1):
      ARM: imx_v6_v7_defconfig: Enable NFS_V4_1 and NFS_V4_2 support

 arch/arm/configs/imx_v6_v7_defconfig | 5 +++++
 arch/arm64/configs/defconfig         | 2 ++
 2 files changed, 7 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
