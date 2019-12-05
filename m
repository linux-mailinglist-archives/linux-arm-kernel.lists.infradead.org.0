Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22581142D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PTwd92XzslpyxqJWNq2TBXjcoJt9E7hp8/Kp5RxF9ZQ=; b=fmUsljJ3mXasx6J5jdb1rAXk1u
	93q0AhvHVfIinxJSBknud/r1w6Dfs8uI6VGV3AIuIeeCQUN7xqkx59CB8i7OB9Fx0QyWvPazl7RL3
	W+lGpLijrxCmKF0D7EQoBRectBX3DHGWLElDD2IzP0TZJHiK0KuKNzZD1bvp6hVmFYZ+1it+7lsAB
	6QKZk+e9wyribTI8+SRCQqTtZY6OmMsD2DXbY4UI/DNOA7X56CNWL1AF1HRZtOkfRAnNOUQjRzLkR
	JrEIGuGLtoJhc87bD3/hURcnsPUjTvZqEs7hm5nprBv7+AZFaTB7W9Z0HqPW/EP2y5cKYK51CO7VC
	cjfbVBkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsGy-00008f-7a; Thu, 05 Dec 2019 14:38:28 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsGZ-0008Qj-T8
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:38:05 +0000
Received: by mail-lj1-x242.google.com with SMTP id s22so3843371ljs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LSrF1PZUXbppNkp6LXsmHrupmqPqLYDRsBF1XZV1SZg=;
 b=sxN67uP4loA2uHVs+iOAju81idbHAz9JP72QF6fKvTGIBFrU1Ua8i01zaU68+uf3r/
 urNNV+Iz+exbXJ5FVf9/xL0wwVLxJjGMy26aTWthtKyBHeJBU5QpIlUOCXNIsTUcs+RI
 jiB7cRjBt+fPB+dm138tcJkjdDnnJQTJjor5aPFh5cLcVvaKvYoGabS5xUxT+xqe+XTR
 CiEWOrrv5UtBchNW0igsiGTTUPyx54CeEfWEr0YP0OE4UKZUp8E4o3mG9k61O8F4hSOG
 z2rSjx62rxmpyyqczRq84KZH7KyFgTOoApJxXSdZnwHiaqZKTxbYqLxQHf+MS3yi9UWl
 126g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LSrF1PZUXbppNkp6LXsmHrupmqPqLYDRsBF1XZV1SZg=;
 b=bVq2fBC5uOXKQcfdf04ZGFPemPz9OEhbz/F6tEC/uQRvdkyRziQgkyA90w2uGrZWde
 hMGpJX6We8pXq94sQgi42qt+VqaROI88MJm78Txx/zBiqfQLbEgJZFM30gKekAb1rkFa
 jMxEa8n0+dMbNDb9x/DlxteqCrxJJVBt2c7wUvV8L0wFa8rM+FCY05Cnqw1iXE5KnP3Q
 aXsF4yB1sHuN8Y6/n/rQWhFG+/USgK5fpdVB9h2B8zC0PnFiRjp+QT4PosIn/f/dW69H
 /RE6PFkXQHMiAWSt1LqPdwUR9Zcbv38GH+QWM5DnckLicagchxgImHfe1XQmtKB5+IER
 1RJQ==
X-Gm-Message-State: APjAAAXQzGnWFN5Ai8qqNKeDo92lcuXb4VZYvd6OJn5HQF6+Eax3NAzW
 4ip2KvcFzI4qGx8wARqvcL6KZA==
X-Google-Smtp-Source: APXvYqwS24lod+spv8JCEF1FwqJCKBEO1ZzNkv2x+NXiSPtPs2deTNm4TBwRmXyfhjEheQuZ3E/lQg==
X-Received: by 2002:a05:651c:112d:: with SMTP id
 e13mr4993155ljo.99.1575556682219; 
 Thu, 05 Dec 2019 06:38:02 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q10sm5091294ljj.60.2019.12.05.06.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 06:38:01 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org
Subject: [PATCH 1/2] dmaengine: pl330: Drop boilerplate code for suspend/resume
Date: Thu,  5 Dec 2019 15:37:45 +0100
Message-Id: <20191205143746.24873-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191205143746.24873-1-ulf.hansson@linaro.org>
References: <20191205143746.24873-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_063803_936686_D690ED0F 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let's drop the boilerplate code in the system suspend/resume callbacks and
convert to use pm_runtime_force_suspend|resume(). This change also has a
nice side effect, as pm_runtime_force_resume() may decide to leave the
device in low power state, when that is feasible, thus avoiding to waste
both time and energy during system resume.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/dma/pl330.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 6cce9ef61b29..8e01da157518 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -2961,12 +2961,7 @@ static int __maybe_unused pl330_suspend(struct device *dev)
 {
 	struct amba_device *pcdev = to_amba_device(dev);
 
-	pm_runtime_disable(dev);
-
-	if (!pm_runtime_status_suspended(dev)) {
-		/* amba did not disable the clock */
-		amba_pclk_disable(pcdev);
-	}
+	pm_runtime_force_suspend(dev);
 	amba_pclk_unprepare(pcdev);
 
 	return 0;
@@ -2981,10 +2976,7 @@ static int __maybe_unused pl330_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	if (!pm_runtime_status_suspended(dev))
-		ret = amba_pclk_enable(pcdev);
-
-	pm_runtime_enable(dev);
+	pm_runtime_force_resume(dev);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
