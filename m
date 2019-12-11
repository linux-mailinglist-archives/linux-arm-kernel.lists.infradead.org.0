Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219A011AF30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0P/l/CDBtigLRHB+FMUo4wiQYkqFtBfnM1aaE5o6bug=; b=LDBAHjGKsnx/AS
	2omA54klRMDJ2toG82HxmXeS0NTC8bfn4ixm/4Q1WBV31qUL68QneriifCjb6OS0Sh8PB3XLKLvUs
	66+dOcPgJbUyKiExiiJ00UpSv7A/Vbx/iG5qkZJugGUlNhUl3Cge6KFc7PBFj/e5lXfSAiKpkfMrD
	r5abrpG7qF2y0p5Dug5D3kWPiiqA2R0mlGiU9IepW0kOsbcoL0v9qmoN5AGes0RrAdlKHaBHTCBRf
	oPLLR/Kp8/GrgHFiR1G5PHadf53wtEnRQFDE8SKxnvI1TKuEQOI3fbZ7PtW5FdK/4arsaoQ0/4Pfk
	089bjmxNTtBYQ/EycDKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3ez-00028J-G3; Wed, 11 Dec 2019 15:12:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3eo-00027k-L7; Wed, 11 Dec 2019 15:12:07 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F5C724658;
 Wed, 11 Dec 2019 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576077126;
 bh=IEDH//bhdQztlOqOo+cfwWB4wM8CT2ZDR64ODrpGXpU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ASfCZsr8aNmgPSL1M+6kupNFfLQJvSZgKsM//pdyMqHr1sDp/5vZb7GauO0pEltxE
 7H1gJwjf/cng57mgJFVyGVCowkZrx8HoMgglqGjQmgPom2nTTxVg+RAByr3/PNkkeL
 V0vRDMZlBUgiZtzbv9e9MOQCM6l7v2sryYUu260k=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 014/134] iommu: rockchip: Free domain on
 .domain_free
Date: Wed, 11 Dec 2019 10:09:50 -0500
Message-Id: <20191211151150.19073-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211151150.19073-1-sashal@kernel.org>
References: <20191211151150.19073-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_071206_711466_CD38DF3A 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 Heiko Stuebner <heiko@sntech.de>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

[ Upstream commit 42bb97b80f2e3bf592e3e99d109b67309aa1b30e ]

IOMMU domain resource life is well-defined, managed
by .domain_alloc and .domain_free.

Therefore, domain-specific resources shouldn't be tied to
the device life, but instead to its domain.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Acked-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/iommu/rockchip-iommu.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 4dcbf68dfda43..0df091934361b 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -980,13 +980,13 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
 	if (!dma_dev)
 		return NULL;
 
-	rk_domain = devm_kzalloc(dma_dev, sizeof(*rk_domain), GFP_KERNEL);
+	rk_domain = kzalloc(sizeof(*rk_domain), GFP_KERNEL);
 	if (!rk_domain)
 		return NULL;
 
 	if (type == IOMMU_DOMAIN_DMA &&
 	    iommu_get_dma_cookie(&rk_domain->domain))
-		return NULL;
+		goto err_free_domain;
 
 	/*
 	 * rk32xx iommus use a 2 level pagetable.
@@ -1021,6 +1021,8 @@ err_free_dt:
 err_put_cookie:
 	if (type == IOMMU_DOMAIN_DMA)
 		iommu_put_dma_cookie(&rk_domain->domain);
+err_free_domain:
+	kfree(rk_domain);
 
 	return NULL;
 }
@@ -1049,6 +1051,7 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
 
 	if (domain->type == IOMMU_DOMAIN_DMA)
 		iommu_put_dma_cookie(&rk_domain->domain);
+	kfree(rk_domain);
 }
 
 static int rk_iommu_add_device(struct device *dev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
