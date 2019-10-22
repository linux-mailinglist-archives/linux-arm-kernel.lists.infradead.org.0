Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B921E079F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aOQ5cyS8MSNhLoWhAdRgX+SscQNEpDJh9I5bouoAAoE=; b=FEfd16UU/prX6t
	ZC+9I3g7vyYchSj8H68+/MMRwX++TyiV7DhrWzfL4LW9+iRibk5UHC6i43IOFImDBobLRkEbtgZFT
	unl5wo4RZibOFwR3e1jkipxNGMx/Eryxi+0clbuy0ljwWvcv0B2UfJ4xP2gQSjPKJBXj3QIOtEsJG
	Qk76GbcRVvYYz94O10hjxvitE885kKzMYxRiFlvrGLH24nEtEPjzIu01GqvtKb6YGHHZn4yZbYMRQ
	miPb6GuFRfTNitVmoPgUr4LoF46zmqOwCiUf/e8LK6EtO+A1jFXSh/O0w3r9QdEHAM/AxuoAF3WWu
	VQ8KH8tZwveBKWLO2coQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwGv-00032v-Nx; Tue, 22 Oct 2019 15:40:33 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwGm-00032L-Pc
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:40:26 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iMwGf-0006l3-Uw; Tue, 22 Oct 2019 16:40:18 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.3)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iMwGf-00006u-8L; Tue, 22 Oct 2019 16:40:17 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] firmware: imx: add missing include of
 <linux/firmware/imx/sci.h>
Date: Tue, 22 Oct 2019 16:40:09 +0100
Message-Id: <20191022154009.376-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_084024_979399_9D8C70E0 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Include <linux/firmware/imx/sci.h> for the declarations of the
functions exported from this driver. This fixes the following
sparse warnings:

drivers/firmware/imx/imx-scu-irq.c:45:5: warning: symbol 'imx_scu_irq_register_notifier' was not declared. Should it be static?
drivers/firmware/imx/imx-scu-irq.c:52:5: warning: symbol 'imx_scu_irq_unregister_notifier' was not declared. Should it be static?
drivers/firmware/imx/imx-scu-irq.c:97:5: warning: symbol 'imx_scu_irq_group_enable' was not declared. Should it be static?
drivers/firmware/imx/imx-scu-irq.c:130:5: warning: symbol 'imx_scu_enable_general_irq_channel' was not declared. Should it be static?

Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
---
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/firmware/imx/imx-scu-irq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/imx/imx-scu-irq.c b/drivers/firmware/imx/imx-scu-irq.c
index 687121f8c4d5..db655e87cdc8 100644
--- a/drivers/firmware/imx/imx-scu-irq.c
+++ b/drivers/firmware/imx/imx-scu-irq.c
@@ -8,6 +8,7 @@
 
 #include <dt-bindings/firmware/imx/rsrc.h>
 #include <linux/firmware/imx/ipc.h>
+#include <linux/firmware/imx/sci.h>
 #include <linux/mailbox_client.h>
 
 #define IMX_SC_IRQ_FUNC_ENABLE	1
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
