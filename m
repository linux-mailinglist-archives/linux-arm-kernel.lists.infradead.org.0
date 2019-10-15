Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9225D8219
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4g6iu4AjeoQTyMIHNjMo8VKEx2IpDtZFWTgoA+4wPjw=; b=Cbd/I0LlM5Sv4TCFkYHQQCyYj7
	DO0iJLO0oIt89NH4l3kFXpIDp14/2JykaLDuXC2KzXGGWTOfbYgmjuRewdJh3WM9SvS0jQP7ZWzda
	IfmO627hO7Cv+k0p2AbqeaYOslK8ImNxItyScH85nu8/9IxI237WQxCtSqQf9aCXoMBEMtwWkVztq
	gQUS4eflWf4tJxYNNa7rofGng7XEBACDp6VqITk/BKf+1IZhvLQRAGfRqfxSV8X6+XNmLCbTOUrIL
	igvUqtNayteCVbr1NjHCZC7ZGGudJXNKHaGP/v71KqNd7dc4/UDlA/g67Oz+Y+O0+Hc0BGOEXyRYR
	h6FfIxXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUHX-0004if-PN; Tue, 15 Oct 2019 21:23:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFW-00032u-Pv
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:21:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id y135so3201583wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DCrRB45TPzffk/SG7GSckRQdVqj6ZXw8oOiajo6TgQI=;
 b=UAVuIDOUvZZyV9kO0gvn+x6GUYOnygxkODoUfALvIsMaw6iKXTdPjrTQ1/2tAq/O+V
 1gI0fI2ihrg8U0u8VsqX9bK7m++OeZO+pOB4s8FbkLSkgh5GetHpRKSuEnkcYvoO6vRv
 QZLjyukx3tERcSOtM/HXqRD1WPjjaSkRE4pKDGKxpLkNftixSK+CeITcMNnCZWHKP/sR
 J25T4HwG8yZeq/mXdvFlXV0aQt/TIeNhid+EFeQXv+3PhmV2hdOGaCJ/ymUvDXk+OmgG
 p2Wx3iSa82S9gQCS5xVVCQl/pjBO3YH1S9Mcch1qDEDGpthT5JAAyg4VPMOmYKvU0tRY
 //Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DCrRB45TPzffk/SG7GSckRQdVqj6ZXw8oOiajo6TgQI=;
 b=oVushefkOhSgQ7ek4RFYT8KInjMI4KXeiOv/4AFUxqMEsHyR3o3X1motOz5v4yCY/c
 7orup5YJORh625SiLhDgEqqe8tBMVTEJFwXaSNIaXWgIKwV1bSH+FdjRJNQ5OH7NBSEz
 uF+43HHVw13WjmF0vioZ5VRkYAIZrbVno+XGKRfUj4sBtT43GeASlckPlxXd2Ry0RUDR
 FsA+O8lYjUrRzTzfXX7d4r73tpm2gNQFXJ7mg8iyGtfiLCkAab8vK3FlsDXR42S/f7oq
 0fPcpK8OTLMLdyDRvubNqgfLefbHiI+zp1rwZ9LxkWoDwiCkwHTCnZKmPLYRbHgAcEZb
 AkHg==
X-Gm-Message-State: APjAAAUbed1orqLyrQF9fKVMrIZz+dWMVfDi59XpuoGmkL56jxH3yME4
 TDG9ztisMTD055O/SYWq+3X6mw==
X-Google-Smtp-Source: APXvYqy4BIPufvC95A9MJQDTfCl0bC0PyKdCFW22iNvtafhJog5HkDLu3m0vixfc3Ae+wpStOmoTnA==
X-Received: by 2002:a7b:cb95:: with SMTP id m21mr432615wmi.36.1571174456914;
 Tue, 15 Oct 2019 14:20:56 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:56 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 06/11] coresight: etm4x: Improve usability of sysfs - CID
 and VMID masks.
Date: Tue, 15 Oct 2019 22:19:59 +0100
Message-Id: <20191015212004.24748-7-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142058_902811_B7DB6883 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gregkh@linuxfoundation.org, suzuki.poulose@arm.com,
 mathieu.poirier@linaro.org, corbet@lwn.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Context ID and VM ID masks required 2 value inputs, even when the
second value is ignored as insufficient CID / VMID comparators are
implemented.

Permit a single value to be used if that is sufficient to cover all
implemented comparators.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x-sysfs.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index d772765dcd29..d6fcb9fee97a 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1794,6 +1794,7 @@ static ssize_t ctxid_masks_store(struct device *dev,
 	unsigned long val1, val2, mask;
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 	struct etmv4_config *config = &drvdata->config;
+	int nr_inputs;
 
 	/*
 	 * Don't use contextID tracing if coming from a PID namespace.  See
@@ -1809,7 +1810,9 @@ static ssize_t ctxid_masks_store(struct device *dev,
 	 */
 	if (!drvdata->ctxid_size || !drvdata->numcidc)
 		return -EINVAL;
-	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
+	/* one mask if <= 4 comparators, two for up to 8 */
+	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
+	if ((drvdata->numcidc > 4) && (nr_inputs != 2))
 		return -EINVAL;
 
 	spin_lock(&drvdata->spinlock);
@@ -1983,6 +1986,7 @@ static ssize_t vmid_masks_store(struct device *dev,
 	unsigned long val1, val2, mask;
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 	struct etmv4_config *config = &drvdata->config;
+	int nr_inputs;
 
 	/*
 	 * only implemented when vmid tracing is enabled, i.e. at least one
@@ -1990,7 +1994,9 @@ static ssize_t vmid_masks_store(struct device *dev,
 	 */
 	if (!drvdata->vmid_size || !drvdata->numvmidc)
 		return -EINVAL;
-	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
+	/* one mask if <= 4 comparators, two for up to 8 */
+	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
+	if ((drvdata->numvmidc > 4) && (nr_inputs != 2))
 		return -EINVAL;
 
 	spin_lock(&drvdata->spinlock);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
