Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5CA15C885
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sR3DuErcuNoiJxmXblwGuujSTLssBmWcjSuT+yjyr10=; b=SkCS7y2sWrZJtB
	vZ0hp54cPYgE1txYHkVPalRvJ0zpjLbxfoQIRYmDI3JhGl338cfAVVW1weRitVYoRJKxQElU/ROMn
	BQQBiGjw/Q4Fgd7SA2CewI6a9vlG9sBrqfQJr+ftXzZiiH25KGjEBZMwJ7fJ94fmpO/xv6m28PTL8
	DI6awbuXQM/bFqOQFvPS9vch80e+N4h2sd1NnvANEoTQGg4vDbPrON11X7QlqR2aWYp3tURK1XVh3
	myUHS4zH+megpxTiXQ8GOjD8G3z3L/6VS+TUG+7a9Nr69hVIu7Gb2rdbPKpNIskl3KvsKqkpFvLvg
	D/A2nRaBWn72IDgUWJYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HYc-0001tR-21; Thu, 13 Feb 2020 16:41:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HXH-0000XQ-4b
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:40:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so6997541wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ljIvDHLN6tog1gjQ51iNc2XMRU3cMi+uSkVVHu8cuT4=;
 b=OMkAGME7j7rQnbLnlKwKqvhjvo5FGigM7wlHU4CrcLnpiLC86ihdKcBsofYTSxPYRa
 KGW5vVaAF/GZ3G/ddvB9xGhznGLkrPRgmy1cagbrgJD4JfTiVEpTAZrru5VrHjeeaPWI
 kE4FOcM/lEx5lU7e3eD+mqvL3xOyFU1BQORJ26Q6jaH6IbjDtsO9XLK8oUVw478zdqa/
 peqvVcAUWFVhRbH9/zAv/g/e40YHVFdd6Zm8zBdbxlsYd8GAFHF+Va2g313xWjGqd/gX
 Ax+Hi+JHQVG0hbR23B73PHZWmAtYDIDUPCFX5cW8ktC2+XWiC1JDzhN4Ka03y8Fsh5cM
 /C+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ljIvDHLN6tog1gjQ51iNc2XMRU3cMi+uSkVVHu8cuT4=;
 b=HIBjYCGSPi3t48OUwqPStI9EDKMTX8cZkqtYqS1VkKhbd4bH8fQdU6uroLgDrHS1Fl
 tHK65G5m9+jktgI/r2suyzRSyzsbjBuXGxQGDTBRC9QGYGKjH87Zb570T8zFnxYRXrta
 DQmxHrlF5fo8i1YgiRCkS+x/qm3nmqyBHQ2vUfh9ui3PU8ZXsCvM4zHQPmNzUyYQt5SL
 P/Y8AiA+7+HwkJV4SiILJb1WO5tYdin3Z88YyZyDzbDlRfdlnIYHemySWKcVGQzKQonQ
 gP8l2NETA2+GgCOn8bWK7vry3d5d87i3CYV+6qqrfa19FQF5+ZT8e70U4ZZshBbnpzfV
 fIvQ==
X-Gm-Message-State: APjAAAVLfnGud/Z/kPPuVq84Nt69j+Shnplzu0psB3OMYWH1nOe6XodE
 dnzJyjd8pfigTH9db8Y0VKl/kosp
X-Google-Smtp-Source: APXvYqw7sINzUbnoD5ydFKpKcLaCTZ30fHyF6HFAksiO/pDQK8NvJDQvWRxVCSqMtK3CJfsOF10GSg==
X-Received: by 2002:a1c:5445:: with SMTP id p5mr6643132wmi.75.1581612017438;
 Thu, 13 Feb 2020 08:40:17 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id y7sm3352850wrr.56.2020.02.13.08.40.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:40:16 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 5/5] iommu: arm-smmu: Get reference to memory controller
Date: Thu, 13 Feb 2020 17:39:59 +0100
Message-Id: <20200213163959.819733-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213163959.819733-1-thierry.reding@gmail.com>
References: <20200213163959.819733-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_084019_238785_9BB49F8E 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, iommu@lists.linux-foundation.org,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
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
 drivers/iommu/arm-smmu.c | 11 +++++++++++
 drivers/iommu/arm-smmu.h |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 16c4b87af42b..862ea55018e8 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -2109,6 +2109,17 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	}
 	smmu->dev = dev;
 
+	smmu->mc = devm_memory_controller_get_optional(dev, NULL);
+	if (IS_ERR(smmu->mc)) {
+		err = PTR_ERR(smmu->mc);
+
+		if (err != -EPROBE_DEFER)
+			dev_err(dev, "failed to get memory controller: %d\n",
+				err);
+
+		return err;
+	}
+
 	if (dev->of_node)
 		err = arm_smmu_device_dt_probe(pdev, smmu);
 	else
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 8d1cd54d82a6..d38bcd3ce447 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -18,6 +18,7 @@
 #include <linux/io-64-nonatomic-hi-lo.h>
 #include <linux/io-pgtable.h>
 #include <linux/iommu.h>
+#include <linux/memory-controller.h>
 #include <linux/mutex.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
@@ -253,6 +254,7 @@ enum arm_smmu_implementation {
 
 struct arm_smmu_device {
 	struct device			*dev;
+	struct memory_controller	*mc;
 
 	void __iomem			*base;
 	unsigned int			numpage;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
