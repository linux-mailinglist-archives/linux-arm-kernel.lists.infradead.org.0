Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED3F136AE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:17:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8smL6rM2esX5KwveaIrL91k+WpadlORJT1Qk35CRkiI=; b=jyHHfTo6xFHjpw
	R3+RlsVXfUdBmfY0Rnf7gnMzLZM1K6KsMIiZm3N/RfpzzMIobq/cbB4P/Zw4FifMvklZIrsbVmKDa
	zrms/7cQGz5aDRV+Id0zS5MqGeF3C87b7cbuHRxQhYEucWevpUGszRFo8TVXZmyxxyyhmNypUbTfQ
	lJm6OJuky8rmkQo7o1OZDjTiPDEIvB697Y/vaXDm8GcMFjrqiYlKiFD7ZkWJk8kYqAVckvPgTA3ui
	pNku6A6wThvpcJOXt5Zdok02MWdkFlZ7IsIMoSvlKtzGeKasIMJrnS+33XZavO3J99zNXB3iARQYb
	BGJKz15UDpSkBZ+vK/Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprMM-000290-Ep; Fri, 10 Jan 2020 10:17:42 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprL4-00017D-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:16:24 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00AADCs2031451; Fri, 10 Jan 2020 11:16:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Hldl398s+nOsQdaXOAH6nd6BIu7pyZ6GdjoQzcUnb9A=;
 b=p5pYZN/WKAF6KKnv7UYIix4OmJOWjfMgBObE4Spfn7X55oeAvaQ1iekhxqTOVr3OxuhV
 uUjtiWWqNTMTe0/wFFGa7UC92vymXSWjm5GRklaQwXr5ZzeXnlkEdAHQxVwv8PZE5myo
 ICtjAdAZxPeZ4oTCELMP4HckIz9hZ1bOGjhaNEv0nMGXxv3z010QA1K5fIwmWXknkZN2
 hraEdcqW6m2mIGwF5PeDqnm41Z1ZAVvVUcvHMIaaIZ5b7v2ZbWz6cFdlBroZmGvj9Lzm
 QWODCkBhVMAENM1rI2L9l42MJi97Qh6rpbtEZmAYW1ZdBUq+/DkvdjytnXmD/zZX/Ufg iA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xdw8b7kv1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 11:16:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3D526100034;
 Fri, 10 Jan 2020 11:16:09 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 24F622A7905;
 Fri, 10 Jan 2020 11:16:09 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 10 Jan 2020 11:16:08 +0100
From: Pascal Paillet <p.paillet@st.com>
To: <rui.zhang@intel.com>, <edubezval@gmail.com>, <daniel.lezcano@linaro.org>, 
 <amit.kucheria@verdurent.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <p.paillet@st.com>,
 <david.hernandezsanchez@st.com>, <horms+renesas@verge.net.au>,
 <wsa+renesas@sang-engineering.com>, <linux-pm@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH_V3 1/6] thermal: stm32: fix icifr register name
Date: Fri, 10 Jan 2020 11:16:00 +0100
Message-ID: <20200110101605.24984-2-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110101605.24984-1-p.paillet@st.com>
References: <20200110101605.24984-1-p.paillet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_021622_816383_CFF707AC 
X-CRM114-Status: GOOD (  14.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a mistake with the ICIFR register name.

Signed-off-by: Pascal Paillet <p.paillet@st.com>
---
 drivers/thermal/st/stm_thermal.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/thermal/st/stm_thermal.c b/drivers/thermal/st/stm_thermal.c
index cf9ddc52f30e..7835e109692e 100644
--- a/drivers/thermal/st/stm_thermal.c
+++ b/drivers/thermal/st/stm_thermal.c
@@ -30,7 +30,7 @@
 #define DTS_DR_OFFSET		0x1C
 #define DTS_SR_OFFSET		0x20
 #define DTS_ITENR_OFFSET	0x24
-#define DTS_CIFR_OFFSET		0x28
+#define DTS_ICIFR_OFFSET	0x28
 
 /* DTS_CFGR1 register mask definitions */
 #define HSREF_CLK_DIV_MASK	GENMASK(30, 24)
@@ -122,10 +122,10 @@ static irqreturn_t stm_thermal_alarm_irq_thread(int irq, void *sdata)
 	value = readl_relaxed(sensor->base + DTS_SR_OFFSET);
 
 	if ((value & LOW_THRESHOLD) == LOW_THRESHOLD)
-		writel_relaxed(LOW_THRESHOLD, sensor->base + DTS_CIFR_OFFSET);
+		writel_relaxed(LOW_THRESHOLD, sensor->base + DTS_ICIFR_OFFSET);
 
 	if ((value & HIGH_THRESHOLD) == HIGH_THRESHOLD)
-		writel_relaxed(HIGH_THRESHOLD, sensor->base + DTS_CIFR_OFFSET);
+		writel_relaxed(HIGH_THRESHOLD, sensor->base + DTS_ICIFR_OFFSET);
 
 	thermal_zone_device_update(sensor->th_dev, THERMAL_EVENT_UNSPECIFIED);
 
@@ -347,7 +347,7 @@ static int stm_enable_irq(struct stm_thermal_sensor *sensor)
 	 */
 
 	/* Make sure LOW_THRESHOLD IT is clear before enabling */
-	writel_relaxed(LOW_THRESHOLD, sensor->base + DTS_CIFR_OFFSET);
+	writel_relaxed(LOW_THRESHOLD, sensor->base + DTS_ICIFR_OFFSET);
 
 	/* Enable IT generation for low threshold */
 	value = readl_relaxed(sensor->base + DTS_ITENR_OFFSET);
@@ -356,7 +356,7 @@ static int stm_enable_irq(struct stm_thermal_sensor *sensor)
 	/* Enable the low temperature threshold if needed */
 	if (sensor->low_temp_enabled) {
 		/* Make sure HIGH_THRESHOLD IT is clear before enabling */
-		writel_relaxed(HIGH_THRESHOLD, sensor->base + DTS_CIFR_OFFSET);
+		writel_relaxed(HIGH_THRESHOLD, sensor->base + DTS_ICIFR_OFFSET);
 
 		/* Enable IT generation for high threshold */
 		value |= HIGH_THRESHOLD;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
