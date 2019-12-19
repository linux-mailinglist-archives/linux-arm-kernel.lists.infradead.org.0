Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9878125C43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 08:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VI8ZxnXygkmIfoMoF74hf68J97E0AVbeG0DoTsoKEG4=; b=GES1HyENaMspyE
	4WKMkxaH9s3apdx7X8qMw19L/i1K3s131TK9BBh+FRoBuLXaBR5ZGxwbbJFGdUGgQz1brBlnVpbAE
	F4PrB6iw/adc1W2m+7M1wjidkA4VpCMEaT/ubXWdWSElQlB5zy38egZ0Fp9d45/nH3Y/oZwlDTkny
	Xl/bz8l4vMCOrvQnOF7B5GZLGfSOryp2I2WRDvTwDQGQ1cE0XBlraolzha2mI8qpN+iKzqjdS9Yw3
	Mq/DwMUgHXh2Xy6/KGUnoBedLTg3ejg3/xYsC/RcOBZWFs0VmqkBt2q7kyrVUp6iXzEejKBPHMMFg
	P3m7AzyvTMfq/bm2ydLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihqYH-0006Q9-08; Thu, 19 Dec 2019 07:48:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihqY6-0006M5-DI
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 07:48:43 +0000
Received: by mail-pl1-x641.google.com with SMTP id z3so2170236plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 23:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hTBaTcwtZhnl+1WkSjy+81B8m71lqLhfOOtaR07ioF4=;
 b=mmRldR65wsCwcUz+D5TDJCVDB3Zu/CH++jZeFoIYNHub11F6SsqtqgyIA833Zfw12o
 dRP73VgdDhN65zuf1j7Pw2MQqzP2wZ0PBkC18lFuGpUlWvLxd8MpYUKGgSaKVucH/rvS
 4I/hDdTs4wrOG16MXCcxxHTQM9rY8uoR1GikHk8osZrHiAv87+hWyhWzpAlblc0lwACN
 c0fFob9gu3Ww+cHNYBFmwSrrhsc1no2fyiU/bWmju7USIpI7hHR9YGa/dEIcObbOsC1d
 NLzdUR1HxYRW7tF9jc0PXRCLnDiI3occbF02kqtzLCtXIxPl0Adl/K63hYg/pbEeL0Hc
 x/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hTBaTcwtZhnl+1WkSjy+81B8m71lqLhfOOtaR07ioF4=;
 b=LRgXhrgayZoos2cDA2/1XGbbcyNwNDVlPI3jq2trZrm0bVFS355Rgp2ugGylDThbvP
 Qyx/GCQlXNU6AlWnFizvZjQHiFcn7P++Nzljlq/pB768JnSWm2hiyLs0lFBn39agWvCn
 0ekamNHK8dvWvkuSPz5pEI3I2aprS0Y8vFzpXp1pEDKTcRIpZOaWd8YO0ECHcPUhMBXg
 nfZ8bB2GEpWXAqvlAz7X8vtWsHnbg+IGO1TkfnTFvy15DiUrUkcSNqDcWEYCUioMPS9i
 LscuNw1Pq/hpiJ1ZU++WtIz14OQqfziEDeN73p11Yz/Zo86p9OohmDEKTH48M8wtaEdS
 tmSw==
X-Gm-Message-State: APjAAAWjGzuoMuWM/i2RETeqxV8RJ7hs9iqDOJ614crRO7wLE7gVNIjM
 uWYGy4yqk0kDg2d5gQkEJ7QBp45I
X-Google-Smtp-Source: APXvYqxlwqlRSa81G37VFitvZnHoRsAlv+Q1y8BTY/ZxpMKTj73l4WKLRWW6Uj1BStb9PikmK4/czw==
X-Received: by 2002:a17:902:ac8b:: with SMTP id
 h11mr7742793plr.87.1576741721330; 
 Wed, 18 Dec 2019 23:48:41 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id k4sm6423315pfk.11.2019.12.18.23.48.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 23:48:40 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2 RFT] media: exynos4-is: add missed clk_disable_unprepare in
 remove
Date: Thu, 19 Dec 2019 15:48:24 +0800
Message-Id: <20191219074824.15047-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_234842_444965_027F281D 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver forgets to disable and unprepare clock when remove.
Add a call to clk_disable_unprepare() to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Add a check of pm_runtime_enable() to match enable in probe.
  - Add RFT tag.

 drivers/media/platform/exynos4-is/fimc-lite.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/exynos4-is/fimc-lite.c b/drivers/media/platform/exynos4-is/fimc-lite.c
index e87c6a09205b..17de14fbba31 100644
--- a/drivers/media/platform/exynos4-is/fimc-lite.c
+++ b/drivers/media/platform/exynos4-is/fimc-lite.c
@@ -1614,6 +1614,9 @@ static int fimc_lite_remove(struct platform_device *pdev)
 	struct fimc_lite *fimc = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
 
+	if (!pm_runtime_enabled(dev))
+		clk_disable_unprepare(fimc->clock);
+
 	pm_runtime_disable(dev);
 	pm_runtime_set_suspended(dev);
 	fimc_lite_unregister_capture_subdev(fimc);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
