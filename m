Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D313C14A041
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exi8AN6jrBighFO3J80Vt586mIFsfhDW2vpc8V1Ljb4=; b=ZjSfWv+eaKzmgH
	c1Q1362weZExxgDhMsaz4nn8pxWA+1aGymerQcj4zft9uFLfWjYKWtW8mDGFSjj8O+wq0gsBrxjen
	JKNoBelVLDp1DP5ViZ9GUvgriS7sJWYSL+Sp2qFrO8x9QicBwnQ5Y3U+M7H8+kWFJdMVJgo4vLrR/
	+/KgDfUQGta+dDWiOtM3OJXDb/TyF1qvUAb5HRbZRKSUEjnUpor5DLVezQfS1tkTf/BV9GhbXozE8
	7MJoW4nFYO+knWJ0O9CRj95s0TNkLTxEbJ4rzKrhlhUJe/U0ZzUMnWoPIQ8nG1K8UVedKm93fKP5x
	4bd/Pr6YH5vcJkLnccQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0BU-0004N2-3N; Mon, 27 Jan 2020 08:55:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw09e-00036t-2p
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:54:01 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00R8rFdG011482; Mon, 27 Jan 2020 09:53:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=LtSHbdDzwkhiZy1H0EyZ/LNU5Qx0QFD829og3RZwGKs=;
 b=YImN5QDAJ5SKzsF1n+ufDKihYRX45WURp8FPosQTzM0WVB9mujnHP6WlH4LkNSscIlts
 KGd8oFY4DRHUB6sdbgkNVWazgrbM9aiEasOIAMds5Ms4Hy42Xf2xTPkcrr8Rk9aru7nB
 Bq22vnQ3Zix3LKxXKUuVM3+9JGK+i66E/Ukcu6Wp5FQJ5Fd3lA/tb2UUaqWyD6ai44lj
 zuuC1U6fZciw9HQ+phYRtCOs0g5RTongw7XV9vkOjrYNkPZQG+0jy8p7CHM+1TsN0etg
 emFcN3Y/jsFtGti0+RC2tP1kOPMJJuv6DGZpRcpldeL5ijE6YNneUnEs7q0EQ+kXAiyQ 6g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpar4sv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 09:53:47 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F15DD10003B;
 Mon, 27 Jan 2020 09:53:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E54F021CA6A;
 Mon, 27 Jan 2020 09:53:42 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 27 Jan 2020 09:53:42
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 1/6] dmaengine: stm32-mdma: add suspend/resume power
 management support
Date: Mon, 27 Jan 2020 09:53:29 +0100
Message-ID: <20200127085334.13163-2-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127085334.13163-1-amelie.delaunay@st.com>
References: <20200127085334.13163-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_005358_535091_7CF590B8 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/dma/stm32-mdma.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/dma/stm32-mdma.c b/drivers/dma/stm32-mdma.c
index 5838311cf990..2898411941d5 100644
--- a/drivers/dma/stm32-mdma.c
+++ b/drivers/dma/stm32-mdma.c
@@ -1697,7 +1697,40 @@ static int stm32_mdma_runtime_resume(struct device *dev)
 }
 #endif
 
+#ifdef CONFIG_PM_SLEEP
+static int stm32_mdma_pm_suspend(struct device *dev)
+{
+	struct stm32_mdma_device *dmadev = dev_get_drvdata(dev);
+	u32 ccr, id;
+	int ret;
+
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0)
+		return ret;
+
+	for (id = 0; id < dmadev->nr_channels; id++) {
+		ccr = stm32_mdma_read(dmadev, STM32_MDMA_CCR(id));
+		if (ccr & STM32_MDMA_CCR_EN) {
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
+static int stm32_mdma_pm_resume(struct device *dev)
+{
+	return pm_runtime_force_resume(dev);
+}
+#endif
+
 static const struct dev_pm_ops stm32_mdma_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(stm32_mdma_pm_suspend, stm32_mdma_pm_resume)
 	SET_RUNTIME_PM_OPS(stm32_mdma_runtime_suspend,
 			   stm32_mdma_runtime_resume, NULL)
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
