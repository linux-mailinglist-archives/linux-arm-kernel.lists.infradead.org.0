Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF8DD9091
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbxwF51xBBPtz1RPkdwU3vYPV9Bhp4u+crcakF5B/Ek=; b=poFX2Wh+SB+Z2O
	/A+2xUf4eQH/Vhq4tyZkSabB520EApUP2iqk3BX/AmFWBt7bNwcwKW6AldxTsfHEgjsIxZ6efpVhU
	JD2xmHYqxV7ptlU1iFrVMrJw5Vg0DqZdfQ2X42fF16C0zul0wjo0dMhzsxEbOKTAQtpoBPFBfOf5/
	AP4XHQefUGrrvWWvthbrT4e0NuIZPDvCJhHqWOZBKpLVys1TEWPyTgImQ8OI8vlKlLtKAu0fet9/N
	95zmSMiI4o2vGvS20oTRUmGjRbD2TnhCqHLcg81splLVtbgnjkon6rRmN5qEJW3xjoHBKu5c/w02a
	uQ6gSZCmZ8K+MvmpCf+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiCY-0007p7-LR; Wed, 16 Oct 2019 12:14:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKiBt-0007Np-Oe
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:14:12 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9GC6eeM026519; Wed, 16 Oct 2019 14:14:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=1cUGDzXXsUx288sdgvJBcP5wG3KT3Z/CAWtG2DDFRX8=;
 b=y4VFtabEqag3ebZopFcaDl19V4SDZwYfmLCIo4cJ+42pXl14X9M383+pHket7csx8INo
 UNCIOQQKE4aBqZpHSj9aiRxY2OmN3jjbHk6ePxiZf706JJ3W23II1k2HAvYMNGO9GrBf
 jF4tIdnuELg5TGQUU/fHxbWkz9T54WsSlsn/c6Cu25x255cTWYQ9GlP/Eo/gCG8R2uzW
 Qj5pXwHIyLvzJ+2GEyW4TUT36tXLIFxvQ4TtklzSthhVtpU53ImqJB98f/ZD4nMk/Y1W
 1TaThyDhUCko4SVOc3sgdie9CcbumEl0B68goDArW44iy4Vql3F0Uudd9TQyP7QTb6yu mQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vk4kx60eu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 16 Oct 2019 14:14:01 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7A8ED10002A;
 Wed, 16 Oct 2019 14:14:00 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6CAEB20A92D;
 Wed, 16 Oct 2019 14:14:00 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 16 Oct
 2019 14:14:00 +0200
Received: from localhost (10.201.23.25) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 16 Oct 2019 14:13:59
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 2/2] mailbox: stm32-ipcc: Update wakeup management
Date: Wed, 16 Oct 2019 14:13:49 +0200
Message-ID: <1571228029-31652-3-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571228029-31652-1-git-send-email-fabien.dessenne@st.com>
References: <1571228029-31652-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-16_04:2019-10-16,2019-10-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_051410_103552_E79B856E 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The wakeup specific IRQ management is no more needed to wake up the stm32
plaform. A relationship has been established between the EXTI and
the RX IRQ, just need to declare the EXTI interrupt instead of the
IPCC RX IRQ.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 drivers/mailbox/stm32-ipcc.c | 36 +++++++-----------------------------
 1 file changed, 7 insertions(+), 29 deletions(-)

diff --git a/drivers/mailbox/stm32-ipcc.c b/drivers/mailbox/stm32-ipcc.c
index 5c2d1e1..ef96688 100644
--- a/drivers/mailbox/stm32-ipcc.c
+++ b/drivers/mailbox/stm32-ipcc.c
@@ -52,7 +52,6 @@ struct stm32_ipcc {
 	struct clk *clk;
 	spinlock_t lock; /* protect access to IPCC registers */
 	int irqs[IPCC_IRQ_NUM];
-	int wkp;
 	u32 proc_id;
 	u32 n_chans;
 	u32 xcr;
@@ -282,16 +281,9 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
 
 	/* wakeup */
 	if (of_property_read_bool(np, "wakeup-source")) {
-		ipcc->wkp = platform_get_irq_byname(pdev, "wakeup");
-		if (ipcc->wkp < 0) {
-			if (ipcc->wkp != -EPROBE_DEFER)
-				dev_err(dev, "could not get wakeup IRQ\n");
-			ret = ipcc->wkp;
-			goto err_clk;
-		}
-
 		device_set_wakeup_capable(dev, true);
-		ret = dev_pm_set_dedicated_wake_irq(dev, ipcc->wkp);
+
+		ret = dev_pm_set_wake_irq(dev, ipcc->irqs[IPCC_IRQ_RX]);
 		if (ret) {
 			dev_err(dev, "Failed to set wake up irq\n");
 			goto err_init_wkp;
@@ -334,10 +326,10 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
 	return 0;
 
 err_irq_wkp:
-	if (ipcc->wkp)
+	if (of_property_read_bool(np, "wakeup-source"))
 		dev_pm_clear_wake_irq(dev);
 err_init_wkp:
-	device_init_wakeup(dev, false);
+	device_set_wakeup_capable(dev, false);
 err_clk:
 	clk_disable_unprepare(ipcc->clk);
 	return ret;
@@ -345,27 +337,17 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
 
 static int stm32_ipcc_remove(struct platform_device *pdev)
 {
-	struct stm32_ipcc *ipcc = platform_get_drvdata(pdev);
+	struct device *dev = &pdev->dev;
 
-	if (ipcc->wkp)
+	if (of_property_read_bool(dev->of_node, "wakeup-source"))
 		dev_pm_clear_wake_irq(&pdev->dev);
 
-	device_init_wakeup(&pdev->dev, false);
+	device_set_wakeup_capable(dev, false);
 
 	return 0;
 }
 
 #ifdef CONFIG_PM_SLEEP
-static void stm32_ipcc_set_irq_wake(struct device *dev, bool enable)
-{
-	struct stm32_ipcc *ipcc = dev_get_drvdata(dev);
-	unsigned int i;
-
-	if (device_may_wakeup(dev))
-		for (i = 0; i < IPCC_IRQ_NUM; i++)
-			irq_set_irq_wake(ipcc->irqs[i], enable);
-}
-
 static int stm32_ipcc_suspend(struct device *dev)
 {
 	struct stm32_ipcc *ipcc = dev_get_drvdata(dev);
@@ -373,8 +355,6 @@ static int stm32_ipcc_suspend(struct device *dev)
 	ipcc->xmr = readl_relaxed(ipcc->reg_proc + IPCC_XMR);
 	ipcc->xcr = readl_relaxed(ipcc->reg_proc + IPCC_XCR);
 
-	stm32_ipcc_set_irq_wake(dev, true);
-
 	return 0;
 }
 
@@ -382,8 +362,6 @@ static int stm32_ipcc_resume(struct device *dev)
 {
 	struct stm32_ipcc *ipcc = dev_get_drvdata(dev);
 
-	stm32_ipcc_set_irq_wake(dev, false);
-
 	writel_relaxed(ipcc->xmr, ipcc->reg_proc + IPCC_XMR);
 	writel_relaxed(ipcc->xcr, ipcc->reg_proc + IPCC_XCR);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
