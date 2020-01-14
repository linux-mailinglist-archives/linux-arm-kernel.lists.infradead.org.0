Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFDA13A186
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 08:18:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wriKYsgApliOHIx2/1wz2VtIfOR8axwVk51hggTK0HY=; b=KIUdq3iUkCQURp
	m5c797rkx1qqctkkvhWesIlt0ZXVRz3FrgWXfT9HBmpwT4tojL/OhUe98+bavYYlWV/EZcjFtnxlT
	iXaY1AyHKib0KECDkWgK+JGJg4dG4VS9Wy/BrtK9v+aBiQ6JV97ErGioyVxyEOFjt8DY+EilZwy93
	L8qaxMOQGKxEHwdLtHrBk5LPeW6mA0SWMJedDbm/K5+du0pMzPfxzM2fO4LK2bK0jMC/RlYnzNevf
	iNJIXMzm8K79U9sMh51jDgIsZ31YBrL4ze2sz0QsYyX0a2a13ZSTPUUDbBRMTH/2k0FalaB9EpnBP
	Ye8tb2xD9eZgJV30/69A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGSg-0005Jy-EI; Tue, 14 Jan 2020 07:18:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGR6-00041O-Rt
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 07:16:27 +0000
Received: by mail-pg1-x541.google.com with SMTP id z124so5946368pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 23:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kL7MaPtbEc21MOhREjvhOgoDbupsHbrcTaafCHl6zWw=;
 b=nyrwVyLcYnNR5mbm92LNGb5QtmCx+5pUoIH0aD8TvRWaA/To6hN3kVrNsRDENiENh9
 y1BPUp40uFVRbuMzqrcmBYs+eWomH0z/SV1EzZnxa4zl0EM3jf+TUHwBnkr03hwwPk4+
 rmBcnoqFF80mCeo3ILegZQxvfm8H/5T97yIao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kL7MaPtbEc21MOhREjvhOgoDbupsHbrcTaafCHl6zWw=;
 b=rkAu8rkNhA2MJPm3mp32pW1GgKl9y8PFzNJ5VGIRCgCCXagMo5y/a+1GJuAjwFAICj
 jeCYJpZYLio5b8wccyV3Ya85rH4G48Mm9RJia8omcDlWwyA0dEgJgBPxeGT75TtY8kWB
 obXCj86vgtIDjKfjMQxmBwOGPqQlTDGNmOUQOwtGOVodg7KETZmYTsZ/WCQADDxwCost
 3unpEz7G/Rujb+R0RX4Pnx0S6p38Y133Q6gkHTMuo6Kr8hcSXJgoE8h4V7deyiC4vct+
 rHHozy9HNLHvVATFH2i3CFktvbx9ACVGnaUURd7SNKa0xEQcw5K/H0cYDg7sQaEWyyTX
 4ayQ==
X-Gm-Message-State: APjAAAWbRgMSvGfwCHsDBrWKclFKoFRzHKTGw6YyORF/Df2WYLuYCl37
 2TERh9i6r8bOXYflUxAlnAe2Pg==
X-Google-Smtp-Source: APXvYqz1Db5nZXfVgPpUvk0sMU7jCh8DwGo6ABq63Sc0zluJCZpvIMzGYhdDt6IlBlStywedDMXynA==
X-Received: by 2002:a63:d62:: with SMTP id 34mr26391053pgn.268.1578986183441; 
 Mon, 13 Jan 2020 23:16:23 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id b4sm17092976pfd.18.2020.01.13.23.16.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 23:16:22 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 5/7] drm/panfrost: Add support for multiple power domains
Date: Tue, 14 Jan 2020 15:16:00 +0800
Message-Id: <20200114071602.47627-6-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200114071602.47627-1-drinkcat@chromium.org>
References: <20200114071602.47627-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_231624_968619_C78974C0 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

v3:
 - Use the compatible matching data to specify the number of power
   domains. Note that setting 0 or 1 in num_pm_domains is equivalent
   as the core will handle these 2 cases in the exact same way
   (automatically, without driver intervention), and there should
   be no adverse consequence in this case (the concern is about
   switching on only some power domains and not others).

 drivers/gpu/drm/panfrost/panfrost_device.c | 95 ++++++++++++++++++++--
 drivers/gpu/drm/panfrost/panfrost_device.h |  9 ++
 drivers/gpu/drm/panfrost/panfrost_drv.c    |  1 +
 3 files changed, 97 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
index c30e0a3772a4f57..7c9766f76cc7689 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.c
+++ b/drivers/gpu/drm/panfrost/panfrost_device.c
@@ -5,6 +5,7 @@
 #include <linux/clk.h>
 #include <linux/reset.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 
 #include "panfrost_device.h"
@@ -119,6 +120,75 @@ static void panfrost_regulator_fini(struct panfrost_device *pfdev)
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
+	BUG_ON(num_domains > ARRAY_SIZE(pfdev->pm_domain_devs));
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
@@ -149,37 +219,45 @@ int panfrost_device_init(struct panfrost_device *pfdev)
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
@@ -196,6 +274,7 @@ void panfrost_device_fini(struct panfrost_device *pfdev)
 	panfrost_mmu_fini(pfdev);
 	panfrost_gpu_fini(pfdev);
 	panfrost_reset_fini(pfdev);
+	panfrost_pm_domain_fini(pfdev);
 	panfrost_regulator_fini(pfdev);
 	panfrost_clk_fini(pfdev);
 }
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index 021f063ffb3747f..143eab57180a2e1 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -21,6 +21,7 @@ struct panfrost_perfcnt;
 
 #define NUM_JOB_SLOTS 3
 #define MAX_REGULATORS 2
+#define MAX_PM_DOMAINS 3
 
 struct panfrost_features {
 	u16 id;
@@ -61,6 +62,11 @@ struct panfrost_compatible {
 	/* Supplies count and names. */
 	int num_supplies;
 	const char * const *supply_names;
+	/*
+	 * Number of power domains required, note that values 0 and 1 are
+	 * handled identically, as only values > 1 need special handling.
+	 */
+	int num_pm_domains;
 };
 
 struct panfrost_device {
@@ -73,6 +79,9 @@ struct panfrost_device {
 	struct clk *bus_clock;
 	struct regulator_bulk_data regulators[MAX_REGULATORS];
 	struct reset_control *rstc;
+	/* pm_domains for devices with more than one. */
+	struct device *pm_domain_devs[MAX_PM_DOMAINS];
+	struct device_link *pm_domain_links[MAX_PM_DOMAINS];
 
 	struct panfrost_features features;
 	const struct panfrost_compatible* comp;
diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index db3563b80150c9d..42b87e29e605149 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -589,6 +589,7 @@ const char * const default_supplies[] = { "mali" };
 static const struct panfrost_compatible default_data = {
 	.num_supplies = ARRAY_SIZE(default_supplies),
 	.supply_names = default_supplies,
+	.num_pm_domains = 1, /* optional */
 };
 
 static const struct of_device_id dt_match[] = {
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
