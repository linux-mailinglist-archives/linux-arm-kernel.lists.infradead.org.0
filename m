Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67CE28EDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 03:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ppIlA6CH8+Qe9TFP1tX+ufKqufn9Qav4By948r5wPxw=; b=hAwo3y8KXiVGuv
	PZRUSVCZ9JFkVMrVccW0Bx55eGu8YgZ5goTCywbfh624fMRbpSw5d//eMNQMYr39QUrcmvCdIZCrX
	G5Hw5uVfuexK37Z7NNF1II4ANh3THUq/qiOw05qnuApRHfJZ4FzZKncMIgML9I7Ojy2PoxwCF+hPu
	aJb1j4jI6xdrVs+inFCfXLfF1+B4X24Su7ECvvEvsY4xXtHqa5MewbOmKkl5dxQ3yb3fB2AD0BG+H
	+t392KOTpr/1XDRY9Pf1uYdPDoB8vM8p0wwcrlQs237iQe9IOB5MkhNMw+vvD0cSbi5RLImR1d5uA
	aM7qrG0AQ45IIldLoJgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTzAS-0004E3-Nb; Fri, 24 May 2019 01:38:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTzAL-0004Di-Sl
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 01:38:39 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6266217D9;
 Fri, 24 May 2019 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558661916;
 bh=7nv7olXU29mHzAYl6v4G+zxEVH/4FD1t9vZ+L13AazY=;
 h=Date:From:To:Cc:Subject:From;
 b=DTlZu+o+0BVOBscoJIop80gAkHhGOQ7UKKrU95JS8qhi5GXhCfjANB1Emn6kXLGPi
 4OVB1HWusohXdcSwJE8xTslKmW/oHxRXXQT13C0dyMlRIA3iyaWxamDytJRa0JyLh9
 dZqECqxkUf8ApnTwmbYSQKFMf9/a+QuLeo5irsJI=
Date: Fri, 24 May 2019 09:37:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.2
Message-ID: <20190524013736.GA9261@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_183837_946319_9B3CF87B 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.2

for you to fetch changes up to b25af2ff7c07bd19af74e3f64ff82e2880d13d81:

  ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase to i.MX6SX (2019-05-20 14:32:32 +0800)

----------------------------------------------------------------
i.MX fixes for 5.2:
 - A build fix for soc-imx8 driver which needs SOC_BUS support.  To
   avoid dealing with the dependency for every single i.MX SoC bus
   driver, we selects at from architecture level.
 - A fix on i.MX SCU firmware driver to ensure SCU irq is enabled only
   after IPC is ready.
 - A regression fix on cpuidle-imx6sx driver, which causes some
   characters loss on serial communication.

----------------------------------------------------------------
Anson Huang (1):
      firmware: imx: SCU irq should ONLY be enabled after SCU IPC is ready

Fabio Estevam (1):
      ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase to i.MX6SX

YueHaibing (1):
      arm64: imx: Fix build error without CONFIG_SOC_BUS

 arch/arm/mach-imx/cpuidle-imx6sx.c | 3 ++-
 arch/arm64/Kconfig.platforms       | 1 +
 drivers/firmware/imx/imx-scu-irq.c | 3 +++
 3 files changed, 6 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
