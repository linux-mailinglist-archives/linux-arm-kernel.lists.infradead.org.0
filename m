Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2A31F6708
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C8i1Ci3aVN+KKYset010ew9uETXsEIJ5vEPYzXZAIB8=; b=jUT
	+qcPONvpkUKbEAtHxV5CErmAmPueC1FN2e3w/y6Q1NHYabmA3SKF9Jn9ZTh83AOvBu2zDujW/Qqxu
	C3on6JcRBKhOjFpt3ipmvgfF9gvc851X9TxpnIAa3YkBh4Rw/AkDOqinOHQOasLSc08ZBICcqau+7
	/9QgzRL9FYylDXQxUckWEnRAPesN8zgQTxi7y9oMiFe/kjUIsjz9fOeBdWtU1qTpu9ueCdnjHv2+t
	gxNK3iVMXZSU15Ly3y7qooFzaRD7APBVqydZ9o6qIR2pmpNRY/P451/7yd9YEDkmwfkA1QtdzY9x9
	8kdkTpq6nmhpurZ1yDmuY++5fpGcpZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLeq-0006YU-0Y; Thu, 11 Jun 2020 11:46:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLef-0006WT-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 11:45:59 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2D00A1A070E;
 Thu, 11 Jun 2020 13:45:54 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A0EFF1A06F6;
 Thu, 11 Jun 2020 13:45:49 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B8C024028F;
 Thu, 11 Jun 2020 19:45:43 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Date: Thu, 11 Jun 2020 19:34:46 +0800
Message-Id: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_044557_340491_05D7068A 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are more and mroe requirements that SoC specific modules should be built
as module in order to support generic kernel image, such as Android GKI concept.

This patch series supports i.MX8 SoCs pinctrl drivers to be built as module,
including i.MX8MQ/MM/MN/MP/QXP/QM/DXL SoCs, and it also supports building
i.MX common pinctrl driver and i.MX SCU common pinctrl driver as module.

Compared to V4, the changes are as below:
	- remove unnecessary changes of replacing arch_initcall() with
	  module_platform_driver() in each SoC pinctrl driver, to make
	  sure no probe sequence change for built-in config.
	- add module author and description to each module.

Anson Huang (9):
  pinctrl: imx: Support building SCU pinctrl driver as module
  pinctrl: imx: Support building i.MX pinctrl driver as module
  pinctrl: imx8mm: Support building as module
  pinctrl: imx8mn: Support building as module
  pinctrl: imx8mq: Support building as module
  pinctrl: imx8mp: Support building as module
  pinctrl: imx8qxp: Support building as module
  pinctrl: imx8qm: Support building as module
  pinctrl: imx8dxl: Support building as module

 drivers/pinctrl/freescale/Kconfig           | 19 +++++-----
 drivers/pinctrl/freescale/pinctrl-imx.c     | 25 ++++++++-----
 drivers/pinctrl/freescale/pinctrl-imx.h     | 57 ++++++++++++-----------------
 drivers/pinctrl/freescale/pinctrl-imx8dxl.c |  8 ++++
 drivers/pinctrl/freescale/pinctrl-imx8mm.c  |  6 +++
 drivers/pinctrl/freescale/pinctrl-imx8mn.c  |  6 +++
 drivers/pinctrl/freescale/pinctrl-imx8mp.c  |  6 +++
 drivers/pinctrl/freescale/pinctrl-imx8mq.c  |  6 +++
 drivers/pinctrl/freescale/pinctrl-imx8qm.c  |  8 ++++
 drivers/pinctrl/freescale/pinctrl-imx8qxp.c |  8 ++++
 drivers/pinctrl/freescale/pinctrl-scu.c     |  9 +++++
 11 files changed, 106 insertions(+), 52 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
