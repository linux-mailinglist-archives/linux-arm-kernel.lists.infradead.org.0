Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D78C3584B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cwD/7FszNmBgPYhSdjNWSx+Q9b4uJUI0IpcNSFI66zg=; b=kmW
	uqpqteV8QsTybOyTqk9dlGemtB89UIn7LWwRhrcY+bUZjsiX+tseXvjaxwamh5LT7lR7/NLYyYwg0
	OqDhYouxCA8bb7JupNfFf/UrWci/qMZkAcpzdRe88oDKkfPEY8xnhIL9F8W/s0Y4n2bCn8fMf7IUO
	scWIVZ2A9RI2Qq9dJuHpuklZgQsMxkqYs//8anxq6ZsMLrgBJV9nF8oES/PENuEb1XfyaGkECzW0I
	CVFGRB75UVZOUsNRw/e18dReB66SKlUNu/2R5vMGnxP0gnyCcXqCppQqL4e5SJk1YwzZyyGmSXN9l
	g77n4HuoRVhS7KdMnENBtXdBsWJYn9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQtS-0007u2-NV; Wed, 05 Jun 2019 08:03:34 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQtM-0007tk-5z
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:03:29 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 80DE5200753;
 Wed,  5 Jun 2019 10:03:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 71EB0200746;
 Wed,  5 Jun 2019 10:03:19 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 87F1D402D5;
 Wed,  5 Jun 2019 16:03:14 +0800 (SGT)
From: sandor.yu@nxp.com
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 sandor.yu@nxp.com
Subject: [PATCH] DRM: Rockchip: correct rate in the struct drm_dp_link
 assignment
Date: Wed,  5 Jun 2019 16:04:24 +0800
Message-Id: <20190605080424.28731-1-sandor.yu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_010328_364877_F1EC0AC7 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sandor Yu <Sandor.yu@nxp.com>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sandor Yu <Sandor.yu@nxp.com>

variable of rate in the struct drm_dp_link should assign to
162000/270000/540000/810000.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
index 6c8b14f..0a2aebe 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
@@ -543,7 +543,7 @@ static int cdn_dp_get_training_status(struct cdn_dp_device *dp)
 	if (ret)
 		goto err_get_training_status;
 
-	dp->link.rate = status[0];
+	dp->link.rate = drm_dp_bw_code_to_link_rate(status[0]);
 	dp->link.num_lanes = status[1];
 
 err_get_training_status:
@@ -647,7 +647,7 @@ int cdn_dp_config_video(struct cdn_dp_device *dp)
 	bit_per_pix = (video->color_fmt == YCBCR_4_2_2) ?
 		      (video->color_depth * 2) : (video->color_depth * 3);
 
-	link_rate = drm_dp_bw_code_to_link_rate(dp->link.rate) / 1000;
+	link_rate = dp->link.rate / 1000;
 
 	ret = cdn_dp_reg_write(dp, BND_HSYNC2VSYNC, VIF_BYPASS_INTERLACE);
 	if (ret)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
