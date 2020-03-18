Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B3E18951F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 06:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0RK2+SEZYyHmcKsYtCpCOwG3cfvqc+Q6a8xF/jLe1yw=; b=LFA3McEowreXPtRKMF3NRZqRaA
	4MruurkO2rVqgASMFAAA9oz1J6BRWWMNZqpxGU3nsvjGunCCGUNEmwHsu6j88CXTvgRBmnIm2r85N
	eMKMK6hveIIgwo9OzG404I3EeRwbdwGmLrp7GtruDEmI983Pv2m3Q2jfHf+3clTSfQ3dDFNKWOaJr
	P6oCZDvCrFns7pOut/4yrJfKVFnxvNIT5nsglxH+g76S3bolTbqDE3reWWEnkshK2NJwSyp4o2ybz
	ZOHuPh9KDgxwkpq7UoQPdqL/B5lxogw8WqM3dVtA43GqjMFGKV8OFQcRmZc7DwKTc9fXJWGp9sdR+
	PQhW+UQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jER7e-0006d5-8a; Wed, 18 Mar 2020 05:20:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jER7B-0006TS-3E
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 05:19:38 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D16E82076E;
 Wed, 18 Mar 2020 05:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584508776;
 bh=InKISOTngiLpQA7Frp2HmGa+Lh0Ml5VtkzpokZMn8nU=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZMN47QnFjTVzs5BZD/uJqjl2Y5Du8/kdp06nomM29czt13XGFfmpaebrATOB64Wom
 JMs1d1xsMoKST773dJ6oSmxbE/fYzeyJTB7gg9ro7fN43LE4Vwip6KHx69If5x5fRn
 ijDYOi/iGMwCiSN4RWJ17Ks7qMIzV/AEg0HOUJeA=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 2/6] i.MX SoC changes for 5.7
Date: Wed, 18 Mar 2020 13:19:14 +0800
Message-Id: <20200318051918.32579-2-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318051918.32579-1-shawnguo@kernel.org>
References: <20200318051918.32579-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_221937_154300_773EA2E6 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-soc-5.7

for you to fetch changes up to 756931e058ec3dc625f85a09ae0c3143d2a6ef72:

  ARM: imx: Drop unnecessary src_base check (2020-03-11 15:18:17 +0800)

----------------------------------------------------------------
i.MX SoC changes for 5.7:

 - A number of cleanups from Anson Huang to remove unneeded includes,
   drop unnecessary newlines and base check etc.
 - Apply Cortex-A9 specific errata only to Cortex-A9 based i.MX SoCs
   and avoid impacting Cortex-A7 based designs.

----------------------------------------------------------------
Anson Huang (6):
      ARM: imx: Remove unused include of linux/irqchip/arm-gic.h
      ARM: imx: Remove unused includes on mach-imx6q.c
      ARM: imx: Remove unused include of linux/of.h on mach-imx6sl.c
      ARM: imx: Add missing of_node_put()
      ARM: imx: Remove unnecessary blank lines
      ARM: imx: Drop unnecessary src_base check

Stefan Agner (1):
      ARM: imx: limit errata selection to Cortex-A9 based designs

 arch/arm/mach-imx/Kconfig       | 10 ++++++++--
 arch/arm/mach-imx/anatop.c      |  7 ++++---
 arch/arm/mach-imx/gpc.c         |  4 ++--
 arch/arm/mach-imx/mach-imx6q.c  | 13 -------------
 arch/arm/mach-imx/mach-imx6sl.c |  1 -
 arch/arm/mach-imx/mach-imx6ul.c |  1 -
 arch/arm/mach-imx/platsmp.c     |  1 +
 arch/arm/mach-imx/pm-imx6.c     |  2 ++
 arch/arm/mach-imx/pm-imx7ulp.c  |  1 +
 arch/arm/mach-imx/src.c         |  3 ---
 10 files changed, 18 insertions(+), 25 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
