Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D376119395
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IH/GiLiT5+lDE6qMeNwN+MA69FV2bhs1behcYTS28g=; b=FPKw2NGQL3KDnu
	Ngh/BSTm+WD/qrEonmcZ+s1ITvyfjkhr2aR8aW+RWyJfK0YJaOhAVXPwVR8SyjT971MWJEnlVDwGO
	6dr9vw0SXKQUSxxWabvHEa5IZn1quyoZDOIAkaZ3dmCJs4capATBd+mPD4EQ7Ng4XoaazTcCOMoHB
	czkd7cjTKspY5+VLzjIsa8l4C21S7ctTzq67tathInjThTiVhtbj1FWlZL/eEpy04+coMr0fli/Bz
	hrPogJNCZrcf3CxmYA6qRKhO2Mr231zo7M1dgfkkdeOt4n47azzIdDKDY30Kvqhnq92LBvBZKMYCC
	Kvurxno5xHdvpNfRqqLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iempE-0007Ez-73; Tue, 10 Dec 2019 21:13:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemnR-0005qH-KH
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:11:58 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 591F5246A8;
 Tue, 10 Dec 2019 21:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012312;
 bh=MnjkOJzQpeys/zJdC8tULjlZdIzXW7jVsRu4TsHrD9k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YBNw3FRXIgSAB5/1mbeqZzh8gJyq0B/LsZ5FuXS75EsqT3EZ+Va2oLBsJonlMPfbE
 +V74QoafMGXn9c4Uuw1wVQJ19JK7XrZenDpYvQsu/gooGxqyq4Y9Ysx1okG1AIZEad
 +y6ejDOm/cFyoxEzHLvLMGL9Z1+gS87Em/WrmB+E=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 247/350] media: exynos4-is: fix wrong mdev and
 v4l2 dev order in error path
Date: Tue, 10 Dec 2019 16:05:52 -0500
Message-Id: <20191210210735.9077-208-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131153_761732_5436D614 
X-CRM114-Status: GOOD (  12.66  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Seung-Woo Kim <sw0312.kim@samsung.com>

[ Upstream commit 4d741cbd58bf889c8a68cf6e592a7892b5c2802e ]

When driver is built as module and probe during insmod is deferred
because of sensor subdevs, there is NULL pointer deference because
mdev is cleaned up and then access it from v4l2_device_unregister().
Fix the wrong mdev and v4l2 dev order in error path of probe.

This fixes below null pointer deference:
   Unable to handle kernel NULL pointer dereference at virtual address 00000000
   pgd = ca026f68
   [00000000] *pgd=00000000
   Internal error: Oops: 5 [#1] PREEMPT SMP ARM
   [...]
   Hardware name: SAMSUNG EXYNOS (Flattened Device Tree)
   PC is at ida_free+0x7c/0x160
   LR is at xas_start+0x44/0x204
   [...]
   [<c0dafd60>] (ida_free) from [<c083c20c>] (__media_device_unregister_entity+0x18/0xc0)
   [<c083c20c>] (__media_device_unregister_entity) from [<c083c2e0>] (media_device_unregister_entity+0x2c/0x38)
   [<c083c2e0>] (media_device_unregister_entity) from [<c0843404>] (v4l2_device_release+0xd0/0x104)
   [<c0843404>] (v4l2_device_release) from [<c0632558>] (device_release+0x28/0x98)
   [<c0632558>] (device_release) from [<c0db1204>] (kobject_put+0xa4/0x208)
   [<c0db1204>] (kct_put) from [<bf00bac4>] (fimc_capture_subdev_unregistered+0x58/0x6c [s5p_fimc])
   [<bf00bac4>] (fimc_capture_subdev_unregistered [s5p_fimc]) from [<c084a1cc>] (v4l2_device_unregister_subdev+0x6c/0xa8)
   [<c084a1cc>] (v4l2_device_unregister_subdev) from [<c084a350>] (v4l2_device_unregister+0x64/0x94)
   [<c084a350>] (v4l2_device_unregister) from [<bf0101ac>] (fimc_md_probe+0x4ec/0xaf8 [s5p_fimc])
   [...]

Signed-off-by: Seung-Woo Kim <sw0312.kim@samsung.com>
Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
Fixes: 9832e155f1ed ("[media] media-device: split media initialization and registration")
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/exynos4-is/media-dev.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index a838189d44902..9aaf3b8060d50 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -1457,12 +1457,12 @@ static int fimc_md_probe(struct platform_device *pdev)
 	ret = v4l2_device_register(dev, &fmd->v4l2_dev);
 	if (ret < 0) {
 		v4l2_err(v4l2_dev, "Failed to register v4l2_device: %d\n", ret);
-		return ret;
+		goto err_md;
 	}
 
 	ret = fimc_md_get_clocks(fmd);
 	if (ret)
-		goto err_md;
+		goto err_v4l2dev;
 
 	ret = fimc_md_get_pinctrl(fmd);
 	if (ret < 0) {
@@ -1519,9 +1519,10 @@ static int fimc_md_probe(struct platform_device *pdev)
 	fimc_md_unregister_entities(fmd);
 err_clk:
 	fimc_md_put_clocks(fmd);
+err_v4l2dev:
+	v4l2_device_unregister(&fmd->v4l2_dev);
 err_md:
 	media_device_cleanup(&fmd->media_dev);
-	v4l2_device_unregister(&fmd->v4l2_dev);
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
