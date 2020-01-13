Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7A3139207
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:19:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yZwPZZXP4Pv+XVsPcCt27BUSH0R/5QP1HkT84Ncre5Y=; b=lFem7QtrpfsPE+
	9je1wub5m7rrTR+OJY6SAgwvS1/WPTOkO/MaJUaf+9jqAsa+06d7ckqbFzzTSA/FYsZ/7OVUMqfdA
	C0/3fSAT6W/NLm/16IBkcFbbpN2w0yE72D/vg6dOnAnW/NNaPj7I5kJOvW8pSzzakJm5F8pxkWLL+
	ASv61WzC22xlaR5EMXgPhP+oeuqwO43vqRFBOVSqPTzg7h3VdwGk7e2LeelyxajIcHrTFuUk3/UYc
	z5TNY87m2t+N9qg1VJSNOV1+2bu8PHvxa+k+hWQ/ulwM1bHQ8ztEQBJQNf7AWxYrioDxmpDcD/l2k
	WDBT/wwMSpWOMtY+XWcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzdA-0001pU-Py; Mon, 13 Jan 2020 13:19:44 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzct-0001oS-0V
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:19:28 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00DDIVCk021817; Mon, 13 Jan 2020 14:19:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=PNpmZ/1bn7ZvtvS1FYTPLDxvUN515Mcm8HzueivD4+0=;
 b=BZ3bX30GGJDNZ+GCxhSU4q7rNQBOnnslt+RwvEWXid6vy9gJsyP7nkdyzLJLkW6JE+OS
 XBv73V/9HRnUYHL0l9h0wDsDKNr1XUGIhbNDeb3eXseoGPCxsh+sZzOmt+IqKR5T7b8u
 RncjhkcbwGx+MM0D2b5z1JjGNMG5jKDvelShapkfeMQoG6v17D5i9UTxHCDeIy270wRg
 Ozvqga/4kDrdCnN49Nlj97Qj9H20ePJuW36/s2HGEo5PnMcWIm71+TGZJySI2BVAxy5N
 t+SKrT7b1uGLHjrQvr41heCV3OOmhpwFi/wuM83A91yWZIpJXw+htV5L5Nn+iKgl0mYZ HQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf77arbpq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2020 14:19:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E376C10002A;
 Mon, 13 Jan 2020 14:19:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D36A42B8214;
 Mon, 13 Jan 2020 14:19:21 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 13 Jan 2020 14:19:21 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH] iio: adc: stm32-adc: don't print an error on probe deferral
Date: Mon, 13 Jan 2020 14:18:59 +0100
Message-ID: <1578921539-6353-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-13_03:2020-01-13,
 2020-01-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_051927_354445_D87C7523 
X-CRM114-Status: GOOD (  13.35  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: etienne.carriere@st.com, lars@metafoo.de, olivier.moysan@st.com,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Do not print an error trace when deferring probe for some resource.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/iio/adc/stm32-adc-core.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
index 97655d7..2df88d2 100644
--- a/drivers/iio/adc/stm32-adc-core.c
+++ b/drivers/iio/adc/stm32-adc-core.c
@@ -688,7 +688,8 @@ static int stm32_adc_probe(struct platform_device *pdev)
 	priv->vref = devm_regulator_get(&pdev->dev, "vref");
 	if (IS_ERR(priv->vref)) {
 		ret = PTR_ERR(priv->vref);
-		dev_err(&pdev->dev, "vref get failed, %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "vref get failed, %d\n", ret);
 		return ret;
 	}
 
@@ -696,7 +697,8 @@ static int stm32_adc_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->aclk)) {
 		ret = PTR_ERR(priv->aclk);
 		if (ret != -ENOENT) {
-			dev_err(&pdev->dev, "Can't get 'adc' clock\n");
+			if (ret != -EPROBE_DEFER)
+				dev_err(&pdev->dev, "Can't get 'adc' clock\n");
 			return ret;
 		}
 		priv->aclk = NULL;
@@ -706,7 +708,8 @@ static int stm32_adc_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->bclk)) {
 		ret = PTR_ERR(priv->bclk);
 		if (ret != -ENOENT) {
-			dev_err(&pdev->dev, "Can't get 'bus' clock\n");
+			if (ret != -EPROBE_DEFER)
+				dev_err(&pdev->dev, "Can't get 'bus' clock\n");
 			return ret;
 		}
 		priv->bclk = NULL;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
