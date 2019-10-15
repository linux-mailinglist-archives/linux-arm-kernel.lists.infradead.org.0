Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFF6D7B96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmFQsTHXFLHJiD5EkFMWAEiCyHPbp5XyXRq7aj4NNQQ=; b=Y4dpTglF/s43ib
	Dbato4xoxMZ5HvHOu+d+RPeib88QVblVuIDEvU1CR7b05pPlnIcb3E/AWeyGZ0TEHXlqZcg7NFIIP
	Wbe8lGXsIyHGX9u+8AidU8cBnhMv02/G/3NqMDJq8W+aoGFPGnpzMXkrFdtkyf/44dSlCFOY3QnfJ
	v5Q6pse99fVn1p1SAMfAmgNoOpFsMBZwfr6zZbebIVPhAZzjdfRP81lrdHFLEmb04m2zZtZ8846UB
	SFC+DwitecpxEkFvnMRUvxxcBJGFXP27IRl2if2FuWMeWtjt/D+443skLCDOKyTMj/9pG/4JuOOeF
	vyeW0gpubOuygBzhEkIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPin-0008T2-3H; Tue, 15 Oct 2019 16:30:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPhs-0006aF-KI
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:29:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so24680277wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 09:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JvkdWrZIuVB4wEQZQVs5mAArtaBmF1bFpmfJLPYELHc=;
 b=c9iAWGuv1XKyHTA7scMFN2stJQ00qiFgIav/YIaYpT/gsyQUB45XlCLD/GVMFPFjaL
 1N636dgDqAWWFtQQuyx3UguhBhZ8LpG1khVGnZwJA4tc1R0lf37t+ajkrIdT4ugOzpaR
 VyfWCEdLwm/s0C2YSocndvVNe4El3u/AnW8iUSzz91jeVT8NhZe83063/1WNAo6jr6Jc
 uJl2ZYGBJq1DRyxkyijvc9qyGCs9XGzOx44DqruBqaN4ZO1yLf8ZR7925pneGyqAw+vm
 lRmjy7vWfxVGSSxnaKDcL9vznyjC2U0NqHVxx4jIKnw4w5+llBb3/V4s3CU0r68rNQou
 mcZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JvkdWrZIuVB4wEQZQVs5mAArtaBmF1bFpmfJLPYELHc=;
 b=uP2nIwfk0L0W6ZLe8CSXJfe7DB+IyVNtqLUMJxXp0RsFD9STjUr2wO5zUcEow2caaP
 72yQFqadnE9O6y8/j8gFaTJ2WNI/z9V4EvBwxoXTbYw2NXtPQf0WYEC/MgogDHd6H+Va
 kdHhJIqV0ZAErqHLDwBUn5+8X0mDK2LkC3iMo44uwgMwRcXIqQgufyJzlff0kNl2TCMK
 awXvvL1hY4TJPrafixUSu/riTtvz0jwWr1X4WcA9oP92YXa69FLOivdQpmDmmHQ52XXQ
 muZEKDfxtSd08qUKUrDidQiKnVsum21cTQa975DYKXvdjJWgdMkLmiesun1vkn16JVje
 JTlg==
X-Gm-Message-State: APjAAAWbK2vgam7Kiqj6roU0jDTpMzJtvhtcCvIOqtN/hu5tHJtZiHnZ
 Vl4zZmm7dT/7Xo0+Go3QzaA=
X-Google-Smtp-Source: APXvYqxoxfeOmJ+UjotH/Ka0LqpXHcSy2mQ+oNsgtxdm/eawKd9g2S88Wjj+MkFv0YlMhAQ9t9zt4A==
X-Received: by 2002:adf:dcc6:: with SMTP id x6mr31056334wrm.81.1571156994875; 
 Tue, 15 Oct 2019 09:29:54 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id s9sm24373148wme.36.2019.10.15.09.29.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 09:29:53 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: [RFC 3/3] iommu: arm-smmu: Get reference to memory controller
Date: Tue, 15 Oct 2019 18:29:45 +0200
Message-Id: <20191015162945.1203736-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015162945.1203736-1-thierry.reding@gmail.com>
References: <20191015162945.1203736-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_092956_810843_E723C530 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: Will Deacon <will@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 iommu@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Use the memory controller framework to obtain a reference to the memory
controller to which the SMMU will make memory requests. This allows the
two drivers to properly order their probes so that the memory controller
can be programmed first.

An example where this is required is Tegra186 where the stream IDs need
to be associated with memory clients before memory requests are emitted
with the correct stream ID.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/arm-smmu.c | 12 ++++++++++++
 drivers/iommu/arm-smmu.h |  2 ++
 2 files changed, 14 insertions(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index b18aac4c105e..8dd214244926 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -2015,6 +2015,18 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	}
 	smmu->dev = dev;
 
+	smmu->mc = memory_controller_get(dev, NULL);
+	if (IS_ERR(smmu->mc)) {
+		err = PTR_ERR(smmu->mc);
+
+		if (err != -ENODEV) {
+			dev_err(dev, "failed to get memory controller: %d\n", err);
+			return err;
+		}
+
+		smmu->mc = NULL;
+	}
+
 	if (dev->of_node)
 		err = arm_smmu_device_dt_probe(pdev, smmu);
 	else
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index b19b6cae9b5e..40b6d42eb3ab 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -17,6 +17,7 @@
 #include <linux/io-64-nonatomic-hi-lo.h>
 #include <linux/io-pgtable.h>
 #include <linux/iommu.h>
+#include <linux/memory-controller.h>
 #include <linux/mutex.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
@@ -224,6 +225,7 @@ enum arm_smmu_implementation {
 
 struct arm_smmu_device {
 	struct device			*dev;
+	struct memory_controller	*mc;
 
 	void __iomem			*base;
 	unsigned int			numpage;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
