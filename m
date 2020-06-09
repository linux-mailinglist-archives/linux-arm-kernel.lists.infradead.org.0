Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6711F3E2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qtFERllBahzL0ZihUDVwwGTtIiTQQ+fgU1Nnesq0TNk=; b=ZO9
	pFgkx5lrjW6wvkedCu/KYLY29ZReNhP47fMpAiS2KF+WmaJEpSvOyrxCl7zK0RiKgoSNoGjbCbdh9
	XkXkNZYh+PY72O5doDfUp8PAHv3YJNcepKbOQAEdu3lIiweKHd8LAe7RolJ4p9IrOu4VMvQFCv3T9
	tdrplzZRSvQ/Dpkw5325ADJBLGYzbqx8XAluDi7xY6L7dTXH0QFNvIxkE5JF+vkjcw70OBCL5ttqn
	DznmGa2xbXiEwdF0YL8v+Uh7r43jBnueJzs3ZjIK0byju+s88kYjo5UAu4kz0l5NRLLQG2I46CgKm
	ur24OA5Xwttj6qhM7LdN5jzvEjLm35w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifIg-00060m-6H; Tue, 09 Jun 2020 14:32:26 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifIU-0005rk-LK
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:32:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 82FB01A13DD;
 Tue,  9 Jun 2020 16:32:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E7C9E1A13CA;
 Tue,  9 Jun 2020 16:32:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6D4BD40307;
 Tue,  9 Jun 2020 22:32:02 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Date: Tue,  9 Jun 2020 22:21:16 +0800
Message-Id: <1591712485-20609-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_073214_837633_0C0E03C0 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Compared to V2, the changes are as below:
	- add "depends on OF" to PINCTRL_IMX to fix build error using x86 randconfig;
	- change the config dependency of PINCTRL_IMX_SCU to support scenario of
	  building in PINCTRL_IMX while building PINCTRL_IMX_SCU as module, no other
	  good choice in my mind, if you have better idea without changing the driver
	  code, please advise.

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

 drivers/pinctrl/freescale/Kconfig           | 27 ++++++++++++++-------------
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
 11 files changed, 50 insertions(+), 55 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
