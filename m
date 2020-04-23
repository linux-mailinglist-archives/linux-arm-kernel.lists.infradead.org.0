Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEC91B6893
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 01:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mZJqod/leGsKJRdqJ0nbknh1bQmRLNrXlWpPLst/mvA=; b=THe
	aGQzKia9eQH8Mzl3CASUyVCYMfFMh8o8RjtwljIOyZQnlDIto+Wg4K0xHMUqjiH4Udy+j/9rh8CJk
	CwHYukMxATq1iklvgTbiSxAdAflB5rtSfM6IT13gZO7ickWfv+VSf0DT38k5Zu7Lh5EybyXvwt2cT
	mGhZT1FGjFM/LUG6in8NSyf4VddDlv3wQxqZTm9VvXIOcq0zFQ5athB1/Q3p234Ko3fKwX0Qsx53X
	JLZhqrkflPAYTBz3WX7LRcRhkuhotAjNDgqsKq0khW6PyzHMN8WUfRJ2KgnxpzxSbry6yKr2Qjz/J
	P0Rj4t/pFMBqCdJcwSOoVFbwS62tEMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRl5N-0007i4-N9; Thu, 23 Apr 2020 23:16:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRl4w-0007Vj-Nk
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 23:16:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 05CB11A0187;
 Fri, 24 Apr 2020 01:16:18 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 82F641A01A5;
 Fri, 24 Apr 2020 01:16:14 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D951F402C7;
 Fri, 24 Apr 2020 07:16:09 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ben.dooks@codethink.co.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] firmware: imx: make sure MU irq can wake up system from
 suspend mode
Date: Fri, 24 Apr 2020 07:07:10 +0800
Message-Id: <1587683231-18468-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_161622_912121_548FCA07 
X-CRM114-Status: UNSURE (   6.75  )
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

IRQF_NO_SUSPEND flag is set for MU IRQ of IPC work, but with this
flag set, IRQD_WAKEUP_ARMED flag will NOT be set during
suspend_device_irq() phase, then when MU IRQ arrives, it will NOT
wake up system from suspend.

To fix this issue, pm_system_wakeup() is called in general MU IRQ
handler to make sure system can be waked up when MU IRQ arrives.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/firmware/imx/imx-scu-irq.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/imx/imx-scu-irq.c b/drivers/firmware/imx/imx-scu-irq.c
index db655e8..d9dcc20 100644
--- a/drivers/firmware/imx/imx-scu-irq.c
+++ b/drivers/firmware/imx/imx-scu-irq.c
@@ -10,6 +10,7 @@
 #include <linux/firmware/imx/ipc.h>
 #include <linux/firmware/imx/sci.h>
 #include <linux/mailbox_client.h>
+#include <linux/suspend.h>
 
 #define IMX_SC_IRQ_FUNC_ENABLE	1
 #define IMX_SC_IRQ_FUNC_STATUS	2
@@ -91,6 +92,7 @@ static void imx_scu_irq_work_handler(struct work_struct *work)
 		if (!irq_status)
 			continue;
 
+		pm_system_wakeup();
 		imx_scu_irq_notifier_call_chain(irq_status, &i);
 	}
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
