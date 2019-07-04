Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38195F4FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y8UmCdJGsLYMsqtSLq3TODwU70MtQv+NQ/jOxEQ/BLc=; b=VgxxJq0mFLJYgXTNIwXLSTr1nc
	kWDxOPRRdkvNcwik5GvaFvkdqjQwurrI4AQLvRvtjLHka8AMCFwyEZClHficKhKq2KS4LR8m7OjUL
	B3ll3sH8xTmohzjXWHGwmT8YHfvxIssZl+2SnV9h8wMYnobH1dogfS2AUE+HaakpSeqU6BdLb3az4
	maBvN4axAkmbfA39D7nQlHxu7d69NJlxSItVyVfcZfQIdjKXYqA8S6q/EcYPv9sapINyG4HCnQ6pX
	yM7rhp8x7kfzMqoqsJT2dZJVzvDx7P3IYXm7s4XTaFbb0Zx+1C9HKZ4I3u4wnJ03tU1v7e6N+4rL2
	Yuv1mDiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixVU-0001LT-2E; Thu, 04 Jul 2019 08:54:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixUm-00019f-EO
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:53:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D69CA200580;
 Thu,  4 Jul 2019 10:53:34 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C92E920057F;
 Thu,  4 Jul 2019 10:53:34 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E140C205D9;
 Thu,  4 Jul 2019 10:53:33 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
 Frank Li <Frank.li@nxp.com>
Subject: [PATCH 1/3] perf/imx_ddr: Add MODULE_DEVICE_TABLE
Date: Thu,  4 Jul 2019 11:53:20 +0300
Message-Id: <6e88abe2ed5f361469cbb8ccccd4586036fc2fa2.1562230183.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562230183.git.leonard.crestez@nxp.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1562230183.git.leonard.crestez@nxp.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_015336_620551_3CFB816F 
X-CRM114-Status: UNSURE (   7.99  )
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
 Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is required for automatic probing when driver is built as a module.

Fixes: 9a66d36cc7ac ("drivers/perf: imx_ddr: Add DDR performance counter support to perf")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..0e3310dbb145 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -45,10 +45,11 @@ static DEFINE_IDA(ddr_ida);
 static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
 	{ .compatible = "fsl,imx8-ddr-pmu",},
 	{ .compatible = "fsl,imx8m-ddr-pmu",},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx_ddr_pmu_dt_ids);
 
 struct ddr_pmu {
 	struct pmu pmu;
 	void __iomem *base;
 	unsigned int cpu;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
