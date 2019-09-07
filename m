Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62202AC87E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uc+mHv7KCEoYmlSFmUrGG7ISgwHv1PlBLlS0Z+OH67M=; b=UkdnZXHOE5eEDu
	+5tXtLhis7/98yyqAw5iCIqS/g6Eao7xyoFOTS0mLXlw0sqtq6Qw4OjNLlLZcbsCptnjfukGRzwhl
	5K9+psPzhVvEEuz51i32gzIsU0FOOGvidFeHomuvz36TeTBB9bEs6rGRbq5sMBRfwV9gkI+3etWio
	hyAQQ+Cz39JzdyRyLGiWZqnkMRfzFpgL157IUj5+Yo9keXaYwDy2oO4+DJ3bwEshDGunivCV5/gc/
	scmdtZX0j9n9BKrC42uqsG6KWXhKYm9bsT7B62iEV5TEXzZZSDln5PdSH1LjC5kDAC9USXh4G6eaJ
	yylLWNtouajw5YtynSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6er9-0002nG-Mp; Sat, 07 Sep 2019 17:50:39 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eqt-0002mS-Hz
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:50:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id x127so6599160pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wK8kJ2udIf0g3BsyoIaHFt8dADR/WXvxfITihNsDeFg=;
 b=Gwsp7VRn4r5cDdw7eygkYZ/sszfgRBn/LNffK8rKLuU3OXDMBJBQUafVm/8/Ym6kxl
 K6awj9C0Ux8gpf0vABsHPwAIKvMSSj1HLTzzX71l0KzyvaROHC2yWEmvxZUqIwm2nmrV
 lmAcCTAPwuKZNItjsz1tvAaLHs33eilTvmINw0ZqMFmLGcHNMeEFjmq9aeDH8XSCV7Je
 T+U7wuABMQprBiDBJ/RIg7QDfuYLkWl0B7++OvQOJnlTCNrryYx3AgCOz1cGCJhWOuVk
 XyZoKGE/8NngV3NN1lmVf04Gjw36Ts1U5JbkQX6QXEPMa5FYJCQ1regZqneDUa94+wOD
 YkPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wK8kJ2udIf0g3BsyoIaHFt8dADR/WXvxfITihNsDeFg=;
 b=dFsbvn1/TEM6O65U/izm417BG/mk/hvFiU7frjQu0r2CEr/S//+0kzHJwF9kzgTCqU
 h8xm9M011I3ALQ4Jfp/LyKnG2Fvh1sst3PlfTr7vLLHjxquRhprmAU8xRmBhOYdVGDno
 hba8yFvOH1gc94aecbwFuu0ntwz1ztcBlLMXfffMuWph2OMr6XHat0hDtUUgkkwEJH7E
 szdTuQP10JWZrrJBT/t5bOcty/KH+ca8ZzVyihlNXGqmms0Q4bD0Q0/VxRAuz+QxEkCO
 EqaNFKZX1dtFtsNLxysC1cljxW8qPe3FyhFf3xeIk83+ZE1f+Um1pX13r4z/nyz9oTsq
 v5JQ==
X-Gm-Message-State: APjAAAWVZjVGskvakPfQj1ODD5mrxP673YklT134lohcz+B7SbeAd7zj
 GjWWfo9J6M6Di9qkfXD258U=
X-Google-Smtp-Source: APXvYqzafbPVLonS9mDnmRUFSlGT5UrLrAnZgt7eKA+ZXKBawYn/MhQ8WUF6BIH88qCUmZL2MEVRGA==
X-Received: by 2002:a65:6795:: with SMTP id e21mr13501884pgr.428.1567878622201; 
 Sat, 07 Sep 2019 10:50:22 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:e554::8610])
 by smtp.gmail.com with ESMTPSA id 11sm8401943pgo.43.2019.09.07.10.50.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Sep 2019 10:50:21 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH] iommu/arm-smmu: fix "hang" when games exit
Date: Sat,  7 Sep 2019 10:50:13 -0700
Message-Id: <20190907175013.24246-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_105023_623207_1D5BAC2D 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Robin Murphy <robin.murphy@arm.com>, open list <linux-kernel@vger.kernel.org>,
 freedreno@lists.freedesktop.org,
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
To the user it would appear that the system is locked up.

A simple solution is to use pm_runtime_put_autosuspend() instead, so we
don't immediately suspend the SMMU device.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
Note: I've tied the autosuspend enable/delay to the consumer device,
based on the reasoning that if the consumer device benefits from using
an autosuspend delay, then it's corresponding SMMU probably does too.
Maybe that is overkill and we should just unconditionally enable
autosuspend.

 drivers/iommu/arm-smmu.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index c2733b447d9c..73a0dd53c8a3 100644
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
@@ -1445,6 +1445,15 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 	/* Looks ok, so add the device to the domain */
 	ret = arm_smmu_domain_add_master(smmu_domain, fwspec);
 
+#ifdef CONFIG_PM
+	/* TODO maybe device_link_add() should do this for us? */
+	if (dev->power.use_autosuspend) {
+		pm_runtime_set_autosuspend_delay(smmu->dev,
+			dev->power.autosuspend_delay);
+		pm_runtime_use_autosuspend(smmu->dev);
+	}
+#endif
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
