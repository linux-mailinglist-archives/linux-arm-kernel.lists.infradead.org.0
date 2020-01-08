Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413EA133B19
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 06:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4L+Ff6ZqXV2Q8amqPxfuinHujeo2OurQpjHihoCjAVg=; b=i62D1FmtTLaNxQ
	3ZdP0GL9P8RnyDjGmqClcQRzV3pYTb2WJRmt+2KbceDN/TpdIDX6/5bLT9YMuOsHZfXDzaUDS+aYO
	v99+drfa6oudb380XUFJ4gmFos2rHrzbkKPyFUb95N/SRhu/GkEhuGj9YHUwWXfrdvpdCdZ1dSD39
	UrRJ0yCEM0r1tAnZre2EsCivf3JpRDFuGFSVv6LvDpSdKhyG4kYRZSlfSDCNrjF8Jcod8AYga9l09
	wvzbrz8l6TF3/C7bGztCyNNAV2euu9L/+5egSOwzof7pCt972K2RRJy8ruFtatqmfIJXfX/X11EXL
	bsE8/iuiD70j51EzZm0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3qm-0007Sh-NG; Wed, 08 Jan 2020 05:25:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3pD-0004uA-7R
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 05:24:13 +0000
Received: by mail-pl1-x644.google.com with SMTP id p27so623861pli.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 21:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ra+20wVCtfatvw0K5yioGbAxlT9AXOAj2fQq6fBwVqo=;
 b=FDcmjcfuosKrI1aVlpORYzf8ILvaDJIrH3VeYHavKxE5uksMP8wy+dqr+rtKJisPrE
 xlYwd3lJXAmmyLWii0G328QSVx2jDBV4cxAewFF92xHO+tmLrnXLqN8Ecyy75QFduPs7
 CEirAlKXuTSmlbnNiX0sxmPpxKElpSFVyZKcs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ra+20wVCtfatvw0K5yioGbAxlT9AXOAj2fQq6fBwVqo=;
 b=NfNZC7FZZ+ztuTVy7YwvMGx2wcATHEGEQgF8olJB89JLoDpFfL4VnhBElmi2MsSr5i
 oFTszJcB3WAIa4Ghw7R+vtYNxgP7Xvj/JN6W/d6oOLCUoyYBGiS05pTAvHZwDYeCWPjR
 PpSw1h7QO4CgI6fuDk7+FJvv9ogYgxSWDfKSLK6YF/WHp5oo/BbEvgBW4wgaxMMg9ycZ
 pG1x6B+8Z8t5a8RF/YJLJmd0WS2I4R/jWwYtXB9++V30AbiJa3hyxmcJZpaqOwCl5VLB
 iAXXMmbiDHgd+ob9RZ9h8Iikj5cmwRkzClrjePiqbn6GFQIZ6PhatsvQ5RS+fE5YUTlr
 trxw==
X-Gm-Message-State: APjAAAUw05A1uGB/vRnD/N/dRsaIuf+V7pumxrCU8caN2hEfRss7rRXD
 GxTn7PS8cpYtHsQsnXdN5ScLrQ==
X-Google-Smtp-Source: APXvYqxY4WiSpt87/FZwdfEEf+Pbv809uvPrWp4yZnui6jFSnmuTtOBb/0vcAlWflwuVhfVm7OsonA==
X-Received: by 2002:a17:90a:e389:: with SMTP id b9mr2426783pjz.7.1578461049926; 
 Tue, 07 Jan 2020 21:24:09 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.24.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 21:24:09 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 5/7] drm/panfrost: Add support for multiple power domain
 support
Date: Wed,  8 Jan 2020 13:23:35 +0800
Message-Id: <20200108052337.65916-6-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_212411_631167_4D60508F 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When there is a single power domain per device, the core will
ensure the power domains are all switched on.

However, when there are multiple ones, as in MT8183 Bifrost GPU,
we need to handle them in driver code.


Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---

The downstream driver we use on chromeos-4.19 currently uses 2
additional devices in device tree to accomodate for this [1], but
I believe this solution is cleaner.

[1] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/chromeos-4.19/drivers/gpu/arm/midgard/platform/mediatek/mali_kbase_runtime_pm.c#31

drivers/gpu/drm/panfrost/panfrost_device.c | 87 ++++++++++++++++++++--
 drivers/gpu/drm/panfrost/panfrost_device.h |  4 +
 2 files changed, 83 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
index a0b0a6fef8b4e63..c6e9e059de94a4d 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.c
+++ b/drivers/gpu/drm/panfrost/panfrost_device.c
@@ -5,6 +5,7 @@
 #include <linux/clk.h>
 #include <linux/reset.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 
 #include "panfrost_device.h"
@@ -131,6 +132,67 @@ static void panfrost_regulator_fini(struct panfrost_device *pfdev)
 	regulator_disable(pfdev->regulator_sram);
 }
 
