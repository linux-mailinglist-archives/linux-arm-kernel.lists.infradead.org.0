Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6FE1257A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MoIPqEm01UI7N/yaEAJmqw29ZNdCfhjqq+DeIZsctVU=; b=hcR
	RbzeRWU52UUPRsubw9RBu9v8++2/tAbm0K+gkpwl8KhcrncQJMx7+3LpUnoZXInQLRSLx/DcUkSQ8
	T9IbX+BIRriXYXmzVUaElaRZUWMaNkTM7vg8ApPuaqgkzaJwJz35Fwq6N9FcyCssmxfEdKz3/CkDX
	drc90UDrGoEf8BosfmKuKbTkgL8K3937vjnavhvWAEZyD3X9qT/nK2HYnKkKjgZLry1YthvPNwqAm
	0XJAx0IA6zPQyp7IC4VuR0cL4rPT3GRwGyc4kuNYMj1U0F7XDus2wpRgISC3O+YL5SiDb26W0kXUv
	8K8VrMURxpvAKkQnX0z3za8UDkZiuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihicP-0000Hr-Gy; Wed, 18 Dec 2019 23:20:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihicF-0000Bq-Nk
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:20:29 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7F212200A51;
 Thu, 19 Dec 2019 00:20:24 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6EB7D200930;
 Thu, 19 Dec 2019 00:20:24 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 076F6203C1;
 Thu, 19 Dec 2019 00:20:23 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>, Frank Li <frank.li@nxp.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH] perf/imx_ddr: Fix leaking cpuhp_state
Date: Thu, 19 Dec 2019 01:20:19 +0200
Message-Id: <3cff630697d76d24d4ab93dfcddc978d84b8f2d8.1576711200.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_152027_920447_C785D03F 
X-CRM114-Status: UNSURE (   8.43  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver allocates a dynamic cpu hotplug state but never releases it.
If reloaded in a loop it will quickly trigger a WARN message:

	"No more dynamic states available for CPU hotplug"

Fix by calling cpuhp_remove_multi_state like several other perf pmu
drivers.

Fixes: 8f4c58ae59f5 ("perf/imx_ddr: Fix leaking cpuhp_state")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 3be61be1ba91..aa30ca5f6b29 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -672,12 +672,14 @@ static int ddr_perf_probe(struct platform_device *pdev)
 		goto ddr_perf_err;
 
 	return 0;
 
 ddr_perf_err:
-	if (pmu->cpuhp_state)
+	if (pmu->cpuhp_state) {
 		cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
+		cpuhp_remove_multi_state(pmu->cpuhp_state);
+	}
 
 	ida_simple_remove(&ddr_ida, pmu->id);
 	dev_warn(&pdev->dev, "i.MX8 DDR Perf PMU failed (%d), disabled\n", ret);
 	return ret;
 }
@@ -685,10 +687,11 @@ static int ddr_perf_probe(struct platform_device *pdev)
 static int ddr_perf_remove(struct platform_device *pdev)
 {
 	struct ddr_pmu *pmu = platform_get_drvdata(pdev);
 
 	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
+	cpuhp_remove_multi_state(pmu->cpuhp_state);
 	irq_set_affinity_hint(pmu->irq, NULL);
 
 	perf_pmu_unregister(&pmu->pmu);
 
 	ida_simple_remove(&ddr_ida, pmu->id);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
