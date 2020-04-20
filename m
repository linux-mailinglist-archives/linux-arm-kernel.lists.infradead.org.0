Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869F1B1158
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8CJDRh8NvO5jgU3jJUVa5yr41C2BWyJzR5t41A8sSzc=; b=E5mJ0JnqNiQoK3
	OLODPCXB7hupt2CSWYvMRerynim8LACdwhl2hHm8POZtr7T8IRD/tp+F6eto//TMrFKVD3BTwrLsU
	1GsB/0C0nJ40FY6hWSj68LMQZk6vvhCjURN+GPktAHUnUgxRi2uCpcZfpCXmZn81iHtzO9ocdj8K0
	ciGC3dDhBJYH4e2nAMUjq+4dQXFRnHQDvWrWHEySQjK9ZrhlTGDCb6Qq84KT+Di2rZjW3OGm9U3x6
	kU0sFK8wArNCPuXXVa6rOwNLQadzsjEcWrQLUFsQQHo0ffcYOe2PAoxdWaeMySwLAsqiIEr+XgIFm
	Z8GmAXCnMevc+SNGllrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZ8W-0000xq-AD; Mon, 20 Apr 2020 16:19:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZ8K-0000wN-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:18:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KGCBKL029130; Mon, 20 Apr 2020 18:18:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=GQbTc6KNDxMl8YSg798Cux50zZhwrXkX/dFcXXvNJ6Q=;
 b=TqeR1ZUjHaQNCqR1KQDULMvtxVFF85RXV2MogrDVDAHrZD/et2D7nz6qTKcwwppMIrw7
 abk6DWiG+BS0lKq7o0OPec7V2NOfU/VHcwNxTT8P3uv7qQeRMx07cNgFeJ0lKEPZF7kA
 UZpHJcK0MhKaooEDP3R2uOn2pfDsiA97RxUBKuFJU/Yd4V1uFn56MFqmlhUq7NEfBRAQ
 /Wdw9iDFC70tBL3wAny8mfmBI/JlXz7ohVCfWTMcyGhEkr3Cu0bNlRdxZ9evLWtkAG+I
 s77Y6vRMJRum/CJmcokfdHvet2o2P8Xvsaiu4k7D6fRMiGkwanqoziqxjMLXtUzZqLIT Gw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fregb2ee-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 18:18:46 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 80A9F100034;
 Mon, 20 Apr 2020 18:18:45 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6C9062AA2A3;
 Mon, 20 Apr 2020 18:18:45 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 20 Apr 2020 18:18:44 +0200
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] mmc: mmci_sdmmc: fix power on issue due to pwr_reg
 initialization
Date: Mon, 20 Apr 2020 18:18:31 +0200
Message-ID: <20200420161831.5043-1-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_05:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_091857_115298_8104EEBB 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch fix a power-on issue, and avoid to retry the power sequence.

In power off sequence: sdmmc must set pwr_reg in "power-cycle" state
(value 0x2), to prevent the card from being supplied through the signal
lines (all the lines are driven low).

In power on sequence: when the power is stable, sdmmc must set pwr_reg
in "power-off" state (value 0x0) to drive all signal to high before to
set "power-on".

To avoid writing the same value to the power register several times, this
register is cached by the pwr_reg variable. At probe pwr_reg is initialized
to 0 by kzalloc of mmc_alloc_host.

Like pwr_reg value is 0 at probing, the power on sequence fail because
the "power-off" state is not writes (value 0x0) and the lines
remain drive to low.

This patch initializes "pwr_reg" variable with power register value.
This it done in sdmmc variant init to not disturb default mmci behavior.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---

This patch is the proposal from:
https://patchwork.kernel.org/patch/11457987/

---
 drivers/mmc/host/mmci_stm32_sdmmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index d33e62bd6153..14f99d8aa3f0 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -519,6 +519,7 @@ void sdmmc_variant_init(struct mmci_host *host)
 	struct sdmmc_dlyb *dlyb;
 
 	host->ops = &sdmmc_variant_ops;
+	host->pwr_reg = readl_relaxed(host->base + MMCIPOWER);
 
 	base_dlyb = devm_of_iomap(mmc_dev(host->mmc), np, 1, NULL);
 	if (IS_ERR(base_dlyb))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
