Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD27A27FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o65atp3EHhFJ24S4NwnibqG/+RKA6Jhrg6+dK8qPyos=; b=pZd8iO31ZlIjKWlq1tCGTd7WFf
	vEhRuhppTzyRZtEcl1a4onsiYKIHxvk0/4lOkZRb1Ztf6JD9ISD/HAPUMCA6M3wONA/Nzf0OLsIwb
	YaWNszXF5lCmrB3pUIR2T30RR/CryO2oUb2lmXqw2IO51va8YlB/NbvWRF7vJGGlzvSz1pQlHyrhm
	k3e3aSkicOKZr6sifc56hd9MY0clnVgZjEaLMtMjBZNebiJOdGpM9MB/GGEckk04hS4XVSRiOl2sf
	BeEIvxNPJsRVwWYrFQV+GWSydCS/bYYCuJesxETt+nWWOKiLBVRsiYivEC+4bB3ONBxEQI39ulnMl
	RXe2tY7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R3p-0005hA-2N; Thu, 29 Aug 2019 20:30:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2G-0003gn-Io
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id k3so2179393pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Kp6bWICVzcD1vRMYLxKwPKSzCM3AbPwuHgbbnTiMIUM=;
 b=oVF0y4nwLWJJEuvvOzTSKviTM0sbi+lXRLt6VxlUw+99TlF+OGKYlIe5SPmJlfw4UK
 dZ3zXkPZbJ/VeHkvtKDP7pcCfZTaYQKftGdMibVJ83MEIol4lqF1BpRaAXX+ouK4TRGz
 6Gg9Sul5o8k0kfg/Xe4d0xnZln+aQvsWXsYeDpsV+ZajEe8Wmvhzmisyhf1AITOgOQrz
 /Oo3ZAsVQAKPyDhiNTpglRT07LVHFfhOltup+1zFir81LCHJmpi/KRplSufldEuZEn0p
 Ygmw+7YUDAGXNpK3LWNsaiQWvfHaALCHuuzmcR4Vv1QD6trVryGmxkQ+ukSHOennQR8l
 XPZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Kp6bWICVzcD1vRMYLxKwPKSzCM3AbPwuHgbbnTiMIUM=;
 b=ohA28ZhlOdXf6COli/590YrLBbuvm1PSvMflHg+Ojf0aihjhoraJXDV/ElqlWs3PCW
 H7J2TIjeoNSvx4e38sdFNCDfuMVql4k8MD1KIx5c+Y0lKD5ua+ZGcfbYHM7In2g2L1Db
 o9ZpypXpOvjbKKhtocHY49OjPfCn4D7Avh79F8487c1esOqoz9wbcrYPHNxmW4fyHiD+
 m1i4mP3CnmcmAhKmrN4CCdQAWikbheGN+9VGppGkV+JY1ZTf1JSjOaD0RGWQR08augF9
 /eLORMihvHXqSZNfc7LG1RNFZJh4i2VK7YoPEOZsOkKPBK3Qc/zezMFs/ts72uqX79hu
 A6Fg==
X-Gm-Message-State: APjAAAUo7o2qXlI4OFEmWQ+WIVbVh0AP3YX7sVmgHlctAwHYwk0TU25r
 b4wCCKMWTkfDpFjJ/Ivf+Mj7f087uQ0=
X-Google-Smtp-Source: APXvYqyLIDIrWiwlmeOL7xbftwvKDLTvfL8Kl7uOXyBWKuQ2LiGHI5n3peVWp0D/kjYHVlLAbC3ttA==
X-Received: by 2002:a63:5048:: with SMTP id q8mr9808567pgl.446.1567110527555; 
 Thu, 29 Aug 2019 13:28:47 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:47 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/17] coresight: tmc-etr: Handle memory errors
Date: Thu, 29 Aug 2019 14:28:30 -0600
Message-Id: <20190829202842.580-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132848_632183_81C8E183 
X-CRM114-Status: GOOD (  12.24  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

We have so far ignored the memory errors, assuming that we have perfect
hardware and driver. Let us handle the memory errors reported by the
TMC ETR in status and truncate the buffer.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Removed ASCII smiley face from changelog]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 13 +++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h     |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 3116d1f28e66..2246c1e6744a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -928,6 +928,19 @@ static void tmc_sync_etr_buf(struct tmc_drvdata *drvdata)
 	rrp = tmc_read_rrp(drvdata);
 	rwp = tmc_read_rwp(drvdata);
 	status = readl_relaxed(drvdata->base + TMC_STS);
+
+	/*
+	 * If there were memory errors in the session, truncate the
+	 * buffer.
+	 */
+	if (WARN_ON_ONCE(status & TMC_STS_MEMERR)) {
+		dev_dbg(&drvdata->csdev->dev,
+			"tmc memory error detected, truncating buffer\n");
+		etr_buf->len = 0;
+		etr_buf->full = 0;
+		return;
+	}
+
 	etr_buf->full = status & TMC_STS_FULL;
 
 	WARN_ON(!etr_buf->ops || !etr_buf->ops->sync);
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 1ed50411cc3c..95d2e2747970 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -47,6 +47,7 @@
 #define TMC_STS_TMCREADY_BIT	2
 #define TMC_STS_FULL		BIT(0)
 #define TMC_STS_TRIGGERED	BIT(1)
+#define TMC_STS_MEMERR		BIT(5)
 /*
  * TMC_AXICTL - 0x110
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
