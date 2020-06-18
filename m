Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9C51FDC12
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrGipalzBz010q+BodA8O3UT81l56CeYDTiFKnkiZBg=; b=psIuo7ikQinFUY
	Evqh22d31TGnitTVfWR3TyBlSghhRoS5b9jrkIlx8rHYiS+KN4cIBXu31JSZoXl03jfFd1urh2cWQ
	BdpjFLHV6Nw65iXkYjtYgWGNxwE56EriN5E1afa2xFJ/Iz4cJjBTMqLvCTIIABY2VsrDYLXN1+nL2
	n9kpJ3F9TaNcrAN2XuEQHPPWJUwEedvBs8vdT+icbeXR84q8s98cXfjrTykqAL18+CPr4vz5CSSXU
	04Oi5jjs6bjWT5cdUoi3eaJZcwiBfDpyVSZ+CBID6YB52Ymh3FeyC964H8OK8FEa4Wl0aioS//Zqp
	ovMiP3QCRk4g1lurDHQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljAW-0007LJ-TJ; Thu, 18 Jun 2020 01:16:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj4Z-0000Kj-87
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:10:33 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC462214DB;
 Thu, 18 Jun 2020 01:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442630;
 bh=P0+2fHaETgW6NNS4KKLoREqjNyFC9AlfVEZ+UAGUoTQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OHESbSgnlfk1+h8Ucy7wFADdGfJDZp5eOJzdP31WjzUfLpZe+l1ep7LLgBptYPBLg
 u+k7ed7DCPu3HB7HyCKMlCVa5rQvAmHMCzkcBfZmi6UB1Et+loFBAFfWaKt8k5B2bN
 330Z07vLB/r7eKMu8j9R7CC7aib4lsjLp4uLnvoo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 108/388] media: s5p-mfc: Properly handle dma_parms
 for the allocated devices
Date: Wed, 17 Jun 2020 21:03:25 -0400
Message-Id: <20200618010805.600873-108-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181031_337986_22CA4150 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

[ Upstream commit cc8c0363ddce6308168d8223378ca884c213f280 ]

Commit 9495b7e92f71 ("driver core: platform: Initialize dma_parms for
platform devices") in v5.7-rc5 added allocation of dma_parms structure to
all platform devices. Then vb2_dma_contig_set_max_seg_size() have been
changed not to allocate dma_parms structure and rely on the one allocated
by the device core. Lets allocate the needed structure also for the
devices created for the 2 MFC device memory ports.

Reported-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
Fixes: 9495b7e92f71 ("driver core: platform: Initialize dma_parms for platform devices")
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/s5p-mfc/s5p_mfc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/s5p-mfc/s5p_mfc.c b/drivers/media/platform/s5p-mfc/s5p_mfc.c
index 5c2a23b953a4..eba2b9f040df 100644
--- a/drivers/media/platform/s5p-mfc/s5p_mfc.c
+++ b/drivers/media/platform/s5p-mfc/s5p_mfc.c
@@ -1089,6 +1089,10 @@ static struct device *s5p_mfc_alloc_memdev(struct device *dev,
 	child->coherent_dma_mask = dev->coherent_dma_mask;
 	child->dma_mask = dev->dma_mask;
 	child->release = s5p_mfc_memdev_release;
+	child->dma_parms = devm_kzalloc(dev, sizeof(*child->dma_parms),
+					GFP_KERNEL);
+	if (!child->dma_parms)
+		goto err;
 
 	/*
 	 * The memdevs are not proper OF platform devices, so in order for them
@@ -1104,7 +1108,7 @@ static struct device *s5p_mfc_alloc_memdev(struct device *dev,
 			return child;
 		device_del(child);
 	}
-
+err:
 	put_device(child);
 	return NULL;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
