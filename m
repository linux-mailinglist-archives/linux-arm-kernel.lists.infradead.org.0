Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0573155216
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 06:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4zQNoZuDtBsjb4NS5+8OTUY9aW6Gg3RDd2ejG2c4tg=; b=OqgPZ/ABacjAie
	meGq1gcB9hyEUVzMDOwwpLzgGqIYiKxPvmj0S/KxevM5IxnyVpDTLHzejI4chQPTnwV8O9O/JjAdW
	D3z/tIuXAdx9UqswrsM9bN037m1CnQMhojiyOT2oaWeQf1berKDGGXX02dnlfk2zC0HbLnPyVj5OW
	RKmU8d/ew/FWBe2jQGQoAWkL4igwCaPcSc8Ai71eYZsjA7gSiegOHZLp7tqExoiWBz0z/knuav/vT
	g6t5upavvgUGxB6VPzsDq9WFxLaLlBU9ShEfTICEyaxn5jv3cZKnt17vlvg8VU4aMgCm6jDtKL0Wm
	VlGsPmtrId/IbYOrnbeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izwBl-0008SS-MC; Fri, 07 Feb 2020 05:28:25 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izwAV-0007D1-DY
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 05:27:09 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m7so997693pjs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 21:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=unaVPTP92Jg9dNUlDZAd2C3bMBtYzw7JwBrkMbgjB74=;
 b=InNuuDfCwX/lg+zSHxm7t4Cgfsm3usbWlRsfwABwB1cyNtj+3OZZKV9XWXh3YzPClF
 vu1Ypr+JEYyGq8t1TEv4r3d0GPQbqxoX6trko13b8rSj0YLKoF8r2J8bfSjAPTYRq3hk
 8x+/sqpFYGKgm/e785WrSFuCUqZenEotsg0WM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=unaVPTP92Jg9dNUlDZAd2C3bMBtYzw7JwBrkMbgjB74=;
 b=GqAHNdghKIyLtLI8riojOqyuxJSgZM5MC3Zols3pMhGPg80XKzqvxqfWXWRWkLV1D8
 /tRYNz3KAN9vQFakf2EH/MZdYSR6XajBM2jW0gNkefd3SnV9ZwdI+PA67YkjfzAEa8qb
 tQrKNDUNpPGK+D1kK+wRMwwYHIltIdbeYGMKVUNsiBtI7dUhibe6udB4D9fJ9PC0/H4Z
 jTUQASlLR5euHdu1RPea0e8+LTnHV09OpN/xLHsQcVXrTyA73XDBC7nI2rWl8ix2UblX
 99l4VwtOkhqc9eTUM5TGpOPocofZMDMs7yH21RorQI9B9q/f3/jaEnZhinEMKbiJtgh9
 kmpg==
X-Gm-Message-State: APjAAAVap3o4citmu00nqiG/5s9N+Zn/fQ1bKixtL3hOB6e85fJrZVQ+
 XK89gCLAsI9PUN1B5BRrXuqbuw==
X-Google-Smtp-Source: APXvYqzm2bp8+w6kQCRrvUSsEoU2rSXSPaLfI8uyRPgOQnTGWVqk6eDuB9DdGfxYNQncAYH1Ac6eyQ==
X-Received: by 2002:a17:90a:8547:: with SMTP id a7mr1935864pjw.0.1581053226053; 
 Thu, 06 Feb 2020 21:27:06 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id i66sm1174485pfg.85.2020.02.06.21.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 21:27:05 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 5/7] drm/panfrost: Add support for multiple power domains
Date: Fri,  7 Feb 2020 13:26:25 +0800
Message-Id: <20200207052627.130118-6-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200207052627.130118-1-drinkcat@chromium.org>
References: <20200207052627.130118-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_212707_640813_49A9AC8B 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 ulf.hansson@linaro.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Steven Price <steven.price@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When there is a single power domain per device, the core will
ensure the power domain is switched on (so it is technically
equivalent to having not power domain specified at all).

However, when there are multiple domains, as in MT8183 Bifrost
GPU, we need to handle them in driver code.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

The downstream driver we use on chromeos-4.19 currently uses 2
additional devices in device tree to accomodate for this [1], but
I believe this solution is cleaner.

[1] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/chromeos-4.19/drivers/gpu/arm/midgard/platform/mediatek/mali_kbase_runtime_pm.c#31

v4:
 - Match the exact power domain names as specified in the compatible
   struct, instead of just matching the number of power domains.
   [Review: Ulf Hansson]
 - Dropped print and reordered function [Review: Steven Price]
 - nits: Run through latest version of checkpatch:
   - Use WARN instead of BUG_ON.
   - Drop braces for single expression if block.
