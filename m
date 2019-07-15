Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6DA68F04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+2aCROXdgI76fvxNIRiNl4zDHr0gGcc9FmeFVnf4QE=; b=MQYI9HmQLrDCy0
	Tzd8p+xPahqSkxLySD/24mVTbz9QzQC+Nj36AmNbokdiJ7PbLj4qBnzBEoNAfdQxU58d8p5Bj37Sr
	OqzA4Ho4erop0oP3BdptDhdBEcFFCfzBifwwsG/KTOpihPjmv4MjUkeomBvAVMUL5metT+50KH4ld
	CItfUs6gpmGQSTVePU5/SNVLN95JX9ybSRNI7WzWfNNNMqCypoKcyVmuUGIh3T4JMkCjRG+C9/t2e
	7NsLZT1oDCiKkmFaAjqae+LC6jgifQBIsUqEmWOavFwXFkt83uwC0ncuTihnzZdtA5tzSl/kRogSP
	J8zd9Jx2KcCGlNX6CPQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1hj-0008LQ-DI; Mon, 15 Jul 2019 14:11:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1gx-0007xM-Nz
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:11:04 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4DE32081C;
 Mon, 15 Jul 2019 14:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563199859;
 bh=qo2IJ9hAA6ifUIf1VzlEPtdMaecSdMeCUOTPV2OFIPc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JEoeru8Q9ZZpQnp0KAxSxIySwtKDeiYO3BFZtfAyh3RTdzRiTa+VAUEV7nuj/E6tX
 m1RB+Ae9bLirkonk30jlZi7Oy6tbRXNFDg2XJ1Vk2blo2lumBU+Wtq0i8IaboFMcfX
 0Wrn7fkqIrRodu8jAL7E++5u4DgvjmgzIFbjRge8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 126/219] media: s5p-mfc: Make additional clocks
 optional
Date: Mon, 15 Jul 2019 10:02:07 -0400
Message-Id: <20190715140341.6443-126-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_071059_850624_B84FCD7C 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

[ Upstream commit e08efef8fe7db87206314c19b341612c719f891a ]

Since the beginning the second clock ('special', 'sclk') was optional and
it is not available on some variants of Exynos SoCs (i.e. Exynos5420 with
v7 of MFC hardware).

However commit 1bce6fb3edf1 ("[media] s5p-mfc: Rework clock handling")
made handling of all specified clocks mandatory. This patch restores
original behavior of the driver and fixes its operation on
Exynos5420 SoCs.

Fixes: 1bce6fb3edf1 ("[media] s5p-mfc: Rework clock handling")
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/s5p-mfc/s5p_mfc_pm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c b/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c
index eb85cedc5ef3..5e080f32b0e8 100644
--- a/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c
+++ b/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c
@@ -38,6 +38,11 @@ int s5p_mfc_init_pm(struct s5p_mfc_dev *dev)
 	for (i = 0; i < pm->num_clocks; i++) {
 		pm->clocks[i] = devm_clk_get(pm->device, pm->clk_names[i]);
 		if (IS_ERR(pm->clocks[i])) {
+			/* additional clocks are optional */
+			if (i && PTR_ERR(pm->clocks[i]) == -ENOENT) {
+				pm->clocks[i] = NULL;
+				continue;
+			}
 			mfc_err("Failed to get clock: %s\n",
 				pm->clk_names[i]);
 			return PTR_ERR(pm->clocks[i]);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
