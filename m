Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97617103FDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i4hxidn51uX6QNCZhmAM7Q04e7XTOmumfgiOf3FutNU=; b=nd4dmZnxvrKez+XdSaBnwNujh6
	3JJHhI1+P736bbAnX4yxfUPOnre0+BPDKTiaV5A3qRB/soc62VSF8OSTGjrtMPHR7vcA5fARb7zs4
	CNE96lH0VDVDlnY5nKb8kgGaRpXJywx51siJTzjkyHd3DtGz91R64b2AmnIwwHHk4hPvPa+e/GSL+
	+2+owY1gA2gjvNBzhw7tKaxqnM6uvjpb3qs+Ejeyy067Bg7stpWjFe3wGX4nnHkOzKornBWVD4XVr
	69MpfkmIPvEfLgi/WrzvwMITvklp12uCNBu+SKUNgqFqWu6J4zL+FV0B8BRwMeiXeiUbDaCJnLwcK
	XtBgoTGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSC6-00049S-P5; Wed, 20 Nov 2019 15:47:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSBG-0003Pu-Pu
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:46:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id l4so13991378plt.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=XsaIBKQXmIKdbRdQ/GaM37eqJC/1U/v/pIK3m7cBLow=;
 b=FVXrQCwGGlFa8AiYBJLxFUB/FwOeAS6Iyd+JEgzbLkClNVuIjQ3OetLej32TbAu2aP
 MxQu2vBBglMV9Uwx934dgYhz8BoF8vm7yZS+vOEqXl6QmiezSAJWHw/Bn+mVFlDZNMFW
 cqg6O8KhRBst6sZ/DfDMK00auNWQr7GsgDHm0vX31D9JbEOEfS/lBRFkuMOcX4c8OYCe
 aOUT9+CS9AAmyM/s7C5zAQeA7vzsaEMYa1Qgm+qiXY4n7u4nhIH9OZ+4sg57WP5KyBRY
 UzGjLg202ZnsAGtWqHFCMXq9SFn01hDQwfWWWnxkeMbpqWmsB9rttG9ol1F5VQMMoMXS
 O6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=XsaIBKQXmIKdbRdQ/GaM37eqJC/1U/v/pIK3m7cBLow=;
 b=KzRGWDGKp0Cjx4JAu+uKv2x+0YWy0i7e/nxUvn+VpTiHEkKrnK52P/5darqBbhw3NK
 rfhMLJGJBGH76iFHXnWV4HKZSsUBx1PJIJvI5zYlUNbtfQtt8LI5T8Us1IdtrPaNkf38
 f0fQd8OWvWSlKKBz+ozH+UUnnRORbnSJH8Tmr37LFcXq63xA0Pb7HY+UbsAEjObOFADR
 DJzwxaLKWujUZTp7iI+E5WgMfSWxM4/kzXSwQZImKvllR7eX06KEWqaKgOux80F5KOHC
 rRTWapTtX6uVEjA5MSvKv3qRCT3mfbzrxiLWd1lq8s0Byw/FSU8Mq6jeDqg6DUdoLF6P
 yciA==
X-Gm-Message-State: APjAAAWjlEo2T+J0PTXq2uYH0MXo61XI2Zxk5e5+eDAmYaoZ8VLW7L2f
 emfndVkuP3NFB4KWMNSUkxmaBQ==
X-Google-Smtp-Source: APXvYqwSje57oE5y3bBVJjGXG2B2M4xxUYYkxaLEakRWmjFy/GHedrja+GYKVJcVdFnwtR7GHryhvg==
X-Received: by 2002:a17:90b:3108:: with SMTP id
 gc8mr4878371pjb.54.1574264769037; 
 Wed, 20 Nov 2019 07:46:09 -0800 (PST)
Received: from localhost ([14.96.110.98])
 by smtp.gmail.com with ESMTPSA id o16sm7414811pjp.23.2019.11.20.07.46.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 20 Nov 2019 07:46:08 -0800 (PST)
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
Subject: [PATCH v2 11/11] thermal: zx2967: Appease the kernel-doc deity
Date: Wed, 20 Nov 2019 21:15:20 +0530
Message-Id: <1b4f6fb91e2e713ad5135f0d40dcded65dee9d0e.1574242756.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1574242756.git.amit.kucheria@linaro.org>
References: <cover.1574242756.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1574242756.git.amit.kucheria@linaro.org>
References: <cover.1574242756.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_074610_887329_5F751F6D 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up the following warning when compiled with make W=1:

linux.git/drivers/thermal/zx2967_thermal.c:57: warning: Function
parameter or member 'dev' not described in 'zx2967_thermal_priv'

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/thermal/zx2967_thermal.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/thermal/zx2967_thermal.c b/drivers/thermal/zx2967_thermal.c
index 7c8a82c8e1e9..8e3a2d3c2f9a 100644
--- a/drivers/thermal/zx2967_thermal.c
+++ b/drivers/thermal/zx2967_thermal.c
@@ -45,6 +45,7 @@
  * @clk_topcrm: topcrm clk structure
  * @clk_apb: apb clk structure
  * @regs: pointer to base address of the thermal sensor
+ * @dev: struct device pointer
  */
 
 struct zx2967_thermal_priv {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
