Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83FB1F4489
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9n4o878QIhfN4Vc2IImO/iv1k+Xa/30uWWMhOr7BZKs=; b=Uxc
	IdMwMDHEPtbXdJwxZQXMyl6aMCXnpf1G8ydnEABllvUA/vhYmsCty6L2weshqUUCyvkOa0nMk8jR+
	mTYbzK/Z0TSQXwoScq5VM1NUHxwZ7+OOEznauz4jaORitMNxt3zb7exPqANp3dhDvdOHENuf/FqZV
	HENk+L7Vg0IF0/gwX5hAhr0gbhGsEX3KsNCuoM0bwFfrHZyyUN0EOUlaTBcwbEkrbsZnQLoU8FN11
	at0f+u1WKiYrKk2YhayfYhyWdN6RegsFNxUxQhmtnVyfSCeGL3wEI7+iJTlIb+S4j51ozbBCpdS8n
	W4u31PwGR+hJ4jcsQLfjWA3D0JaNhmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiid6-0007XW-5s; Tue, 09 Jun 2020 18:05:44 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiicv-0007Wc-ND
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:05:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591725936; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=x01+HksEUfPnnuAjrfKal7kG0NEwAm/phbFVlSCT2kQ=;
 b=BtN65279QukNtxMWlZxJ2LBHOb9IQHqmIiVX7RNAOUbeIfy8RgslL7JPJhcSUMib4NZED3ja
 P8lYae8rZA8EfFE8NrOFyehymJz+e5qqLafAjppeArP7+PCt/3q9Ngrp54aM59wVLkJCPClo
 S8v1BpvBv9/b5xSOCi8XGwGw0Qk=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n13.prod.us-east-1.postgun.com with SMTP id
 5edfcf61c76a4e7a2ab55aac (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 09 Jun 2020 18:05:21
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 035C8C433AF; Tue,  9 Jun 2020 18:05:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jordan-laptop.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1AD1EC43387;
 Tue,  9 Jun 2020 18:05:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1AD1EC43387
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH] iommu/arm-smmu: Don't bypass pinned stream mappings
Date: Tue,  9 Jun 2020 12:05:16 -0600
Message-Id: <20200609180516.14362-1-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_110536_747056_F3970853 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Patrick Daly <pdaly@codeaurora.org>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 0e764a01015d ("iommu/arm-smmu: Allow client devices to select
direct mapping") sets the initial domain type to SMMU_DOMAIN_IDENTITY
for devices that select direct mapping. This ends up setting the domain
as ARM_SMMU_DOMAIN_BYPASS which causes the stream ID mappings
for the device to be programmed to S2CR_TYPE_BYPASS.

This causes a problem for stream mappings that are inherited from
the bootloader since rewriting the stream to BYPASS will disrupt the
display controller access to DDR.

This is an extension to ("iommu/arm-smmu: Allow inheriting stream mapping
from bootloader") [1] that identifies streams that are already configured
 and marked them as pinned. This patch extends that to not re-write pinned
stream mappings for ARM_SMMU_DOMAIN_BYPASS domains.

[1] https://lore.kernel.org/r/20191226221709.3844244-4-bjorn.andersson@linaro.org

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index c7add09f11c1..9c1e5ba948a7 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1143,6 +1143,10 @@ static int arm_smmu_domain_add_master(struct arm_smmu_domain *smmu_domain,
 		if (type == s2cr[idx].type && cbndx == s2cr[idx].cbndx)
 			continue;
 
+		/* Don't bypasss pinned streams; leave them as they are */
+		if (type == S2CR_TYPE_BYPASS && s2cr[idx].pinned)
+			continue;
+
 		s2cr[idx].type = type;
 		s2cr[idx].privcfg = S2CR_PRIVCFG_DEFAULT;
 		s2cr[idx].cbndx = cbndx;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
