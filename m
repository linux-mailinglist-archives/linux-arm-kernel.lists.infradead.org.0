Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2007103FDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3REU4sSpBqNIw01BIyFPseB9tQNUCVUYv1tZtFrp7T4=; b=jKsO4QVYyW6WL8UHwjFW3I0q6t
	ITYX2+wvQVGhkGkc47E2Uk0RczxfTkiTCVpnKZvV7VcmZNHyuPAVPpRxgFCuiCzigCafq3GoBpZx2
	qgOmF6yvenU7VU07nAxCQqCMU8U5HoFHmvtL5j9IohB3OieB4Ry1QVR6bOAqgJPFrJMNT+BLnyRLE
	9TsaZDrsiXXcl85B1R20mG8VDoc4jYCJEOX0tqWOyjHoid7gyHdFRD6kvztdwe8p6T1iiiJuaJiID
	igRkxVdZTv5YZkZ/AKSItx2d+6F0oBkH5asFAHQdd27fTKDIV6nYSlQi2Wexlgyl3tS8LQMVwIfPh
	SOnbYztQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSBp-0003kA-1V; Wed, 20 Nov 2019 15:46:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSB4-0003Ec-ML
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:46:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id p26so14398177pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=NSg5zBP2bkEtgf/AJ9lwtdlcJh9mMI+s8A/QE9EBrqI=;
 b=pyfzMEiXET5WNLh0lbzWH2k8Ma4kL/gchA2TSfgf9FOt77Ipge3tgeetL+B/eMQ3nQ
 qK74PRyKA6Xzfhp8SDKE8IDOG9FnvPqI6zAxyvVWg6TQP7y92eClE7VPgn5EQgevKmTn
 31isyeVwYrt/63T3W7c/7GYIA5cpiXc/FjWnfRx3+zoDJBZViOljMLADxrUxQ7RA6vsu
 R4P0FAggkEapQV9P/JrJvCvOqiJCr2EcBVxIorboYb7NdrqFEAaI3ZrbK10/PJQHQdmL
 XAbs0VUQKIfNCfpp8OueO+3Wys7vJrR6BqL9ZgscME+PrmMK7xFCfeyBCRbpBj9pzPrW
 baSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=NSg5zBP2bkEtgf/AJ9lwtdlcJh9mMI+s8A/QE9EBrqI=;
 b=ENTHKmwwaHlfIP7JDcpbSm1SiLn/UatyG08Bn/2aZHCzhlrj89zZBIIl96PC4oVv/X
 YeCpUhSugrpV6fKR0Jfpg7XOSIqPSr0BkNpAFVtkOmyBc6l8qUbAfdWtQ1mYh0/VIeB3
 di6ntOCAFln2QmGNkdH3JMxG1msWe244act+HZxEvUrY24sI2vVvwuCDzlaizn7C4FRZ
 KSVtT8e3RAmRkbyFMJpKSe2G4Tndk4R484cEvC+Q9EAyg4v3FJYqUJhafJsb5M214YDi
 OERmTKMuV2iJuRPy5JyYu0egvmq9OYmmIqjh3G11WBslnhvVzvP/6wFaWmdH/wNUI8Al
 A+kQ==
X-Gm-Message-State: APjAAAXk+I2XhRnb+I+G/KT+Pl3xxuVH3RMqqJKgBEHiPc5XJbr92R1b
 ccHyyj0cQ3TYDh1w3VJFIGzy2g==
X-Google-Smtp-Source: APXvYqzJUD458tw9LKLIOVTpzUVrazVeldBx+3/BvF6tmCLBMY2h07OohUoX/CJQd6M8piZEF0jNfw==
X-Received: by 2002:aa7:8b08:: with SMTP id f8mr4854182pfd.92.1574264757863;
 Wed, 20 Nov 2019 07:45:57 -0800 (PST)
Received: from localhost ([14.96.110.98])
 by smtp.gmail.com with ESMTPSA id 125sm29559387pfu.136.2019.11.20.07.45.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 20 Nov 2019 07:45:57 -0800 (PST)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Javi Merino <javi.merino@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jun Nie <jun.nie@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>
Subject: [PATCH v2 08/11] thermal: samsung: Appease the kernel-doc deity
Date: Wed, 20 Nov 2019 21:15:17 +0530
Message-Id: <1ded1697c6e5eff11b034b3302b9c79e88fa9c42.1574242756.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1574242756.git.amit.kucheria@linaro.org>
References: <cover.1574242756.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1574242756.git.amit.kucheria@linaro.org>
References: <cover.1574242756.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_074558_751001_35D00349 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up the following warning when compiled with make W=1:

linux.git/drivers/thermal/samsung/exynos_tmu.c:141: warning: bad
line:         driver
linux.git/drivers/thermal/samsung/exynos_tmu.c:203: warning: Function
parameter or member 'tzd' not described in 'exynos_tmu_data'
linux.git/drivers/thermal/samsung/exynos_tmu.c:203: warning: Function
parameter or member 'tmu_set_trip_temp' not described in
'exynos_tmu_data'
linux.git/drivers/thermal/samsung/exynos_tmu.c:203: warning: Function
parameter or member 'tmu_set_trip_hyst' not described in
'exynos_tmu_data'

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 drivers/thermal/samsung/exynos_tmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/samsung/exynos_tmu.c b/drivers/thermal/samsung/exynos_tmu.c
index fb2c55123a99..8193b66a3f83 100644
--- a/drivers/thermal/samsung/exynos_tmu.c
+++ b/drivers/thermal/samsung/exynos_tmu.c
@@ -138,7 +138,7 @@ enum soc_type {
 
 /**
  * struct exynos_tmu_data : A structure to hold the private data of the TMU
-	driver
+ *			    driver
  * @id: identifier of the one instance of the TMU controller.
  * @base: base address of the single instance of the TMU controller.
  * @base_second: base address of the common registers of the TMU controller.
@@ -162,8 +162,11 @@ enum soc_type {
  *	0 < reference_voltage <= 31
  * @regulator: pointer to the TMU regulator structure.
  * @reg_conf: pointer to structure to register with core thermal.
+ * @tzd: pointer to thermal_zone_device structure
  * @ntrip: number of supported trip points.
  * @enabled: current status of TMU device
+ * @tmu_set_trip_temp: SoC specific method to set trip (rising threshold)
+ * @tmu_set_trip_hyst: SoC specific to set hysteresis (falling threshold)
  * @tmu_initialize: SoC specific TMU initialization method
  * @tmu_control: SoC specific TMU control method
  * @tmu_read: SoC specific TMU temperature read method
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
