Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF2117CA77
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 02:33:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PW4bBC8RBftKZY/R+23JmA5+InxC3QYbvIwvtWoYb1Y=; b=GGmJfpXEgkYEPZ6WzlEdk5oTJL
	pAMeH6T8zzMtA5BCMoj3dq7ETZtIZ8KnkRO58oNuS6jxZUPKHn/42NeEHcL33twDUBu5GHMrZUXNL
	bbUujTMiIaU1/OMvg6JNfzvUKiH80SwAPsSrShtKpIWrNgKkKUEQcnhhWxpWziGepUe5T7dELOC0F
	IL4TXF5wsMzSE68RP7l1+H645lQDCAu35Yk5+2wYwfuuj8SLNYf4D/3bJli8aGrFdtqa5Q/p2eOp1
	ZrxOB6uWM1qImMMVa4D+C7drmmQ9r/JILar4LON5+kswk7k158a0l+zxP2WarmKIgphoWakGuKv5Z
	oJUlhwEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAOLH-0000RC-77; Sat, 07 Mar 2020 01:33:27 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAOKc-0008RL-AZ
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 01:32:47 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6B9DD200D97;
 Sat,  7 Mar 2020 02:32:44 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7852F200D87;
 Sat,  7 Mar 2020 02:32:24 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 741BB402FF;
 Sat,  7 Mar 2020 09:32:11 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, dmitry.torokhov@gmail.com, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 wim@linux-watchdog.org, linux@roeck-us.net, daniel.baluta@nxp.com,
 linux@rempel-privat.de, gregkh@linuxfoundation.org, tglx@linutronix.de,
 m.felsch@pengutronix.de, andriy.shevchenko@linux.intel.com, arnd@arndb.de,
 robh@kernel.org, yuehaibing@huawei.com, ronald@innovation.ch,
 krzk@kernel.org, leonard.crestez@nxp.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [PATCH V2 3/7] rtc: add COMPILE_TEST support for i.MX SC RTC
Date: Sat,  7 Mar 2020 09:25:55 +0800
Message-Id: <1583544359-515-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
References: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_173246_570675_3AE2553A 
X-CRM114-Status: UNSURE (   9.10  )
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

Add COMPILE_TEST support to i.MX SC RTC driver for better compile
testing coverage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
no change.
---
 drivers/rtc/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index acaf6f98..a86768f 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -1772,7 +1772,7 @@ config RTC_DRV_SNVS
 	   will be called "rtc-snvs".
 
 config RTC_DRV_IMX_SC
-	depends on IMX_SCU
+	depends on IMX_SCU || COMPILE_TEST
 	depends on HAVE_ARM_SMCCC
 	tristate "NXP i.MX System Controller RTC support"
 	help
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
