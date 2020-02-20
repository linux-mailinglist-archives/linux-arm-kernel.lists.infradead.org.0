Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C9F16618D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 16:57:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=w3Fhll1yeqM7783VAGhOI2O4LnJGPLoDYuJIRBR1SNY=; b=tnV
	QKxcNqsIdhmI3ggnPrSDutH88HgYf/0D6JZYYME4ki901Fx6G3vcBagulygiszSucivExVwzHe5v/
	X/1Gj7ORPOq04Fy9Ltv4CXRGuIEK4us34CyviAb6eG2d3YtB9f+y6C1P2AAB37pN7LcJ+Ny3dFN6m
	UCiOW9e1A/L3L5xLxNLdKgOQM5R1Y2Cs3oQ42xhLMtrLG/AwRHcYHyYZ68y+mDdGGv2H2RYtEg6yL
	42DSIlX/C6MShNyAzXTcxwawjKZsAGD846ujPleR9C653i+j6A89SUhdiWklZPsOj+r5og9ldK8GH
	60DKY0meLJ/vVjQIJkZq3IAbAnk96CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oCG-0008Sk-DS; Thu, 20 Feb 2020 15:57:04 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oC4-0008SP-T8
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 15:56:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E2DA31A004C;
 Thu, 20 Feb 2020 16:56:50 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D70E91A18F2;
 Thu, 20 Feb 2020 16:56:50 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 560692059D;
 Thu, 20 Feb 2020 16:56:50 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH] firmware: imx: Remove IMX_SC_RPC_SVC_ABORT
Date: Thu, 20 Feb 2020 17:56:49 +0200
Message-Id: <08d91d4455f71c116644aec6b27b36fca32e038d.1582214035.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_075653_081047_6010EDB3 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Fabio Estevam <fabio.estevam@nxp.com>,
 Franck LENORMAND <franck.lenormand@nxp.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is not used by linux and not supported as part of imx SCU api, it
was added by mistake.

The constant value "9" has since been reassigned in firmware to a
different service.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 include/linux/firmware/imx/ipc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/linux/firmware/imx/ipc.h b/include/linux/firmware/imx/ipc.h
index 6312c8cb084a..891057434858 100644
--- a/include/linux/firmware/imx/ipc.h
+++ b/include/linux/firmware/imx/ipc.h
@@ -23,11 +23,10 @@ enum imx_sc_rpc_svc {
 	IMX_SC_RPC_SVC_RM = 3,
 	IMX_SC_RPC_SVC_TIMER = 5,
 	IMX_SC_RPC_SVC_PAD = 6,
 	IMX_SC_RPC_SVC_MISC = 7,
 	IMX_SC_RPC_SVC_IRQ = 8,
-	IMX_SC_RPC_SVC_ABORT = 9
 };
 
 struct imx_sc_rpc_msg {
 	uint8_t ver;
 	uint8_t size;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
