Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D981B93DA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 22:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nJJh0zgAEKD8bdeS+wiSEYOJIJzH9DjL0kQ5hRN+JzE=; b=fsQgb8SW8i36WD
	unSk73r0h/JFIrZW/j1g5qChUzy3HWsFeIlrQsF0sc1fhQI9UbtTB6h9KZEtISoGwd1UPsMscBPV8
	bYdPt0+9cW5N7Jhfpyso+bpaa7yRTf+wBDFIgWVlcWjgxhc5s8U1tNaanDiiYskH7Hx7nwO0mAqwH
	sZoS2lGUQQadvEtmsl76Q8Rl9b42m0QK/Nt5N5mokUEhQ0/a2rEXticLdfyRaITs8HXrJU7uDfbea
	gUZV+KeYyC7UMAoYfae/V87oPdPRL5gq+mFe1iLEAQK5Uu6o16senHN1ydK/NlgCbCK6tFFoeWXph
	MTyBnVWEFapEQnPwZnIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSnYH-00049X-6R; Sun, 26 Apr 2020 20:06:57 +0000
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSnY8-00047t-MF
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 20:06:50 +0000
Received: from localhost.localdomain ([93.23.12.11]) by mwinf5d64 with ME
 id XY6a220010EJ3pp03Y6a9z; Sun, 26 Apr 2020 22:06:40 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 26 Apr 2020 22:06:40 +0200
X-ME-IP: 93.23.12.11
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: kyungmin.park@samsung.com, kamil@wypas.org, a.hajda@samsung.com,
 mchehab@kernel.org, s.nawrocki@samsung.com, sachin.kamat@linaro.org
Subject: [PATCH] media: s5p-g2d: Fix a memory leak in an error handling path
 in 'g2d_probe()'
Date: Sun, 26 Apr 2020 22:06:31 +0200
Message-Id: <20200426200631.42497-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_130649_002476_942AC0FA 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.128 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Memory allocated with 'v4l2_m2m_init()' must be freed by a corresponding
call to 'v4l2_m2m_release()'

Fixes: 5ce60d790a24 ("[media] s5p-g2d: Add DT based discovery support")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/media/platform/s5p-g2d/g2d.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/s5p-g2d/g2d.c b/drivers/media/platform/s5p-g2d/g2d.c
index 6932fd47071b..ded6fa24677c 100644
--- a/drivers/media/platform/s5p-g2d/g2d.c
+++ b/drivers/media/platform/s5p-g2d/g2d.c
@@ -717,12 +717,14 @@ static int g2d_probe(struct platform_device *pdev)
 	of_id = of_match_node(exynos_g2d_match, pdev->dev.of_node);
 	if (!of_id) {
 		ret = -ENODEV;
-		goto unreg_video_dev;
+		goto free_m2m;
 	}
 	dev->variant = (struct g2d_variant *)of_id->data;
 
 	return 0;
 
+free_m2m:
+	v4l2_m2m_release(dev->m2m_dev);
 unreg_video_dev:
 	video_unregister_device(dev->vfd);
 rel_vdev:
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
