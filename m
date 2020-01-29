Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCAF14CDA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 16:38:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wixRCECpazwm3Fa6kp95T7W365E2ghJ6UbNyFiHaEcQ=; b=q6XcwVTMb/0FDT
	pcETyqEoby+hiskuhDMXWsty8FEfsQhFxziayyvZ3EuJZ5q2dIiOEiCmiFeUT2X3NUIxdLAL9F3PV
	Qd5i91NTXcZ5rhqIaLVhdwDGOkC9lJ1+azTLLNCqgTWjFNoToR+FL16TejE334DJLj+rqE8+HGpoe
	OJLd14jha/GwJv+AZBgWXU+bq8hjEUP4RfTFZooGxhgmH4bhT68kzc4DWNWePN42qVDXi0KiRUN+b
	XiImcqbKkc5zRVFCXRKWjDqdJQsTJ7vU0lZyWoBtKqYydpGXn71em5Q+cprKu6xOIRk6GoK7UIZL4
	VC3QPLpHmstV2Kw++zWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwpPf-0005Gv-MT; Wed, 29 Jan 2020 15:37:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwpOa-0004jO-EV
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 15:36:51 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00TFNArk019435; Wed, 29 Jan 2020 16:36:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=FTwlwAJVvpaWy8fYy66eici26G8B7MCSYZZ6gDACdPA=;
 b=W/1PLDamJCauZfsoHE3Ecll/AmbNrSQWNXx+ryR1rIX4hqBKdeMcwcoFlhafpBpHf1Iu
 vEAiJgPFWvkezTYeT56irKWmcyzohPSsdXx6y6+Dgv93uQqGpgZbckD6QFscleto304K
 3+7Cv+r3AwJjhf2vFZBoXRQrvqXGu6rcCBjdsPKgTvr9hy8cUq+oCz6Ljea1C5BVytA6
 zFtIos65TJWL4kO4Wlii6O0K9KogSNavTV4cHWmrH85afHBsCXKsJz5qa2LygUKe4q+z
 rjPpqz1JSTv99qcHtkYjEbddWNgX7s/pFOv4KId4rNwQ25e4B2fpzZ35ZA3UfjvSOkT2 Jw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcay3vb1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Jan 2020 16:36:36 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6C6B310002A;
 Wed, 29 Jan 2020 16:36:36 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5ECEC2BC7C2;
 Wed, 29 Jan 2020 16:36:36 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 Jan 2020 16:36:35
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 3/8] dmaengine: stm32-dma: driver defers probe for reset
Date: Wed, 29 Jan 2020 16:36:23 +0100
Message-ID: <20200129153628.29329-4-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200129153628.29329-1-amelie.delaunay@st.com>
References: <20200129153628.29329-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-29_03:2020-01-28,
 2020-01-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_073648_808733_8A0EB9D5 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Change STM32 DMA driver to defer its probe operation when reset
controller is expected but has not been probed yet when DMA
device is probed.

Changes error traces when failing to get a system resource so that
it is not printed on failure with deferred probing.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-dma.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index e31414796ec4..c8bbe08b8e32 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -1296,8 +1296,10 @@ static int stm32_dma_probe(struct platform_device *pdev)
 
 	dmadev->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(dmadev->clk)) {
-		dev_err(&pdev->dev, "Error: Missing controller clock\n");
-		return PTR_ERR(dmadev->clk);
+		ret = PTR_ERR(dmadev->clk);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Can't get clock\n");
+		return ret;
 	}
 
 	ret = clk_prepare_enable(dmadev->clk);
@@ -1310,7 +1312,11 @@ static int stm32_dma_probe(struct platform_device *pdev)
 						"st,mem2mem");
 
 	rst = devm_reset_control_get(&pdev->dev, NULL);
-	if (!IS_ERR(rst)) {
+	if (IS_ERR(rst)) {
+		ret = PTR_ERR(rst);
+		if (ret == -EPROBE_DEFER)
+			goto clk_free;
+	} else {
 		reset_control_assert(rst);
 		udelay(2);
 		reset_control_deassert(rst);
@@ -1470,10 +1476,11 @@ static struct platform_driver stm32_dma_driver = {
 		.of_match_table = stm32_dma_of_match,
 		.pm = &stm32_dma_pm_ops,
 	},
+	.probe = stm32_dma_probe,
 };
 
 static int __init stm32_dma_init(void)
 {
-	return platform_driver_probe(&stm32_dma_driver, stm32_dma_probe);
+	return platform_driver_register(&stm32_dma_driver);
 }
 subsys_initcall(stm32_dma_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
