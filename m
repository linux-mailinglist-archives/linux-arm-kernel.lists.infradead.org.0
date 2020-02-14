Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BFA15D1CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 06:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0ZgVF4zWQU+2FcdVJHbzIXc2CMGzV7nTRQM0tgYFle4=; b=MUb
	pzqiKdyYFqXi36ih5a7kYTIvln5n6NP8c3ajos876YwXyTBoA6d4fC0qbKUZdZmgwZ/RdMPdtm3Ju
	7+MRezE8gnBDnOjIrmv3K+ji4/CTXtkJH48YWBCtqXD+c1CvchsLVSsmP3PPCEAA3NWOfk55mlGo2
	x9LPrKj7Gq2Wv3cCSNfUOTdQ3qD0WvK8tH6C3ip7Tgz2BM8WKeslunYiJx7NAIxJNSxs9JbP0PM8I
	zGK8uc/b4llSGNMwjUav9Iz79p/o+ZCckX8CgKwXnBb7FE33I6JEGh1y6uNof80udC7pVlmqWwV6b
	OC/+U514S/mOiKwjUw7QVaCDCz1Zy/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Ttc-0006v8-Hd; Fri, 14 Feb 2020 05:52:12 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2TtW-0006ue-L6
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 05:52:08 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6B478206040;
 Fri, 14 Feb 2020 06:52:04 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3937420126E;
 Fri, 14 Feb 2020 06:51:58 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8B00B402CF;
 Fri, 14 Feb 2020 13:51:50 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, kstewart@linuxfoundation.org,
 rfontana@redhat.com, gregkh@linuxfoundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: imx: Remove unused includes on mach-imx6q.c
Date: Fri, 14 Feb 2020 13:46:24 +0800
Message-Id: <1581659184-14996-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_215206_829606_05193D5F 
X-CRM114-Status: UNSURE (   5.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Many includes are NOT used on mach-imx6q.c now, remove them.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/mach-imx/mach-imx6q.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
index edd26e0..bb2886c 100644
--- a/arch/arm/mach-imx/mach-imx6q.c
+++ b/arch/arm/mach-imx/mach-imx6q.c
@@ -5,29 +5,17 @@
  */
 
 #include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <linux/cpu.h>
-#include <linux/delay.h>
-#include <linux/export.h>
-#include <linux/init.h>
-#include <linux/io.h>
-#include <linux/irq.h>
 #include <linux/irqchip.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
 #include <linux/of_platform.h>
-#include <linux/pm_opp.h>
 #include <linux/pci.h>
 #include <linux/phy.h>
-#include <linux/reboot.h>
 #include <linux/regmap.h>
 #include <linux/micrel_phy.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
-#include <asm/system_misc.h>
 
 #include "common.h"
 #include "cpuidle.h"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
