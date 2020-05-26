Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9926C1E2541
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//j/EeCMMzl3wXyOBojWb6yTmhbUR/nRPuLquEMN/Og=; b=WV2RvZSjB7BbD6
	BGX1wpdkWcYrgn9eEMDC7sTGNP8NiKoP6oFBwV8WQU2hg3rDmKSvrRFqJ9z3nb4rvFlCnUlHcioBn
	RbPBZXdioPKGoFSJTos/kUIbtfoxaVKQwxKieq3mmfgE6lZJzsGhV/r1Fu7y90taECMY6YZ8W15no
	G1Ssj5IuSfVSaxWeJXq5RUuqJ9L4NrOtoz9MJ+oIh18JXh+Zk0wQnJO5HOoJrw+uhEHmKNtSLuAa0
	z9jDiI5Z7Ox/+nguceznWAiJELy42DsWCrVgSWh/HsMFaWxCGSu2LLuM6nNmPgOAQTxnJc6nPN1dt
	dZyTNJXNfeR4bjBIvQAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbKl-0000pv-QB; Tue, 26 May 2020 15:17:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbJq-0000AR-I5
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:16:44 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QFADsH025032; Tue, 26 May 2020 17:16:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=0feWfYVxQYrSEupQlVoVOosyiC2LKcVNCDVytVsfcsI=;
 b=LLSViMJaH5iEPzyFmqnA1qbVFgaWgM4Y3b9yMDMw/GXrlXntN+N9M4VKThB2pCLgl7p6
 JhS05k4oPuEIaDdvY3oMQMgscQ0vN7bXCi2QbevhZ5hFGzFHwSWTL8jaYcRF0YB+sQoJ
 RN5RCgWXO1svJvjbxKPSUm9cq1Dk8kUAA7chqe2hMmveVEepseGQUVHL/xdlb55jSZ8v
 xaSD1My5NGrH5hDl/oLSuuxZ2JgkkPu0aUG+jFfSTfAhXyblL2TZO/YoikWVc1T7TDwN
 e0+CXXN3lf95LTmjJ35jI+vwmXCGnYhwvbCbuleUWDl2LwdS2VyrayUpt2VIq7gbZtfR wg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316sa20en7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 17:16:27 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B8DE2100034;
 Tue, 26 May 2020 17:16:26 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9E58C2C1D9F;
 Tue, 26 May 2020 17:16:26 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 26 May 2020 17:16:25
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <hugues.fruchet@st.com>,
 <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <pavel@ucw.cz>, <len.brown@intel.com>,
 <valentin.schneider@arm.com>, <vincent.guittot@linaro.org>
Subject: [RFC 1/3] PM: QoS: Introduce cpufreq minimum load QoS
Date: Tue, 26 May 2020 17:16:17 +0200
Message-ID: <20200526151619.8779-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200526151619.8779-1-benjamin.gaignard@st.com>
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_02:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_081642_883572_CCF1C3AD 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce cpufreq minimum load QoS, based on the "raw" low-level
PM QoS, to represent the minimum expected cpu load by various devices.

The cpufreq_minload_qos_limit() helper is defined to retrieve the
aggregated constraints.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 include/linux/pm_qos.h |  12 +++
 kernel/power/qos.c     | 213 +++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 225 insertions(+)

diff --git a/include/linux/pm_qos.h b/include/linux/pm_qos.h
index 4a69d4af3ff8..e2cc099322e3 100644
--- a/include/linux/pm_qos.h
+++ b/include/linux/pm_qos.h
@@ -316,4 +316,16 @@ int freq_qos_remove_notifier(struct freq_constraints *qos,
 			     enum freq_qos_req_type type,
 			     struct notifier_block *notifier);
 
+/* Definitions related to the cpufreq minimum load QoS. */
+
+#define CPUFREQ_GOV_QOS_MIN_LOAD_DEFAULT_VALUE	0
+#define CPUFREQ_GOV_QOS_MIN_LOAD_MAX_VALUE	10
+
+s32 cpufreq_minload_qos_limit(void);
+bool cpufreq_minload_qos_request_active(struct pm_qos_request *req);
+void cpufreq_minload_qos_add_request(struct pm_qos_request *req, s32 value);
+void cpufreq_minload_qos_update_request(struct pm_qos_request *req,
+					s32 new_value);
+void cpufreq_minload_qos_remove_request(struct pm_qos_request *req);
+
 #endif
