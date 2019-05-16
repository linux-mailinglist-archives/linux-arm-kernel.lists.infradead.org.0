Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C759B20244
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6R6+WahIs0uVWC8BynLelQRspktEEColz3DpkfKg9rw=; b=g5gr+5aXq3cAul
	G/EFb4+k7ioKZ3s0JMM84MrnT3qherlVLrDj1a8DZJIh3ONtUVKGa83R9ALec4f3kf2VxblLtbCm5
	+GalFlqsuOU4s2poxdltC0Hu+14zxfU/RfHvkmJDBmTougvlBbP2CD264LAd/yRsRrG93KOGVyeEG
	D8AGdhKDy1Qrt/7NWulMeMfEjd8260kdgwTN1DupB1lZ0uPgZrWhKBw0wLEH2kkx3931h2lqKeQJB
	6VtidUo2lMH5Zacj+GEzv9iGFjmMFcacyE1PljLcPf6qUkSoZdNNMn7TV/viY+okD34n8thfO7veW
	3sEtYwkULy+V6SqCglyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCP8-0002jw-3I; Thu, 16 May 2019 09:10:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCOL-0001SC-Sk; Thu, 16 May 2019 09:09:48 +0000
X-UUID: b8f1955bfd71436ab09164332b2a0cfd-20190516
X-UUID: b8f1955bfd71436ab09164332b2a0cfd-20190516
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1995310482; Thu, 16 May 2019 01:09:32 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 02:09:31 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 17:08:52 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 17:08:52 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [PATCH 6/8] PM / OPP: Support adjusting OPP voltages at runtime
Date: Thu, 16 May 2019 17:08:43 +0800
Message-ID: <1557997725-12178-7-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E0DEB3833EAD9912F130270ECCD6A64BEFFD3A54B599CC841847DA7BC76D256C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_020934_496396_897EB6C5 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 drivers/opp/core.c     | 78 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_opp.h | 11 +++++++
 2 files changed, 89 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 0420f7e8ad5b..879ca5f50d1a 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -1946,6 +1946,84 @@ static int _opp_set_availability(struct device *dev, unsigned long freq,
 	return r;
 }
 
+/*
+ * dev_pm_opp_adjust_voltage() - helper to change the voltage of an OPP
+ * @dev:		device for which we do this operation
+ * @freq:		OPP frequency to adjust voltage of
+ * @u_volt:		new OPP voltage
+ *
+ * Change the voltage of an OPP with an RCU operation.
+ *
+ * Return: -EINVAL for bad pointers, -ENOMEM if no memory available for the
+ * copy operation, returns 0 if no modifcation was done OR modification was
+ * successful.
+ *
+ * Locking: The internal device_opp and opp structures are RCU protected.
+ * Hence this function internally uses RCU updater strategy with mutex locks to
+ * keep the integrity of the internal data structures. Callers should ensure
+ * that this function is *NOT* called under RCU protection or in contexts where
+ * mutex locking or synchronize_rcu() blocking calls cannot be used.
+ */
+int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
+			      unsigned long u_volt)
+{
+	struct opp_table *opp_table;
+	struct dev_pm_opp *new_opp, *tmp_opp, *opp = ERR_PTR(-ENODEV);
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
+	/* keep the node allocated */
+	new_opp = kmalloc(sizeof(*new_opp), GFP_KERNEL);
+	if (!new_opp)
+		return -ENOMEM;
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
+		goto unlock;
+	}
+
+	/* Is update really needed? */
+	if (opp->supplies->u_volt == u_volt)
+		goto unlock;
+
+	/* copy the old data over */
+	*new_opp = *opp;
+
+	/* plug in new node */
+	new_opp->supplies->u_volt = u_volt;
+
+	list_replace_rcu(&opp->node, &new_opp->node);
+	mutex_unlock(&opp_table->lock);
+
+	/* Notify the change of the OPP */
+	blocking_notifier_call_chain(&opp_table->head, OPP_EVENT_ADJUST_VOLTAGE,
+				     opp);
+
+	return 0;
+
+unlock:
+	mutex_unlock(&opp_table->lock);
+	kfree(new_opp);
+	return r;
+}
+
 /**
  * dev_pm_opp_enable() - Enable a specific OPP
  * @dev:	device for which we do this operation
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index 24c757a32a7b..70219fe3ca20 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -25,6 +25,7 @@ struct opp_table;
 
 enum dev_pm_opp_event {
 	OPP_EVENT_ADD, OPP_EVENT_REMOVE, OPP_EVENT_ENABLE, OPP_EVENT_DISABLE,
+	OPP_EVENT_ADJUST_VOLTAGE,
 };
 
 /**
@@ -112,6 +113,9 @@ int dev_pm_opp_add(struct device *dev, unsigned long freq,
 void dev_pm_opp_remove(struct device *dev, unsigned long freq);
 void dev_pm_opp_remove_all_dynamic(struct device *dev);
 
+int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
+			      unsigned long u_volt);
+
 int dev_pm_opp_enable(struct device *dev, unsigned long freq);
 
 int dev_pm_opp_disable(struct device *dev, unsigned long freq);
@@ -229,6 +233,13 @@ static inline void dev_pm_opp_remove_all_dynamic(struct device *dev)
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
