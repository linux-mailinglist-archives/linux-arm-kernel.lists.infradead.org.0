Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC91D1C3F94
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r5XLXRkHyT22K/MioBSVZgkvI3EOoMJLLQMI55hKWHU=; b=IVIuVYKypPBwuRcrc1CxqhnMjZ
	XWwEu2xWUrZLq05m2hEgDjVL4zgRxoMe8AksrvossopoZfuD3crbwUN878N4q6SX51wH767NXY5B9
	2YfV4T77kZiDqIdrhsXsrKmJsKvR1++rMSLJADApPwFPk1hSc5YkZR4/LRc+SY0Kuxnyn+P42UJTF
	MNm18h1uB6+rLuRHYiaAsyNVzmUZ6f3XOe1/l3Y14eM0czg++dcaFgvATfLE/E1VDIKWt7+v2JaF5
	IZa5Cm5YSPXO0dBHj5jwy5uwVDZUj1g+BBpnXaAAh9x2oRXgRKvir8+nYgwPz2i0u0nx34Tbcbvhn
	mzGZZ6Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdlT-0001Ha-I6; Mon, 04 May 2020 16:16:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdkq-0000n6-5C
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:15:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id 188so127973wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kmQ9Fl48Rq8fFbBnLUeHmzhD5g9BXt07MmpxGvo8jek=;
 b=BOtN27UJhcQOKqUsvUROp8R22CN9Zzki2z05JfMwhoJ9YQP1Rc3newUeuP7mr2HmeT
 l9Sus6Wef6RihYw3jUslKbU6IjTlI6vcUjLr9AmlXcBL9fCx025JuD5i1aPU26Rg7/wd
 HsG5QdlrGLCAXBjjiGcxDeQcw10M6PQvvU8K4qDGAvoo80VnmCw9lZKZ42gpyF+EGPJA
 vTia7HprFBxXeV7ROjXYiqnMVZPQPnDDOjKR2BCLbKJoLIvePKcz+pvxHIf/YSDCbS+V
 WyrSaOJZXxKgXmSfHslQuDSTwFxZikIkfJFlWYhE6cG6Uk7b/xESWm1+bFnDKi6xNdkE
 38rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kmQ9Fl48Rq8fFbBnLUeHmzhD5g9BXt07MmpxGvo8jek=;
 b=IUs5F8OKgO7g/m4vbdvtgfgrAXPg3nP15Z0jEbVayGS0mC8qHf8/PxBxUyNFtmbkzu
 G/8+/GTBt2MvFVpGns6sMmh4O8CIwKKNi6V8GCn+/C+27n69agCujPP8u/fYL9hG0VAN
 49wWQvtEJh+Aoh9fxr0iZF9UYtucjuqHhIqmgBvyQKVgFhKaE+LnlngUNPxcDtD/wASL
 BJ7SEvmFaleouJdyP8vCVptvnQH1wPYXvZI4sHBo+byNrStrfkAVYZnHXGT68DVxWEVY
 ZfWhPn3UnmMf+QI8YIWYuBY1xAVIDLE4srr2JowuTxfmSKgHz1IuAbNRLreDFerWbbXi
 HFfQ==
X-Gm-Message-State: AGi0PuZh+GOND8b/Mucdou1ma4QnUFcJexxY4wLQ2sdxlSfp3shnG04p
 9MorPnU+ZTZNLJphWgwjSLbxdbYnhjU=
X-Google-Smtp-Source: APiQypLE/9mShXijUTGSNuwdsoqCy1IDlsukyo+VcoHPTrrotHHwJbpHSrVV2pV5piug3VyMHbtyGw==
X-Received: by 2002:a1c:bc09:: with SMTP id m9mr14923473wmf.145.1588608935594; 
 Mon, 04 May 2020 09:15:35 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:bc12:b74:297d:dafc])
 by smtp.gmail.com with ESMTPSA id k6sm14623756wma.19.2020.05.04.09.15.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:15:34 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v2 2/2] coresight: cti: Add CPU idle pm notifer to CTI devices.
