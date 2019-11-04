Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568D4EE13F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dG6vnT0FPp03/jBXUfsFC5XWXZtWhhsQpXuFXPy7CAs=; b=neRRrUDCFl9XR6
	WZtzr0yovmWyQ6HR36AlGTU0aJrFpxoItiVesFv/jwARr1O8NJOH0zOJpeMz8Ufs8YyMVLj/YfYPk
	rLjkGrP4lpCW1PSAd1OtDyT5PaRckX0GUPM5tEJ1fi7a4DrhSYQ/vgrGM7ibf8wPv7Tsj/JgCrE0s
	NEVTiUIgVUkrDmCFTToCqs+Niv4p5wCVExB6FNG996OJ4cenN6bsJgMkUvMSZEAROr6rnupIwP3/T
	z6ecmX0232bJSNPuSk3FFBJ70wAOWRJQrL8KjkiOdftIS24Xkp8lyZIa4ME2mhP6V0nGYpNtFzySt
	4nI5Op8MHnQttFWEXppA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcSV-0000UG-6c; Mon, 04 Nov 2019 13:31:51 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcRJ-0007ub-65
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:30:39 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA4DHK7C008695; Mon, 4 Nov 2019 14:30:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=poGuxiksbd1+m08n39wqdhvTjgQ3Np+ues1IrMNq2zc=;
 b=sFszNMSAoL+e8Qpajej6/iL5t9I6gWN/2ipnLsQHek3AiIr1XmVlchU8Wrq3A71q78/b
 elEW1e199F2vZoEgdlfFCum8VAkZGo+h2iYQ/zUrmkNG27ilNxJk8MS7Hno0e1ZVVfTx
 6i6YXW4j/YshjBoQ630fa3o9rERnFsJtgQRQWV+rmf5DJ1xektDDrgj2txa/QXnRIK1Z
 +e46v5LBXdKsIR5rifEjxYrFPMoJrrsW2t3oala1+FarhW4OgYNdhctY3NHy36QJaCrm
 cKKeeG2fxZu6mctatH1/9mDCek/yYRuCHEYclHS/hgHDmlmxuEDiCXmNqkbX67R9UMor Pg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w1054hntt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 14:30:24 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ADD4110003A;
 Mon,  4 Nov 2019 14:30:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9D0AD2FF5C2;
 Mon,  4 Nov 2019 14:30:23 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Mon, 4 Nov 2019 14:30:22 +0100
From: Pascal Paillet <p.paillet@st.com>
To: <rui.zhang@intel.com>, <edubezval@gmail.com>, <daniel.lezcano@linaro.org>, 
 <amit.kucheria@verdurent.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <p.paillet@st.com>,
 <david.hernandezsanchez@st.com>, <horms+renesas@verge.net.au>,
 <wsa+renesas@sang-engineering.com>, <linux-pm@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/5] thermal: stm32: remove hardware irq handler
Date: Mon, 4 Nov 2019 14:30:16 +0100
Message-ID: <20191104133020.8820-2-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104133020.8820-1-p.paillet@st.com>
References: <20191104133020.8820-1-p.paillet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_08:2019-11-04,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_053037_560185_752416C9 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove hardware irq handler because it is not needed to disable the
interrupt before the threaded handler. The goal is to simplify
the code.

Change-Id: Ida967e8543c8dafc6a24508000f64f6405add31d
---
 drivers/thermal/st/stm_thermal.c | 25 +------------------------
 1 file changed, 1 insertion(+), 24 deletions(-)

diff --git a/drivers/thermal/st/stm_thermal.c b/drivers/thermal/st/stm_thermal.c
index cf9ddc52f30e..31aa63fb3db1 100644
--- a/drivers/thermal/st/stm_thermal.c
+++ b/drivers/thermal/st/stm_thermal.c
@@ -98,21 +98,10 @@ struct stm_thermal_sensor {
 	unsigned int low_temp_enabled;
 	int num_trips;
 	int irq;
-	unsigned int irq_enabled;
 	void __iomem *base;
 	int t0, fmt0, ramp_coeff;
 };
 
-static irqreturn_t stm_thermal_alarm_irq(int irq, void *sdata)
-{
-	struct stm_thermal_sensor *sensor = sdata;
-
-	disable_irq_nosync(irq);
-	sensor->irq_enabled = false;
-
-	return IRQ_WAKE_THREAD;
-}
-
 static irqreturn_t stm_thermal_alarm_irq_thread(int irq, void *sdata)
 {
 	u32 value;
@@ -464,16 +453,6 @@ static int stm_thermal_get_temp(void *data, int *temp)
 			if (ret)
 				return ret;
 		}
-
-		/*
-		 * Re-enable alarm IRQ if temperature below critical
-		 * temperature
-		 */
-		if (!sensor->irq_enabled &&
-		    (celsius(*temp) < sensor->temp_critical)) {
-			sensor->irq_enabled = true;
-			enable_irq(sensor->irq);
-		}
 	}
 
 	return 0;
@@ -493,7 +472,7 @@ static int stm_register_irq(struct stm_thermal_sensor *sensor)
 	}
 
 	ret = devm_request_threaded_irq(dev, sensor->irq,
-					stm_thermal_alarm_irq,
+					NULL,
 					stm_thermal_alarm_irq_thread,
 					IRQF_ONESHOT,
 					dev->driver->name, sensor);
@@ -503,8 +482,6 @@ static int stm_register_irq(struct stm_thermal_sensor *sensor)
 		return ret;
 	}
 
-	sensor->irq_enabled = true;
-
 	dev_dbg(dev, "%s: thermal IRQ registered", __func__);
 
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
