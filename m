Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2625D14B177
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 10:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4BYNc98I8RFsGXs/iQYEKT9KMN0Tbf7cbdeMgRw/E4=; b=nOmhGSIsalzT5P
	35fjGwr8sHSVlHGVXfaCWl1k1r2AILCAUWoOgAY6lHbz7Ltn8EaEav4gixVikcZKyqmFkhoJTXnxe
	zZMVpMdI2igmvgCMBfyRWPSxd1oCQluFE/57NJw+hZy5NbHipLmI3D+gS/8eyfD3QRScFKxtUvnVq
	yMkhklhNsKanAi5coRmVUCKQW9+F83Qjic60ynYWOvYLjlMdraEJjySef4krwYIhjkoSjGLqqm+1P
	gNQu5gxpmb+FvA8hCS19xW/w5M4Z0NQS7YRJ6Avwvzos5UotYQZpqJxVqm8uFM+ejCLVc+CZtOS4j
	F0ck8+/D9vvFneyF2C+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwMqu-00026i-Iu; Tue, 28 Jan 2020 09:08:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMph-00012f-FB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 09:06:55 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S93bVd014413; Tue, 28 Jan 2020 10:06:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=uwVKjFIFlaDhQtYabxIoz0B6CJflTfSuEcRda3jxomk=;
 b=POcqSICWxXBkWXwU3yLBQ4gMYEIjmvGMVpDFsQm0QJ1SuIRpDWyS8fTq2D41GMXsJXXh
 ByPep/f8kaPqPvMxhXFxveXNTwOVN0yxXNR7W4EFCbDOW0cTnzZBkjmHLGiX6qDrhMQl
 EfXz+2E3Z/StkbpnGnyZhWaqcAocPmgW6we8pQ7tyFIQof8DBOlj70ctqesWfP6mrQe1
 efQQU5+mwgaYQ+jA7ahIOdGW1rc0ai+76/CsMNZoXeEoKMuOik63c+G1kXvRtNUPX2rI
 x3CmD5fcoKghtVufNh4Yl4OZBtjTl/NzferOfwyuAOAqhN1oqEZC/exmP6itvHYvXAZ+ 1g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpaw4sv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 10:06:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 88D6B100044;
 Tue, 28 Jan 2020 10:06:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7A0A4212A35;
 Tue, 28 Jan 2020 10:06:42 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 28 Jan 2020 10:06:42 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V2 3/9] mmc: mmci: add a reference at mmc_host_ops in mmci
 struct
Date: Tue, 28 Jan 2020 10:06:30 +0100
Message-ID: <20200128090636.13689-4-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200128090636.13689-1-ludovic.barre@st.com>
References: <20200128090636.13689-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_02:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_010653_810144_23A04C47 
X-CRM114-Status: GOOD (  15.60  )
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The variant init function may need to add a mmc_host_ops,
for example to add the execute_tuning support if this feature
is available.
This patch adds mmc_host_ops pointer in mmci struct.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 4 ++--
 drivers/mmc/host/mmci.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index e9ffce8d41ea..d0a041c9e6cd 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -1933,6 +1933,8 @@ static int mmci_probe(struct amba_device *dev,
 
 	host = mmc_priv(mmc);
 	host->mmc = mmc;
+	host->mmc_ops = &mmci_ops;
+	mmc->ops = &mmci_ops;
 
 	/*
 	 * Some variant (STM32) doesn't have opendrain bit, nevertheless
@@ -2072,8 +2074,6 @@ static int mmci_probe(struct amba_device *dev,
 	host->stop_abort.arg = 0;
 	host->stop_abort.flags = MMC_RSP_R1B | MMC_CMD_AC;
 
-	mmc->ops = &mmci_ops;
-
 	/* We support these PM capabilities. */
 	mmc->pm_caps |= MMC_PM_KEEP_POWER;
 
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index ea6a0b5779d4..55acc0971a44 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -407,6 +407,7 @@ struct mmci_host {
 	u32			mask1_reg;
 	u8			vqmmc_enabled:1;
 	struct mmci_platform_data *plat;
+	struct mmc_host_ops	*mmc_ops;
 	struct mmci_host_ops	*ops;
 	struct variant_data	*variant;
 	struct pinctrl		*pinctrl;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
