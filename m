Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4B35EC31
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6ad+/b0LWd1BghxL0FOihdrVoqpy4Ms99Qx0pDmTBfA=; b=c9NtvAEdySQKTOneDOIPiV2Mvu
	4UWR64I9EE5btHIJbbpp/VDicfDOVP9JxT9D4jBLNO7wxZuosLPFZinhg/qHq02dNTMe15Ob0GrDP
	ceLHZK1crEsbmlMK7cOczOeNidYQbuV1blWhF42QklyXZk57ow+DElm2Sfaazre8pFewVc4Y6v6Fz
	T/c39nHgVhi+yq/1+N39HS5iCXyXoEtYtqAJ9FjEF9KbkMVId/A6QVptW436HEfijuHHiltDIQKfH
	4J8NB9dLp+2mh+/Rx+gNd1NMAJq4CEk2cdNMKJ3CYvUNIYQnfHnLCF3Uk9TcTmGVmwTjAVEzFwmtC
	4XegnTXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikZP-00013x-4M; Wed, 03 Jul 2019 19:05:31 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikYJ-0007Vg-82
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 19:04:25 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 30BF920043C;
 Wed,  3 Jul 2019 21:04:20 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 21BC7200434;
 Wed,  3 Jul 2019 21:04:20 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 96388205F0;
 Wed,  3 Jul 2019 21:04:19 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/3] firmware: imx: scu-pd: Add mu_b side PD range
Date: Wed,  3 Jul 2019 22:04:03 +0300
Message-Id: <20190703190404.21136-3-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703190404.21136-1-daniel.baluta@nxp.com>
References: <20190703190404.21136-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_120423_443363_9D13A9EA 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, ulf.hansson@linaro.org,
 Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, shengjiu.wang@nxp.com,
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

9 MUs to communicate between AP <-> M4
  - side-A PD range managed by AP
  - side-B PD range managed by AP

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index 950d30238186..30adc3104347 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -93,6 +93,7 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	{ "kpp", IMX_SC_R_KPP, 1, false, 0 },
 	{ "fspi", IMX_SC_R_FSPI_0, 2, true, 0 },
 	{ "mu_a", IMX_SC_R_MU_0A, 14, true, 0 },
+	{ "mu_b", IMX_SC_R_MU_5B, 9, true, 0 },
 
 	/* CONN SS */
 	{ "usb", IMX_SC_R_USB_0, 2, true, 0 },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
