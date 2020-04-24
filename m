Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F68C1B6F17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 09:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1juhK/ZuUIxxmhEGbDi+o8aqSkwxeoON/xm1depg2pI=; b=G7TGlfj8tlPUM5
	zL+NwGgUDDGAVCHBTfSlPUK8Nk4CmKFKMFrxgYY4JfWy7OSBqkCYV2A1XEJg6Mip8K2fmNa64w8Zq
	IS0k7eju7MPFcw1axk0nPtBRG8zgnKuWI62gK9Om/o+X1T0zY4pYK/aUXpuXKqqjXh2VJhsjP5WZy
	vBQZgO9o53c8gmLtZ3PcIy+oWrWi8mg8Hpw/5BryajVP9yzdDNika/rDdOuP2ls/jI2Nz6pzkEuwb
	pooqugSW7cXSOdkTCJoXkWq9AfsoxdXnnOXtGujZVo3vs490blQFfpBxffRn19nVg+HHzyCRx14M5
	OjgJv1UVvsKkmeKzi/Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsu7-0007g5-Fw; Fri, 24 Apr 2020 07:37:43 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRstx-0007c8-Mu; Fri, 24 Apr 2020 07:37:35 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4014B85D237BD9CE40B0;
 Fri, 24 Apr 2020 15:37:11 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Fri, 24 Apr 2020
 15:37:00 +0800
From: Zheng Bin <zhengbin13@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>
Subject: [PATCH] drm/rockchip: Remove unneeded semicolon
Date: Fri, 24 Apr 2020 15:44:10 +0800
Message-ID: <20200424074410.1070-1-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_003734_318912_6DC0EF19 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes coccicheck warning:

drivers/gpu/drm/rockchip/cdn-dp-reg.c:604:2-3: Unneeded semicolon
drivers/gpu/drm/rockchip/cdn-dp-reg.c:622:2-3: Unneeded semicolon
drivers/gpu/drm/rockchip/cdn-dp-reg.c:703:2-3: Unneeded semicolon

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
index 7361c07cb4a7..9d2163ef4d6e 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
@@ -601,7 +601,7 @@ static int cdn_dp_get_msa_misc(struct video_info *video,
 	case YCBCR_4_2_0:
 		val[0] = 5;
 		break;
-	};
+	}

 	switch (video->color_depth) {
 	case 6:
@@ -619,7 +619,7 @@ static int cdn_dp_get_msa_misc(struct video_info *video,
 	case 16:
 		val[1] = 4;
 		break;
-	};
+	}

 	msa_misc = 2 * val[0] + 32 * val[1] +
 		   ((video->color_fmt == Y_ONLY) ? (1 << 14) : 0);
@@ -700,7 +700,7 @@ int cdn_dp_config_video(struct cdn_dp_device *dp)
 	case 16:
 		val = BCS_16;
 		break;
-	};
+	}

 	val += video->color_fmt << 8;
 	ret = cdn_dp_reg_write(dp, DP_FRAMER_PXL_REPR, val);
--
2.26.0.106.g9fadedd


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
