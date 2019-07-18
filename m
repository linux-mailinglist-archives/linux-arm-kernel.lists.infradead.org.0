Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86066CCBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 12:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ej7JfSGkeXCd/ZdObDHW8nPU+aTLA4odASS+ZQv17fs=; b=JYlSsEzH1r0H2qW0T2amyUXakx
	64YfIlXjbatjqLl/H+15g4cOVcX4wz99W2DS9ZpkjPusCRYUa9v1nMyIEW6xdKRmFzzn00UuZG7Tp
	CqAWdLW8iLE+Gtfsw0scz7udFI1P48IXFV3nQGE6QbRPbIBm3RlB7Bo12bl7TDteBX41B/gXFltFs
	/J35xqJNbUWLya3zGaMERmxm5dFumpQV1SUH4Ct4blQ+4003DtUzawglMPyoiz8j6Lki7W2/4C057
	Mx/qMGqc+X89bicDMeVAV3ERVY+bm3LGmRu4nOSwBazDBA99RjAeWUhLv1Fpt9svVUOFGIHOFRG44
	o/X/uW2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho3c9-0006jl-GS; Thu, 18 Jul 2019 10:26:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho3bJ-0006HQ-4F
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 10:25:26 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5D32D2002D6;
 Thu, 18 Jul 2019 12:25:23 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 50B092000B9;
 Thu, 18 Jul 2019 12:25:23 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id BBA77205C7;
 Thu, 18 Jul 2019 12:25:22 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 2/3] firmware: imx: scu-pd: Add mu13 b side PD range
Date: Thu, 18 Jul 2019 13:25:18 +0300
Message-Id: <20190718102519.31855-3-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190718102519.31855-1-daniel.baluta@nxp.com>
References: <20190718102519.31855-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_032525_307006_8358F8FB 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, =kernel@pengutronix.de,
 Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de,
 ulf.hansson@linaro.org, linux-kernel@vger.kernel.org, paul.olaru@nxp.com,
 linux-imx@nxp.com, festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LSIO subsystem contains 14 MU instances.

5 MUs to communicate between AP <-> SCU
  - side-A PD range managed by AP
  - side-B PD range managed by SCU

9 MUs to communicate between all cores (AP/M4/DSP).
  - side-A PD range managed by core-A (AP/M4/DSP)
  - side-B PD range managed by core-B (AP/M4/DSP).

Communication between AP <-> DSP is done through the
assigned MU number 13.

So, we power up side-A by the AP and we decide to
power up side-B also from AP. This is because powering
it up from DSP would be painful.

Powering up side B from DSP would require the DSP to
communicate with SCU and to keep things simple we don't
want that now.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index 950d30238186..eb9700b66a76 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -93,6 +93,7 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	{ "kpp", IMX_SC_R_KPP, 1, false, 0 },
 	{ "fspi", IMX_SC_R_FSPI_0, 2, true, 0 },
 	{ "mu_a", IMX_SC_R_MU_0A, 14, true, 0 },
+	{ "mu_b", IMX_SC_R_MU_13B, 1, true, 13 },
 
 	/* CONN SS */
 	{ "usb", IMX_SC_R_USB_0, 2, true, 0 },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
