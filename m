Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DF51F4FF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WayjS5GidxojZCWdjDvJCifMZUlGM6/Z6LHB4IDO8w0=; b=DZw
	LiZhvHsbQ5RhVlH69tS8/Yu6X4qEygw4+XOeXpD0Y7L9EwaBjO6blr/73I+DLJ/1IV1mOkDDl4lA6
	ofmMmrNcY3eewUp8VxDGrtsE1+WcWne+I4kLCu0EqtqLHMxp0UJEUmFvvnfA7zUWVzdN0J06au7T5
	DM1T9sWDiaOIJHLSuWBsNfo2AjtIKI8mFHcOKjfkRBHfRoLRDVGrDMoD+qP/ImaYofg8PukHrGwPh
	O5h9p4RI0GwZY5apGdVnL19bPjXDPQGNsQQdZJKnoB1WMOpSKlGJN3JNIIgMZA7sY9l7baRo51vDk
	uEFUsROz9DeVF2YtyUdo3mXTVou8r9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivn5-0001Fp-4V; Wed, 10 Jun 2020 08:08:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivmu-0001Ep-35
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:08:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AF6091A1525;
 Wed, 10 Jun 2020 10:08:41 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 22E491A1502;
 Wed, 10 Jun 2020 10:08:37 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 88B6540307;
 Wed, 10 Jun 2020 16:08:31 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Date: Wed, 10 Jun 2020 15:57:36 +0800
Message-Id: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_010844_268214_21BA6B38 
X-CRM114-Status: UNSURE (   7.07  )
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
including i.MX8MQ/MM/MN/MP/QXP/QM/DXL SoCs, and it also supports building
i.MX common pinctrl driver and i.MX SCU common pinctrl driver as module.

Compared to V3, the changes are as below:
	- change the config dependency back to original;
	- use function callbacks for SCU related functions, and all drivers
	  using SCU pinctrl driver need to initialize the function callbacks,
	  pinctrl-imx.c will check the SCU function callback and call it when
	  it is valid, then no build issue when PINCTRL_IMX is built in and
	  PINCTRL_IMX_SCU is built as module.

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
 drivers/pinctrl/freescale/pinctrl-imx.c     | 22 ++++++-----
 drivers/pinctrl/freescale/pinctrl-imx.h     | 57 ++++++++++++-----------------
 drivers/pinctrl/freescale/pinctrl-imx8dxl.c | 12 +++---
 drivers/pinctrl/freescale/pinctrl-imx8mm.c  | 10 ++---
 drivers/pinctrl/freescale/pinctrl-imx8mn.c  | 10 ++---
 drivers/pinctrl/freescale/pinctrl-imx8mp.c  | 10 ++---
 drivers/pinctrl/freescale/pinctrl-imx8mq.c  |  9 ++---
 drivers/pinctrl/freescale/pinctrl-imx8qm.c  | 12 +++---
 drivers/pinctrl/freescale/pinctrl-imx8qxp.c | 12 +++---
 drivers/pinctrl/freescale/pinctrl-scu.c     |  6 +++
 11 files changed, 86 insertions(+), 93 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
