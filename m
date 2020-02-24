Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D043A16AC89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfLpfLUD9hjnaxgXIPeA9lJpDcOh/0GFHt0bBqaZgNY=; b=M4aRSCnKcso0GV
	tUiGjOkyVCrRTVaIKRXAkPOtO43hCMdXe5D4GDW5HewUEpCXP4DkTse4qB3sC5fx1faWm07Ld8vkl
	9gshcbiLnvye8dTWAIOqdsmTdeiv/hmJ5j9veKFe5m76uRaJ6CfG2UIg5i8yCZmDurOvZ4Bggbwsq
	gf0f7aEKgwIDU9UCRgHkRlJ7KuhXHL6aHWZbYT/JdS3oH21M0Ecrhpd/oOGbl3RI2itzFP/kT0B+r
	PjoqXCyuoHLdxII9Z9vWGwJDwu+g076+DKwRMRto+JHuirnR66RfSXZhRy3U6q8ZqXpeEbxjr2Zb0
	qrIf0Y24+/O3ewkzsoOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H5y-0004XK-Ve; Mon, 24 Feb 2020 17:00:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H4V-0002GP-WF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:59:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id t23so55498wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 08:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HsNqDpM5GYOb0rP3SKvjSjiXAgrPp7/dDnFzXTvMfm0=;
 b=fxdWSvL7/PlqMuOjCbpoyDK0oOMZfWMx8Bn0sQViiqiE3H2JO3U4xq75c/gD0NU1IB
 5LX+dV8sT5h1EGNCfmF3/Oc4OwWIiPSscSgJ9EdoXDkOLYlFea7GgkHZEKGQ4n3RX2xc
 tE0Z9fTNGrynG92HHnK+qNkjvWnd1/LmhQMR8Wkp+U8ifjROHa1WaQQXNc85lp2jIC+P
 lz56h7v5lvnlEFIVnmE4jx/Q/BDcbY3YEs++7gzkztWZ4dCkTt2gdyf4zasHzdwGusEP
 V4s2WLd6VesfOZIZPnXJjsJsg1FHR6SX/xW3H+Vqf2K7q/htUfeBaETDNaFwfGHo9nb3
 TUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HsNqDpM5GYOb0rP3SKvjSjiXAgrPp7/dDnFzXTvMfm0=;
 b=Q59qq63Hizxvc+Z1faHnDiSXrL8IREsjWaH1qZIFf8pY1n6GxdFXqIPxf/z/FLKYz9
 mZH23NQQyZiWwczDMBlumf/UzvmeGfwUtsa+lNSoXEnOTnzO3KQwN9F387AZaF1bw0Bh
 PFRobVscmK/qLbURDJVU4bWq+MByPjGbHaSJGNSsf+/wLqPTHF0Yv2RViFNtXdI3W5kF
 MFMJleobsDlrVkq9bvWD9KStvBHX2l6hTd6ll8UD8JlCP1iQFaDnmFIHXgkkpJSBwZBS
 YD74bSC4pMMvRWxpGjEGDN5C4YDhB8uXAHusEtP4c6z6xNq2B2sXgM04tVYh3KZXnF49
 Dsxw==
X-Gm-Message-State: APjAAAXaIFuX+ng2+P6GjzlkFm8i8BqyCifK8AMvvklnO8RSqiRIJ0dR
 KqbHSDwO+z0JLuIIY5s0I9pXjw==
X-Google-Smtp-Source: APXvYqxzLvSxV15TQeDzuS7Vx3zfQgb1/0PPrdplrfLn1QNB4Up5cq5+1azMjxbcKStUM/cjgwhbxA==
X-Received: by 2002:a7b:c416:: with SMTP id k22mr35940wmi.10.1582563546869;
 Mon, 24 Feb 2020 08:59:06 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id b10sm19473978wrt.90.2020.02.24.08.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:59:06 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH v2 5/6] iommu/arm-smmu-v3: Batch context descriptor
 invalidation
Date: Mon, 24 Feb 2020 17:58:45 +0100
Message-Id: <20200224165846.345993-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224165846.345993-1-jean-philippe@linaro.org>
References: <20200224165846.345993-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085908_107567_90D9BCA3 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 robh@kernel.org, jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than publishing one command at a time when invalidating a context
descriptor, batch the commands for all SIDs in the domain.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index beeec366bc41..12b2a0fa747e 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1512,6 +1512,7 @@ static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 	size_t i;
 	unsigned long flags;
 	struct arm_smmu_master *master;
+	struct arm_smmu_cmdq_batch cmds = {};
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_cmdq_ent cmd = {
 		.opcode	= CMDQ_OP_CFGI_CD,
@@ -1525,12 +1526,12 @@ static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
 		for (i = 0; i < master->num_sids; i++) {
 			cmd.cfgi.sid = master->sids[i];
-			arm_smmu_cmdq_issue_cmd(smmu, &cmd);
+			arm_smmu_cmdq_batch_add(smmu, &cmds, &cmd);
 		}
 	}
 	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
-	arm_smmu_cmdq_issue_sync(smmu);
+	arm_smmu_cmdq_batch_submit(smmu, &cmds);
 }
 
 static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
