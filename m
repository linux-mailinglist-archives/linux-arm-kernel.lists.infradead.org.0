Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB706CEE0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 22:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWmdxYi63zE89mfgRU6DlfLF+G49As7pXQYkxRRG0ZU=; b=hjxGOs/rXCluZX
	8c3wxiGdJHDaf/S3wLBGAf/Vrt84n1nKmnIGvEJdXuJMGciNQBDixfsWLhPUjUUKCqm+9KXAwCAM4
	N9DDM+92K9474FbZ0dVLyiS95oFzI3Tgg6JHLLt37C5uvs00RAQ3k4I0eyso/Ta9Ikch4vmWaHmI6
	w/Ku/nPfWkuS4evtqqTF4eYXdP6sis+7FKQUo09bBtG6Rqqq/DaYecfvcXMOURgts8VaLTjjNvOYL
	8JynuBrZf8wjgwC5Yd9mBEmbC7WJ4c3ndjVk3rJgqZU1CuBqaLsC5/ifXtBW1nDiMyZOeGK8HFlSX
	NgBW01ZaiN8DbrhPtk6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZyf-0005SR-UC; Mon, 07 Oct 2019 20:51:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZyX-0005Rt-Eo
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 20:51:27 +0000
Received: by mail-pg1-x541.google.com with SMTP id i32so1627219pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 13:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6g6bAI8I8EYsK43cwBiTTXy4oB3NYybaiwTag+iFJPA=;
 b=rC3YTB0+hOcmaDXUspN39GIY0nApX+Rt/+I0TvKqqeA1Xaq9WCzVeeUHweQW7m6Pav
 VjVX19Qmr1nFoSTKu7/G6DQWha2WEgEh9X5NhuHzHKkws8lYbSCkIoU+t0BqIK7KBmpH
 2+6UkWqL088G7ZOhAa5TGMmTTT0fyUdlaVFSiVJuBYLnKPYCcW0VfSzNdZa62BKIpJuB
 qIexWIG7LzL9jmw5euiECych+ZLh6dexPW2I/F09tthZ/k8q3QBZcPsD7+GUiXJsTfr7
 x+74QhULu49un+22fuw0md1lVwbPHpRnJDYtVwgQFbqrXiVVhfXWf3NeOyUNTCGDScua
 NkJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6g6bAI8I8EYsK43cwBiTTXy4oB3NYybaiwTag+iFJPA=;
 b=b4Any2/6EvBFFl9M5E7JI448/D3nBRLs4IvQG50xOXJ9utSbeDtcaaALwRbIYqv3cZ
 sOnRGCjLYn0q9Gd6G7d9FH+Jnf/NG8bDKqfqKu8UKbVIfztQm49A6Z18ZDJW2CKl1ZZy
 pqIjbJDcmn2bNjy9shrS7CsXPBfrTMskrWNXYXp8wQ/BfBmoV8zYy9q0MYmvFn39+OIa
 B3WLIaTyqqImlbl/NQkco7IqIYv451SFXjWhrWFhXdMLWxpXUf+XDNUvBleW7eZF1+tE
 HSV1W3GAevtBTPZWRvg9Zp3OZ1w+t0VSJ+rVTCahVvxDSI0NCzrAG4N9+GVp0bn+uNYv
 QjQQ==
X-Gm-Message-State: APjAAAWOkmlsevJ6dZQP1bx5FPVIFzMKEOEjeNIKNOEultSMy75e+int
 LfmSJ+Q2HcinXDFI9UhC0LbP1mvS
X-Google-Smtp-Source: APXvYqy3GawUaKDtynbkxOmrvUe78E4CqvoIysRE+NXAUd0BUstCS0iAwnenFUJnuEigjkBPuOqTiw==
X-Received: by 2002:a63:60e:: with SMTP id 14mr5830612pgg.179.1570481484414;
 Mon, 07 Oct 2019 13:51:24 -0700 (PDT)
Received: from localhost ([100.118.89.196])
 by smtp.gmail.com with ESMTPSA id e192sm17789132pfh.83.2019.10.07.13.51.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 13:51:23 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2] iommu/arm-smmu: fix "hang" when games exit
Date: Mon,  7 Oct 2019 13:49:06 -0700
Message-Id: <20191007204906.19571-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <418d8426-f299-1269-2b2e-f86677cf22c2@arm.com>
References: <418d8426-f299-1269-2b2e-f86677cf22c2@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_135125_502870_2E82C636 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Clark <robdclark@chromium.org>, Will Deacon <will@kernel.org>,
 freedreno@lists.freedesktop.org, Joerg Roedel <joro@8bytes.org>,
 open list <linux-kernel@vger.kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Clark <robdclark@chromium.org>

When games, browser, or anything using a lot of GPU buffers exits, there
can be many hundreds or thousands of buffers to unmap and free.  If the
GPU is otherwise suspended, this can cause arm-smmu to resume/suspend
for each buffer, resulting 5-10 seconds worth of reprogramming the
context bank (arm_smmu_write_context_bank()/arm_smmu_write_s2cr()/etc).
To the user it would appear that the system just locked up.

A simple solution is to use pm_runtime_put_autosuspend() instead, so we
don't immediately suspend the SMMU device.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
v1: original
v2: unconditionally use autosuspend, rather than deciding based on what
    consumer does

 drivers/iommu/arm-smmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 3f1d55fb43c4..b7b41f5001bc 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -289,7 +289,7 @@ static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
 static inline void arm_smmu_rpm_put(struct arm_smmu_device *smmu)
 {
 	if (pm_runtime_enabled(smmu->dev))
-		pm_runtime_put(smmu->dev);
+		pm_runtime_put_autosuspend(smmu->dev);
 }
 
 static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
@@ -1445,6 +1445,9 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 	/* Looks ok, so add the device to the domain */
 	ret = arm_smmu_domain_add_master(smmu_domain, fwspec);
 
+	pm_runtime_set_autosuspend_delay(smmu->dev, 20);
+	pm_runtime_use_autosuspend(smmu->dev);
+
 rpm_put:
 	arm_smmu_rpm_put(smmu);
 	return ret;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
