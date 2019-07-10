Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4761664EB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 00:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ITF5i7D6IbHnfAvryO+krwUgqGw9NuyBDhsVhEF3n0=; b=YxUytHob78/Txd
	r7gALtRbycYoIEYrbBOPSPSVxE/cw6KkwR5JHy1r7f+R/+Fic74FsfHOzTS6NknFZq92esQMJ415i
	ulT6QcrnwP0qP4B6ZeAWPKgZIFKi8VvygDiCV9fM3BnjrgvpCZ7DgV8FD+oAUebBASTwYbfda/IwK
	faRwpW0vvF4Mh/ttPo6n/mjEzet/zybhfUA6huMqmhHmHg1hk3mBBlKbSLpSrmuC40PPt76wPAOgW
	0bCOye6xZpB/Csod3U6IZVYH8sMCDZelvqhTQGFQZESuke8M3ryhFHJPcm5/H+x7oVe5SlN9eT3Xv
	mFLDr2JVZDR7V6Wzljbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlL7g-0008Qn-Hd; Wed, 10 Jul 2019 22:31:36 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlL7S-0008QG-Vb
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 22:31:24 +0000
Received: by mail-io1-f66.google.com with SMTP id k20so8216990ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 15:31:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hOG8zlfoxNbtpH6RpS4NKEtFxZJq0YZhVn4ElI+1I6E=;
 b=BaCBSeCJZzPuzrkZjepDlKHlYGxExY4H2/J35evtV5ClDPtFhBLrCbmI9Avv8815fI
 uNK08jgoAEt2lk4JjZaqxbIclH9ZvzDjlBdJ/Pqeb3znRY/3i3uonXmf5qp+JiaZc0u8
 Ixiy5YVRnsVzV8tgH2O2uAnOmkV6uBLXmd7UdkhHYhvfIKfa36v4dEl3e/deHtRmVnU0
 FjabzVrE3aN0sTuNQdqDsXmKzPhTrTZO39QDPcj1rBOj0+KL+gLSDvoqGsbrO/fOOh8Z
 jr4SSaTd0/6InNvhWr4FgjsB12L9U34EyV/g9OXt1zijIAupL/h2u0wFwYHRdYoGOKXz
 ZQ8g==
X-Gm-Message-State: APjAAAWQvCkKceCKpCSCirwK/mvfUdKh/x5E46P5yNYf8q0tbEKWEy3o
 IGb1dacOlG1Nv0qmL/E2Ww==
X-Google-Smtp-Source: APXvYqzHc8IGqtK8qwTQEGdiASgl2eUMIjgRvbQL2Qh2n/m2AHqfhQBym/p9gNm89vNXbzEz3CKSVw==
X-Received: by 2002:a6b:c98c:: with SMTP id z134mr562362iof.276.1562797881065; 
 Wed, 10 Jul 2019 15:31:21 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.251])
 by smtp.googlemail.com with ESMTPSA id j25sm4997462ioj.67.2019.07.10.15.31.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 15:31:20 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>
Subject: [RFC PATCH] iommu: io-pgtable: Drop WARN for empty PTEs on unmap
Date: Wed, 10 Jul 2019 16:31:19 -0600
Message-Id: <20190710223119.8151-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_153123_014718_8199AAD2 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If a region has been mapped sparsely (such as on page faults), the user
has to keep track of what was mapped or not in order to avoid warnings
when unmapping the entire region. Remove the WARN on empty PTEs to allow
unmapping sparsely mapped regions.

Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: iommu@lists.linux-foundation.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
This is needed for large (up to 1GB AIUI) scratch buffers on panfrost 
which are mapped on demand on GPU page faults and can be unmapped on 
memory pressure. Alternatively, I'd need to have a bitmap of mapped 
pages to track what is mapped or not. Dropping the WARN seems like a 
much simpler solution.

This will need to go thru the DRM tree once I've gotten the panfrost 
side finished, but wanted some early feedback.

Rob

 drivers/iommu/io-pgtable-arm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 4e21efbc4459..43971638a5aa 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -611,7 +611,7 @@ static size_t __arm_lpae_unmap(struct arm_lpae_io_pgtable *data,
 
 	ptep += ARM_LPAE_LVL_IDX(iova, lvl, data);
 	pte = READ_ONCE(*ptep);
-	if (WARN_ON(!pte))
+	if (!pte)
 		return 0;
 
 	/* If the size matches this level, we're in the right place */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
