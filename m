Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D39F1A551B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yN/7xzxcJ358JOOFG3gpMUSIFuWbTdPnvzAIygiigrs=; b=bOs+iy8d0eyY0E
	WpLSklbViTX3TqnUZ2vowGCLDNfwwt81sHQu2aRztC2GxGZbOrt/4+wMulX/YTtaWTq0j2KffvkK4
	jTZvi9+JBm3MVugFrvmCEC2oETk2cm3i0vYQXgSNca5fJt8V4tQ2Ci2Xi11QgzVH0uHP2dq+/FFho
	8RgUeJEK/ou3SonZgM7rtRANx5WgpoGYeVIThxFlGHNy6OxNojWPZKq443eEW3Hm62mgFnBM3Zqzt
	blSUTQV/ttwP5IW+qu9tQCcLf6nijrVkTRzs1hbvqHNh2ztM2JjbNbXAUjJMkecigkOzEPQgZdchd
	GD8et419b7vLYaKx8CYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPFe-00036S-7U; Sat, 11 Apr 2020 23:09:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPCs-0000h9-HV
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:06:37 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 440AF216FD;
 Sat, 11 Apr 2020 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646394;
 bh=GZpUvxes6uoucxosh718E0d1UvRy0lIvPRouAwoKXhQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IoOXSqGp00lwLI5WcKxjfkMBwDNlu+FTOvgR4WRgm4NYWZne1hqHpof82ZN2FDtFU
 wc2p6MND4yIlt+qjbqlY0hMdduTVt96NH49AgFIqZqoY9lo/ZR9ddQHD5GjjKnQbOu
 HsF0HDuTsBHHykfbfbeYvZVI23F2VIeq+JzfNfB8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 132/149] dmaengine: sun4i: set the linear_mode
 properly
Date: Sat, 11 Apr 2020 19:03:29 -0400
Message-Id: <20200411230347.22371-132-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230347.22371-1-sashal@kernel.org>
References: <20200411230347.22371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160634_684033_32FF580A 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vinod Koul <vkoul@kernel.org>

[ Upstream commit 8faa77332fe01a681ef3097581a37b82adc1c14b ]

Commit 6ebb827f7aad ("dmaengine: sun4i: use 'linear_mode' in
sun4i_dma_prep_dma_cyclic") updated the condition but introduced a semi
colon this making this statement have no effect, so add the bitwise OR
to fix it"

Fixes: 6ebb827f7aad ("dmaengine: sun4i: use 'linear_mode' in sun4i_dma_prep_dma_cyclic")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Link: https://lore.kernel.org/r/20200214044609.2215861-1-vkoul@kernel.org
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/sun4i-dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/sun4i-dma.c b/drivers/dma/sun4i-dma.c
index e87fc7c460dd4..e7ff09a5031db 100644
--- a/drivers/dma/sun4i-dma.c
+++ b/drivers/dma/sun4i-dma.c
@@ -697,7 +697,7 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
 		dest = sconfig->dst_addr;
 		endpoints = SUN4I_DMA_CFG_DST_DRQ_TYPE(vchan->endpoint) |
 			    SUN4I_DMA_CFG_DST_ADDR_MODE(io_mode) |
-			    SUN4I_DMA_CFG_SRC_DRQ_TYPE(ram_type);
+			    SUN4I_DMA_CFG_SRC_DRQ_TYPE(ram_type) |
 			    SUN4I_DMA_CFG_SRC_ADDR_MODE(linear_mode);
 	} else {
 		src = sconfig->src_addr;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
