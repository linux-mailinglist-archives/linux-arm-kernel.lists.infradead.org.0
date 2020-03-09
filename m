Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BE617D788
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 01:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UEfrBUMsRlsRmejkdOzalXTGgXz8T0OLPLYrktYyQdo=; b=KFU/uXgkneE3ZxXRAYNiN+BBav
	q3jqMaLYJLIs7SXeZHNQR5WpKTMsXkGdXqOhLo36Kc/g8LFdcp+hbZ1mOZUFwYgcPHyY8PaB8pFpe
	md90HB+VtST+Lk3O1RW6/zHYBpLWascz7W139QV3KKZO8RnY4A8RHPmE1rTr6K2ThG3RVgq0KhLGo
	9GoPnGf7epCyocJWMcTdlWUqIn4jtfbiVtx4bbD0kLoXtGp4LYwJgItR0Ixz5MBcvbvhsLBzgUXQu
	eU+oDGWjbJ+8HKn5AwZgbJlIdVGk6wJU5WDVC/RCly8hIJwUwVQ7nlAYdwnSfKymsxQLg3/g7JBpO
	FRwMR0aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB6YV-0006FU-5M; Mon, 09 Mar 2020 00:46:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB6Xh-0005XO-W4
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 00:45:15 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 41E3620152A;
 Mon,  9 Mar 2020 01:45:12 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3CF9420000D;
 Mon,  9 Mar 2020 01:44:53 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id DEB2D402CA;
 Mon,  9 Mar 2020 08:44:39 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, dmitry.torokhov@gmail.com, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 wim@linux-watchdog.org, linux@roeck-us.net, daniel.baluta@nxp.com,
 gregkh@linuxfoundation.org, linux@rempel-privat.de, tglx@linutronix.de,
 m.felsch@pengutronix.de, andriy.shevchenko@linux.intel.com, arnd@arndb.de,
 ronald@innovation.ch, krzk@kernel.org, robh@kernel.org,
 leonard.crestez@nxp.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [PATCH V3 4/7] input: keyboard: add COMPILE_TEST support for
 KEYBOARD_IMX_SC_KEY
Date: Mon,  9 Mar 2020 08:38:17 +0800
Message-Id: <1583714300-19085-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_174514_206745_4ABC0A76 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Add COMPILE_TEST support to i.MX SC keyboard driver for better compile
testing coverage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 drivers/input/keyboard/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 9709137..87e0be8 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -467,7 +467,7 @@ config KEYBOARD_IMX
 
 config KEYBOARD_IMX_SC_KEY
 	tristate "IMX SCU Key Driver"
-	depends on IMX_SCU
+	depends on IMX_SCU || COMPILE_TEST
 	help
 	  This is the system controller key driver for NXP i.MX SoCs with
 	  system controller inside.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
