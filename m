Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244DE136E98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:50:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iyCO77nulc5WU+GjYNXy8L+RdvsTiKfFzOZAk2Ztdg=; b=oYM+4nXERUjNFJ
	N2HS5JTC4VqU2RvoNAMhu1iUAyd46MNV4ux4fZ9tuKPwPOG1nL+CS4LizpeZGeKE6CvL+6qGajFdv
	CpaEihXcSC3/8SfeT4uSVe/CpcRLM5qloCJ3gVJMFiitIEcdkizGNviClVZAYMXkgoO23VG4bkT1K
	40fcNGHrMkbkUmwVT8wpMyvrXaZbUVXtDLvlH7EKJJnPo80kylzfIkDCe2OOPBMwEylCeN3weoyJ+
	ngQ0Q+yhLwlAdzXerOQVSktuJgLGsyozxr87dvx/yaFfF0WQEw829Kpa4vSnLwHpgoK086vxWwGT8
	XMv59jVY+LYLCFcvmnJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipufm-0004jw-D0; Fri, 10 Jan 2020 13:49:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipueu-0004Cq-Jv
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:07 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADlv1B031938; Fri, 10 Jan 2020 14:49:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=e3/+5F1+4ZDcoT1rkTHB66TYtSZtt3BJjlXvbjrPdfs=;
 b=CGTpbbf8kz7sRr9aPHV01zn091LlVWN/aSeu3HV4zreUezecGO27cx61JzEQ1cujWj5F
 WG2apU3Jgw05rCyfTPSkL95LovNkVeemJSyeQuv98/dTs3snrglPIaqu+y3BiC7EJZQs
 aPxwDmf6VdqTD9yVxASLN0jqOnvHAMXx8mB75FppH7dMHOLcP4GK7+lq1vlJ1TriaYPq
 ZuMNW7Z3WCwPN1X1+69X2F4xgcBZKxb+lqRvZl7BEyUnlW2WNVesHcv2dpO2GwpmJkyC
 H/3i/D1JKU+zQD/5F8uc3fa6SSw+nJ0mFE3myYKwUpctx3Y78TbqEc3Ev0Inf0/m6We5 /g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur7dtd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:49:00 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3099410002A;
 Fri, 10 Jan 2020 14:49:00 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 229E62BC7D1;
 Fri, 10 Jan 2020 14:49:00 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:48:59 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 3/9] mmc: mmci: add a reference at mmc_host_ops in mmci struct
Date: Fri, 10 Jan 2020 14:48:17 +0100
Message-ID: <20200110134823.14882-4-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
References: <20200110134823.14882-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054904_952461_3EB58419 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch adds mmc_host_ops pointer in mmci struct.
The variant init function may need to add a mmc_host_ops,
for example to add the execute_tuning support if this feature
is available.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 1 +
 drivers/mmc/host/mmci.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index 7b13d66cbb21..00b473f57047 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -1923,6 +1923,7 @@ static int mmci_probe(struct amba_device *dev,
 
 	host = mmc_priv(mmc);
 	host->mmc = mmc;
+	host->mmc_ops = &mmci_ops;
 
 	/*
 	 * Some variant (STM32) doesn't have opendrain bit, nevertheless
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
