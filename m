Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C294B86C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7W8t8Cqo0mDnS4cMIsc/ndktgN0+WTylvpTdvOa9bfc=; b=L9oii6F7XYTYNm
	lDnzmPKyFPDbXPW2rUf2bEXDwe4RoXsOWvNcZ8QV/5XDflkc0HUebQg/UjkIK89w10HfGJWE6+ziM
	tuhoyHSUYdEwbnzJ0fXzJvql30WXfeKBXs2dRQoKpjzEo3ow0MEnoCECxGtsg+vQYRiCmfCS5aXAx
	TGbJyYm3Cx/MBIcNJV/iKNWuqxYC9EZZ2/DEd1sh7+aXncA4wu1OJpuYfjkJc8vSL5OOBYaO+YTpG
	pf7FbLRrEAqQzWEtxYlzjp39vmg1CfprGKhYKF6vlZYKM7TRNfOy+FhWTmMYvVzXtuHJUO8hFX1/e
	S7YU8MGEW63RESIy6Nmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZkE-0003la-0O; Wed, 19 Jun 2019 12:31:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZjx-0003iz-B7
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:31:03 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCQslq023576; Wed, 19 Jun 2019 14:30:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=oAiWQhP8kjNHRQt1B3eYE6VWYU18HtqaWo8L2287044=;
 b=xdOPrEqF0DYh5Tm9FGLLzsu9avW1sSlgsFvk7TodQDtAuuYiDMd7QptdxsxChIcP69my
 S5scsqkOVv1pLoYcQfzlkB12RNe8un0R5KO5ggQc6uqvNnddV254QUTvCOM0SqwvG3sm
 2gFjkUSbJNSR3Ps3Dw4pb6VUiEGvZYG5RpKAWXHiZBsi9sQH7Bn5171EBeasqP5knqFK
 i0UmeumY9ONV1U1dWy1/6yxu7cG4zT7gvRDahBiBklBvJoICDlPvPop1yrw8k7SeRu/N
 iG5wb1mC6nWqSBH/f6THD3QbERD2gg5GS5p5gzbQPDjAM4oTMFxFhnTQJpLE8BUmQLL9 Gw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t7812uxwr-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 14:30:54 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3BD723A;
 Wed, 19 Jun 2019 12:30:53 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0859227A7;
 Wed, 19 Jun 2019 12:30:53 +0000 (GMT)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 19 Jun 2019 14:30:52 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH 2/5] iio: adc: stm32-adc: add missing vdda-supply
Date: Wed, 19 Jun 2019 14:29:55 +0200
Message-ID: <1560947398-11592-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
References: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_053101_714665_72DFEB88 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 mcoquelin.stm32@gmail.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing vdda-supply, analog power supply, to STM32 ADC. When vdda is
an independent supply, it needs to be properly turned on or off to supply
the ADC.

Fixes: 1add69880240 ("iio: adc: Add support for STM32 ADC core").

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/adc/stm32-adc-core.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
index 2327ec1..1f7ce51 100644
--- a/drivers/iio/adc/stm32-adc-core.c
+++ b/drivers/iio/adc/stm32-adc-core.c
@@ -87,6 +87,7 @@ struct stm32_adc_priv_cfg {
  * @domain:		irq domain reference
  * @aclk:		clock reference for the analog circuitry
  * @bclk:		bus clock common for all ADCs, depends on part used
+ * @vdda:		vdda analog supply reference
  * @vref:		regulator reference
  * @cfg:		compatible configuration data
  * @common:		common data for all ADC instances
@@ -97,6 +98,7 @@ struct stm32_adc_priv {
 	struct irq_domain		*domain;
 	struct clk			*aclk;
 	struct clk			*bclk;
+	struct regulator		*vdda;
 	struct regulator		*vref;
 	const struct stm32_adc_priv_cfg	*cfg;
 	struct stm32_adc_common		common;
@@ -394,10 +396,16 @@ static int stm32_adc_core_hw_start(struct device *dev)
 	struct stm32_adc_priv *priv = to_stm32_adc_priv(common);
 	int ret;
 
+	ret = regulator_enable(priv->vdda);
+	if (ret < 0) {
+		dev_err(dev, "vdda enable failed %d\n", ret);
+		return ret;
+	}
+
 	ret = regulator_enable(priv->vref);
 	if (ret < 0) {
 		dev_err(dev, "vref enable failed\n");
-		return ret;
+		goto err_vdda_disable;
 	}
 
 	if (priv->bclk) {
@@ -425,6 +433,8 @@ static int stm32_adc_core_hw_start(struct device *dev)
 		clk_disable_unprepare(priv->bclk);
 err_regulator_disable:
 	regulator_disable(priv->vref);
+err_vdda_disable:
+	regulator_disable(priv->vdda);
 
 	return ret;
 }
@@ -441,6 +451,7 @@ static void stm32_adc_core_hw_stop(struct device *dev)
 	if (priv->bclk)
 		clk_disable_unprepare(priv->bclk);
 	regulator_disable(priv->vref);
+	regulator_disable(priv->vdda);
 }
 
 static int stm32_adc_probe(struct platform_device *pdev)
@@ -468,6 +479,14 @@ static int stm32_adc_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->common.base);
 	priv->common.phys_base = res->start;
 
+	priv->vdda = devm_regulator_get(&pdev->dev, "vdda");
+	if (IS_ERR(priv->vdda)) {
+		ret = PTR_ERR(priv->vdda);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "vdda get failed, %d\n", ret);
+		return ret;
+	}
+
 	priv->vref = devm_regulator_get(&pdev->dev, "vref");
 	if (IS_ERR(priv->vref)) {
 		ret = PTR_ERR(priv->vref);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
