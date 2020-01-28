Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D60214B1EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 10:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+Zq3RxOfyk0ngMuHVz2myyD1uDy/Bn3uKxH8K4Hxac=; b=PCC6XeRNYJ2YtC
	SBFbRT2Bmpe/59epJUrMEUlZIYrFJR++6gHtV4ZK1gNnKjKJwpK5uQknp3brL4GQlo25XYsa+rzby
	ZYLLSHIWVnKdt6/SSdq7RcmzvYbrbK+bJ4mSEtYb7kMH89xxFysd2/aOCyVLZO/IqNwATsHC0HfYY
	9CMqzPJgCW7bEij2p37sSwu7tSu6ZbikiJ0iyAA7wIzN29lr+AN9zmts4sIoCcLXDuCh5EMPf7y6Y
	1FrkQi55Otm2iG8+T3izN1+qve03caELbAoaajc1Cn7/Z1u6B/9SSfsvO+u5RNvf/vTEGq0488fCu
	r6i7hluBchihztvf7qsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwNOx-0008HA-1s; Tue, 28 Jan 2020 09:43:19 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNO0-0007ZY-JX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 09:42:23 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S9g9Eo007603; Tue, 28 Jan 2020 10:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=meXrSPvvSNZwM5HWiSKL727KyNlCOtYyZ+UfmgFHvs0=;
 b=TzTK4D9ABmvIvWE5xh+svbw84ZDLMsf/RxoEK2U5EJVzxHoOe8WfLeXcnMizLgsdvoxx
 VYZ5MowTqIWcpOQTRHF0dr3yM2CZXUcsU9SrJwsqV5rydTS3R+scTBzXsYYpA6Wj5S95
 SRJf8ssKZArx/dw2NKJFVb9eEEgVGIXDxIhhC19bkjiinXoPoZeSmfkHDmgEEovx2NId
 5PAErDjGWAlLRO7cTksCTNNA9V4kKtp0MsyLcb9lj7uTrMZ48JS8jHP/dnDqRgyAdvYN
 Fbufn/DFQ8wOmWA4Q+F1x6qQFWQc1RlRaFV4sr3qksIPXHu0MSTgn19x3yBlKWJiNts5 yw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrc1353nm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 10:42:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B038E100039;
 Tue, 28 Jan 2020 10:42:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A20F321D3C0;
 Tue, 28 Jan 2020 10:42:08 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 10:42:08
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 2/4] dmaengine: stm32-dmamux: fix clock handling in probe
 sequence
Date: Tue, 28 Jan 2020 10:41:56 +0100
Message-ID: <20200128094158.20361-3-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200128094158.20361-1-amelie.delaunay@st.com>
References: <20200128094158.20361-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_02:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_014220_945155_EA60A87E 
X-CRM114-Status: GOOD (  16.72  )
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

This change ensures the DMAMUX device is reset only once it is clocked
and that clock is released in a safe state when probe operation fails.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-dmamux.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/dma/stm32-dmamux.c b/drivers/dma/stm32-dmamux.c
index 08d2395c8943..a862d3339fb7 100644
--- a/drivers/dma/stm32-dmamux.c
+++ b/drivers/dma/stm32-dmamux.c
@@ -259,6 +259,12 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = clk_prepare_enable(stm32_dmamux->clk);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "clk_prep_enable error: %d\n", ret);
+		return ret;
+	}
+
 	stm32_dmamux->rst = devm_reset_control_get(&pdev->dev, NULL);
 	if (!IS_ERR(stm32_dmamux->rst)) {
 		reset_control_assert(stm32_dmamux->rst);
@@ -274,14 +280,6 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
 
-	if (!IS_ERR(stm32_dmamux->clk)) {
-		ret = clk_prepare_enable(stm32_dmamux->clk);
-		if (ret < 0) {
-			dev_err(&pdev->dev, "clk_prep_enable error: %d\n", ret);
-			return ret;
-		}
-	}
-
 	pm_runtime_get_noresume(&pdev->dev);
 
 	/* Reset the dmamux */
@@ -290,8 +288,12 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 
 	pm_runtime_put(&pdev->dev);
 
-	return of_dma_router_register(node, stm32_dmamux_route_allocate,
+	ret = of_dma_router_register(node, stm32_dmamux_route_allocate,
 				     &stm32_dmamux->dmarouter);
+	if (ret)
+		clk_disable_unprepare(stm32_dmamux->clk);
+
+	return ret;
 }
 
 #ifdef CONFIG_PM
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
