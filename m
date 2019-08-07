Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D475855B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 00:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N2vKwvRl7UNC1IWQySNclldzgbGWmm5DVl+xGqxlIK4=; b=Eaq
	jOWEolRi+VkGxWp6dIsoiL7wzIDPJAmVtCk+wsoaGQuLEGA1dtetJuAm+eG9IeyFUd/IyfMZSm/O3
	hSvM3sovj+kRArRGC5aM/7CQj2gp58cd97zrT0L3qDoeYEvLrKcGZPa8MIyynMs1DYtcFv3w1tzvC
	t1O6hvKXn66FWwDePEaAi0ltJjbYOpcNL2e388Sh2kDheXtwFnzvTx9JTvorbMYUp6KT5R2Q9xp81
	bh43K5dM+kxSnaf6oE1rPp3k03fwKdipsYiiVwLC3gFDGCRDkL+TsIvXYy8DV8XL+6DeLEfc2oCsZ
	Ed50Gnt4u0dZ70m0RIoRnquF2EVjo1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvUJl-0003jH-0Y; Wed, 07 Aug 2019 22:22:01 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvUJX-0003il-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 22:21:48 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 913B96058E; Wed,  7 Aug 2019 22:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565216507;
 bh=JrXJYfR7OdbsMs6A8nQtELu4a/CLP38j/wkYUh2M0hU=;
 h=From:To:Cc:Subject:Date:From;
 b=lEEILuS/jBLqLBROfvI0SUyogMjpBVWybpjyoEM3L7mba+dAAkw+J0flxZsqVDAib
 mg9Su7aICL22vL7xc5+1My5FyrOBqsTVYjU+uqEZfI1dowyiLdMxCwyxgC8GUzQ4jg
 H3FyrbnJavZo6zKXq4WslfLLUW/H9M9PO138WgnE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 906AF60208;
 Wed,  7 Aug 2019 22:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565216504;
 bh=JrXJYfR7OdbsMs6A8nQtELu4a/CLP38j/wkYUh2M0hU=;
 h=From:To:Cc:Subject:Date:From;
 b=BMz2D2uMljPCVrJz3Hv0xbOq51J/gbDucu3HyzydzaCDx7CBDj0OClpGor3Ps7DW9
 /DI9yx9PRBSlyd8ry1fY+4PxD5lOn6j5P/+yXSl1/+wvKFfCCo4Kkhn0bmv0VXU3hG
 9u51P08ZTEqNKWQ+8dsANbmCK1hxTGV1B25pIwsw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 906AF60208
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v3 0/2] iommu/arm-smmu: Split pagetable support
Date: Wed,  7 Aug 2019 16:21:38 -0600
Message-Id: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_152147_482673_29726510 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Will Deacon <will@kernel.org>,
 jean-philippe.brucker@arm.com, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Zhen Lei <thunder.leizhen@huawei.com>,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(Sigh, resend. I freaked out my SMTP server)

This is part of an ongoing evolution for enabling split pagetable support for
arm-smmu. Previous versions can be found [1].

In the discussion for v2 Robin pointed out that this is a very Adreno specific
use case and that is exactly true. Not only do we want to configure and use a
pagetable in the TTBR1 space, we also want to configure the TTBR0 region but
not allocate a pagetable for it or touch it until the GPU hardware does so. As
much as I want it to be a generic concept it really isn't.

This revision leans into that idea. Most of the same io-pgtable code is there
but now it is wrapped as an Adreno GPU specific format that is selected by the
compatible string in the arm-smmu device.

Additionally, per Robin's suggestion we are skipping creating a TTBR0 pagetable
to save on wasted memory.

This isn't as clean as I would like it to be but I think that this is a better
direction than trying to pretend that the generic format would work.

I'm tempting fate by posting this and then taking some time off, but I wanted
to try to kick off a conversation or at least get some flames so I can try to
refine this again next week. Please take a look and give some advice on the
direction.

[1] https://patchwork.freedesktop.org/series/63403/

Jordan


Jordan Crouse (2):
  iommu/io-pgtable-arm: Add support for ARM_ADRENO_GPU_LPAE io-pgtable
    format
  iommu/arm-smmu: Add support for Adreno GPU pagetable formats

 drivers/iommu/arm-smmu.c       |   8 +-
 drivers/iommu/io-pgtable-arm.c | 214 ++++++++++++++++++++++++++++++++++++++---
 drivers/iommu/io-pgtable.c     |   1 +
 include/linux/io-pgtable.h     |   2 +
 4 files changed, 209 insertions(+), 16 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
