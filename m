Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC34F171B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AEa4wHT5pAVVEBq8MKE0K/WvyaLe0HlB7GiJegF4bzg=; b=MM2A4zm/tpTUGPyNZzfNIYB99U
	yEN7dKMBm6dHYslvLVWaHargdOrELrBHZWT1YmFNipUci2lESMmiraVyGwjcQV34NNcxzVkUyz5CY
	MswBEpsz0fPqVSGzo9I7m+23obQXPWJeXbFFRghNqhu00Qp0LwBb11IAUIJPVmvQ9hO72AOJXamK5
	NcqFedyl43BW9UyaZTopFbdqUqPGjd+/3BYa2BiJljEbnlezEwBjPJjsbcpFINFXKKjaAddUvaogy
	9/nt20XfLcIpJOTrIUIo59SB+Onc3013A+neSwZusGQh8khs7iSIQYnb9TYhqjxq91bjYKQkHxiHE
	9AA6QoaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLNi-0004De-Hj; Wed, 06 Nov 2019 13:29:54 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLMy-0003iL-Lo
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 13:29:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id q16so11434137pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 05:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=2xqYXv9mzaQHwdDh6j/4ycM4TkgLqd6VvlhGxQOhNwg=;
 b=za0v+vrOAYFsK6XXgXtbLMXEk/0Jo14oKAfvmttgjG9v8GTN3APeKjjkysHBIo/MaD
 yu1fZQ8H+NAJ/MF1Jb65S7HsNdTp52aIe2OqV7nU/fr3/e2KDfBJa5HMfkeSVHMiPaWW
 pjJ7GrAUvONFXEc2cWBBFXzetevUlhXpioV7h5PS917zag1508jFEetnjK0914bqqzdY
 z6myjrjljlOZOD3qORGAP0lciZJSobhzFPoJYYF8KE3t7m1+Vd6KhBJI37QGCM7tU7m3
 xlR68RTUxYR9NhAjBoSmKY60c6bglrGlJ6+UZkW0SU5UkzgR2LFnaqY85S8gIQnGTaEs
 7vDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=2xqYXv9mzaQHwdDh6j/4ycM4TkgLqd6VvlhGxQOhNwg=;
 b=oLBiAh+y9MS7nyVOv6N6xkvbAjE9aK40k45Pqg5MDbH7ijofYq5w5edA5+zEemy+6P
 9UzSlEZ6cF6EyhVJ/PVjkNb40PK6DOBx/uBO2R/G62FvcBMkC6NCZrTjiJn5nbAC7p9o
 8pzezPmHiy5g3WX2g6ZSWzlYM6o3OepgVPN11JFYrlL3epF+S1dpyBHnOsidWlb5iH+Y
 pSFRWnKwaPFLU5kIMf763cL+r21EIvpeHcVQMcH1TBvZPoSHLNiLf8gXKweVGVrB8afc
 RRzeTdZEGIyqolUbA8aVXnFtC+v5/yNOQuS+OFPBta0stMOQ//AYXqGU/RzE1FcxG3Tg
 8I6A==
X-Gm-Message-State: APjAAAX6W0xVjFrMspKZIF1rBAzqa8UPbA4muKKeiVl9frdtakosLckM
 UQRXcFZxp4Jiuw37WnlS/n76sQ==
X-Google-Smtp-Source: APXvYqzdD6PP3zR2WOpA7wbJdtG8RYdi6t7S3j+JCo3E8AwHpvLtfylSKI497txtjQISu6lCPm6v2A==
X-Received: by 2002:a17:902:8309:: with SMTP id
 bd9mr1678528plb.153.1573046947813; 
 Wed, 06 Nov 2019 05:29:07 -0800 (PST)
Received: from localhost ([49.248.202.230])
 by smtp.gmail.com with ESMTPSA id g7sm23243544pgr.52.2019.11.06.05.29.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Nov 2019 05:29:07 -0800 (PST)
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
Subject: [PATCH 08/11] thermal: samsung: Appease the kernel-doc deity
Date: Wed,  6 Nov 2019 18:58:24 +0530
Message-Id: <ef268335454e96e6ee3d13deb1cb89af0d0a3b61.1573046440.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573046440.git.amit.kucheria@linaro.org>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1573046440.git.amit.kucheria@linaro.org>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_052908_746244_D348D423 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.248.202.230 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

linux.git/drivers/thermal/mtk_thermal.c:374: warning: cannot understand function prototype: 'const struct mtk_thermal_data mt8173_thermal_data = '
linux.git/drivers/thermal/mtk_thermal.c:413: warning: cannot understand function prototype: 'const struct mtk_thermal_data mt2701_thermal_data = '
linux.git/drivers/thermal/mtk_thermal.c:443: warning: cannot understand function prototype: 'const struct mtk_thermal_data mt2712_thermal_data = '
linux.git/drivers/thermal/mtk_thermal.c:499: warning: cannot understand function prototype: 'const struct mtk_thermal_data mt8183_thermal_data = '
linux.git/drivers/thermal/mtk_thermal.c:529: warning: Function parameter or member 'sensno' not described in 'raw_to_mcelsius'

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 drivers/thermal/samsung/exynos_tmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/samsung/exynos_tmu.c b/drivers/thermal/samsung/exynos_tmu.c
index fb2c55123a99e..8193b66a3f831 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
