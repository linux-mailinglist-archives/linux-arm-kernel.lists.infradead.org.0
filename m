Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4874D1B3A93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 10:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TiB4zZoktTEH00c3svNMSNLVG2kOCGYY6Vgn63/ovm8=; b=fbgCtDYFlyALlE
	UKLfTnfuLO+qmXAkjJu4LsyXBvzsTBVAJuZPliRhulVr0c9VO25wBCggQjVnr9+ec73uswKAGa4jS
	v/QvvzkQM2dIixZVF0h+fLprqoKZkPcAwl/TOhz41i50gwryzYwkwHJTM6p0q5QBUHutbYcl6U8qy
	IsFBrYGUcvW/88OG4542VAaGnjlDfOl2vdIhHmaJ//U7j0CQE4luh7ur0igGnR4BeqPqCTbJStwFi
	LIYjhb/I1bm/lF0NcBMsd2fKRaXWcyicUiLZCEB4NayOEXhnPnLmOrVcy6F1P+9Wv0orQOY+mvsew
	pG5432oOjeBmBshBmqXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRB6K-0004yO-2Y; Wed, 22 Apr 2020 08:51:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRB69-0004xP-Es
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 08:51:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id x18so1406727wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 01:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sUdbSFyC59yuJaBvVyUBRgUcm0WR2UBXi7Lj/i0pHiA=;
 b=y9a/LVLmgG5VhJWtvQNLFDNy+OccjnZD7/1H1WEThlqytxXAsAgOZeXAeIqhfapG3R
 ZJPJPC75+zkLSbAIk2fPfSbqobP4jHJ/iQvZRXsjGP36Wzc08NwyI81LllsqdFJs7JOL
 +s7FJnZp3Ox7zm84lRimYg8woZDbJz+SvSQnFrwf7gT+FjB8t3dhQRr50C+ttOkViLKq
 zoVjof1qw7v4HEMI392LfzM01Rcfb+SIlWiOvInlqXFl2C5VMrv6XwHf/jb80JyeRkzQ
 ZskuxbA3oHQp1MupeNznZDrHufXbERLYhvOfasjyn3CiIWNlSlMK+O7lllDq4xO87Sfu
 GOQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sUdbSFyC59yuJaBvVyUBRgUcm0WR2UBXi7Lj/i0pHiA=;
 b=o0AK/674LC1lSV7FFBPWYXj4J+OdTp1aZEcWla4aTh7m5Y1W1Let2sAD+JpDajMbVc
 sTxHZCmyp5aM4GKS/8j9+CEbEinR/vDjB3QfxMQlgs35S3mFnXv2XYt0XX8nu5Q0aNxn
 4a3gxsbOoBzeu2i3yv50S2HsizqiVDUZIowWMz3pMxS4jKasZ8OrzKyk/Bg6v/fziFgi
 Ap8j6UtUCh3gYQX6p8D+Nsd8ZoGMVIVjr5+LYrE7LZpI4PsbkKFUgwRjYCY83whz/bHH
 n/GM9cUI50n/KMJIUFkpCv+5Qf09r8/uvmgONEEP9bEYwoO1loFXrJX4KHfZx1hMfGL7
 mDgw==
X-Gm-Message-State: AGi0PuZTmrOsp602rni7APiMhzvfATAgFT7j9xTnX14rDY5DRWHhXK65
 dsb9g6h5RhsPTjN7o3XF8G+6Dw==
X-Google-Smtp-Source: APiQypJwpTUPCMFRn0xK1RxymUrmBb9TxHCysef0GOkP+0bjMtrjRrq11yO0mUzkPw6mCoxZtETZcQ==
X-Received: by 2002:adf:82a6:: with SMTP id 35mr27318496wrc.378.1587545472229; 
 Wed, 22 Apr 2020 01:51:12 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id t16sm8388398wrb.8.2020.04.22.01.51.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 01:51:08 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] pmu/smmuv3: Clear IRQ affinity hint on device removal
Date: Wed, 22 Apr 2020 10:48:06 +0200
Message-Id: <20200422084805.237738-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_015113_530307_8C468A8B 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently when trying to remove the SMMUv3 PMU module we get a
WARN_ON_ONCE from free_irq(), because the affinity hint set during probe
hasn't been properly cleared.

[  238.878383] WARNING: CPU: 0 PID: 175 at kernel/irq/manage.c:1744 free_irq+0x324/0x358
...
[  238.897263] Call trace:
[  238.897998]  free_irq+0x324/0x358
[  238.898792]  devm_irq_release+0x18/0x28
[  238.899189]  release_nodes+0x1b0/0x228
[  238.899984]  devres_release_all+0x38/0x60
[  238.900779]  device_release_driver_internal+0x10c/0x1d0
[  238.901574]  driver_detach+0x50/0xe0
[  238.902368]  bus_remove_driver+0x5c/0xd8
[  238.903448]  driver_unregister+0x30/0x60
[  238.903958]  platform_driver_unregister+0x14/0x20
[  238.905075]  arm_smmu_pmu_exit+0x1c/0xecc [arm_smmuv3_pmu]
[  238.905547]  __arm64_sys_delete_module+0x14c/0x260
[  238.906342]  el0_svc_common.constprop.0+0x74/0x178
[  238.907355]  do_el0_svc+0x24/0x90
[  238.907932]  el0_sync_handler+0x11c/0x198
[  238.908979]  el0_sync+0x158/0x180

Just like the other perf drivers, clear the affinity hint before
releasing the device.

Fixes: 7d839b4b9e00 ("perf/smmuv3: Add arm64 smmuv3 pmu driver")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/perf/arm_smmuv3_pmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index 1bc378b68af83..245c8a1b42995 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -847,7 +847,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 	if (err) {
 		dev_err(dev, "Error %d registering hotplug, PMU @%pa\n",
 			err, &res_0->start);
-		return err;
+		goto out_clear_affinity;
 	}
 
 	err = perf_pmu_register(&smmu_pmu->pmu, name, -1);
@@ -866,6 +866,8 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 
 out_unregister:
 	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
+out_clear_affinity:
+	irq_set_affinity_hint(smmu_pmu->irq, NULL);
 	return err;
 }
 
@@ -875,6 +877,7 @@ static int smmu_pmu_remove(struct platform_device *pdev)
 
 	perf_pmu_unregister(&smmu_pmu->pmu);
 	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
+	irq_set_affinity_hint(smmu_pmu->irq, NULL);
 
 	return 0;
 }
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