Date: Mon,  4 May 2020 17:15:30 +0100
Message-Id: <20200504161530.9284-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504161530.9284-1-mike.leach@linaro.org>
References: <20200504161530.9284-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_091540_199022_9A0ABF14 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds a notify callback for CPU PM events to the CTI driver - for
CPU bound CTI devices.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 82 +++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 9af66719ae5b..0f0c14528701 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -8,6 +8,7 @@
 #include <linux/atomic.h>
 #include <linux/bits.h>
 #include <linux/coresight.h>
+#include <linux/cpu_pm.h>
 #include <linux/device.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
@@ -655,6 +656,84 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
 	}
 }
 
+/** cti PM callbacks **/
+static int cti_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
+			     void *v)
+{
+	struct cti_drvdata *drvdata;
+	unsigned int cpu = smp_processor_id();
+	int notify_res = NOTIFY_OK;
+
+	if (!cti_cpu_drvdata[cpu])
+		return NOTIFY_OK;
+
+	drvdata = cti_cpu_drvdata[cpu];
+
+	if (WARN_ON_ONCE(drvdata->ctidev.cpu != cpu))
+		return NOTIFY_BAD;
+
+	spin_lock(&drvdata->spinlock);
+
+	switch (cmd) {
+	case CPU_PM_ENTER:
+		/* CTI regs all static - we have a copy & nothing to save */
+		drvdata->config.hw_powered = false;
+		if (drvdata->config.hw_enabled)
+			coresight_disclaim_device(drvdata->base);
+		break;
+
+	case CPU_PM_ENTER_FAILED:
+		drvdata->config.hw_powered = true;
+		if (drvdata->config.hw_enabled) {
+			if (coresight_claim_device(drvdata->base))
+				drvdata->config.hw_enabled = false;
+		}
+		break;
+
+	case CPU_PM_EXIT:
+		/* write hardware registers to re-enable. */
+		drvdata->config.hw_powered = true;
+		drvdata->config.hw_enabled = false;
+
+		/* check enable reference count to enable HW */
+		if (atomic_read(&drvdata->config.enable_req_count)) {
+			/* check we can claim the device as we re-power */
+			if (coresight_claim_device(drvdata->base))
+				goto cti_notify_exit;
+
+			drvdata->config.hw_enabled = true;
+			cti_write_all_hw_regs(drvdata);
+		}
+		break;
+
+	default:
+		notify_res = NOTIFY_DONE;
+		break;
+	}
+
+cti_notify_exit:
+	spin_unlock(&drvdata->spinlock);
+	return notify_res;
+}
+
+static struct notifier_block cti_cpu_pm_nb = {
+	.notifier_call = cti_cpu_pm_notify,
+};
+
+static int cti_cpu_pm_register(void)
+{
+	if (IS_ENABLED(CONFIG_CPU_PM))
+		return cpu_pm_register_notifier(&cti_cpu_pm_nb);
+
+	return 0;
+}
+
+static void cti_cpu_pm_unregister(void)
+{
+	if (IS_ENABLED(CONFIG_CPU_PM))
+		cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
+}
+
 /* CPU HP handlers */
 static int cti_starting_cpu(unsigned int cpu)
 {
@@ -686,6 +765,8 @@ static void cti_pm_release(struct cti_drvdata *drvdata)
 {
 	if (drvdata->ctidev.cpu >= 0) {
 		if (--nr_cti_cpu == 0) {
+			cti_cpu_pm_unregister();
+
 			cpuhp_remove_state_nocalls(
 				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
 		}
@@ -814,6 +895,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 				"arm/coresight_cti:starting",
 				cti_starting_cpu, cti_dying_cpu);
 
+			ret = cti_cpu_pm_register();
 			cpus_read_unlock();
 			if (ret)
 				goto err_out;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
