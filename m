Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7E61142D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xZ3M8wMHNnDyNz+szd/OPxEOvvFqWmuLxWc/g4zPEF4=; b=NyDtWIetVcPtwhwEbmcuJ7s03u
	7jJBPvQM7dSbZ3xgIKpmbyt8YJCFq4P/5h8O7U07M2tuLPNzzX0XWNqo4EsGK0I/pbRoKUJDBLVQ3
	Z4XjEbP1e88Ra11GmNhCgSK8DwHcnA7nfefWRKhbxm+bbmk3YVkbkaM2Bek2s241Flpjna963a2gk
	z67Z625NS81AK4uPaz+wRu8cMB2ep3m660+UWDE7C1/Dekja4oxLTNuN+KhUK2vlB6B8+MBvvYVmB
	BERhiTs6B3dOe/gqkWhIEel07Qa3Bt/rSTXbrpReyEX24MdkfXVnblDvF9Cn4KnrIuIxc28tUgCdY
	JFcUdtkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsHF-0000PN-9m; Thu, 05 Dec 2019 14:38:45 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsGb-0008Re-Fs
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:38:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id m6so3890474ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yV3GhPFmJytkxtEGQExTIppqC25xkrzPKeo9NSW2jNs=;
 b=rEnJa1egaaC2TNAcUXrNmliNqPwcGsDByFWAWwyIoE8s7yMfeadjXObeaSnewLqqTR
 6K8eNGbAQYDEIdX7O7ksSwrSkmijvlbJpdvWlEDdQzcS4sUppx7yRjcuBRm3Fn34ogiQ
 fiEzd81IK2TeJEHvNgiDrHrOD2Shx4icapMGWypOZMBRO8nWrGie1Q4hcuKb3324rS/P
 sbEn93MkptyWC+hqRKGk75Rh+Nv2qXIiyo+j4fJtEV/x1qkYub2GL6KWK4OOQoDqx4mz
 fjDzulI7WD0qKMZgjuCxwTNev8gs/GQIk4m/SxDB7DGq/ufNtwBTgp/GzIL7hq6wg/lj
 r3mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yV3GhPFmJytkxtEGQExTIppqC25xkrzPKeo9NSW2jNs=;
 b=lEytNquhohagP6wR65ac+4n7qEWYMFP28NMpl0qsws5z+7Gydwd1OGdzSDJgQg0Z8s
 MW2hYXjfUE6QqHsNS8OJm858IkgZB+N+Npd8RUB690Xn6vtcdN5c9WTkEKVlJPcJt3FM
 b0ffs8fYhDDDUYVtRItAmhaJpW5wW1zU5djkcnOpiXZWSSZPui2lybXDHKVVe9tE6Iin
 i/YHCtZjQPQ1sW17CJpcht7xqxMkrlnclAIlcbgotedHPhuGXZkRfZZfdmQkjrrSIWfH
 6OznMoiMbH/bRIk/VvV2nkIZI95GuVoYVBcqgAh+7nW2hWDhbJQ62SYRNpyHYLsT5eYv
 UY2g==
X-Gm-Message-State: APjAAAVuol3EpDqgOj8AE+ZgUFDvOTIw/jlsvU1if8ZNbUkY6WM8gr7X
 YSyFZlpE3MuQNXbmJyyXNdsyJQ==
X-Google-Smtp-Source: APXvYqxpjsbqgz0brAMyxbLOAnsZnvOdw6fvFP4gA9g80ZYWL7pNAQmuXVdBtC8GlmBSytntjAah8w==
X-Received: by 2002:a2e:b4cb:: with SMTP id r11mr2586523ljm.68.1575556683734; 
 Thu, 05 Dec 2019 06:38:03 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q10sm5091294ljj.60.2019.12.05.06.38.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 06:38:02 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org
Subject: [PATCH 2/2] dmaengine: pl330: Convert to the *_late and *_early
 system sleep callbacks
Date: Thu,  5 Dec 2019 15:37:46 +0100
Message-Id: <20191205143746.24873-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191205143746.24873-1-ulf.hansson@linaro.org>
References: <20191205143746.24873-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_063805_527982_8322204E 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

It has turned out that it's in general a good idea for dmaengines to allow
DMA requests during the entire dpm_suspend() phase. Therefore, convert the
pl330 driver into using SET_LATE_SYSTEM_SLEEP_PM_OPS.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/dma/pl330.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 8e01da157518..88b884cbb7c1 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -2981,7 +2981,9 @@ static int __maybe_unused pl330_resume(struct device *dev)
 	return ret;
 }
 
-static SIMPLE_DEV_PM_OPS(pl330_pm, pl330_suspend, pl330_resume);
+static const struct dev_pm_ops pl330_pm = {
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(pl330_suspend, pl330_resume)
+};
 
 static int
 pl330_probe(struct amba_device *adev, const struct amba_id *id)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
