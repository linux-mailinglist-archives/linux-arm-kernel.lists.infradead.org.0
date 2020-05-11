Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58871CE5FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 22:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xhs24kvP756z4etiAk7TzC+TCohinBqMZRyfiDqt7Sc=; b=lYGlX9/cHv1zuFp8sm0XUPjPo/
	OPVX9Bai8FcsrrcNNRIbjXAkX00TiIMkuU3E7/y+kxpGdcxm75cpxtYcYxRrCnqz2gRCBBMrTTPdU
	h03P/57f/HpVmso6ZjeDSI01kt8wGmp1xEnBss7VfgnZpnt4lKN2E2oFK+gB/3FjSJMTowUnutcEk
	PO4PM9kKTlq68CGTBYBGoZ+5Zrc0dU87VoOEqwPBMKI/EvL/Gtr2yzG8mPR+O5WgVd2agOUgmsdQ8
	aCAF1JMdyvZKLfR77+zFCSPv8V7EVuKmYUwsSIxrUkAXlnDK4ZJC6lTGdsAKTF4VblZvIp9ASWVhH
	MSi9LOFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFMM-00062e-PA; Mon, 11 May 2020 20:49:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFLw-0005rP-EA
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 20:48:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id w7so12710915wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 13:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GJ/Y6lDpONxn3QhsgLGDRaC7Kjj65GIsPETD2zCI5c0=;
 b=TRMvGISzN3lpVRpmTpDL9kVigIfJPG+lJmMWeLp9btqlwajWMecUgdRxMiUGdQ2Wwi
 m6qklqkGNCyX/AN3uTufCNo7sJ7ULdpg3Q4QfkRSi50vR2lJ6qemTb3bM422C84iEvGc
 JCIzlnO0+FVoDrQ/zNN4Y26nTh4x6UiGYMxqCy60MigEtaOOMCRl+9ZWQ9P4ks3Gt/dv
 acOKI9yVCEvuaBy7Y9GtNcp/yAnipI+YHZ4eyF1atU9e4iDL/NKfyZoMHBbadSmTfyop
 dLC7p0GweVNl8kDB2VdErfSKNXbagCyAZwbkI6GXbiuOtyzM+2nGF95pvJ6NcwkCvG8G
 Ze9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GJ/Y6lDpONxn3QhsgLGDRaC7Kjj65GIsPETD2zCI5c0=;
 b=SyzIBlV+OLGsVzfvH2jU356uCZMdqadlm6yJL/BIq/K+wzv2uq3d92K5YFBw5q4+AI
 CLC5tiloMS6FZmbog1Y3ACjq0oDmn1owPy8XpiSkai27os59c8Lo2uAOo8Con1cw8QyK
 vAw0lnsx/sDRYwsLgBXOF62zclN+zvxx7JSiPXh14gXbWzk6fXaXp37bNHEd2Z5aJ+Rv
 hIQRie8meRhiqbDRzXjM0Omc4kHdn/EhmfwGr3hybLgsG6W6GfDetjOxgdgMZ5O0bSBi
 YgfPkrtCbge8+7jpkC/lpMKAkAStNT5w9xpsd62eZdfl87rZiYo816m1dE74tAUJkpHu
 h5aQ==
X-Gm-Message-State: AGi0Pua31dEkSe2qJsi/j5ffMI/Eh0GpG0F0umZI43tQzUF/fPaML0Tk
 RgrqKmEfKFh9av0ki5KxeujZgy/vdw8=
X-Google-Smtp-Source: APiQypIOgjvShUIMxoQnS4KgC68D2xZo8vtdF5e21pSM2JbLHJwrPufvRXa6PnqPo+aqQLlrpReNxw==
X-Received: by 2002:a5d:6087:: with SMTP id w7mr12494737wrt.158.1589230122748; 
 Mon, 11 May 2020 13:48:42 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:5c45:54b0:ab9b:20b0])
 by smtp.gmail.com with ESMTPSA id 2sm19122884wre.25.2020.05.11.13.48.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 13:48:41 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v3 2/2] coresight: cti: Add CPU idle pm notifer to CTI devices.
Date: Mon, 11 May 2020 21:48:36 +0100
Message-Id: <20200511204836.27870-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511204836.27870-1-mike.leach@linaro.org>
References: <20200511204836.27870-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_134844_646965_A7C460FF 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: tglx@linutronix.de, Mike Leach <mike.leach@linaro.org>,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds a notify callback for CPU PM events to the CTI driver - for
CPU bound CTI devices.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 69 +++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 716cd5a45d12..5886663a641d 100644
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
@@ -655,6 +656,70 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
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
@@ -686,6 +751,8 @@ static void cti_pm_release(struct cti_drvdata *drvdata)
 {
 	if (drvdata->ctidev.cpu >= 0) {
 		if (--nr_cti_cpu == 0) {
+			cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
+
 			cpuhp_remove_state_nocalls(
 				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
 		}
@@ -814,6 +881,8 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 				"arm/coresight_cti:starting",
 				cti_starting_cpu, cti_dying_cpu);
 
+			if (!ret)
+				ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
 			cpus_read_unlock();
 			if (ret)
 				goto err_out;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
