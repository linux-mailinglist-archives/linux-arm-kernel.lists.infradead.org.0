Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B9416AF25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGgeQDu2A6Eoj/TdDfBZDvLu1d1g2feegcqzk6OnzeU=; b=ZQ/rXTHIkztXU9
	t+hGkCrON2K4+Wr36psdix4chtznN77pnH09EJeZxd0jqPaiGz0xPdSct8zG+DD6wdUcbk6sfRpda
	EcjCqDtK/t+Q3SSkYmVB/gscK7RIDHBaHjoMsKyl04DMGe5t6PH2yCc+NMj6gwTkVhaebzrZQQfNX
	Q7oyjEW+Q8ERJPZqL1TAUrVbghVQuHq/9zon/5zrBkE25BpVyHUX+/fdLzGUp8Ze37EPZIq0w6cgv
	uLUrNAdOP2Roi1RxOFdmhwNXzDVUvDedsMcXnSVoZ72FNeXINvnkijVvYgHWjhWZ0lvTNSAzIs/f2
	9I2/tzu/FkUeWhPobQXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IV1-0004Oq-3p; Mon, 24 Feb 2020 18:30:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPW-0005oR-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id m3so161688wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aCHZ2/al18nS+2E0e9l6kgT+YcKjbmb+qVD5r1+/lK8=;
 b=Y+gSmo8lII58Es18d6cmWnjASSfFsl2x7rSop+H1cCniaeVd/mWWI5iBoB1UpuvK70
 WiCmaMu86SH+ozlrxPN0f3fd2cO/JAUaxBiQjRgMuCf7Ml/BcTQQ6QqzwqYLHtbBX4fL
 yyzI0XOaj4GoxBnIawd6Mc5b5sYLmz1hB0hfrlqesUOIHsyuwl6fwe4xrznynuKvPrPm
 urpHxochnQaDTmvE0T8BMvFjyPHBUT4MCdL4NYgnT6YOTbS0T2aSE78xPtZcUQVCujJe
 0MHikP4CvKbRZoTP4zT5mS23Ld+5V1Do2KyHkPn75kcCDLo4LZ5lZQdlY5r/Bb2YxQdE
 7Mqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aCHZ2/al18nS+2E0e9l6kgT+YcKjbmb+qVD5r1+/lK8=;
 b=TcL+jeuqwHlw5zNXE8iepuWl9DKCGQ7ezmWWVkC3fC8rKy8uEIWXrj3KjtejlVG0HN
 BPLusxmIRkAau9abcELqaxz1zogHOMfaOMmCm/Pc9qpg3xjiE9ar72phJmy74A1WQQqC
 BwhUlMhFjZUPbNToB0U9VkM4kRWyZRA6n8Wq4yXPjU21WbZL5LDjnSjtimg1rf/hu1Tb
 cRKYbhIhAgUnrJYO8IKsOvNoQNXtD/sTGGCCZddH4W5hOdo/BI/imTxM7V5Rx6AwRRKB
 CaAmEsAn5UmVuZ1BJW7FdXz9AAA/gedpt7tgUnxoLeSP2bTLa/dRg65UnG+XbRiQWJOP
 cmMQ==
X-Gm-Message-State: APjAAAU0VXUDH1v7gkI5tipGGRIJnzZyQdystfXLQLO5PebWGYXJpQRF
 Gk1NQ4TqADOZ/qq95poE9aScrA==
X-Google-Smtp-Source: APXvYqytXg1jldnNeE/KhXMpeqS2ECo/t3rCI0BZEyvldnBIFN5uQN85/iXzJ1Ss+SSBo62MlVDbIA==
X-Received: by 2002:a05:600c:2215:: with SMTP id
 z21mr312611wml.55.1582568692416; 
 Mon, 24 Feb 2020 10:24:52 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:52 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 21/26] iommu/arm-smmu-v3: Ratelimit event dump
Date: Mon, 24 Feb 2020 19:23:56 +0100
Message-Id: <20200224182401.353359-22-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102454_629053_8BBB958B 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 robh+dt@kernel.org, yi.l.liu@intel.com, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a device or driver misbehaves, it is possible to receive events
much faster than we can print them out. Ratelimit the printing of
events.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
During the SVA tests when the device driver didn't properly stop DMA
before unbinding, the event queue thread would almost lock-up the server
with a flood of event 0xa. This patch helped recover from the error.
---
 drivers/iommu/arm-smmu-v3.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 28f8583cd47b..6a5987cce03f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2243,17 +2243,20 @@ static irqreturn_t arm_smmu_evtq_thread(int irq, void *dev)
 	struct arm_smmu_device *smmu = dev;
 	struct arm_smmu_queue *q = &smmu->evtq.q;
 	struct arm_smmu_ll_queue *llq = &q->llq;
+	static DEFINE_RATELIMIT_STATE(rs, DEFAULT_RATELIMIT_INTERVAL,
+				      DEFAULT_RATELIMIT_BURST);
 	u64 evt[EVTQ_ENT_DWORDS];
 
 	do {
 		while (!queue_remove_raw(q, evt)) {
 			u8 id = FIELD_GET(EVTQ_0_ID, evt[0]);
 
-			dev_info(smmu->dev, "event 0x%02x received:\n", id);
-			for (i = 0; i < ARRAY_SIZE(evt); ++i)
-				dev_info(smmu->dev, "\t0x%016llx\n",
-					 (unsigned long long)evt[i]);
-
+			if (__ratelimit(&rs)) {
+				dev_info(smmu->dev, "event 0x%02x received:\n", id);
+				for (i = 0; i < ARRAY_SIZE(evt); ++i)
+					dev_info(smmu->dev, "\t0x%016llx\n",
+						 (unsigned long long)evt[i]);
+			}
 		}
 
 		/*
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
