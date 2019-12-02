Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA4C10E6A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 09:05:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rhERN3HcDQxMyVLaA5mNzV42LUErSSwVpWSfGnkTUgA=; b=in/
	3TGUnDUEvNBW9hk885IKNtsi2wTOET2+eMAQb507I/UD9sVgybEk0f1D6GfLo5r2Jg5H3PbmN+2vW
	l0BnmQCSnuohAI4Nmqy8UwVbfbPeit747pJMvNj+Es6E+DU7stk04BGG9vsTSukFKw0LTCxKTgeNu
	ZX9k9649TRqfNwleqrBXtRAt1G0ZQ4AQmpNbFLB3aGiu9qHX3+ScGERGHHgEgAbXTWr2VWQMD6VnH
	rsZW6RPH2qQ6AE9gL5sop4ogC8RtHDOMgyYj1mlUYu5dVu9jGRfV6/PsD3YOKnumLkXfLRupvl5Ev
	98L7iXF0uCYk4CHPFC5QMFnI/cVpgYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibghT-0007Jw-VX; Mon, 02 Dec 2019 08:04:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibghM-0007Ir-LL
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 08:04:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 032011A0E29;
 Mon,  2 Dec 2019 09:04:40 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EB5C01A068D;
 Mon,  2 Dec 2019 09:04:39 +0100 (CET)
Received: from fsr-ub1864-103.ro-buh02.nxp.com
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 331B1203C6;
 Mon,  2 Dec 2019 09:04:39 +0100 (CET)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH] firmware: imx: Allow IMX DSP to be selected as module
Date: Mon,  2 Dec 2019 10:04:32 +0200
Message-Id: <20191202080432.12579-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_000448_836081_FA9A09DE 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de, paul.olaru@nxp.com,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IMX DSP is only needed by SOF or any other module that
wants to communicate with the DSP. When SOF is build
as a module IMX DSP is forced to be built inside the
kernel image. This is not optimal, so allow IMX DSP
to be built as a module.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/firmware/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
index 0dbee32da4c6..1d2e5b85d7ca 100644
--- a/drivers/firmware/imx/Kconfig
+++ b/drivers/firmware/imx/Kconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config IMX_DSP
-	bool "IMX DSP Protocol driver"
+	tristate "IMX DSP Protocol driver"
 	depends on IMX_MBOX
 	help
 	  This enables DSP IPC protocol between host AP (Linux)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
