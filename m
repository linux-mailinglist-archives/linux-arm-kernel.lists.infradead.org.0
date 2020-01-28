Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A254B14B1EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 10:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ilxFB+e9YEY5INLfI3QJu7m+QkKcOfj4eWTroVhqBE=; b=qd9L0l7sLfcnpx
	Ba+xcTBFdl7gi38gmpeW3/bFCLgDol2giWOx6gOthKD8uWz0iwdTKtdT4tQLiWy2ZrS8lR6uwG8ND
	/Vwdh3T8BbNkp4BVWMlq9/NuvIH++vyqvvX/dsaNckgrF4FYFDFWl9miWcPng/oE2wzpOMUrTKsA2
	Fr1ZLQTwH8gyT0f6l/JEeXZPXEyu+Q8vFXr0idlbjPnlHAJ3q96jn7qxFWZMCsD3s6kp79N3A3RC6
	j6uJuSA37rRqajdgaRKlGk2cPVELnGNhy3AFpuzzLfSHjuaaR1Klnnjt/gnrjNES3GMCVqtb7NqJ7
	oWxhu+8rC4/Em9kNhZaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwNOY-0007lh-7a; Tue, 28 Jan 2020 09:42:54 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNO0-0007ZW-IA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 09:42:22 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S9WY2Y031223; Tue, 28 Jan 2020 10:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=+sBJ5wscdYLYeiF4DeuorI/LsDqHFHp2G8EwB/5qkCw=;
 b=OZPFB8fOFpQ0iagujnOK0ewnRVGKCKaqL3mAGlE+IZkMVt9HEPM5Qxy915L+cPzmFnyp
 GEcHANaXEDp/7t7OZFXVZOy6Q8B7Y3lRBAS0BQvl9mKHp8/kV0y8vPfWpGvywrG1sUrL
 3iyRS2U229GhPZu/iCI3dnEBVJD+bOvnFt5JgKquriv4wYXUaWDh2mrj2dppixVkHpOi
 eFbilKrzu0HM8ipZbckUeQ8ROnlKn7p8ojYtmvkqn34B+jd4I9OArJ4xNhWIv5uIGnZ9
 WU4C994/o3vN2RGIWv/BBs3SKyyxSzNVdcAI2BNOgG+6NX+q0uPT1Wxj8611hRtBE9cA pw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrdekd0me-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 10:42:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 16B5110003E;
 Tue, 28 Jan 2020 10:42:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0B10521D3C0;
 Tue, 28 Jan 2020 10:42:08 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 10:42:07
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 1/4] dmaengine: stm32-dmamux: add suspend/resume power
 management support
Date: Tue, 28 Jan 2020 10:41:55 +0100
Message-ID: <20200128094158.20361-2-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200128094158.20361-1-amelie.delaunay@st.com>
References: <20200128094158.20361-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_02:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_014220_916396_0FBB291F 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

From: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Add suspend/resume power management relying on PM Runtime engine.

Signed-off-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-dmamux.c | 50 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/dma/stm32-dmamux.c b/drivers/dma/stm32-dmamux.c
index 3c89bd39e096..08d2395c8943 100644
--- a/drivers/dma/stm32-dmamux.c
+++ b/drivers/dma/stm32-dmamux.c
@@ -41,6 +41,9 @@ struct stm32_dmamux_data {
 	u32 dmamux_requests; /* Number of DMA requests routed toward DMAs */
 	spinlock_t lock; /* Protects register access */
 	unsigned long *dma_inuse; /* Used DMA channel */
+	u32 ccr[STM32_DMAMUX_MAX_DMA_REQUESTS]; /* Used to backup CCR register
+						 * in suspend
+						 */
 	u32 dma_reqs[]; /* Number of DMA Request per DMA masters.
 			 *  [0] holds number of DMA Masters.
 			 *  To be kept at very end end of this structure
@@ -318,7 +321,54 @@ static int stm32_dmamux_runtime_resume(struct device *dev)
 }
 #endif
 
+#ifdef CONFIG_PM_SLEEP
+static int stm32_dmamux_suspend(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct stm32_dmamux_data *stm32_dmamux = platform_get_drvdata(pdev);
+	int i, ret;
+
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0)
+		return ret;
+
+	for (i = 0; i < stm32_dmamux->dma_requests; i++)
+		stm32_dmamux->ccr[i] = stm32_dmamux_read(stm32_dmamux->iomem,
+							 STM32_DMAMUX_CCR(i));
+
+	pm_runtime_put_sync(dev);
+
+	pm_runtime_force_suspend(dev);
+
+	return 0;
+}
+
+static int stm32_dmamux_resume(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct stm32_dmamux_data *stm32_dmamux = platform_get_drvdata(pdev);
+	int i, ret;
+
+	ret = pm_runtime_force_resume(dev);
+	if (ret < 0)
+		return ret;
+
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0)
+		return ret;
+
+	for (i = 0; i < stm32_dmamux->dma_requests; i++)
+		stm32_dmamux_write(stm32_dmamux->iomem, STM32_DMAMUX_CCR(i),
+				   stm32_dmamux->ccr[i]);
+
+	pm_runtime_put_sync(dev);
+
+	return 0;
+}
+#endif
+
 static const struct dev_pm_ops stm32_dmamux_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(stm32_dmamux_suspend, stm32_dmamux_resume)
 	SET_RUNTIME_PM_OPS(stm32_dmamux_runtime_suspend,
 			   stm32_dmamux_runtime_resume, NULL)
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
