Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E708EB913
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BynlgSxV+vnAqwCCWAoUdg0v6p0v/0wPYZrdyT8plEM=; b=Rr9exzCnmnNa803O5S1LJAbrG1
	ohVRRUJaiy5+6+nLrjM9RyvVY1VegcUHVlXyWs5pC20TGd269CAQiyy7KM67h0/b9PWAg0hEzuFtS
	iET9pvd6cA0ghdakjXUYAiL/D4x5rqCTEPJDvqmLAr5qUcwh/kczX44NhSJdAHajKSoqESkGzJ1OJ
	L2M5XaLl89dKOjEEP/ESn870jgnhb4Lc3FGlMHpzTFdb8JXsXq1Ksyuv1vlvLD/e7nQNcbhm2kTql
	deiCOUG4OwXV95R+Xhg7jMRmFSZsCgEF9Jm3/MA8mNfNYhrAPOlC3A5lCDUTeXGi6+r8bkTdyjHST
	3khqpWHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQI7m-0006Ti-0D; Thu, 31 Oct 2019 21:36:58 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQI5W-0003fg-AE
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:34:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EF3171A0218;
 Thu, 31 Oct 2019 22:34:36 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E22431A0112;
 Thu, 31 Oct 2019 22:34:36 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A6CE205E9;
 Thu, 31 Oct 2019 22:34:36 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: [PATCH v10 07/11] PM / QoS: Export _freq_qos_apply
Date: Thu, 31 Oct 2019 23:34:24 +0200
Message-Id: <077c5132cc4391bfc43897c719c648f10b658b11.1572556786.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572556786.git.leonard.crestez@nxp.com>
References: <cover.1572556786.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1572556786.git.leonard.crestez@nxp.com>
References: <cover.1572556786.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_143438_690549_65687569 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is exported only for dev_pm_qos to use in order to implement
per-device freq constraints.

Export with a leading underscore because this is an implementation
detail, it's not meant to be used by drivers making QoS requests.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 include/linux/pm_qos.h |  2 ++
 kernel/power/qos.c     | 11 ++++++-----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/include/linux/pm_qos.h b/include/linux/pm_qos.h
index a8e1486e3200..89a8e7a4710f 100644
--- a/include/linux/pm_qos.h
+++ b/include/linux/pm_qos.h
@@ -291,10 +291,12 @@ s32 freq_qos_read_value(struct freq_constraints *qos,
 int freq_qos_add_request(struct freq_constraints *qos,
 			 struct freq_qos_request *req,
 			 enum freq_qos_req_type type, s32 value);
 int freq_qos_update_request(struct freq_qos_request *req, s32 new_value);
 int freq_qos_remove_request(struct freq_qos_request *req);
+int _freq_qos_apply(struct freq_qos_request *req,
+		    enum pm_qos_req_action action, s32 value);
 
 int freq_qos_add_notifier(struct freq_constraints *qos,
 			  enum freq_qos_req_type type,
 			  struct notifier_block *notifier);
 int freq_qos_remove_notifier(struct freq_constraints *qos,
diff --git a/kernel/power/qos.c b/kernel/power/qos.c
index 04e83fdfbe80..ea38ae86bd66 100644
--- a/kernel/power/qos.c
+++ b/kernel/power/qos.c
@@ -708,16 +708,16 @@ s32 freq_qos_read_value(struct freq_constraints *qos,
 
 	return ret;
 }
 
 /**
- * freq_qos_apply - Add/modify/remove frequency QoS request.
+ * _freq_qos_apply - Add/modify/remove frequency QoS request.
  * @req: Constraint request to apply.
  * @action: Action to perform (add/update/remove).
  * @value: Value to assign to the QoS request.
  */
-static int freq_qos_apply(struct freq_qos_request *req,
+int _freq_qos_apply(struct freq_qos_request *req,
 			  enum pm_qos_req_action action, s32 value)
 {
 	int ret;
 
 	switch(req->type) {
@@ -733,10 +733,11 @@ static int freq_qos_apply(struct freq_qos_request *req,
 		ret = -EINVAL;
 	}
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(_freq_qos_apply);
 
 /**
  * freq_qos_add_request - Insert new frequency QoS request into a given list.
  * @qos: Constraints to update.
  * @req: Preallocated request object.
@@ -763,11 +764,11 @@ int freq_qos_add_request(struct freq_constraints *qos,
 		 "%s() called for active request\n", __func__))
 		return -EINVAL;
 
 	req->qos = qos;
 	req->type = type;
-	ret = freq_qos_apply(req, PM_QOS_ADD_REQ, value);
+	ret = _freq_qos_apply(req, PM_QOS_ADD_REQ, value);
 	if (ret < 0) {
 		req->qos = NULL;
 		req->type = 0;
 	}
 
@@ -796,11 +797,11 @@ int freq_qos_update_request(struct freq_qos_request *req, s32 new_value)
 		return -EINVAL;
 
 	if (req->pnode.prio == new_value)
 		return 0;
 
-	return freq_qos_apply(req, PM_QOS_UPDATE_REQ, new_value);
+	return _freq_qos_apply(req, PM_QOS_UPDATE_REQ, new_value);
 }
 EXPORT_SYMBOL_GPL(freq_qos_update_request);
 
 /**
  * freq_qos_remove_request - Remove frequency QoS request from its list.
@@ -819,11 +820,11 @@ int freq_qos_remove_request(struct freq_qos_request *req)
 
 	if (WARN(!freq_qos_request_active(req),
 		 "%s() called for unknown object\n", __func__))
 		return -EINVAL;
 
-	return freq_qos_apply(req, PM_QOS_REMOVE_REQ, PM_QOS_DEFAULT_VALUE);
+	return _freq_qos_apply(req, PM_QOS_REMOVE_REQ, PM_QOS_DEFAULT_VALUE);
 }
 EXPORT_SYMBOL_GPL(freq_qos_remove_request);
 
 /**
  * freq_qos_add_notifier - Add frequency QoS change notifier.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
