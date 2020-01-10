Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A24C136AE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:17:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HbmhOFcjxuluK6fq4FdUJYdj4xEKz0G/gcCEd8WsuM=; b=PMxqtqMt2TnPwo
	2A2KzeBKI4xW6SDcTj4/l6Nz95B2Dac/M+iCrvSljgAIcQ3RUuoS0bUOzQbgz4+BHX3QPw5RuR3zW
	gv2pZJZiS9LntXfvdE6E+ehgf+imCtQDJpOW1Exn2SOMnMu8VTB43CzZXRmHuyrPkLhcSyibMkPAf
	rn7a4g73PAJ2b0bn2ZCy3sQtCQXESf9Q5zrTxtDOJqSPLH6DW1jj1zCU1avDTh6oLGS6aIUkRsFNc
	U6L569yNrYB5N60xpNDwx1JG2csnc+SzU+wpUqnY+/n7bsra+mxg779n+I8189j5R6m2damXwEgyd
	+oBI3DjBdjBN28NzXKCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprMC-0001tl-Uh; Fri, 10 Jan 2020 10:17:32 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprL1-00014R-9f
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:16:22 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00AAE8Dx029396; Fri, 10 Jan 2020 11:16:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=MsYZtSJTRtofOX1+DaEAVsiSRhsLl0necGZ8OJbUceY=;
 b=accDVAbHVcJLvFxLvvSntdbWOxM1RFgWQAK86Kkg8SLmaJWvoS5tTeuahNLi9Jm3u68T
 8ZgQ5D6EDnwWAEPgcYf25gFwQxd0UWoapJB2PqUPJx6mo09R4LXA1EKH7/W307+NWWv/
 NuEi7GDvf7PK6VFwhxpOnWbgTaOhlHtLzCqH9d/A9h+vPPqf4nPtVmwM0GcMksWxe0yr
 Pxw1SR+tTM/NNkDpDNRXSCFR52B6MHSKyD+bOx4Y5Y0aj1wl2qcN7ubGAH9OtpALZ7eT
 JJI5waYLhLVx1eXHk5ArYsAuxVhsluQi45ceA/teUD0P5Y7c3rRNK1fkL8WdQv5wjyPF OA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakkb742a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 11:16:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DC53810003A;
 Fri, 10 Jan 2020 11:16:09 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CCC992A7907;
 Fri, 10 Jan 2020 11:16:09 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 10 Jan 2020 11:16:09 +0100
From: Pascal Paillet <p.paillet@st.com>
To: <rui.zhang@intel.com>, <edubezval@gmail.com>, <daniel.lezcano@linaro.org>, 
 <amit.kucheria@verdurent.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <p.paillet@st.com>,
 <david.hernandezsanchez@st.com>, <horms+renesas@verge.net.au>,
 <wsa+renesas@sang-engineering.com>, <linux-pm@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH_V3 2/6] thermal: stm32: rework sensor mode management
Date: Fri, 10 Jan 2020 11:16:01 +0100
Message-ID: <20200110101605.24984-3-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110101605.24984-1-p.paillet@st.com>
References: <20200110101605.24984-1-p.paillet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_021619_634587_3AEE07EB 
X-CRM114-Status: GOOD (  14.57  )
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

Be sure get_temp returns an error while disabling or enabling the device.
Set THERMAL_DEVICE_ENABLED state at the end of power on function.
Set THERMAL_DEVICE_DISABLED state at the beginning of power off function.

Signed-off-by: Pascal Paillet <p.paillet@st.com>
---
 drivers/thermal/st/stm_thermal.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/thermal/st/stm_thermal.c b/drivers/thermal/st/stm_thermal.c
index 7835e109692e..a21fa7e0c72b 100644
--- a/drivers/thermal/st/stm_thermal.c
+++ b/drivers/thermal/st/stm_thermal.c
@@ -160,6 +160,8 @@ static int stm_sensor_power_on(struct stm_thermal_sensor *sensor)
 	writel_relaxed(value, sensor->base +
 		       DTS_CFGR1_OFFSET);
 
+	sensor->mode = THERMAL_DEVICE_ENABLED;
+
 	return 0;
 }
 
@@ -167,6 +169,8 @@ static int stm_sensor_power_off(struct stm_thermal_sensor *sensor)
 {
 	u32 value;
 
+	sensor->mode = THERMAL_DEVICE_DISABLED;
+
 	/* Stop measuring */
 	value = readl_relaxed(sensor->base + DTS_CFGR1_OFFSET);
 	value &= ~TS1_START;
@@ -374,7 +378,6 @@ static int stm_thermal_update_threshold(struct stm_thermal_sensor *sensor)
 {
 	int ret;
 
-	sensor->mode = THERMAL_DEVICE_DISABLED;
 
 	ret = stm_sensor_power_off(sensor);
 	if (ret)
@@ -576,8 +579,6 @@ static int stm_thermal_suspend(struct device *dev)
 	if (ret)
 		return ret;
 
-	sensor->mode = THERMAL_DEVICE_DISABLED;
-
 	return 0;
 }
 
@@ -590,7 +591,6 @@ static int stm_thermal_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	sensor->mode = THERMAL_DEVICE_ENABLED;
 
 	return 0;
 }
@@ -718,8 +718,6 @@ static int stm_thermal_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_tz;
 
-	sensor->mode = THERMAL_DEVICE_ENABLED;
-
 	dev_info(&pdev->dev, "%s: Driver initialized successfully\n",
 		 __func__);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
