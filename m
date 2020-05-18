Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356161D8401
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RTFhvVQr7DKVmmBYNEgzgXl9zI9vKB3xE07/X1Qyfg=; b=gjDOjkAQlAOdDe
	BFIZPL7542bmKj3BDv4O1qolFYM2O7Kvjfez/CrWA7O9FgeMWB2xfZMMkPKxWuotZHXHWvTWDRXGW
	WFW6qzGGA/2ni8B5GEQO/DK5DJst2yfNxmbaitAPQpFENyBYOpN79FMFaEraDcFfGgac6glFiMXUT
	HK7vp4OPTmfB9fnV6JvcVK/g1RKfZV5Vvg8kL5gIHfePovgqP7cELiJJhooJQIWEmcbvXL8d8Sc/b
	m9BTwfDt0rjCce6FMzQAKfrIoml/SOfKQyJuoHvJ2m+8ZycpfFkv22qBsYDw+5Imd/mfoZAlZlrXC
	wCUmu8h1DLPT3kVnCBWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakDZ-0003Nz-JP; Mon, 18 May 2020 18:10:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6U-0003Xd-N6
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:08 +0000
Received: by mail-pf1-x442.google.com with SMTP id y18so5300771pfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yJAMmA5oFXo3RMgRoby1GjfGVPG2NEb0jBUCrGMUliA=;
 b=UgTdUjvqn1fx10oWzW/KirlcWgmSdoH2W9/VFHQ86CfwTfLcIEHQJpwDWPd3htfCtC
 jPVWX6nyYh35GS2Xx9mpLpDC89wheN1gbYv0YWOioGV0jOsQanyZUygJnTSNxene4Vvv
 XICMiDNbztOVaQvIk7kVT0tj3PC9307V+q5lWHOon7Nk3mxL99mYHz8/O37Dh9h9SnTs
 yclB7HQzYmQMNqlqLE5V/XTxCdtbl2+pfyiqiU42XUY56hJSSuunxNfsR3C/yIdGcTa/
 ijvCPUVIdG+6csTi9CaENFo++BFF1/2Xp6AKCr0YWgYGwlPpw36MkIcVx7ouldBK00/n
 m80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yJAMmA5oFXo3RMgRoby1GjfGVPG2NEb0jBUCrGMUliA=;
 b=guLvMelA/3Zw0OIW+YdR78Ycxjpp1GbslDxBVoE7+fSNTIIYOyUa/D1/Od6mBdu0pA
 CuBsi7tLG/abcdnf7+6zXBOTmuL5l9GIJPzGMjMb/N8U4tlw740uWYcLdAH3djY3CkLa
 ex0WD6kMHE9zUfifSeatJQwgX4XYKdhNr6+A193YENN5rPiwpBXMklA59M7LZMbGAxsF
 mS1bOWG+EMN6KLt7nMRXQ9/dXb9ISzCwaIrX/dZzbAa4fDZRzp9aLUP95yxlcxIVvwp3
 yoKs4awXfCKn/5fUsrUUFjRPFhLW8mpkaGP8Otkd7qkMs0x3+V8tDA9AMrYjUXKZ/ocn
 CA0A==
X-Gm-Message-State: AOAM532ZV3WhBMh9FGd6NImRvT1Zo3KgMpu7yRm5jKTgoqoRTk1F4fMh
 mqBW26fqrFRX6g+tLJ92c62zTvrXIzQ=
X-Google-Smtp-Source: ABdhPJwdgsLqzC8VsPDYnne2JONRvzv+kC/ed3qWUXtC25fSC0qIQ93P3Y33O3tgp01OgyNkkXjG7Q==
X-Received: by 2002:aa7:92cc:: with SMTP id k12mr17155579pfa.184.1589824985848; 
 Mon, 18 May 2020 11:03:05 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.03.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:03:05 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 23/23] coresight: cti: Add CPU idle pm notifer to CTI devices
Date: Mon, 18 May 2020 12:02:42 -0600
Message-Id: <20200518180242.7916-24-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110307_031534_9E169C0D 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Adds a notify callback for CPU PM events to the CTI driver - for
CPU bound CTI devices.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 69 +++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 7e7ec6dd93c0..40387d58c8e7 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -8,6 +8,7 @@
 #include <linux/atomic.h>
 #include <linux/bits.h>
 #include <linux/coresight.h>
+#include <linux/cpu_pm.h>
 #include <linux/cpuhotplug.h>
 #include <linux/device.h>
 #include <linux/io.h>
@@ -656,6 +657,70 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
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
 /* CPU HP handlers */
 static int cti_starting_cpu(unsigned int cpu)
 {
@@ -687,6 +752,8 @@ static void cti_pm_release(struct cti_drvdata *drvdata)
 {
 	if (drvdata->ctidev.cpu >= 0) {
 		if (--nr_cti_cpu == 0) {
+			cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
+
 			cpuhp_remove_state_nocalls(
 				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
 		}
@@ -815,6 +882,8 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 				"arm/coresight_cti:starting",
 				cti_starting_cpu, cti_dying_cpu);
 
+			if (!ret)
+				ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
 			cpus_read_unlock();
 			if (ret)
 				goto err_out;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
