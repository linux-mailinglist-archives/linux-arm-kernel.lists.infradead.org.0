Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BEDEB8F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:33:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6TFmqvJSmxzlNtuaZ3kq1qdGxuCwdPtamE7RG4bA/jY=; b=cMQ5S+PLtA85Uu
	JJArL59nYTG/WDq11l7Zx2lJpjR29hJJVdiDvtDq+BWdariPzwUu6M1mZed2q3ZmYFc3wlKyozJp3
	ZfK4JWM5IFjJz6SHWkCnPtMj6ky2AOoak6k3Je7/OKQ4cYHl0uL3F4u3TLyTKl8GBV+n4E82yiuER
	NMqYFepDeC9ob/g6fhrmWMzAFhg2yzyqC+YxatZ3IWTZMwCVHkWCDuqt5sqDJxkZpGkDgSYajFT1Z
	FJZc2vNb9JwJ9ubMHfCEVqR2MgMdpeiYxB7P32j4EZjQ1ngx3JJojN7Dc7U96Xt09Gw+nf5F44k6A
	A2VHgGXtq1zabbFsn0wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQI4V-0003LE-R0; Thu, 31 Oct 2019 21:33:35 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQI4L-0003Kh-Qz
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:33:27 +0000
Received: by mail-pl1-x644.google.com with SMTP id p13so3311721pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 14:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IVsbwFP8AeKgn5KuqXlWOVRdSf7M1xugTS7jUvEVQtc=;
 b=oU/f2dvCHCBjQ55JB95SZcIANhYyJ9ITAqAZyUPy+8WCm30d3ew7K9ot3ljlismeG0
 64ZZ6rY+w87JZZP2/a/NOpuKpPQSzTOlD6tYFFErCKbk2o/d38myrMyLZHkj0eGMRWrK
 ZO4/0jwX0Y6hEQ1RTWCi/Wj/qeV6Wo9aIp8ZOQwP8c7XCPdeYxXsyETJzw4XyKMBU/lz
 qM9LlLfdRcPdbBy3/9gWJq9L5Nx5jDZR2yKoRwucfTLbyKtZ15BBcdJfb9rJadDqa8HN
 cFg/4VEnXCe2aLl7T7z7Yxd+De1QrhbV0OXFW9p/LS6zk0ELprOQr2XP2R2mafFphhso
 jwwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IVsbwFP8AeKgn5KuqXlWOVRdSf7M1xugTS7jUvEVQtc=;
 b=QivfNDiGCrUO4sAEUdjUJwCjgr9ErAJahJV2acOEhlUlezy4kyzM8ZpEwvwKfCpR8H
 u4ebu+AbGGcInCQoiJCRWiWvtQdNRH1sJJ58uodeNc7msLDBvECwSzOTsKGgWVDBr6WD
 WsIQq/mFWlU+AsGSz1PnDsn6alUUDUbu4Z1MMaG6Bag4ityYwHYgkdlnCWURR+O5EE6C
 AiO24KtSpWi+ppPMNn7VQwzqmRUzRytIr4PYmzuDvRvzZmujgtw5Rhvc9n/SX7V8wtwK
 A4l7UsZBGY0D0iz1U3dXIyF4+Ug8o1OiFlnxuGi3MONPd4r3WcSleYTfsZSwT72o0kbg
 9zXQ==
X-Gm-Message-State: APjAAAUfIbwn55hTaXiKEfBMkP2ZiEe708LTnArh9AcN3fprnJCD+dwN
 f38wGGjphKfClQUmKZ3WXvw=
X-Google-Smtp-Source: APXvYqzA8b8TES3q8RMzhJpNbYR+VN+AMBJwUdINXVcCiKsaNB6N/jCmLAzvR9lFLICCokguWu+7lg==
X-Received: by 2002:a17:902:bb84:: with SMTP id
 m4mr8839423pls.211.1572557603878; 
 Thu, 31 Oct 2019 14:33:23 -0700 (PDT)
Received: from localhost ([100.118.89.196])
 by smtp.gmail.com with ESMTPSA id 135sm4038808pgh.89.2019.10.31.14.33.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 14:33:22 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH] iommu/arm-smmu: avoid pathological RPM behaviour for unmaps
Date: Thu, 31 Oct 2019 14:31:02 -0700
Message-Id: <20191031213102.17108-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_143325_899493_945020D0 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
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
Cc: Rob Clark <robdclark@chromium.org>, Will Deacon <will@kernel.org>,
 freedreno@lists.freedesktop.org, Joerg Roedel <joro@8bytes.org>,
 open list <linux-kernel@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
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
 drivers/iommu/arm-smmu.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 7c503a6bc585..5abc0d210d90 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -122,7 +122,7 @@ static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
 static inline void arm_smmu_rpm_put(struct arm_smmu_device *smmu)
 {
 	if (pm_runtime_enabled(smmu->dev))
-		pm_runtime_put(smmu->dev);
+		pm_runtime_put_autosuspend(smmu->dev);
 }
 
 static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
@@ -1154,6 +1154,20 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 	/* Looks ok, so add the device to the domain */
 	ret = arm_smmu_domain_add_master(smmu_domain, fwspec);
 
+	/*
+	 * Setup an autosuspend delay to avoid bouncing runpm state.
+	 * Otherwise, if a driver for a suspendend consumer device
+	 * unmaps buffers, it will runpm resume/suspend for each one.
+	 *
+	 * For example, when used by a GPU device, when an application
+	 * or game exits, it can trigger unmapping 100s or 1000s of
+	 * buffers.  With a runpm cycle for each buffer, that adds up
+	 * to 5-10sec worth of reprogramming the context bank, while
+	 * the system appears to be locked up to the user.
+	 */
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
