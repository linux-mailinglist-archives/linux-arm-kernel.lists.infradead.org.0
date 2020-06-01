Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C121EA8C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxroNIsJNoSvHiPgbWxvUNiwVshokBwwuY62D1pQrP4=; b=HYrrHXMPbaoust
	ZhpjDxSWD2HwiNF5DUbQmFMydVays9VdodopNqlhh+H+m5oB5xUNbHjTfDRn/UCbmAOrmYmlVtfay
	vJ0iNMd1LlG0YJE7aFKRWY4/KT3K7utJUVRZ3goWMK4esbnpQb5KRKvndPdHRCVU4fwQYAOJNOlhE
	jsaF+lHm4+ewmho/BSKgaSRVlbvOME1+zsBksKBUwZXhPR25DPr/Y63nBGHzRWlaFyVx/Vq62adiU
	lLgLqsifVmY8zbMG0TRW1xDsrc8ALvxhoi+EcdTsE3lLsk25PbhkZ5Yo29bLAJhplaTAHMfLCcnbW
	XJa1F2kE2fRQVaD9WZUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfog5-0005Ai-QE; Mon, 01 Jun 2020 17:56:49 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofH-0004T2-Ro
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:56:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id j21so3840498pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mt1xsDxJMbdYjwmldK7j7a3WkNUGnKAAzigiHh0OZYk=;
 b=u5/FuQaVxT5K7fVveXroKYGE2Zkc2ldozzP6SgKNozz77UeMbxAqCMvbgzVT8RVLFA
 Scg4NCGQT4Sqz9xEoi8yNghdiu3YgMMNBjOvFgSkBZD2e3V8BWngoTlOfX0OSbxUXBAR
 N7yJa2o/eGXN/O4gAijAldki0lalo/I7xkj1OwnLQPDaPI59ltWTcV7QeAH1Nep5jYOZ
 c4vMH+DMedwZSIqH2iJyjH0t/8loYGv8Uk3bIdG4kC3BU1jafTVZmZyWJBJelJlSwy/l
 Nixoyy16uXwvpYgUYsPModiPoxQA2EJwhA3SbYihK5ht40Ag4OMwVIxvmW19nWOiTzrz
 uBbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mt1xsDxJMbdYjwmldK7j7a3WkNUGnKAAzigiHh0OZYk=;
 b=s9apaaf3S/4W3d3dEuVG3g4iTIFY0cI144pwBamxKzGeAJ2qyqU74bYsAjL3rTwjBX
 8oLj6EpT4sc/GVUe6yk5rcvTgbOFglSSskq3JxufZflN2ztPdZXHI8mmJfT4s4vIE7TO
 H6ImVP/1vtFPgcSVy8mc9yc61ZJoHezQ5cQxO0r6P+h4aN4IFe6efgiljrVYegZM0ucO
 Ql6gy2vByH3zCSFWU/EA7VliwC11hy/CEvZEFb7q7hXtAweGWJJbI7eonEaXFbmU1xdc
 ozq2238nkVsIumGui68KiIcmEk+5PhuCEtVOfqiOpkugmmYCNJHOkDjWpPllGnbnpFjp
 zG6g==
X-Gm-Message-State: AOAM532zPhmIraUmArldL6K+hVLd3n3ODKsAdQSpf1DJmS+0ql/09pWH
 f9FnQyQT0+wPUINjxN66QlT9Ug==
X-Google-Smtp-Source: ABdhPJzE2aa5iEK5faj4x4YJ+CgK8FSIvkIzTyWsM91Imyim08uFbh4bfBtcgO0gJflpEkMgLor8XA==
X-Received: by 2002:a62:1e84:: with SMTP id e126mr22019473pfe.67.1591034158196; 
 Mon, 01 Jun 2020 10:55:58 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:55:57 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 03/11] remoteproc: stm32: Decouple rproc from DT parsing
Date: Mon,  1 Jun 2020 11:55:44 -0600
Message-Id: <20200601175552.22286-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105559_894149_32C54A52 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the remote processor from the process of parsing the device tree
since (1) there is no correlation between them and (2) to use the
information that was gathered to make a decision on whether to
synchronise with the M4 or not.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 94fd687fb5b2..1e512ddf2591 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -538,12 +538,11 @@ static int stm32_rproc_get_syscon(struct device_node *np, const char *prop,
 	return err;
 }
 
-static int stm32_rproc_parse_dt(struct platform_device *pdev)
+static int stm32_rproc_parse_dt(struct platform_device *pdev,
+				struct stm32_rproc *ddata, bool *auto_boot)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct rproc *rproc = platform_get_drvdata(pdev);
-	struct stm32_rproc *ddata = rproc->priv;
 	struct stm32_syscon tz;
 	unsigned int tzen;
 	int err, irq;
@@ -589,7 +588,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 
 	err = regmap_read(tz.map, tz.reg, &tzen);
 	if (err) {
-		dev_err(&rproc->dev, "failed to read tzen\n");
+		dev_err(dev, "failed to read tzen\n");
 		return err;
 	}
 	ddata->secured_soc = tzen & tz.mask;
@@ -605,7 +604,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 	if (err)
 		dev_info(dev, "failed to get pdds\n");
 
-	rproc->auto_boot = of_property_read_bool(np, "st,auto-boot");
+	*auto_boot = of_property_read_bool(np, "st,auto-boot");
 
 	return stm32_rproc_of_memory_translations(pdev, ddata);
 }
@@ -626,9 +625,15 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 	if (!rproc)
 		return -ENOMEM;
 
+	ddata = rproc->priv;
+
 	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
+
+	ret = stm32_rproc_parse_dt(pdev, ddata, &rproc->auto_boot);
+	if (ret)
+		goto free_rproc;
+
 	rproc->has_iommu = false;
-	ddata = rproc->priv;
 	ddata->workqueue = create_workqueue(dev_name(dev));
 	if (!ddata->workqueue) {
 		dev_err(dev, "cannot create workqueue\n");
@@ -638,13 +643,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, rproc);
 
-	ret = stm32_rproc_parse_dt(pdev);
-	if (ret)
-		goto free_wkq;
-
 	ret = stm32_rproc_request_mbox(rproc);
 	if (ret)
-		goto free_rproc;
+		goto free_wkq;
 
 	ret = rproc_add(rproc);
 	if (ret)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
