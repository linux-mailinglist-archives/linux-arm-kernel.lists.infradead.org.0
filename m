Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64AF142B4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GN9NVjAMQGjr1Y+R9qEK/vN295Bbd9t7cJqMT4ypcJU=; b=Tx2
	Vpq2ttHLxoU6bTuTf2zxoPvm6978aeSWt0JrNU+WK2FHOCCKX5hRK1W620i0ZviqtDjB2cEvOUlHI
	eZe7TUJn0WFZT9Gu6cTtpQCJlm+w7C9j5CV7XH6B4dmDB4T1G5p3d7z2mInbjri/J+qyKa0Bq+GEG
	nS5vQdMFyTLpOX1emz2orLqq5zN3vA4US3uPrMAAHDIAfpE96rq1FC9Uh2RvsNHg8u+X6mRNjC72F
	14wPhAmnMZSGa5BjZtZjc0n5GLJXZv2dAoO8nq0tcZGfEqZySzB+4Q3SCdEBSjGW++02Mn546APu0
	sSTOQYl0t0n9zIMeualnwigOrnMyMww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itWWy-0008RK-Af; Mon, 20 Jan 2020 12:51:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itWWj-0008OW-Eq
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:51:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 640F52002FA;
 Mon, 20 Jan 2020 13:51:31 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 54B63200112;
 Mon, 20 Jan 2020 13:51:31 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E2F91205CD;
 Mon, 20 Jan 2020 13:51:30 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] soc: imx: gpcv2: include linux/sizes.h
Date: Mon, 20 Jan 2020 14:51:28 +0200
Message-Id: <9e4549b47f0872a6a670d07b513f452c33f26501.1579524316.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_045133_637996_FECF3E7B 
X-CRM114-Status: UNSURE (   7.11  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This header is included indirectly on arm/arm64 but not on x86 so
CONFIG_COMPILE_TEST breaks. Fix by including <linux/sizes.h> directly.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
Support for COMPILE_TEST inside drivers/soc/imx is enabled by this
series:

https://patchwork.kernel.org/cover/11335989/

 drivers/soc/imx/gpcv2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index b0dffb06c05d..6cf8a7a412bd 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -12,10 +12,11 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
+#include <linux/sizes.h>
 #include <dt-bindings/power/imx7-power.h>
 #include <dt-bindings/power/imx8mq-power.h>
 
 #define GPC_LPCR_A_CORE_BSC			0x000
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
