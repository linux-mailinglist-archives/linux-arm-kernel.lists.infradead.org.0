Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E7F33444
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FKe2PcAJn0FgYgd2YWQ3nY/YfNWlvmBaxCx08DkJG4=; b=Eftt1duG5/LVcA
	RnTWnR2SBHEBwD+2zeGg1Pzn3Lb5vowNkJLdRl///cfgee57iRgrkuWWV6x+O+77SSX7XIBP+Wss+
	q9iMKw0jS1zYMRSMw/JHnUkPsgkwTbJH4DmcZ2STIZJ9qbFBSx8m07quCskKw5kMeBm5uF9UY4HIC
	9hR0uJby46Q+sJQD42UyxsqVKajiU/nIZ3pW2vMWy97FzJJ8ZNLGGmt8Y4WZHZWeql4YlllmqAbkq
	rwkPefFjNQMKqnXW+kgGEe4iOE3+vL34NDfWwUbI6iB5LuTAun0eGFuAvNA3eKCxFZ419/1RDNHUb
	xe0kjVP8K6gEIakREEGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpJd-0001ZK-IW; Mon, 03 Jun 2019 15:56:05 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpJB-0001Ak-0X
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:55:40 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x53Ffkrc011068; Mon, 3 Jun 2019 17:55:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=etA1bRR7f0xtxrGNfl8KQhV4H88uuHhQNEMpJ2vi+mQ=;
 b=PBhVDBGPiiI25H1VtUkAXq517b5hzXRR7DVsSHIQ3qDYyDTKGe5Qzv5XlM9QqL0GYy3e
 RtjV7TYs3fQBw3JtkkLpMqJ3JstDiDlx6dWZGBVsK+/PTqmK7tzxzmMAiseWcZ3LSPCk
 u3VequspPPUQ1bRk/bwPixinvLrBodI3SVYVhSo+JnlPM0Q82uJeVrxYIkOmzoopqw1m
 pUAXkzBl4YlOPyuTLpI5T6w/N26YDU4W+uIUB4PT8kX3cQ8nTfFxEKLMxXt875ffScrJ
 9z2l4pgMINN+h137bje50eE5xFuCKWyBFT5LIKJ/qBPp+h1z2u0RKI0b6dWuf9fScj1z BQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sunmc2xs3-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 03 Jun 2019 17:55:30 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9292D31;
 Mon,  3 Jun 2019 15:55:29 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6BDD74E66;
 Mon,  3 Jun 2019 15:55:29 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 3 Jun 2019
 17:55:29 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 3 Jun 2019
 17:55:28 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V3 1/3] mmc: mmci: fix read status for busy detect
Date: Mon, 3 Jun 2019 17:55:23 +0200
Message-ID: <1559577325-19266-2-git-send-email-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
References: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-03_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_085537_482877_A1166EE2 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

From: Ludovic Barre <ludovic.barre@st.com>

"busy_detect_flag" is used to read & clear busy value of mmci status.
"busy_detect_mask" is used to manage busy irq of mmci mask.
So to read mmci status the busy_detect_flag must be take account.
if the variant does not support busy detect feature the flag is null
and there is no impact.

Not need to re-read the status register in mmci_cmd_irq, the
status parameter can be used.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index 356833a..5b5cc45 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -1240,7 +1240,7 @@ mmci_cmd_irq(struct mmci_host *host, struct mmc_command *cmd,
 		 */
 		if (!host->busy_status &&
 		    !(status & (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT)) &&
-		    (readl(base + MMCISTATUS) & host->variant->busy_detect_flag)) {
+		    (status & host->variant->busy_detect_flag)) {
 
 			/* Clear the busy start IRQ */
 			writel(host->variant->busy_detect_mask,
@@ -1517,7 +1517,8 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
 		 * to make sure that both start and end interrupts are always
 		 * cleared one after the other.
 		 */
-		status &= readl(host->base + MMCIMASK0);
+		status &= readl(host->base + MMCIMASK0) |
+			host->variant->busy_detect_flag;
 		if (host->variant->busy_detect)
 			writel(status & ~host->variant->busy_detect_mask,
 			       host->base + MMCICLEAR);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
