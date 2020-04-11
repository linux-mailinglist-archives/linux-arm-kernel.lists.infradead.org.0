Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B411A5504
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCZ3NTGVYSuDGk/69doxfGIt3pwTEXlAo1Ftltflj1g=; b=nAHyzpz4mLDCzf
	eWEQQGC/VrlCWxrH8kN+kLMuRZPARjV2BJtj7b8MeaNelX3yFm0cu2bZFkmydbGvQDvXHNV7V6oyK
	rr0WGEG7F7tJiRXMAqBOT47lsTseAAxDl3OoPZIObsIZQhHOlkGV61dT5XXPUQe6wZaepjnFvgRTM
	JkF30thjQgBkgW3f8TSvzCY6aiuHxGvwLS+OI3gp06GZrJlqPyWKKOD4lWajcmcO80hH2dMN8qMb7
	zPpOiXsiFjNW+RDTh9wfTZDSVcImRPFSGUwNrO6wPeJsO3o/2+kAuKDrtXszkAfBQUZB9290xpyc3
	5F488rujNYiDVqwnHAkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPF2-0002VZ-TB; Sat, 11 Apr 2020 23:08:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPCq-0000eE-Ps
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:06:34 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DC6E20787;
 Sat, 11 Apr 2020 23:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646391;
 bh=0SPryoYmUi+Ig0ImQ453oQJ0Z9MhCZSQAku6YWUmkKo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2fBEObkAJ35wKc3ZZj6xzc8uZ2qM03sWwkfAP1OMGpq7xcK2k2b9DLg8Em3IEnAUh
 a35PQw/qij4T2/ank3eDTRv84qgrr1EN1igmACLYP8H4BcVOt0WTyn9MZ+CzrldMcr
 G3yvyeJQWWUBjquXFJTois8BpV6jZN4CwGGS3170=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 130/149] dmaengine: sun4i: use 'linear_mode' in
 sun4i_dma_prep_dma_cyclic
Date: Sat, 11 Apr 2020 19:03:27 -0400
Message-Id: <20200411230347.22371-130-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230347.22371-1-sashal@kernel.org>
References: <20200411230347.22371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160633_021478_82D4C125 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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
Cc: Sasha Levin <sashal@kernel.org>, YueHaibing <yuehaibing@huawei.com>,
 Hulk Robot <hulkci@huawei.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>

[ Upstream commit 6ebb827f7aad504ea438d0d2903293bd6f904463 ]

drivers/dma/sun4i-dma.c: In function sun4i_dma_prep_dma_cyclic:
drivers/dma/sun4i-dma.c:672:24: warning:
 variable linear_mode set but not used [-Wunused-but-set-variable]

commit ffc079a4accc ("dmaengine: sun4i: Add support for cyclic requests with dedicated DMA")
involved this, explicitly using the value makes the code more readable.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20200207024445.44600-1-yuehaibing@huawei.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/sun4i-dma.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/dma/sun4i-dma.c b/drivers/dma/sun4i-dma.c
index bbc2bda3b902f..e87fc7c460dd4 100644
--- a/drivers/dma/sun4i-dma.c
+++ b/drivers/dma/sun4i-dma.c
@@ -698,10 +698,12 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
 		endpoints = SUN4I_DMA_CFG_DST_DRQ_TYPE(vchan->endpoint) |
 			    SUN4I_DMA_CFG_DST_ADDR_MODE(io_mode) |
 			    SUN4I_DMA_CFG_SRC_DRQ_TYPE(ram_type);
+			    SUN4I_DMA_CFG_SRC_ADDR_MODE(linear_mode);
 	} else {
 		src = sconfig->src_addr;
 		dest = buf;
 		endpoints = SUN4I_DMA_CFG_DST_DRQ_TYPE(ram_type) |
+			    SUN4I_DMA_CFG_DST_ADDR_MODE(linear_mode) |
 			    SUN4I_DMA_CFG_SRC_DRQ_TYPE(vchan->endpoint) |
 			    SUN4I_DMA_CFG_SRC_ADDR_MODE(io_mode);
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
