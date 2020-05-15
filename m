Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905211D5263
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LB5NbXLkqfh3N9fBKFQJzSlvA4jVF4xH1j7MEgKvSNg=; b=UfxF7GwrocQGY2
	xzSmLqSj41Zq7uzrhGFDBjTV8rt97PeESEtA+aljy3iMh5yhv3QnojqoNcpFROFIZ1CTaPFAoqchR
	MmLhZoNY1t44GKzBxh3n5GLY+jaPQy5rfOfdb1d4W2uxuNXj85uhj+i2VKyx65Dd6mYE80fS5lzmu
	0EITUGF8pZJqo7t2GWe9XjAW3ITsrDpdeEKcu4YoDy5YubeUYJk5EJx4T4h9B3DK/68xU8+jXzqTM
	cjGWqCwCsH5AtoK96Kf3R+NkKQumGId2pwQu++aej4IDp7YJ3KZqwlM4gxTZksPyzNtd/HIujI/1C
	vsgs/qIdetTBWWIrkogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbdF-0004F0-Dr; Fri, 15 May 2020 14:48:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbU8-00064e-HO
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:38:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1jZbU5-0005nL-0e; Fri, 15 May 2020 16:38:45 +0200
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1jZbU4-0004Zk-MV; Fri, 15 May 2020 16:38:44 +0200
Date: Fri, 15 May 2020 16:38:44 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: soc@kernel.org
Subject: [GIT PULL] Reset controller updates for v5.8
Message-ID: <20200515143844.GA17201@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Uptime: 16:36:30 up 85 days, 22:06, 112 users,  load average: 0.18, 0.16,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_073848_646684_87A3EEB6 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear SoC maintainers,

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.pengutronix.de/pza/linux.git tags/reset-for-v5.8

for you to fetch changes up to 697fa27dc5fb4c669471e728e97f176687982f95:

  reset: hi6220: Add support for AO reset controller (2020-05-06 12:03:43 +0200)

----------------------------------------------------------------
Reset controller updates for v5.8

This tag adds support for i.MX8MP and i.MX8MN SoCs to the i.MX7 reset
controller driver, extends the Hi6220 reset driver to support the AO
reset controller used to bring the Mali450 GPU out of reset, and adds
a define for the internal DAC reset line on Amlogic GXL SoCs.

----------------------------------------------------------------
Anson Huang (3):
      dt-bindings: reset: imx7: Add support for i.MX8MN
      dt-bindings: reset: imx7: Document usage on i.MX8MP SoC
      reset: imx7: Add support for i.MX8MP SoC

Jerome Brunet (1):
      dt-bindings: reset: meson: add gxl internal dac reset

Peter Griffin (1):
      reset: hi6220: Add support for AO reset controller

 .../devicetree/bindings/reset/fsl,imx7-src.txt     |   6 +-
 drivers/reset/hisilicon/hi6220_reset.c             |  69 +++++++++++++-
 drivers/reset/reset-imx7.c                         | 101 +++++++++++++++++++++
 .../dt-bindings/reset/amlogic,meson-gxbb-reset.h   |   2 +-
 include/dt-bindings/reset/imx8mp-reset.h           |  50 ++++++++++
 include/dt-bindings/reset/imx8mq-reset.h           |  56 ++++++------
 6 files changed, 253 insertions(+), 31 deletions(-)
 create mode 100644 include/dt-bindings/reset/imx8mp-reset.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
