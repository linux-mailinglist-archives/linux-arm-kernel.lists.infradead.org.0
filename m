Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E536136EBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:52:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7En1r99DzsHZbpkxnW7vWHY6WMO5QZ+qJ4tpAJbAHs=; b=i7WuRMl7oIgeOL
	+yBg3Zl2BRlEqR/k9wlJWrxlFn9I9sdyzpSFvPwkxa6IvvOZ1xjieAr2/lZGCC9Pd3b8cJe8SyTEE
	nqUNzucd0T8YghZJIN29q6rXgVtFtmB2jpKu0REEk4oqWsVN7CwKU0sTAUJ/pAiBrKfERhOvEW7I3
	1GKtisIB5bqaHXzOc9z7oUGG4uJIWy593WQqaPjBYq+pGj6I1ssvdLE3RXoclDIWw94gywHUPVoJT
	+DxMROTUuPfCqsUULRs6Udjy79ZZNRAuwyCYFVtgM8dUgC/mTd8807U1hzm3Kackd8XBapogrjXrh
	6QyOd8z1bQ2RoFjufWRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuhs-0007jG-Mn; Fri, 10 Jan 2020 13:52:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuf5-0004Ic-CD
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:17 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADlv1F031938; Fri, 10 Jan 2020 14:49:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=pJ+w24JgyaLP7e1zcwVqY+8juR4jhF3VPSq9PUdMLDs=;
 b=d6s1gU+HpUA+w/3J0NhO2Gvv+WMnIUxtSrvSrBmSW+jaTCigaI6851ohSaJ0hmAovPSs
 iUMCLVHUSEPgXVze4mlhSNnCdvQFFFQM3l3p8vB+4RoPhngooIhOoEhEE29xSYLOzGch
 zW6bvjAME+JIjOGOUNte9YJCH6dJdiIkXUaTBWczcx6hPQx4/FgUUdT6l9z6FeVjIfWw
 OuIcc1ONFCrtt//4bTTAP3pW2APzzO9TQjBpviKH7g2I4TO4OuCxj5v7z6dGfkdzGcOc
 DKhG8wRCOdR8E0DBPgt5Zy6oZZO4/G+9yrxx7Z7g+k8OUR2RXZuD5xQ5LrWCbMDG81/l CA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur7dud-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:49:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9009010003D;
 Fri, 10 Jan 2020 14:49:06 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 827A82BC7D1;
 Fri, 10 Jan 2020 14:49:06 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:49:05 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 9/9] mmc: mmci: add sdmmc variant revision 2.0
Date: Fri, 10 Jan 2020 14:48:23 +0100
Message-ID: <20200110134823.14882-10-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
References: <20200110134823.14882-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054915_728518_201A05D9 
X-CRM114-Status: GOOD (  13.90  )
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

This patch adds a sdmmc variant revision 2.0.
This revision is backward compatible with 1.1, and adds dma
link list support.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index d76a59c06cb0..2a570cbf6f69 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -275,6 +275,31 @@ static struct variant_data variant_stm32_sdmmc = {
 	.init			= sdmmc_variant_init,
 };
 
+static struct variant_data variant_stm32_sdmmcv2 = {
+	.fifosize		= 16 * 4,
+	.fifohalfsize		= 8 * 4,
+	.f_max			= 208000000,
+	.stm32_clkdiv		= true,
+	.cmdreg_cpsm_enable	= MCI_CPSM_STM32_ENABLE,
+	.cmdreg_lrsp_crc	= MCI_CPSM_STM32_LRSP_CRC,
+	.cmdreg_srsp_crc	= MCI_CPSM_STM32_SRSP_CRC,
+	.cmdreg_srsp		= MCI_CPSM_STM32_SRSP,
+	.cmdreg_stop		= MCI_CPSM_STM32_CMDSTOP,
+	.data_cmd_enable	= MCI_CPSM_STM32_CMDTRANS,
+	.irq_pio_mask		= MCI_IRQ_PIO_STM32_MASK,
+	.datactrl_first		= true,
+	.datacnt_useless	= true,
+	.datalength_bits	= 25,
+	.datactrl_blocksz	= 14,
+	.datactrl_any_blocksz	= true,
+	.stm32_idmabsize_mask	= GENMASK(16, 5),
+	.dma_lli		= true,
+	.busy_timeout		= true,
+	.busy_detect_flag	= MCI_STM32_BUSYD0,
+	.busy_detect_mask	= MCI_STM32_BUSYD0ENDMASK,
+	.init			= sdmmc_variant_init,
+};
+
 static struct variant_data variant_qcom = {
 	.fifosize		= 16 * 4,
 	.fifohalfsize		= 8 * 4,
@@ -2334,6 +2359,11 @@ static const struct amba_id mmci_ids[] = {
 		.mask	= 0xf0ffffff,
 		.data	= &variant_stm32_sdmmc,
 	},
+	{
+		.id     = 0x00253180,
+		.mask	= 0xf0ffffff,
+		.data	= &variant_stm32_sdmmcv2,
+	},
 	/* Qualcomm variants */
 	{
 		.id     = 0x00051180,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
