Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF6CC22D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DoLOcYMNzhASyKWPhHUqOJN7Sb5mjCnZa78iDppxCrg=; b=YfEIn2kumOEVNR
	/g3ixt5xUrlEUUZkVKwAzv2hk14Q7P6W7S2JyvI5IS+otRuNZk/VJp9wH3qnSGcrE89xgbIf/0kX9
	vcWuAHsikv4NAK8n4PFf4Z5yC0FqNQNmDZz09T+MAYUBNuCTaYNA694je7yvK/u3rm76ZDZ36yDQd
	B4tANXePhEHkeqgkpZ3hTLy93ztGscFkGnk7qou8RgfQCrR0/Fxgqf9OCklcN+OjwHQ5dzawziswG
	PfyFGLoAp4vO0qBB9xTzFCGHgIRnC1LYqFSJSEllwd8BgHP+VHjLv/lXIIZA82ax2plEuEkNIjydM
	vz8eMWLQ2LABh00v20xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwOc-0005WH-Qn; Mon, 30 Sep 2019 14:11:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwOO-0005VU-KF
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:11:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BCDC28;
 Mon, 30 Sep 2019 07:11:10 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 747D93F706;
 Mon, 30 Sep 2019 07:11:09 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 0/3] iommu/io-pgtable-arm: Mali LPAE improvements
Date: Mon, 30 Sep 2019 15:10:59 +0100
Message-Id: <cover.1569851517.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_071112_708717_AEDC3F5D 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, narmstrong@baylibre.com,
 joro@8bytes.org, steven.price@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Although the rc1 tag is yet to appear, today's master seems close enough
(the DRM and IOMMU pulls are landed at least) so here's the promised
rebase of these patches with tags added, and some minor commit message
improvements for good measure.

Robin. 


Robin Murphy (3):
  iommu/io-pgtable-arm: Correct Mali attributes
  iommu/io-pgtable-arm: Support all Mali configurations
  iommu/io-pgtable-arm: Allow coherent walks for Mali

 drivers/iommu/io-pgtable-arm.c | 61 ++++++++++++++++++++++++++--------
 1 file changed, 48 insertions(+), 13 deletions(-)

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
