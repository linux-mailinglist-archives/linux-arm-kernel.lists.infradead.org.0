Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8939B1F1B4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=43ogBo7ME5YjjHPj+VQI3yiei2QBobXQDJrKY3FpMVY=; b=Qc3
	JxaYexcNj89WjanjG56mcMiGjdpYVN4dvGYGCUsHA0uvoKhFGev6boCJlPU0HjwP8XKO4Ig/9e77G
	cpFb6LTBfMgMJsl7qMRPT4eLH9G74F5g6zTcRPY9rbd3oKLQggkzgSbYl0C5oej2j8rtmT9edgHhQ
	tl+UuG1Kw47mtZmQ0H8/964naYmVHCOK/kYZ/qqpapmd97KyiUofXK08Hcr+0x83ZOSp0UlgtiVn2
	BORgiUFbC4TB1pOtamOD7o+Djv6tdG94S2B3yuZ1OI0jt4/B5ujUYvEkEEqBgepVT67Fdvd3m46hK
	GZ+aGw5HnxpuwxIBIHQ1uygyOMDeFKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJ4t-00083a-I9; Mon, 08 Jun 2020 14:48:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJ4X-0007rx-Nf
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:48:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C6CAA1A1074;
 Mon,  8 Jun 2020 16:48:19 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 480001A1063;
 Mon,  8 Jun 2020 16:48:15 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5C6BE40297;
 Mon,  8 Jun 2020 22:48:09 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Date: Mon,  8 Jun 2020 22:37:27 +0800
Message-Id: <1591627056-19022-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_074821_915622_E0FE8636 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
including i.MX8MQ/MM/MN/MP/QXP/QM/DXL SoCs, and it also supports building i.MX
common pinctrl driver and i.MX SCU common pinctrl driver as module.

Compared to V1, the changes are as below:
	- Separate the i.MX and i.MX SCU common pinctrl driver to 2 patches;
	- Support building i.MX and i.MX SCU common pinctrl driver as module too.

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

 drivers/pinctrl/freescale/Kconfig           | 18 +++++++++---------
 drivers/pinctrl/freescale/pinctrl-imx.c     |  4 ++++
 drivers/pinctrl/freescale/pinctrl-imx.h     |  2 +-
 drivers/pinctrl/freescale/pinctrl-imx8dxl.c |  9 +++------
 drivers/pinctrl/freescale/pinctrl-imx8mm.c  | 10 ++++------
 drivers/pinctrl/freescale/pinctrl-imx8mn.c  | 10 ++++------
 drivers/pinctrl/freescale/pinctrl-imx8mp.c  | 10 ++++------
 drivers/pinctrl/freescale/pinctrl-imx8mq.c  |  9 ++++-----
 drivers/pinctrl/freescale/pinctrl-imx8qm.c  |  9 +++------
 drivers/pinctrl/freescale/pinctrl-imx8qxp.c |  9 +++------
 drivers/pinctrl/freescale/pinctrl-scu.c     |  6 ++++++
 11 files changed, 45 insertions(+), 51 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