+static void panfrost_pm_domain_fini(struct panfrost_device *pfdev)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
+		if (!pfdev->pm_domain_devs[i])
+			break;
+
+		if (pfdev->pm_domain_links[i])
+			device_link_del(pfdev->pm_domain_links[i]);
+
+		dev_pm_domain_detach(pfdev->pm_domain_devs[i], true);
+	}
+}
+
+static int panfrost_pm_domain_init(struct panfrost_device *pfdev)
+{
+	int err;
+	int i, num_domains;
+
+	num_domains = of_count_phandle_with_args(pfdev->dev->of_node,
+						 "power-domains",
+						 "#power-domain-cells");
+	/* Single domains are handled by the core. */
+	if (num_domains < 2)
+		return 0;
+
+	if (num_domains > ARRAY_SIZE(pfdev->pm_domain_devs)) {
+		dev_err(pfdev->dev, "Too many pm-domains: %d\n", num_domains);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < num_domains; i++) {
+		pfdev->pm_domain_devs[i] =
+			dev_pm_domain_attach_by_id(pfdev->dev, i);
+		if (IS_ERR(pfdev->pm_domain_devs[i])) {
+			err = PTR_ERR(pfdev->pm_domain_devs[i]);
+			pfdev->pm_domain_devs[i] = NULL;
+			dev_err(pfdev->dev,
+				"failed to get pm-domain %d: %d\n", i, err);
+			goto err;
+		}
+
+		pfdev->pm_domain_links[i] = device_link_add(pfdev->dev,
+				pfdev->pm_domain_devs[i], DL_FLAG_PM_RUNTIME |
+				DL_FLAG_STATELESS | DL_FLAG_RPM_ACTIVE);
+		if (!pfdev->pm_domain_links[i]) {
+			dev_err(pfdev->pm_domain_devs[i],
+				"adding device link failed!\n");
+			err = -ENODEV;
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	panfrost_pm_domain_fini(pfdev);
+	return err;
+}
+
 int panfrost_device_init(struct panfrost_device *pfdev)
 {
 	int err;
@@ -161,37 +223,45 @@ int panfrost_device_init(struct panfrost_device *pfdev)
 		goto err_out1;
 	}
 
+	err = panfrost_pm_domain_init(pfdev);
+	if (err) {
+		dev_err(pfdev->dev, "pm_domain init failed %d\n", err);
+		goto err_out2;
+	}
+
 	res = platform_get_resource(pfdev->pdev, IORESOURCE_MEM, 0);
 	pfdev->iomem = devm_ioremap_resource(pfdev->dev, res);
 	if (IS_ERR(pfdev->iomem)) {
 		dev_err(pfdev->dev, "failed to ioremap iomem\n");
 		err = PTR_ERR(pfdev->iomem);
-		goto err_out2;
+		goto err_out3;
 	}
 
 	err = panfrost_gpu_init(pfdev);
 	if (err)
-		goto err_out2;
+		goto err_out3;
 
 	err = panfrost_mmu_init(pfdev);
 	if (err)
-		goto err_out3;
+		goto err_out4;
 
 	err = panfrost_job_init(pfdev);
 	if (err)
-		goto err_out4;
+		goto err_out5;
 
 	err = panfrost_perfcnt_init(pfdev);
 	if (err)
-		goto err_out5;
+		goto err_out6;
 
 	return 0;
-err_out5:
+err_out6:
 	panfrost_job_fini(pfdev);
-err_out4:
+err_out5:
 	panfrost_mmu_fini(pfdev);
-err_out3:
+err_out4:
 	panfrost_gpu_fini(pfdev);
+err_out3:
+	panfrost_pm_domain_fini(pfdev);
 err_out2:
 	panfrost_reset_fini(pfdev);
 err_out1:
@@ -208,6 +278,7 @@ void panfrost_device_fini(struct panfrost_device *pfdev)
 	panfrost_mmu_fini(pfdev);
 	panfrost_gpu_fini(pfdev);
 	panfrost_reset_fini(pfdev);
+	panfrost_pm_domain_fini(pfdev);
 	panfrost_regulator_fini(pfdev);
 	panfrost_clk_fini(pfdev);
 }
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index a124334d69e7e93..92d471676fc7823 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -19,6 +19,7 @@ struct panfrost_job;
 struct panfrost_perfcnt;
 
 #define NUM_JOB_SLOTS 3
+#define MAX_PM_DOMAINS 3
 
 struct panfrost_features {
 	u16 id;
@@ -62,6 +63,9 @@ struct panfrost_device {
 	struct regulator *regulator;
 	struct regulator *regulator_sram;
 	struct reset_control *rstc;
+	/* pm_domains for devices with more than one. */
+	struct device *pm_domain_devs[MAX_PM_DOMAINS];
+	struct device_link *pm_domain_links[MAX_PM_DOMAINS];
 
 	struct panfrost_features features;
 
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
