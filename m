Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B58117422F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiHUJcXW9D9QlDKVpm75WV65zBL1KZ4b9LahnuneAOs=; b=W4Nkrb0YyE0GDe
	dFkbaaGwSDAxssqVXi58u8jPU7bXdUlfmreVuhn2PDQfsz8+xi4GmXGdb6kEY8IYl7Wb2bjLkW88Z
	G5bXVtzPu6iXfabr8uHIcN/zt2XiWthGO36ZY5PhalNdtWqbiQnHKWbp9oaTVXczftgUT7iEssZsa
	TcvS9y6Bef6OC0yxfx4rwzSRrvabt5pT3s9G/h9RhZiGlVVAp9Ry0kihnKc/MYkXoSz/gPIW5e9cf
	Uu70ic3mlnMu4IIaq/DHLeCHtdshkVlITwMHD5vyEK43iAokIFUbav2vJ+A0y2aeSH7nQoQlvMFZ8
	JVMcqC8ER96WHF7P8KKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oLX-0003vN-EF; Fri, 28 Feb 2020 22:43:03 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oKi-0003fS-EN
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:14 +0000
Received: by mail-yw1-xc42.google.com with SMTP id i190so4973345ywc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=87+frOTHX8qnO3QpcSs16fPwX2RXtb0vNrYvrQADVwE=;
 b=OUXVXnziXjzdpfuLRW1taEtDpgyKCViDitiG64XI2BzJrg3AL0VBcpErt2EHf5252h
 ExAjluZLaAQ1xt7p/2lmK72LjnayS1iUSfh86nlmdfHjGXVIJo2gCFCR+oTdYR2jCI2F
 HNY7/SPtXWEYzVjnVUboaDOhMyeSY5jGm8IIh1EJRgI31hrH1mxMxdFrqGxhsYdQehyH
 vOXNcwkHjHSxhpdEoNNyGMiXduKnyor0oqjbmwFjZ5bK2ocE/s8Li4qpE2nw+pCUPASr
 /2eAxQedZQmeaPFtbC8BbYbkEr6QFQIMHT94a3XKTfRfPj6Y6fZVS1mB6toSy0syQbyF
 4p0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=87+frOTHX8qnO3QpcSs16fPwX2RXtb0vNrYvrQADVwE=;
 b=grOBCTb7IO+l9dkOdXNg61wt6losMKfCBH37bsmisxbdME/60AAJVr6yX+WSu5sy5G
 IPS5h77V/2QIkzQQwwmXpRB92u2K3UJ1cI52G0F1LdfuKs6UWC6wTdfTh7idReQ3w0rx
 pxA7/l7uCxQ0bGxut0u0a6bU0WNOEvSc21H84O3irHonQgqRnKO7GnptaFWvrsWv5c36
 sEWwuK08f468SwN01yn7siFjP4CJiWdY3Ufjjj4mzsAz08FvRxHaVDk2X8SMK+5WvU03
 YdlnJP59kenQDmFnkO1wYlpok/nNOFjlpagf1/spaE5L+SKDyNbs0q8B9jbIntaXTP21
 6nWQ==
X-Gm-Message-State: APjAAAXyExWm2SbfMcXwjACQIGdjXlNonhzzjsIsTHlOKOoWEg+wLwo+
 fA9pTZkdD4zfWTmiR/EPC3UPpQ==
X-Google-Smtp-Source: APXvYqw5FAvtXFtlfg7OoMGDUn3VM8hzGG/ytz9cZ2nYfI2JUdb8yurZWcz3Qzup/MaWVDO6Smw5pg==
X-Received: by 2002:a81:ae21:: with SMTP id m33mr7122769ywh.54.1582929731652; 
 Fri, 28 Feb 2020 14:42:11 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:11 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ohad Ben-Cohen <ohad@wizery.com>, Arnd Bergmann <arnd@arndb.de>,
 David Miller <davem@davemloft.net>
Subject: [PATCH 01/17] remoteproc: add IPA notification to q6v5 driver
Date: Fri, 28 Feb 2020 16:41:48 -0600
Message-Id: <20200228224204.17746-2-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144212_532912_0FD7B001 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set up a subdev in the q6v5 modem remoteproc driver that generates
event notifications for the IPA driver to use for initialization and
recovery following a modem shutdown or crash.

A pair of new functions provides a way for the IPA driver to register
and deregister a notification callback function that will be called
whenever modem events (about to boot, running, about to shut down,
etc.) occur.  A void pointer value (provided by the IPA driver at
registration time) and an event type are supplied to the callback
function.

One event, MODEM_REMOVING, is signaled whenever the q6v5 driver is
about to remove the notification subdevice.  It requires the IPA
driver de-register its callback.

