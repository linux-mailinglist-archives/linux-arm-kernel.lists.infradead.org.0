Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25528E75E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Io4Ms8M0AZVCSlBqmwthFxa7hogSaliNpiYy+5fBPlo=; b=XpJ8fz+Xr5Qsxr
	Sdfii/Puiytm0scymdb4eQQ+T9tdOb7jKJ1r1t0ZjPfsY3EBsacNBE2GmGdBkrh2s8FPXvkib+AEq
	6b0lKcOQwjpOUzhUIxwq6GBDdbNw8/W+EthMfKaCl03nJ9o8f3RtOeSWb3X+DxLNBPSCXZ4cWqRdU
	H2ViYZPXasGpiFVybiCgoeqsnFuwv1x9/Mkwr8GgQj/YUXqHbbltq7vRi7Dm1IphHtpfVfxu1FDjp
	WB8oyFrSVSMpzB2sKEhpjCwFcMtKxDsOnw8S28VfP1oQJFdcP+E/Z2qib5h8j8V5oiXkb1+OrXnRV
	i5IQFqidi2MKFBI69Pmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7dQ-00075T-2t; Mon, 28 Oct 2019 16:12:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7cl-0006fm-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:12:09 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9SFu2aq023368; Mon, 28 Oct 2019 17:11:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=CM9gDRKKxbqasjyuOfTE0X/UG/yfSLvoQfkO2xJSMkU=;
 b=eipmSO+CXc1j0cU38m0HAn+OGIpV1ILX9Fy2IvNLSEBTrYS/gV0WHkrWkm/LIFr1fG1Z
 M8bU2jkArGGi4gcvN97WQyirUUmS90WM2lHtAU62eRCzZxajl0JKf3CBXGUe9mkaaLQi
 1bb9ZREKkAcY0ptcyuj8vGAVvY7WlvjbUz0AQmK2jvrD1UiIE7KTrPVSdl6GUJd299Vj
 sCQ87vZ+YjvZYV+j6JG4vexoM+Ys4TC8nwgTIUF4kR8iQNzfa3RhB89axWhgXvY0U53S
 GS0Z4k1A1XsN/KTsSUK6UAjzaAaqfLevykid0cJaRATAoH4//DIF9AmFyXUg2GDUN7xP 8g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vvbww33yj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 28 Oct 2019 17:11:57 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1F3D3100034;
 Mon, 28 Oct 2019 17:11:57 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0EE9F2B1E73;
 Mon, 28 Oct 2019 17:11:57 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 28 Oct
 2019 17:11:56 +0100
Received: from localhost (10.48.0.192) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 28 Oct 2019 17:11:56 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 2/2] iio: adc: stm32: allow to tune analog clock
Date: Mon, 28 Oct 2019 17:11:48 +0100
Message-ID: <1572279108-25916-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
References: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-28_06:2019-10-28,2019-10-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_091207_724435_00CE9299 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, mcoquelin.stm32@gmail.com, lars@metafoo.de,
 alexandre.torgue@st.com, devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new optional dt property to tune analog clock prescaler.
Driver looks for optional "st,max-clk-rate-hz", then computes
best approximation below that rate, using ADC internal prescaler.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/adc/stm32-adc-core.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
index 20c626c..6537f4f 100644
--- a/drivers/iio/adc/stm32-adc-core.c
+++ b/drivers/iio/adc/stm32-adc-core.c
@@ -79,6 +79,7 @@ struct stm32_adc_priv_cfg {
  * @domain:		irq domain reference
  * @aclk:		clock reference for the analog circuitry
  * @bclk:		bus clock common for all ADCs, depends on part used
+ * @max_clk_rate:	desired maximum clock rate
  * @booster:		booster supply reference
  * @vdd:		vdd supply reference
  * @vdda:		vdda analog supply reference
@@ -95,6 +96,7 @@ struct stm32_adc_priv {
 	struct irq_domain		*domain;
 	struct clk			*aclk;
 	struct clk			*bclk;
+	u32				max_clk_rate;
 	struct regulator		*booster;
 	struct regulator		*vdd;
 	struct regulator		*vdda;
@@ -141,7 +143,7 @@ static int stm32f4_adc_clk_sel(struct platform_device *pdev,
 	}
 
 	for (i = 0; i < ARRAY_SIZE(stm32f4_pclk_div); i++) {
-		if ((rate / stm32f4_pclk_div[i]) <= priv->cfg->max_clk_rate_hz)
+		if ((rate / stm32f4_pclk_div[i]) <= priv->max_clk_rate)
 			break;
 	}
 	if (i >= ARRAY_SIZE(stm32f4_pclk_div)) {
@@ -230,7 +232,7 @@ static int stm32h7_adc_clk_sel(struct platform_device *pdev,
 			if (ckmode)
 				continue;
 
-			if ((rate / div) <= priv->cfg->max_clk_rate_hz)
+			if ((rate / div) <= priv->max_clk_rate)
 				goto out;
 		}
 	}
@@ -250,7 +252,7 @@ static int stm32h7_adc_clk_sel(struct platform_device *pdev,
 		if (!ckmode)
 			continue;
 
-		if ((rate / div) <= priv->cfg->max_clk_rate_hz)
+		if ((rate / div) <= priv->max_clk_rate)
 			goto out;
 	}
 
@@ -655,6 +657,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = pdev->dev.of_node;
 	struct resource *res;
+	u32 max_rate;
 	int ret;
 
 	if (!pdev->dev.of_node)
@@ -731,6 +734,13 @@ static int stm32_adc_probe(struct platform_device *pdev)
 	priv->common.vref_mv = ret / 1000;
 	dev_dbg(&pdev->dev, "vref+=%dmV\n", priv->common.vref_mv);
 
+	ret = of_property_read_u32(pdev->dev.of_node, "st,max-clk-rate-hz",
+				   &max_rate);
+	if (!ret)
+		priv->max_clk_rate = min(max_rate, priv->cfg->max_clk_rate_hz);
+	else
+		priv->max_clk_rate = priv->cfg->max_clk_rate_hz;
+
 	ret = priv->cfg->clk_sel(pdev, priv);
 	if (ret < 0)
 		goto err_hw_stop;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
