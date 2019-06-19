Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC5F4C1C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=noXKls5VRq76zZMKstRTDzGS8SA+7SleCAI/20+HEjc=; b=nTC+h7rgr7mdRIgC4sOEzaS6C8
	ZF5cwVdmZaamKlTcinLlCpmqPKyrMLf1UC1Y1roiZl/Rrk1HU1V9q5LE/U28pZ1wPBhdSi6LOc46c
	GI6DfAwl6UI/6qtm7FDkp6OuNd9xT8Ud/3LOKobySSqLZbSN+UKQPmVowe7z9zxcJ1+f845h3ua10
	M5enmvKbTJdl3ltLYcK2IzCZM1l7djQtFr1hPeWYtYMoi8IiToKc3tTE3B/jVrrqHE4Sd38RTonY5
	kGh/ewAj/Uwuok+GWOCUYrw8r9AUNCZMNYO0zH8KLGHJn9W9afS+Ml+rZjOFwKzJN5iEBk4CtxL47
	sOzME3KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgfB-00077w-T3; Wed, 19 Jun 2019 19:54:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdge2-0006Lc-VG
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so226896pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P8HOcu/iy58r97z1ZeEK9hZTcUyQU9lbtvmBDEqsK0c=;
 b=HZYZbfxZ3R7+ROW5dAEMg8DgSLM+/BnI03yeIpiJeZiakmeraas8sObZF66vsOZ+IU
 Buw193psMwN96EXdbSjrsdqkOIZpU5pBRQMELXRDzdWjy3eQfhirpolLBZHFUokXz1Zo
 oUWZYmNTkcIVfjGCwyxly+2dLDFVf+Ju7ElSkyUc2SLdPNgzefDRk43y8JzMbG/XsnKa
 bNDDx9rfcpgSIriDnNn9iLdgNtBN9TbFt7BrUc1AbpUH3MHi0Kp25Kv2jjJ46H952VMd
 edwqgdBraXmtAs2ZqtBemdKQALkfvVSu0whss7lZ7BBCkoxHNZ4jJW5+DdLvEz1UH3cg
 aDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P8HOcu/iy58r97z1ZeEK9hZTcUyQU9lbtvmBDEqsK0c=;
 b=D8DAUTYXklYBxRt0fOtww6LbJU3EBCgRZOsMCcCI4UWwQP0La/JS9+tcI5bdYED/2w
 sEY7KAp//rYoPgPhHppvf1qA6aEW0I5oCUaHApYeU8bdITsZTK1YUjhGYwafClQDuLV4
 mCDEFnL7dOQ8KtosxFHhHRqA40xPIdGMJf5/tTVrs8U6pi+3PCg+NM70F9I6C9go5qFW
 lQ4odzSplF/hstOy8nf2bzOSEHYqi34YxvPK6+c5P5ntRgHVA4X/UE+DTXuPQR1ss5yE
 phSv+meVOBLz0JAfyJAxaTDTv/UE1SQD4hgi68N981ozAuTsvnlLNIAoJ94W1IfSwC0E
 CJGQ==
X-Gm-Message-State: APjAAAXkdQqWSvQpTvOlrmjIU3s7VP0Y7900rChRSJtU8c3eCcaFMZQj
 sfcWQLq2DEmWzWL7JrKOTj5y5++FVRhvqg==
X-Google-Smtp-Source: APXvYqw9rFiUI6GMFKAtHrduQ2/FMvZkgZ5tyW0xCPx6HplnLAIMAC+0KGPBlT+lZqEIpvkNwfJ5oQ==
X-Received: by 2002:a17:90a:360c:: with SMTP id
 s12mr4826356pjb.30.1560974002135; 
 Wed, 19 Jun 2019 12:53:22 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:21 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/28] coresight: platform: Make memory allocation helper
 generic
Date: Wed, 19 Jun 2019 13:52:52 -0600
Message-Id: <20190619195318.19254-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125323_002796_25FBFF0A 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Rename the of_coresight_alloc_memory() => coresight_alloc_conns()
as it is independent of the underlying firmware type. This is in
preparation for the ACPI support.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-platform.c  | 34 +++++++++++--------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 514cc2b67c36..4c31299607cf 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -17,6 +17,24 @@
 #include <linux/cpumask.h>
 #include <asm/smp_plat.h>
 
+/*
+ * coresight_alloc_conns: Allocate connections record for each output
+ * port from the device.
+ */
+static int coresight_alloc_conns(struct device *dev,
+				 struct coresight_platform_data *pdata)
+{
+	if (pdata->nr_outport) {
+		pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
+					    sizeof(*pdata->conns),
+					    GFP_KERNEL);
+		if (!pdata->conns)
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
 #ifdef CONFIG_OF
 static int of_dev_node_match(struct device *dev, void *data)
 {
@@ -133,20 +151,6 @@ static void of_coresight_get_ports(const struct device_node *node,
 	}
 }
 
-static int of_coresight_alloc_memory(struct device *dev,
-			struct coresight_platform_data *pdata)
-{
-	if (pdata->nr_outport) {
-		pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
-					    sizeof(*pdata->conns),
-					    GFP_KERNEL);
-		if (!pdata->conns)
-			return -ENOMEM;
-	}
-
-	return 0;
-}
-
 int of_coresight_get_cpu(const struct device_node *node)
 {
 	int cpu;
@@ -252,7 +256,7 @@ of_get_coresight_platform_data(struct device *dev,
 	if (!pdata->nr_outport)
 		return pdata;
 
-	ret = of_coresight_alloc_memory(dev, pdata);
+	ret = coresight_alloc_conns(dev, pdata);
 	if (ret)
 		return ERR_PTR(ret);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