This sub-device is only used by the modem subsystem (MSS) driver,
so the code that adds the new subdev and allows registration and
deregistration of the notifier is found in "qcom_q6v6_mss.c".

Signed-off-by: Alex Elder <elder@linaro.org>
---

 NOTE:	This was developed last year.  Recently there is another
 	proposal that addresses what this does in a more general
	way.  For now I'm simply including this in my IPA patch
	series to satisfy the need.  If/when the other proposal
	lands upstream it won't be hard to adapt the IPA driver
	to use it.

					-Alex

 drivers/remoteproc/Kconfig                    |  6 ++
 drivers/remoteproc/Makefile                   |  1 +
 drivers/remoteproc/qcom_q6v5_ipa_notify.c     | 85 +++++++++++++++++++
 drivers/remoteproc/qcom_q6v5_mss.c            | 42 ++++++++-
 .../linux/remoteproc/qcom_q6v5_ipa_notify.h   | 82 ++++++++++++++++++
 5 files changed, 214 insertions(+), 2 deletions(-)
 create mode 100644 drivers/remoteproc/qcom_q6v5_ipa_notify.c
 create mode 100644 include/linux/remoteproc/qcom_q6v5_ipa_notify.h

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index de3862c15fcc..80c3cac60fbe 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -167,6 +167,12 @@ config QCOM_Q6V5_WCSS
 	  Say y here to support the Qualcomm Peripheral Image Loader for the
 	  Hexagon V5 based WCSS remote processors.
 
+config QCOM_Q6V5_IPA_NOTIFY
+	tristate
+	depends on IPA
+	depends on QCOM_Q6V5_MSS
+	default IPA
+
 config QCOM_SYSMON
 	tristate "Qualcomm sysmon driver"
 	depends on RPMSG
diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
index e30a1b15fbac..0effd3825035 100644
--- a/drivers/remoteproc/Makefile
+++ b/drivers/remoteproc/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_QCOM_Q6V5_ADSP)		+= qcom_q6v5_adsp.o
 obj-$(CONFIG_QCOM_Q6V5_MSS)		+= qcom_q6v5_mss.o
 obj-$(CONFIG_QCOM_Q6V5_PAS)		+= qcom_q6v5_pas.o
 obj-$(CONFIG_QCOM_Q6V5_WCSS)		+= qcom_q6v5_wcss.o
+obj-$(CONFIG_QCOM_Q6V5_IPA_NOTIFY)	+= qcom_q6v5_ipa_notify.o
 obj-$(CONFIG_QCOM_SYSMON)		+= qcom_sysmon.o
 obj-$(CONFIG_QCOM_WCNSS_PIL)		+= qcom_wcnss_pil.o
 qcom_wcnss_pil-y			+= qcom_wcnss.o
diff --git a/drivers/remoteproc/qcom_q6v5_ipa_notify.c b/drivers/remoteproc/qcom_q6v5_ipa_notify.c
new file mode 100644
index 000000000000..e1c10a128bfd
--- /dev/null
+++ b/drivers/remoteproc/qcom_q6v5_ipa_notify.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Qualcomm IPA notification subdev support
+ *
+ * Copyright (C) 2019 Linaro Ltd.
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/remoteproc.h>
+#include <linux/remoteproc/qcom_q6v5_ipa_notify.h>
+
+static void
+ipa_notify_common(struct rproc_subdev *subdev, enum qcom_rproc_event event)
+{
+	struct qcom_rproc_ipa_notify *ipa_notify;
+	qcom_ipa_notify_t notify;
+
+	ipa_notify = container_of(subdev, struct qcom_rproc_ipa_notify, subdev);
+	notify = ipa_notify->notify;
+	if (notify)
+		notify(ipa_notify->data, event);
+}
+
+static int ipa_notify_prepare(struct rproc_subdev *subdev)
+{
+	ipa_notify_common(subdev, MODEM_STARTING);
+
+	return 0;
+}
+
+static int ipa_notify_start(struct rproc_subdev *subdev)
+{
+	ipa_notify_common(subdev, MODEM_RUNNING);
+
+	return 0;
+}
+
+static void ipa_notify_stop(struct rproc_subdev *subdev, bool crashed)
+
+{
+	ipa_notify_common(subdev, crashed ? MODEM_CRASHED : MODEM_STOPPING);
+}
+
+static void ipa_notify_unprepare(struct rproc_subdev *subdev)
+{
+	ipa_notify_common(subdev, MODEM_OFFLINE);
+}
+
+static void ipa_notify_removing(struct rproc_subdev *subdev)
+{
+	ipa_notify_common(subdev, MODEM_REMOVING);
+}
+
+/* Register the IPA notification subdevice with the Q6V5 MSS remoteproc */
+void qcom_add_ipa_notify_subdev(struct rproc *rproc,
+		struct qcom_rproc_ipa_notify *ipa_notify)
+{
+	ipa_notify->notify = NULL;
+	ipa_notify->data = NULL;
+	ipa_notify->subdev.prepare = ipa_notify_prepare;
+	ipa_notify->subdev.start = ipa_notify_start;
+	ipa_notify->subdev.stop = ipa_notify_stop;
+	ipa_notify->subdev.unprepare = ipa_notify_unprepare;
+
+	rproc_add_subdev(rproc, &ipa_notify->subdev);
+}
+EXPORT_SYMBOL_GPL(qcom_add_ipa_notify_subdev);
+
+/* Remove the IPA notification subdevice */
+void qcom_remove_ipa_notify_subdev(struct rproc *rproc,
+		struct qcom_rproc_ipa_notify *ipa_notify)
+{
+	struct rproc_subdev *subdev = &ipa_notify->subdev;
+
+	ipa_notify_removing(subdev);
+
+	rproc_remove_subdev(rproc, subdev);
+	ipa_notify->notify = NULL;	/* Make it obvious */
+}
+EXPORT_SYMBOL_GPL(qcom_remove_ipa_notify_subdev);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Qualcomm IPA notification remoteproc subdev");
diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
index 97093f4f58e1..ac60588ebe5a 100644
--- a/drivers/remoteproc/qcom_q6v5_mss.c
+++ b/drivers/remoteproc/qcom_q6v5_mss.c
@@ -22,6 +22,7 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/remoteproc.h>
+#include "linux/remoteproc/qcom_q6v5_ipa_notify.h"
 #include <linux/reset.h>
 #include <linux/soc/qcom/mdt_loader.h>
 #include <linux/iopoll.h>