v3:
 - Use the compatible matching data to specify the number of power
   domains. Note that setting 0 or 1 in num_pm_domains is equivalent
   as the core will handle these 2 cases in the exact same way
   (automatically, without driver intervention), and there should
   be no adverse consequence in this case (the concern is about
   switching on only some power domains and not others).

 drivers/gpu/drm/panfrost/panfrost_device.c | 97 ++++++++++++++++++++--
 drivers/gpu/drm/panfrost/panfrost_device.h | 11 +++
 drivers/gpu/drm/panfrost/panfrost_drv.c    |  2 +
 3 files changed, 102 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
index 3720d50f6d9f965..8136babd3ba9935 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.c
+++ b/drivers/gpu/drm/panfrost/panfrost_device.c
@@ -5,6 +5,7 @@
 #include <linux/clk.h>
 #include <linux/reset.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 
 #include "panfrost_device.h"
@@ -120,6 +121,79 @@ static void panfrost_regulator_fini(struct panfrost_device *pfdev)
 			pfdev->regulators);
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
+
+	/*
+	 * Single domain is handled by the core, and, if only a single power
+	 * the power domain is requested, the property is optional.
+	 */
+	if (num_domains < 2 && pfdev->comp->num_pm_domains < 2)
+		return 0;
+
+	if (num_domains != pfdev->comp->num_pm_domains) {
+		dev_err(pfdev->dev,
+			"Incorrect number of power domains: %d provided, %d needed\n",
+			num_domains, pfdev->comp->num_pm_domains);
+		return -EINVAL;
+	}
+
+	if (WARN(num_domains > ARRAY_SIZE(pfdev->pm_domain_devs),
+			"Too many supplies in compatible structure.\n"))
+		return -EINVAL;
+
+	for (i = 0; i < num_domains; i++) {
+		pfdev->pm_domain_devs[i] =
+			dev_pm_domain_attach_by_name(pfdev->dev,
+					pfdev->comp->pm_domain_names[i]);
+		if (IS_ERR_OR_NULL(pfdev->pm_domain_devs[i])) {
+			err = PTR_ERR(pfdev->pm_domain_devs[i]) ? : -ENODATA;
+			pfdev->pm_domain_devs[i] = NULL;
+			dev_err(pfdev->dev,
+				"failed to get pm-domain %s(%d): %d\n",
+				pfdev->comp->pm_domain_names[i], i, err);
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
@@ -150,37 +224,43 @@ int panfrost_device_init(struct panfrost_device *pfdev)
 		goto err_out1;
 	}
 
+	err = panfrost_pm_domain_init(pfdev);
+	if (err)
+		goto err_out2;
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
@@ -196,6 +276,7 @@ void panfrost_device_fini(struct panfrost_device *pfdev)
 	panfrost_job_fini(pfdev);
 	panfrost_mmu_fini(pfdev);
 	panfrost_gpu_fini(pfdev);
+	panfrost_pm_domain_fini(pfdev);
 	panfrost_reset_fini(pfdev);
 	panfrost_regulator_fini(pfdev);
 	panfrost_clk_fini(pfdev);
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index c9468bc5573ac9d..c30c719a805940a 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -21,6 +21,7 @@ struct panfrost_perfcnt;
 
 #define NUM_JOB_SLOTS 3
 #define MAX_REGULATORS 2
+#define MAX_PM_DOMAINS 3
 
 struct panfrost_features {
 	u16 id;
@@ -61,6 +62,13 @@ struct panfrost_compatible {
 	/* Supplies count and names. */
 	int num_supplies;
 	const char * const *supply_names;
+	/*
+	 * Number of power domains required, note that values 0 and 1 are
+	 * handled identically, as only values > 1 need special handling.
+	 */
+	int num_pm_domains;
+	/* Only required if num_pm_domains > 1. */
+	const char * const *pm_domain_names;
 };
 
 struct panfrost_device {
@@ -73,6 +81,9 @@ struct panfrost_device {
 	struct clk *bus_clock;
 	struct regulator_bulk_data regulators[MAX_REGULATORS];
 	struct reset_control *rstc;
+	/* pm_domains for devices with more than one. */
+	struct device *pm_domain_devs[MAX_PM_DOMAINS];
+	struct device_link *pm_domain_links[MAX_PM_DOMAINS];
 
 	struct panfrost_features features;
 	const struct panfrost_compatible *comp;
diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 4d08507526239f2..a6e162236d67fdf 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -663,6 +663,8 @@ const char * const default_supplies[] = { "mali" };
 static const struct panfrost_compatible default_data = {
 	.num_supplies = ARRAY_SIZE(default_supplies),
 	.supply_names = default_supplies,
+	.num_pm_domains = 1, /* optional */
+	.pm_domain_names = NULL,
 };
 
 static const struct of_device_id dt_match[] = {
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
