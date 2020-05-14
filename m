Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752C11D311A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3VJgodAJUxSwWqv9yqJotNDyOmgdt4pnMRT+lJHPuY=; b=uL+b/9wjH2wtKv
	vWmFroIlQDVH1E2c56locfiSTtxS88dbCj+lepnMyqgHwCmSW+KKwZrXKkEjzsopkSW4IZE97pJCn
	Sr7WfiFUhEpsR81VeiGLr+H65Wdx5djBR2CY+bVH2Xx6nE9j39b4cRPs3XkSfAD1bQVg0j8j3YgTg
	bdptHGMBY7vMJRIPiA4XqiGvgu0zp42/lPaNMrPiENBCn31o09zTLEpgMCsbgWlKlcJsXSjBx1Mvu
	qFVcpAS8sOkDDn/1Msr7gaHgupnQ7eUDL91bhcdgmkdW/z4LuUwfVz2XuTkbke8kc5ETr2GPdV1yy
	T4P2u5OEYbbVEoYyR0Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDlV-0002Zd-AP; Thu, 14 May 2020 13:19:10 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDkK-0001bi-TG
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:17:58 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04EDHpMe030365; Thu, 14 May 2020 09:17:51 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 3100y97aft-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 09:17:51 -0400
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 04EDHiFG034635
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Thu, 14 May 2020 09:17:44 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Thu, 14 May
 2020 09:17:43 -0400
Received: from zeus.spd.analog.com (10.64.82.11) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Thu, 14 May 2020 09:17:43 -0400
Received: from localhost.localdomain ([10.48.65.12])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04EDHUan017033;
 Thu, 14 May 2020 09:17:40 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 4/8] iio: stm32-dfsdm-adc: pass iio device as arg for the
 interrupt handler
Date: Thu, 14 May 2020 16:17:06 +0300
Message-ID: <20200514131710.84201-5-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514131710.84201-1-alexandru.ardelean@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_03:2020-05-14,
 2020-05-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 cotscore=-2147483648
 phishscore=0 priorityscore=1501 adultscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 mlxlogscore=999 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005140118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_061756_952620_C571F7B1 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, alexandre.torgue@st.com,
 ludovic.desroches@microchip.com, ak@it-klinger.de, mcoquelin.stm32@gmail.com,
 eugen.hristev@microchip.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This changes the argument for the interrupt handler to be the IIO device
instead of the state-struct.
Since there will be some changes to how iio_priv_to_dev() is implemented,
it could be that the helper becomes a bit slower, as it will be hidden away
in the IIO core.

The iio_priv() call will still be fast enough, as it will return a void
pointer from the public IIO device structure. So it's better to switch the
order.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/adc/stm32-dfsdm-adc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index 76a60d93fe23..28ef02887bd3 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -1313,8 +1313,8 @@ static const struct iio_info stm32_dfsdm_info_adc = {
 
 static irqreturn_t stm32_dfsdm_irq(int irq, void *arg)
 {
-	struct stm32_dfsdm_adc *adc = arg;
-	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
+	struct iio_dev *indio_dev = arg;
+	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
 	struct regmap *regmap = adc->dfsdm->regmap;
 	unsigned int status, int_en;
 
@@ -1603,7 +1603,7 @@ static int stm32_dfsdm_adc_probe(struct platform_device *pdev)
 		return irq;
 
 	ret = devm_request_irq(dev, irq, stm32_dfsdm_irq,
-			       0, pdev->name, adc);
+			       0, pdev->name, iio);
 	if (ret < 0) {
 		dev_err(dev, "Failed to request IRQ\n");
 		return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