@@ -201,6 +202,7 @@ struct q6v5 {
 	struct qcom_rproc_glink glink_subdev;
 	struct qcom_rproc_subdev smd_subdev;
 	struct qcom_rproc_ssr ssr_subdev;
+	struct qcom_rproc_ipa_notify ipa_notify_subdev;
 	struct qcom_sysmon *sysmon;
 	bool need_mem_protection;
 	bool has_alt_reset;
@@ -1540,6 +1542,39 @@ static int q6v5_alloc_memory_region(struct q6v5 *qproc)
 	return 0;
 }
 
+#if IS_ENABLED(CONFIG_QCOM_Q6V5_IPA_NOTIFY)
+
+/* Register IPA notification function */
+int qcom_register_ipa_notify(struct rproc *rproc, qcom_ipa_notify_t notify,
+			     void *data)
+{
+	struct qcom_rproc_ipa_notify *ipa_notify;
+	struct q6v5 *qproc = rproc->priv;
+
+	if (!notify)
+		return -EINVAL;
+
+	ipa_notify = &qproc->ipa_notify_subdev;
+	if (ipa_notify->notify)
+		return -EBUSY;
+
+	ipa_notify->notify = notify;
+	ipa_notify->data = data;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(qcom_register_ipa_notify);
+
+/* Deregister IPA notification function */
+void qcom_deregister_ipa_notify(struct rproc *rproc)
+{
+	struct q6v5 *qproc = rproc->priv;
+
+	qproc->ipa_notify_subdev.notify = NULL;
+}
+EXPORT_SYMBOL_GPL(qcom_deregister_ipa_notify);
+#endif /* !IS_ENABLED(CONFIG_QCOM_Q6V5_IPA_NOTIFY) */
+
 static int q6v5_probe(struct platform_device *pdev)
 {
 	const struct rproc_hexagon_res *desc;
@@ -1664,10 +1699,11 @@ static int q6v5_probe(struct platform_device *pdev)
 	qcom_add_glink_subdev(rproc, &qproc->glink_subdev);
 	qcom_add_smd_subdev(rproc, &qproc->smd_subdev);
 	qcom_add_ssr_subdev(rproc, &qproc->ssr_subdev, "mpss");
+	qcom_add_ipa_notify_subdev(rproc, &qproc->ipa_notify_subdev);
 	qproc->sysmon = qcom_add_sysmon_subdev(rproc, "modem", 0x12);
 	if (IS_ERR(qproc->sysmon)) {
 		ret = PTR_ERR(qproc->sysmon);
-		goto remove_ssr_subdev;
+		goto remove_ipa_subdev;
 	}
 
 	ret = rproc_add(rproc);
@@ -1678,7 +1714,8 @@ static int q6v5_probe(struct platform_device *pdev)
 
 remove_sysmon_subdev:
 	qcom_remove_sysmon_subdev(qproc->sysmon);
-remove_ssr_subdev:
+remove_ipa_subdev:
+	qcom_remove_ipa_notify_subdev(qproc->rproc, &qproc->ipa_notify_subdev);
 	qcom_remove_ssr_subdev(qproc->rproc, &qproc->ssr_subdev);
 	qcom_remove_smd_subdev(qproc->rproc, &qproc->smd_subdev);
 	qcom_remove_glink_subdev(qproc->rproc, &qproc->glink_subdev);
@@ -1700,6 +1737,7 @@ static int q6v5_remove(struct platform_device *pdev)
 	rproc_del(rproc);
 
 	qcom_remove_sysmon_subdev(qproc->sysmon);
+	qcom_remove_ipa_notify_subdev(rproc, &qproc->ipa_notify_subdev);
 	qcom_remove_ssr_subdev(rproc, &qproc->ssr_subdev);
 	qcom_remove_smd_subdev(rproc, &qproc->smd_subdev);
 	qcom_remove_glink_subdev(rproc, &qproc->glink_subdev);
diff --git a/include/linux/remoteproc/qcom_q6v5_ipa_notify.h b/include/linux/remoteproc/qcom_q6v5_ipa_notify.h
new file mode 100644
index 000000000000..0820edc0ab7d
--- /dev/null
+++ b/include/linux/remoteproc/qcom_q6v5_ipa_notify.h
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/* Copyright (C) 2019 Linaro Ltd. */
+
+#ifndef __QCOM_Q6V5_IPA_NOTIFY_H__
+#define __QCOM_Q6V5_IPA_NOTIFY_H__
+
+#if IS_ENABLED(CONFIG_QCOM_Q6V5_IPA_NOTIFY)
+
+#include <linux/remoteproc.h>
+
+enum qcom_rproc_event {
+	MODEM_STARTING	= 0,	/* Modem is about to be started */
+	MODEM_RUNNING	= 1,	/* Startup complete; modem is operational */
+	MODEM_STOPPING	= 2,	/* Modem is about to shut down */
+	MODEM_CRASHED	= 3,	/* Modem has crashed (implies stopping) */
+	MODEM_OFFLINE	= 4,	/* Modem is now offline */
+	MODEM_REMOVING	= 5,	/* Modem is about to be removed */
+};
+
+typedef void (*qcom_ipa_notify_t)(void *data, enum qcom_rproc_event event);
+
+struct qcom_rproc_ipa_notify {
+	struct rproc_subdev subdev;
+
+	qcom_ipa_notify_t notify;
+	void *data;
+};
+
+/**
+ * qcom_add_ipa_notify_subdev() - Register IPA notification subdevice
+ * @rproc:	rproc handle
+ * @ipa_notify:	IPA notification subdevice handle
+ *
+ * Register the @ipa_notify subdevice with the @rproc so modem events
+ * can be sent to IPA when they occur.
+ *
+ * This is defined in "qcom_q6v5_ipa_notify.c".
+ */
+void qcom_add_ipa_notify_subdev(struct rproc *rproc,
+		struct qcom_rproc_ipa_notify *ipa_notify);
+
+/**
+ * qcom_remove_ipa_notify_subdev() - Remove IPA SSR subdevice
+ * @rproc:	rproc handle
+ * @ipa_notify:	IPA notification subdevice handle
+ *
+ * This is defined in "qcom_q6v5_ipa_notify.c".
+ */
+void qcom_remove_ipa_notify_subdev(struct rproc *rproc,
+		struct qcom_rproc_ipa_notify *ipa_notify);
+
+/**
+ * qcom_register_ipa_notify() - Register IPA notification function
+ * @rproc:	Remote processor handle
+ * @notify:	Non-null IPA notification callback function pointer
+ * @data:	Data supplied to IPA notification callback function
+ *
+ * @Return: 0 if successful, or a negative error code otherwise
+ *
+ * This is defined in "qcom_q6v5_mss.c".
+ */
+int qcom_register_ipa_notify(struct rproc *rproc, qcom_ipa_notify_t notify,
+			     void *data);
+/**
+ * qcom_deregister_ipa_notify() - Deregister IPA notification function
+ * @rproc:	Remote processor handle
+ *
+ * This is defined in "qcom_q6v5_mss.c".
+ */
+void qcom_deregister_ipa_notify(struct rproc *rproc);
+
+#else /* !IS_ENABLED(CONFIG_QCOM_Q6V5_IPA_NOTIFY) */
+
+struct qcom_rproc_ipa_notify { /* empty */ };
+
+#define qcom_add_ipa_notify_subdev(rproc, ipa_notify)		/* no-op */
+#define qcom_remove_ipa_notify_subdev(rproc, ipa_notify)	/* no-op */
+
+#endif /* !IS_ENABLED(CONFIG_QCOM_Q6V5_IPA_NOTIFY) */
+
+#endif /* !__QCOM_Q6V5_IPA_NOTIFY_H__ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
