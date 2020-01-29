Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23E514CDA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 16:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efMyF5cRcXhu8GdaP2ONoPijnW1idPBJlQT0NyPff0Q=; b=qdR1uriURoCwpd
	nuiwA/jBIZaMkoLfZv0nvbxSFQjsnrepEi7Er7/+JgzkxYD5h8fUIFT+S+suz6pUaeOeHjS7ToWgj
	O+tt+hSq7oyqJSb2xRFlN5wqTegDlrLqmQU/049jNGDu3MWpsLV/JYllmpJcNedGGCekLZZqx4G2X
	CLw3jORAoiNnuacasMfqe+KucTLmfIVEz2tVYX3h2BxGq+d2q0f6pJpLZgRLoCInTaNK3j/SAJ9vz
	BfL0XG15XlgcEJSI5FkNBlGhNoPEC87Cc5QZWUmOt9tpp2MXDc6NCtgyWInyh3JlmVX/FpbMGO+XI
	rnkiLv9QPrgWfTqCU3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwpQM-00063y-Vy; Wed, 29 Jan 2020 15:38:38 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwpOa-0004jM-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 15:36:53 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00TFNArj019435; Wed, 29 Jan 2020 16:36:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=F7q/g3bH1EGFK9krPt73RxMiWkr9k9tY9L3hNSfOodM=;
 b=hzk6S6sSp8iIzAWVBlccDrSLCLZQjXJNf92jRCrvb2WS6EoATt8j4e238FnxMxx+kLuf
 87TMCx8Q5JRfPKqHen480iQ3iaHQtRwR6C4WIHBIq0KM6OkQkl6tEr8z8gnI4SO10nJ8
 eKhXhWAbtucW3BJpwT2CSnRZIfTAXj5qhZZbabvC3RzT+FQY4bMvy4OmNgXqPBpwzksp
 hr7kH5vJc78uQipUkr0C+wgKQ4oIoephewVFGqXH3aJj8kjs1NHzLKqu6qF58KlwlI6j
 7SDHy5Lot4WrKXC7vcMhzS1dN+FDSiR/UMHy7cKFyqjeu8UNBykcltCm4askgh0jHXfq aA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcay3vb0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Jan 2020 16:36:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 228DD100038;
 Wed, 29 Jan 2020 16:36:35 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 10A732BC7C2;
 Wed, 29 Jan 2020 16:36:35 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 Jan 2020 16:36:34
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 1/8] dmaengine: stm32-dma: add suspend/resume power management
 support
Date: Wed, 29 Jan 2020 16:36:21 +0100
Message-ID: <20200129153628.29329-2-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200129153628.29329-1-amelie.delaunay@st.com>
References: <20200129153628.29329-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-29_03:2020-01-28,
 2020-01-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_073648_810087_C583BF8E 
X-CRM114-Status: GOOD (  14.04  )
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

From: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Add suspend/resume power management relying on PM Runtime engine.

Signed-off-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/dma/stm32-dma.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/dma/stm32-dma.c b/drivers/dma/stm32-dma.c
index 5989b0893521..136deabd1aa3 100644
--- a/drivers/dma/stm32-dma.c
+++ b/drivers/dma/stm32-dma.c
@@ -1427,7 +1427,39 @@ static int stm32_dma_runtime_resume(struct device *dev)
 }
 #endif
 
+#ifdef CONFIG_PM_SLEEP
+static int stm32_dma_suspend(struct device *dev)
+{
+	struct stm32_dma_device *dmadev = dev_get_drvdata(dev);
+	int id, ret, scr;
+
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0)
+		return ret;
+
+	for (id = 0; id < STM32_DMA_MAX_CHANNELS; id++) {
+		scr = stm32_dma_read(dmadev, STM32_DMA_SCR(id));
+		if (scr & STM32_DMA_SCR_EN) {
+			dev_warn(dev, "Suspend is prevented by Chan %i\n", id);
+			return -EBUSY;
+		}
+	}
+
+	pm_runtime_put_sync(dev);
+
+	pm_runtime_force_suspend(dev);
+
+	return 0;
+}
+
+static int stm32_dma_resume(struct device *dev)
+{
+	return pm_runtime_force_resume(dev);
+}
+#endif
+
 static const struct dev_pm_ops stm32_dma_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(stm32_dma_suspend, stm32_dma_resume)
 	SET_RUNTIME_PM_OPS(stm32_dma_runtime_suspend,
 			   stm32_dma_runtime_resume, NULL)
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
