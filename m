Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC4B1CF6AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=702ElZ6v4Qey0DbFbESno3rpQqWVWWjcpLra4p8GHTw=; b=OfyDE7ABb4Yysw
	JsYmsUkqfBcdzlHNoeBjmIlvUOk7Xd0wUskJ4ISQQ4T4D9/Cl6u9hD2Ayv6C71n4CJbKYPvKYytDO
	sePK/mRppRuCnQQ7kGvlo9wU8t/nbil9E4r38Fqb447QhTDNGBMr/QaM6goGDkdWtbWJYxshTao5l
	53jfz7EMFSFqtRFNHyVk94wwxKF9SqE5xcNi4S6rk0Q/hI4YXtc9QxlXLg927Uivg7MtoigQgTb1X
	Gnsb+wlkLinQoQ9f5/LawDFw2YPEzXl/3puE62TzYG0GroRM5+Ljj1MII+UCroiD/LUIzjV2evr0p
	ULlGo8ois0BpoOCBIj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVfl-0000ML-SG; Tue, 12 May 2020 14:14:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVek-00085n-MX
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:13:21 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04CE2CvQ020028; Tue, 12 May 2020 16:11:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=de8DH4LiaffmmWtTVyqpc6yqQovYM+Xegj25cuzjLL4=;
 b=GtlFKoXjBkm/nAmGEUgN68TD4K3F0/REqiBwzS9nz8Bq0F50L9+RuHhHktaANFJinOxr
 zgl0Vrz1kOM4ccadNonFYbvcybuLG0XfkRYwHWk3FXk+j9KaRvUnXnVfJ6m4AaaHYtPD
 cKqQKX9iWQCyWa9Q5qTReV2OgmTLzhGSer2PcGwchp9578VkkszFEmkJFoqyy0x1EFlO
 Tugx4VEU+q4A0b9s8omTP0HKRkATtTIMkiMv5iTjyQGlifbd1c0OmQaqZls4rDPxC/tU
 KpBYtK8ftj2PLLxDU0SWNDOjAghSCJEvnZD3n0xPc9tQSowY0YqqegDYSrEyAgcWJqx3 MA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30wj9wh0k7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 May 2020 16:11:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D93C1100034;
 Tue, 12 May 2020 16:11:58 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CD2D52BAE54;
 Tue, 12 May 2020 16:11:58 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 12 May 2020 16:11:58 +0200
From: Nicolas Toromanoff <nicolas.toromanoff@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 4/5] crypto: stm32/crc: don't sleep in runtime pm
Date: Tue, 12 May 2020 16:11:12 +0200
Message-ID: <20200512141113.18972-5-nicolas.toromanoff@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512141113.18972-1-nicolas.toromanoff@st.com>
References: <20200512141113.18972-1-nicolas.toromanoff@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-12_03:2020-05-11,
 2020-05-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_071315_312193_14CECA8D 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org,
 Nicolas Toromanoff <nicolas.toromanoff@st.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ensure stm32_crc_update() and stm32_crc_init() can be called
in atomic context and can't sleep.

Add pm_runtime_irq_safe() to make pm_runtime_get_sync() atomic.
Change runtime pm to call clk_enable()/clk_disable() and change
system pm to unprepare/prepare the clock and force runtime pm
suspend/resume.

Signed-off-by: Nicolas Toromanoff <nicolas.toromanoff@st.com>
---
 drivers/crypto/stm32/stm32-crc32.c | 45 ++++++++++++++++++++++++------
 1 file changed, 36 insertions(+), 9 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-crc32.c b/drivers/crypto/stm32/stm32-crc32.c
index 10304511f9b4..413415c216ef 100644
--- a/drivers/crypto/stm32/stm32-crc32.c
+++ b/drivers/crypto/stm32/stm32-crc32.c
@@ -297,6 +297,7 @@ static int stm32_crc_probe(struct platform_device *pdev)
 
 	pm_runtime_get_noresume(dev);
 	pm_runtime_set_active(dev);
+	pm_runtime_irq_safe(dev);
 	pm_runtime_enable(dev);
 
 	platform_set_drvdata(pdev, crc);
@@ -350,34 +351,60 @@ static int stm32_crc_remove(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int stm32_crc_runtime_suspend(struct device *dev)
+static int __maybe_unused stm32_crc_suspend(struct device *dev)
 {
 	struct stm32_crc *crc = dev_get_drvdata(dev);
+	int ret;
 
-	clk_disable_unprepare(crc->clk);
+	ret = pm_runtime_force_suspend(dev);
+	if (ret)
+		return ret;
+
+	clk_unprepare(crc->clk);
 
 	return 0;
 }
 
-static int stm32_crc_runtime_resume(struct device *dev)
+static int __maybe_unused stm32_crc_resume(struct device *dev)
 {
 	struct stm32_crc *crc = dev_get_drvdata(dev);
 	int ret;
 
-	ret = clk_prepare_enable(crc->clk);
+	ret = clk_prepare(crc->clk);
 	if (ret) {
-		dev_err(crc->dev, "Failed to prepare_enable clock\n");
+		dev_err(crc->dev, "Failed to prepare clock\n");
+		return ret;
+	}
+
+	return pm_runtime_force_resume(dev);
+}
+
+static int __maybe_unused stm32_crc_runtime_suspend(struct device *dev)
+{
+	struct stm32_crc *crc = dev_get_drvdata(dev);
+
+	clk_disable(crc->clk);
+
+	return 0;
+}
+
+static int __maybe_unused stm32_crc_runtime_resume(struct device *dev)
+{
+	struct stm32_crc *crc = dev_get_drvdata(dev);
+	int ret;
+
+	ret = clk_enable(crc->clk);
+	if (ret) {
+		dev_err(crc->dev, "Failed to enable clock\n");
 		return ret;
 	}
 
 	return 0;
 }
-#endif
 
 static const struct dev_pm_ops stm32_crc_pm_ops = {
-	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
-				pm_runtime_force_resume)
+	SET_SYSTEM_SLEEP_PM_OPS(stm32_crc_suspend,
+				stm32_crc_resume)
 	SET_RUNTIME_PM_OPS(stm32_crc_runtime_suspend,
 			   stm32_crc_runtime_resume, NULL)
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
