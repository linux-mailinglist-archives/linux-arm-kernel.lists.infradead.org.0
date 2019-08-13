Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C1C8BA4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjYqu15c+NLZ6zAQYKaYD+Wo7J8nlCgNjR4kyqAEhIA=; b=Ww0U3mh872vodA
	dKjS9zd7m+CFWYz3MYHoMZkgtSOacUn8w/lV7b2Oaa0IupEzhEBFg6uNzhrie7qWf6FJ2DIHlWCaI
	4JhS11IAiXZiVs3PleANzIX+RylvmGmfi5NAPHtSB7wv34SempYbFaE5x1ZlwJYhbY8fZsFzwugT4
	8vt6qOuLQYUlWelnx5uVsUBvYpKw03EdHrKQnHMDYL0PpDulSuf3fXYcumrP53pX0j+2hUK/Kx9JQ
	XUUV0q+ivbMsMH9mIUZdSsxvyHh2wSkipCZ1gnJ430i//bsMp9esm82/MK104lxbt1v5xjCx1KMyU
	fiBEDB+z3HeTEJ4YSfIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWvT-0005Jm-5v; Tue, 13 Aug 2019 13:33:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWv2-00054W-US; Tue, 13 Aug 2019 13:32:58 +0000
X-UUID: 7208ead665c64668b068df05a2477cc8-20190813
X-UUID: 7208ead665c64668b068df05a2477cc8-20190813
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1489096052; Tue, 13 Aug 2019 05:32:12 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 06:32:11 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 21:32:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 13 Aug 2019 21:32:03 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [v4, 6/8] PM / OPP: Support adjusting OPP voltages at runtime
Date: Tue, 13 Aug 2019 21:31:51 +0800
Message-ID: <1565703113-31479-7-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 45C891B5CDE799B39BBD36E00A2DD157FFB30200B7A1D213CDF68F7B0F153F442000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_063257_079846_CC9E34BD 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org,
 fan.chen@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stephen Boyd <sboyd@codeaurora.org>

On some SoCs the Adaptive Voltage Scaling (AVS) technique is
employed to optimize the operating voltage of a device. At a
given frequency, the hardware monitors dynamic factors and either
makes a suggestion for how much to adjust a voltage for the
current frequency, or it automatically adjusts the voltage
without software intervention. Add an API to the OPP library for
the former case, so that AVS type devices can update the voltages
for an OPP when the hardware determines the voltage should
change. The assumption is that drivers like CPUfreq or devfreq
will register for the OPP notifiers and adjust the voltage
according to suggestions that AVS makes.

This patch is devired from [1] submitted by Stephen.
[1] https://lore.kernel.org/patchwork/patch/599279/

Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 drivers/opp/core.c     | 63 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_opp.h | 11 +++++++++
 2 files changed, 74 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index c094d5d20fd7..407a07f29b12 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -2054,6 +2054,69 @@ static int _opp_set_availability(struct device *dev, unsigned long freq,
 }
 
 /**
+ * dev_pm_opp_adjust_voltage() - helper to change the voltage of an OPP
+ * @dev:		device for which we do this operation
+ * @freq:		OPP frequency to adjust voltage of
+ * @u_volt:		new OPP voltage
+ *
+ * Return: -EINVAL for bad pointers, -ENOMEM if no memory available for the
+ * copy operation, returns 0 if no modifcation was done OR modification was
+ * successful.
+ */
+int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
+			      unsigned long u_volt)
+{
+	struct opp_table *opp_table;
+	struct dev_pm_opp *tmp_opp, *opp = ERR_PTR(-ENODEV);
+	int r = 0;
+
+	/* Find the opp_table */
+	opp_table = _find_opp_table(dev);
+	if (IS_ERR(opp_table)) {
+		r = PTR_ERR(opp_table);
+		dev_warn(dev, "%s: Device OPP not found (%d)\n", __func__, r);
+		return r;
+	}
+
+	mutex_lock(&opp_table->lock);
+
+	/* Do we have the frequency? */
+	list_for_each_entry(tmp_opp, &opp_table->opp_list, node) {
+		if (tmp_opp->rate == freq) {
+			opp = tmp_opp;
+			break;
+		}
+	}
+
+	if (IS_ERR(opp)) {
+		r = PTR_ERR(opp);
+		goto adjust_unlock;
+	}
+
+	/* Is update really needed? */
+	if (opp->supplies->u_volt == u_volt)
+		goto adjust_unlock;
+
+	opp->supplies->u_volt = u_volt;
+
+	dev_pm_opp_get(opp);
+	mutex_unlock(&opp_table->lock);
+
+	/* Notify the voltage change of the OPP */
+	blocking_notifier_call_chain(&opp_table->head, OPP_EVENT_ADJUST_VOLTAGE,
+				     opp);
+
+	dev_pm_opp_put(opp);
+	goto adjust_put_table;
+
+adjust_unlock:
+	mutex_unlock(&opp_table->lock);
+adjust_put_table:
+	dev_pm_opp_put_opp_table(opp_table);
+	return r;
+}
+
+/**
  * dev_pm_opp_enable() - Enable a specific OPP
  * @dev:	device for which we do this operation
  * @freq:	OPP frequency to enable
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index af5021f27cb7..86947d53e8c4 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -22,6 +22,7 @@ struct opp_table;
 
 enum dev_pm_opp_event {
 	OPP_EVENT_ADD, OPP_EVENT_REMOVE, OPP_EVENT_ENABLE, OPP_EVENT_DISABLE,
+	OPP_EVENT_ADJUST_VOLTAGE,
 };
 
 /**
@@ -111,6 +112,9 @@ int dev_pm_opp_add(struct device *dev, unsigned long freq,
 void dev_pm_opp_remove(struct device *dev, unsigned long freq);
 void dev_pm_opp_remove_all_dynamic(struct device *dev);
 
+int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
+			      unsigned long u_volt);
+
 int dev_pm_opp_enable(struct device *dev, unsigned long freq);
 
 int dev_pm_opp_disable(struct device *dev, unsigned long freq);
@@ -234,6 +238,13 @@ static inline void dev_pm_opp_remove_all_dynamic(struct device *dev)
 {
 }
 
+static inline int
+dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
+			  unsigned long u_volt)
+{
+	return 0;
+}
+
 static inline int dev_pm_opp_enable(struct device *dev, unsigned long freq)
 {
 	return 0;
-- 
2.12.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
