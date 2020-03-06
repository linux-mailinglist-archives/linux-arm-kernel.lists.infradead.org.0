Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7740117BBB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5SS0pmmRvCSe12x7l/AN/OkRa5xzFwMYGAXezvenWd4=; b=ALkok2cZv9Zvqb
	XMbFIeUldufP8qq+9D/G8ilH8lrlIDLWxLihYD4LdEL3FlUpla1atll+xRhqHDB0dhS08EOWK48bf
	FE8uXv+yIPjiphJYPClH8d+Z3qPunmI42YLjrD0JCPWtS1Nt75jyhKD3MvYDilVdWqvxpD3Z64+JT
	7w50IN4peRPsA1PcDmo6dLWCMuizadtsq5516Xpz18Bsz2OasJVBBypoBtfbMYBr2QSvH779Y82B3
	rAnWSHLhzTKfMgqw7Ib8Xp8zc46xZy53VKd4XGiN0yoyrSqOkRjRe6jev6GKHv43SfoHHbb5r+rdT
	TAz2htgnBZsRinis3hUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABCl-0000BR-JL; Fri, 06 Mar 2020 11:31:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABCe-0000A2-5C
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:31:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4FED431B;
 Fri,  6 Mar 2020 03:31:38 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4F6683F6C4;
 Fri,  6 Mar 2020 03:31:37 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: kernel@pengutronix.de, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drivers: soc: Fix COMPILE_TEST for IMX SCU
Date: Fri,  6 Mar 2020 11:31:19 +0000
Message-Id: <20200306113119.56577-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_033140_250732_28714FA3 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IMX SCU SoCs support COMPILE_TEST that allows to compile the driver on a
different platform for development purposes.
These SoCs depend on a firmware interface that is not built on COMPILE_TEST
mode. This results in triggering the following errors at compile time (on
arm64):

aarch64-none-linux-gnu-ld:
drivers/soc/imx/soc-imx-scu.o: in function `imx_scu_soc_probe':
soc-imx-scu.c:(.text+0x24): undefined reference to `imx_scu_get_handle'
aarch64-none-linux-gnu-ld:
soc-imx-scu.c:(.text+0xac): undefined reference to `imx_scu_call_rpc'
aarch64-none-linux-gnu-ld:
soc-imx-scu.c:(.text+0xd8): undefined reference to `imx_scu_call_rpc'
linux/Makefile:1078: recipe for target 'vmlinux' failed
make[1]: *** [vmlinux] Error 1
Makefile:180: recipe for target 'sub-make' failed
make: *** [sub-make] Error 2

Enable the relevant compilation units in the Makefile when the config option
is selected to address the issue.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 drivers/firmware/imx/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/imx/Makefile b/drivers/firmware/imx/Makefile
index 08bc9ddfbdfb..5604adae31d9 100644
--- a/drivers/firmware/imx/Makefile
+++ b/drivers/firmware/imx/Makefile
@@ -2,3 +2,5 @@
 obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
 obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
 obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
+
+obj-$(CONFIG_COMPILE_TEST)	+= imx-scu.o misc.o imx-scu-irq.o
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
