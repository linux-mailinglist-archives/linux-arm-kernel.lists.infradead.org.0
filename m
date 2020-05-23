Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F370E1DF45E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 05:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K4nRUb3i/zl+RuKdpcg8W09JVwVN4+4J6ZjiqW5IipQ=; b=pwQ4O/sz8lwolKjxY6XttOVGr/
	eCZZupMe0cHpKa7d8JDdQQGkR/g/x9saqMxcwFjCHhPI7JPWQ8IM2dfiIAHNHrc+36hezuJ2BvfC8
	kq9fncu768URwCOuA1mdxaYnXBHlZqZ2BQm8j1c6AcKgedVyHOFxYhFJLHTW5r/2ZYThFEXE1PTEO
	IinXkAPnqUh0ihnuSEoBafz60GLVu3GG0jl4pRLd9WOCEHBTCf+56WTp8C9tmUNmo3v40NX7qkeeS
	SPPic+FrQ3V7bH29BECf3ucq/PCI7TRrbyH3NvcCysojCp/+0WMl5QCLnJS9N4PNtfH1GENXMM193
	OihI/+6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcKnP-0000sX-I6; Sat, 23 May 2020 03:25:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcKms-0000iy-Gg
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 03:25:27 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87211207DA;
 Sat, 23 May 2020 03:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590204326;
 bh=pgmHYKarOtcYKHCkf/Nmd0V0W2Vpc+GT3cgCyL7fYII=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U6U/KJFXugk/qHANGFAwpr/aRD/QFWDslO66xH8c7dedk9hQirsV6gz9xMkTRZqgC
 yWG50/yWrK+uq+7G0DxKH4W04ZWlUv2ik9Vazmbh6CzyzvR4iobe9O6ZpVuDLjJtU+
 +kq9Vjo5jyDX4mzoFO23SvoQz10iq9Y0nLFdB3I0=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 2/6] i.MX SoC changes for 5.8
Date: Sat, 23 May 2020 11:25:12 +0800
Message-Id: <20200523032516.11016-2-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523032516.11016-1-shawnguo@kernel.org>
References: <20200523032516.11016-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_202526_580149_319D1E13 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-soc-5.8

for you to fetch changes up to 52102a3ba6a617449f4b057880d73be93310a7c7:

  soc: imx: move cpu code to drivers/soc/imx (2020-05-20 23:03:50 +0800)

----------------------------------------------------------------
i.MX SoC changes for 5.8:

- Add soc device support for Vybrid/VF platform.
- Move the i.MX soc device registration code from mach-imx to
  drivers/soc/imx for possible future consolidation with i.MX8 code.
- A small fixup to make pcm970_sja1000_platform_data static.

----------------------------------------------------------------
Andrey Smirnov (1):
      ARM: vf610: report soc info via soc device

Ma Feng (1):
      ARM: imx: pcm037: make pcm970_sja1000_platform_data static

Peng Fan (3):
      ARM: imx: use device_initcall for imx_soc_device_init
      ARM: imx: move cpu definitions into a header
      soc: imx: move cpu code to drivers/soc/imx

 arch/arm/mach-imx/common.h       |   1 -
 arch/arm/mach-imx/cpu.c          | 159 --------------------------------
 arch/arm/mach-imx/mach-imx6q.c   |   8 +-
 arch/arm/mach-imx/mach-imx6sl.c  |   8 +-
 arch/arm/mach-imx/mach-imx6sx.c  |   8 +-
 arch/arm/mach-imx/mach-imx6ul.c  |   8 +-
 arch/arm/mach-imx/mach-imx7d.c   |   6 --
 arch/arm/mach-imx/mach-imx7ulp.c |   2 +-
 arch/arm/mach-imx/mach-pcm037.c  |   2 +-
 arch/arm/mach-imx/mach-vf610.c   |  47 ++++++++++
 arch/arm/mach-imx/mxc.h          |  22 +----
 drivers/soc/imx/Makefile         |   3 +
 drivers/soc/imx/soc-imx.c        | 192 +++++++++++++++++++++++++++++++++++++++
 include/soc/imx/cpu.h            |  36 ++++++++
 14 files changed, 285 insertions(+), 217 deletions(-)
 create mode 100644 drivers/soc/imx/soc-imx.c
 create mode 100644 include/soc/imx/cpu.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
