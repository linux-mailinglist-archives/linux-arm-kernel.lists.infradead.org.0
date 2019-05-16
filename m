Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B48720B44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z9we4G9bw5TuxcAfgf2EDrD9gxicSyyEm/cXmSNu1yA=; b=d89rngIsX2S2mb
	LWOLXcmrEVDVHm35SyvQMjBKkmpzEo9mlaU3TIy5h8wZmAJRfmhpt/6Guu/diXWZ/57GiTEnWVMgB
	OLiaVDyg8OQuohO4yyuXwB9AH1RfPD1o++3ofDDKDJg/oSwtq+Tj6geIxjy4YGGo8iyL7fkuFTwTD
	v6yycNIOG0c4i2r8g7w7YgiEk0tmE0fEtYytflPhTeUQLixdSt/1QZralmxqd0T/TtjbY5C5tOaVl
	LFdamWt8QolxF4X9/T4hnUSvSzexDqjfKbIWQ85xuSw00SSt2h+lulwz0mFiSfBfAtErGuLZsKT5U
	7ZSFSOq7yqn1HU+iyi+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRILE-0004xQ-L8; Thu, 16 May 2019 15:30:44 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIL7-0004wd-65
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:30:39 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4GFQ5Id007015; Thu, 16 May 2019 17:30:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=nC+lU5wFiqSbb880es2NIZVzXaC7ZVUAJusjLU3yQYw=;
 b=yg0PstNKDCsxCaZA3Pna5TboHkvbKYHSHzpwv1ZGigG5M0fX/A0girzBMea0fC6kxcD7
 8w+XZ+CxBJPkDG2HqqO9E/bpzcIMR2XFqRrMPWqW6OHJqmvRmg5eiL7ruD+VcK+og36W
 dfGLg3v3zLKAHdGmTF75lOxSbZn4ZmTvdJMXmYjviBptPN/ZM2531YJixOVs7Q4eoT+6
 pT4zQUakHozg62LJ1YicUq5nNZKLeTz5Ma0Z8YX6/0BKbzCbvxzbOb3+skOtq7f7qjHE
 cWdX+SjE7lDqWLkHhtEHwyqDXTMX1x5CpcRN/lvP0CcCax0qEJTFXTO4dhKWK9ZVuiye 0g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sdkv07xm0-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 16 May 2019 17:30:31 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CDBEE34;
 Thu, 16 May 2019 15:30:30 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ADED6285D;
 Thu, 16 May 2019 15:30:30 +0000 (GMT)
Received: from localhost (10.75.127.46) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Thu, 16 May 2019 17:30:30 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH v2] i2c: i2c-stm32f7: fix the get_irq error cases
Date: Thu, 16 May 2019 17:29:54 +0200
Message-ID: <1558020594-1498-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-16_13:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_083037_676634_6EEC804F 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.torgue@st.com, marc.w.gonzalez@free.fr,
 linux-kernel@vger.kernel.org, fabien.dessenne@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During probe, return the "get_irq" error value instead of -EINVAL which
allows the driver to be deferred probed if needed.
Fix also the case where of_irq_get() returns a negative value.
Note :
On failure of_irq_get() returns 0 or a negative value while
platform_get_irq() returns a negative value.

Fixes: aeb068c57214 ("i2c: i2c-stm32f7: add driver")

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
Changes in v2:
- Also check for irq == 0 that means "does not exist" as pointed out by
  Marc
---
 drivers/i2c/busses/i2c-stm32f7.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 4284fc9..d7d7dd7 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -25,7 +25,6 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-#include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/pinctrl/consumer.h>
@@ -1812,15 +1811,14 @@ static struct i2c_algorithm stm32f7_i2c_algo = {
 
 static int stm32f7_i2c_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
 	struct stm32f7_i2c_dev *i2c_dev;
 	const struct stm32f7_i2c_setup *setup;
 	struct resource *res;
-	u32 irq_error, irq_event, clk_rate, rise_time, fall_time;
+	u32 clk_rate, rise_time, fall_time;
 	struct i2c_adapter *adap;
 	struct reset_control *rst;
 	dma_addr_t phy_addr;
-	int ret;
+	int irq_error, irq_event, ret;
 
 	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
 	if (!i2c_dev)
@@ -1832,16 +1830,20 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(i2c_dev->base);
 	phy_addr = (dma_addr_t)res->start;
 
-	irq_event = irq_of_parse_and_map(np, 0);
-	if (!irq_event) {
-		dev_err(&pdev->dev, "IRQ event missing or invalid\n");
-		return -EINVAL;
+	irq_event = platform_get_irq(pdev, 0);
+	if (irq_event <= 0) {
+		if (irq_event != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Failed to get IRQ event: %d\n",
+				irq_event);
+		return irq_event ? irq_event : -ENODEV;
 	}
 
-	irq_error = irq_of_parse_and_map(np, 1);
-	if (!irq_error) {
-		dev_err(&pdev->dev, "IRQ error missing or invalid\n");
-		return -EINVAL;
+	irq_error = platform_get_irq(pdev, 1);
+	if (irq_error <= 0) {
+		if (irq_error != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Failed to get IRQ error: %d\n",
+				irq_error);
+		return irq_error ? irq_error : -ENODEV;
 	}
 
 	i2c_dev->clk = devm_clk_get(&pdev->dev, NULL);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
