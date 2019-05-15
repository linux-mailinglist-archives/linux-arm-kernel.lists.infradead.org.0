Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7CC1FCCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 01:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jwH29tuhxg4045lRqhRb9TyRMa+ZdQX6+VC5ONIVc80=; b=uyu
	36djskhp5bySZ5QiatTDawZDV8Jn7uA3X0BjfmW7+81SRj0DY5Cwc4fdTAQgE+8SI7dmL1vtVZXA8
	EqHcygrupcKV9GMVaUrzZvAO6x0F3sa0Gy2dJXVhsMr+MHcvCwuTh7WJ0UDQGEAFBshexz85pu6PY
	W3Uu/p1+BXU+pNoQTj13sIGa6I/JNg7XbJ8l4+CbV9mciEtENnYPE3rYiBIF7uoiUxUgAAMu7cGMS
	Xd4cHYLbtKFywU7MPfc978+UzALDGQbDLfRcS009cJVMOQFFNZFRfsgTvWgon6/ynaWEzJ7Rnn3Yt
	y1HicMv+n6ZzkgGEJKC/SZ5JcZ7Fm/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR3Op-0003ui-LD; Wed, 15 May 2019 23:33:27 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR3Oi-0003uN-Bs
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 23:33:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id q17so774197pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 16:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=djKpp0+BHbp5KVBEx90JiFN57Gm/WbDeClRhCLK6F4g=;
 b=nv9GeemUHg9Ck9WHEPtTACJZ7OgdsjblkCFtaEkdeQJfA22VhPDEoCDvM7q/C1mfoO
 0FNXng6oezdyuzS4O8ioDjNLNczUR2HoiEDBNCsYkNnpIH9ZoBYuVcbENfTYTcsFVGQK
 3enQzMf3jsqOxl9jrQauCcF2v/gwXuUSZ8NK6vafEPg41DzqIw/pEsksTULJ+/A/8dEx
 iedXGCKhDl2a4KbUUdciQ7BWneL9SMhIrrN09ZDlQ9Oh+uRm1LPueXSiVGS8mEw9T7sd
 0jhsbzFrlq21+bp3Zhv0603B48bIcM69XJRKRWZo1cjNCYJQRaVB1m3hsVlR7Iz1bZOe
 kysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=djKpp0+BHbp5KVBEx90JiFN57Gm/WbDeClRhCLK6F4g=;
 b=e9byrfEfzI5r69sSc2pMsufHp78DwFLYUbk00BHBo00SJH0n9yZ+5T7Nn17O9MIv4b
 NeZbW6HNOTjeoDZxVIReYIffVXNtKTgbEtHyuayYofQNfCm0/gFbeSRFUT7P1Qhc8Zr7
 +7NaU7h1VovEC0nC9YyNYDUq3TYCPJYCW4NFJlju08GrTVS6mxkX2qWSl7cR4ZM6Ozt4
 Wcf5UHHo78iKDOWQoKA11Drn7Rs5P8HVXC7RVvrrmYXajnOb7oKfhDcZavttNQGuMXHk
 qc//aUtp/gRRWIP0Zlg+HF9kzki7hMiuq+vWsCwdt9B1nqYg4Hdvz0MRsy2zwsQZur0u
 HhNg==
X-Gm-Message-State: APjAAAVyhSydqon/XxHmJnKxy46m4+EJH39bcNwogHp5V0TQoZ3OxpXI
 /BogPpumUMhls79bkdSnw5rOgw==
X-Google-Smtp-Source: APXvYqyrXnVeiR2IKdFoQs+/KyHKdfWtdip/KqmSq2+qQIWEc62Pl0Ip2kKHk13I4sqWwYIihDM5Lg==
X-Received: by 2002:aa7:9ac4:: with SMTP id x4mr50439288pfp.43.1557963198628; 
 Wed, 15 May 2019 16:33:18 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e6sm7215087pfl.115.2019.05.15.16.32.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 16:32:41 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [PATCH] iommu: io-pgtable: Support non-coherent page tables
Date: Wed, 15 May 2019 16:32:34 -0700
Message-Id: <20190515233234.22990-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_163320_468980_72738943 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-msm@vger.kernel.org, iommu@lists.linux-foundation.org,
 Vivek Gautam <vgautam@qti.qualcomm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describe the memory related to page table walks as non-cachable for iommu
instances that are not DMA coherent.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/iommu/io-pgtable-arm.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 4e21efbc4459..68ff22ffd2cb 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -803,9 +803,15 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 		return NULL;
 
 	/* TCR */
-	reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
-	      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
-	      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
+	if (cfg->quirks & IO_PGTABLE_QUIRK_NO_DMA) {
+		reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
+		      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
+		      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
+	} else {
+		reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
+		      (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_IRGN0_SHIFT) |
+		      (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_ORGN0_SHIFT);
+	}
 
 	switch (ARM_LPAE_GRANULE(data)) {
 	case SZ_4K:
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