diff --git a/kernel/power/qos.c b/kernel/power/qos.c
index db0bed2cae26..df2fdd962f35 100644
--- a/kernel/power/qos.c
+++ b/kernel/power/qos.c
@@ -671,3 +671,216 @@ int freq_qos_remove_notifier(struct freq_constraints *qos,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(freq_qos_remove_notifier);
+
+/* Definitions related to the cpufreq minimum load QoS. */
+
+static struct pm_qos_constraints cpufreq_minload_constraints = {
+	.list = PLIST_HEAD_INIT(cpufreq_minload_constraints.list),
+	.target_value = CPUFREQ_GOV_QOS_MIN_LOAD_DEFAULT_VALUE,
+	.default_value = CPUFREQ_GOV_QOS_MIN_LOAD_DEFAULT_VALUE,
+	.no_constraint_value = CPUFREQ_GOV_QOS_MIN_LOAD_DEFAULT_VALUE,
+	.type = PM_QOS_MAX,
+};
+
+/**
+ * cpufreq_minload_qos_limit - Return current system-wide cpufreq
+ * minimum load QoS limit.
+ */
+s32 cpufreq_minload_qos_limit(void)
+{
+	return pm_qos_read_value(&cpufreq_minload_constraints);
+}
+EXPORT_SYMBOL_GPL(cpufreq_minload_qos_limit);
+
+/**
+ * cpufreq_minload_qos_request_active - Check the given PM QoS request.
+ * @req: PM QoS request to check.
+ *
+ * Return: 'true' if @req has been added to the cpufreq minimum load
+ * QoS list, 'false' otherwise.
+ */
+bool cpufreq_minload_qos_request_active(struct pm_qos_request *req)
+{
+	return req->qos == &cpufreq_minload_constraints;
+}
+EXPORT_SYMBOL_GPL(cpufreq_minload_qos_request_active);
+
+/**
+ * cpufreq_minload_qos_add_request - Add new cpufreq minimum load QoS request.
+ * @req: Pointer to a preallocated handle.
+ * @value: Requested constraint value.
+ *
+ * Use @value to initialize the request handle pointed to by @req, insert it as
+ * a new entry to the cpufreq minimum load QoS list and recompute the effective
+ * QoS constraint for that list.
+ *
+ * Callers need to save the handle for later use in updates and removal of the
+ * QoS request represented by it.
+ */
+void cpufreq_minload_qos_add_request(struct pm_qos_request *req, s32 value)
+{
+	if (!req)
+		return;
+
+	if (cpufreq_minload_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for already added request\n", __func__);
+		return;
+	}
+
+	trace_pm_qos_add_request(value);
+
+	req->qos = &cpufreq_minload_constraints;
+	pm_qos_update_target(req->qos, &req->node, PM_QOS_ADD_REQ, value);
+}
+EXPORT_SYMBOL_GPL(cpufreq_minload_qos_add_request);
+
+/**
+ * cpufreq_minload_qos_update_request - Modify existing cpufreq minimum load
+ * QoS request.
+ * @req : QoS request to update.
+ * @new_value: New requested constraint value.
+ *
+ * Use @new_value to update the QoS request represented by @req in the cpufreq
+ * minimum load QoS list along with updating the effective constraint value for
+ * that list.
+ */
+void cpufreq_minload_qos_update_request(struct pm_qos_request *req,
+					s32 new_value)
+{
+	if (!req)
+		return;
+
+	if (!cpufreq_minload_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for unknown object\n", __func__);
+		return;
+	}
+
+	trace_pm_qos_update_request(new_value);
+
+	if (new_value == req->node.prio)
+		return;
+
+	pm_qos_update_target(req->qos, &req->node, PM_QOS_UPDATE_REQ, new_value);
+}
+EXPORT_SYMBOL_GPL(cpufreq_minload_qos_update_request);
+
+/**
+ * cpufreq_minload_qos_remove_request - Remove existing cpufreq minimum load QoS
+ * request.
+ * @req: QoS request to remove.
+ *
+ * Remove the cpufreq minimum load QoS request represented by @req from the
+ * cpufreq minimum load QoS list along with updating the effective constraint
+ * value for that list.
+ */
+void cpufreq_minload_qos_remove_request(struct pm_qos_request *req)
+{
+	if (!req)
+		return;
+
+	if (!cpufreq_minload_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for unknown object\n", __func__);
+		return;
+	}
+
+	trace_pm_qos_remove_request(PM_QOS_DEFAULT_VALUE);
+
+	pm_qos_update_target(req->qos, &req->node,
+			     PM_QOS_REMOVE_REQ, PM_QOS_DEFAULT_VALUE);
+	memset(req, 0, sizeof(*req));
+}
+EXPORT_SYMBOL_GPL(cpufreq_minload_qos_remove_request);
+
+/* User space interface to the cpufreq minimum load QoS via misc device. */
+
+static int cpufreq_minload_qos_open(struct inode *inode, struct file *filp)
+{
+	struct pm_qos_request *req;
+
+	req = kzalloc(sizeof(*req), GFP_KERNEL);
+	if (!req)
+		return -ENOMEM;
+
+	cpufreq_minload_qos_add_request(req, PM_QOS_DEFAULT_VALUE);
+	filp->private_data = req;
+
+	return 0;
+}
+
+static int cpufreq_minload_qos_release(struct inode *inode, struct file *filp)
+{
+	struct pm_qos_request *req = filp->private_data;
+
+	filp->private_data = NULL;
+
+	cpufreq_minload_qos_remove_request(req);
+	kfree(req);
+
+	return 0;
+}
+
+static ssize_t cpufreq_minload_qos_read(struct file *filp, char __user *buf,
+					size_t count, loff_t *f_pos)
+{
+	struct pm_qos_request *req = filp->private_data;
+	unsigned long flags;
+	s32 value;
+
+	if (!req || !cpufreq_minload_qos_request_active(req))
+		return -EINVAL;
+
+	spin_lock_irqsave(&pm_qos_lock, flags);
+	value = pm_qos_get_value(&cpufreq_minload_constraints);
+	spin_unlock_irqrestore(&pm_qos_lock, flags);
+
+	return simple_read_from_buffer(buf, count, f_pos, &value, sizeof(s32));
+}
+
+static ssize_t cpufreq_minload_qos_write(struct file *filp,
+					 const char __user *buf,
+					 size_t count, loff_t *f_pos)
+{
+	s32 value;
+
+	if (count == sizeof(s32)) {
+		if (copy_from_user(&value, buf, sizeof(s32)))
+			return -EFAULT;
+	} else {
+		int ret;
+
+		ret = kstrtos32_from_user(buf, count, 16, &value);
+		if (ret)
+			return ret;
+	}
+
+	cpufreq_minload_qos_update_request(filp->private_data, value);
+
+	return count;
+}
+
+static const struct file_operations cpufreq_minload_qos_fops = {
+	.write = cpufreq_minload_qos_write,
+	.read = cpufreq_minload_qos_read,
+	.open = cpufreq_minload_qos_open,
+	.release = cpufreq_minload_qos_release,
+	.llseek = noop_llseek,
+};
+
+static struct miscdevice cpufreq_minload_qos_miscdev = {
+	.minor = MISC_DYNAMIC_MINOR,
+	.name = "cpufreq_minimum_load",
+	.fops = &cpufreq_minload_qos_fops,
+};
+
+static int __init cpufreq_minload_qos_init(void)
+{
+	int ret;
+
+	ret = misc_register(&cpufreq_minload_qos_miscdev);
+	if (ret < 0)
+		pr_err("%s: %s setup failed\n", __func__,
+		       cpufreq_minload_qos_miscdev.name);
+
+	return ret;
+}
+late_initcall(cpufreq_minload_qos_init);
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
