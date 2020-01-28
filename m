Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB9E14B1EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 10:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RumBAkNFdd33EytCOKYEwlZbnXEST58xuGV+KVlLBo=; b=mBfhtkQxFYCqCu
	mtPBYBN0JVf7VNqDwJZ3l+FR64EtivyiO7x8Wft702RSSZFPBLGzdpUJetZJ7JzB7UhBFhLZ8Rpvm
	KoWpJ5yNHRVNj4iT3ZXpHyB0Bme8NTsyTiAeHVg38wbMQAintHRVoKjJG28JgHVJR6iz6uGXOnidy
	KynJC/ZyLAePe+l8YwSCYSwbzCkWajLn711/b1UB+app8TGLNgT0I+ORLHa/qs/PnM0fS0Up9utvT
	y2GWxo/KxxCLLfIbmZwCRH1EAkZzGqHl7Mc1smUe83SsSpi15x6stqk4ObPalo1HdBdc5SE+GLY+k
	oFPzb6vK8aXjNG0bLhSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwNPB-0008Vh-Pc; Tue, 28 Jan 2020 09:43:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNO0-0007ZX-JV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 09:42:23 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S9X0HB000609; Tue, 28 Jan 2020 10:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=q0/ZRftGwXUvPNBAcTtwgWBj7A7urGK8v4Z7CD9K7Jo=;
 b=weScv0PxU3WhSRqruB7mNIdHIvaRB4mta0p5p/YpScu9AIZBWDtOaCkX+JVDFX27LoxQ
 EDKrP0KdR75kLDwtjDwJyE1+OIli04hY1NSF//hgI/GrvkUXpwcDMTY9mdi9X3oQsJNr
 h1gJjnMB5634/IhUTmtFO4JdCCZjuUKT7foW8+fw6Mc8YbGXwFW/VvAoQA+I1zTHl4nj
 un5HdOBWLhCgbJkr3p/mdlAVRzEqycUH5SfEDx9MeP3y0EVEm42aXLTazhY3EG8NG9lq
 FJ+ZENon9dQa9vjx8J9TLjhhn1JzpAs0p51hejrRdA2hii3e/SX0YzTZzPwarnyzKjV1 2A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcaxw22c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 10:42:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D4A6310002A;
 Tue, 28 Jan 2020 10:42:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C990A21D3C0;
 Tue, 28 Jan 2020 10:42:10 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 10:42:10
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 4/4] dmaengine: stm32-dmamux: driver defers probe for clock
 and reset
Date: Tue, 28 Jan 2020 10:41:58 +0100
Message-ID: <20200128094158.20361-5-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200128094158.20361-1-amelie.delaunay@st.com>
References: <20200128094158.20361-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_02:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_014220_943416_276D96DD 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>, linux-kernel@vger.kernel.org,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Changes STM32 DMAMUX driver to defer its probe operation when
reset controller is expected but has not been probed yet.

Changes error traces when failing to get a system resource so that
it is not printed on failure with deferred probing.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-dmamux.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/stm32-dmamux.c b/drivers/dma/stm32-dmamux.c
index 1dfecbac64cf..12f7637e13a1 100644
--- a/drivers/dma/stm32-dmamux.c
+++ b/drivers/dma/stm32-dmamux.c
@@ -254,8 +254,8 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 	stm32_dmamux->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(stm32_dmamux->clk)) {
 		ret = PTR_ERR(stm32_dmamux->clk);
-		if (ret == -EPROBE_DEFER)
-			dev_info(&pdev->dev, "Missing controller clock\n");
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Missing clock controller\n");
 		return ret;
 	}
 
@@ -266,7 +266,11 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 	}
 
 	rst = devm_reset_control_get(&pdev->dev, NULL);
-	if (!IS_ERR(rst)) {
+	if (IS_ERR(rst)) {
+		ret = PTR_ERR(rst);
+		if (ret == -EPROBE_DEFER)
+			goto err_clk;
+	} else {
 		reset_control_assert(rst);
 		udelay(2);
 		reset_control_deassert(rst);
@@ -291,7 +295,12 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 	ret = of_dma_router_register(node, stm32_dmamux_route_allocate,
 				     &stm32_dmamux->dmarouter);
 	if (ret)
-		clk_disable_unprepare(stm32_dmamux->clk);
+		goto err_clk;
+
+	return 0;
+
+err_clk:
+	clk_disable_unprepare(stm32_dmamux->clk);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
