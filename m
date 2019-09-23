Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E12C8BB44D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 14:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/EIgkxTCQ2MsDhPIk9lXyH1Dm2O9xUx31hReOnlXx4=; b=PpxDhA3Yr4jZmL82lU9n06Eoib
	fkFDtYGC5i9MiwhAG4tdJuSQNS1Q5u+aQ1ut5rhdfPCV3typIyicqa7F4BYmH78I5biKdVzWk/GcR
	69Sy082RmFyFNzybIyOUqK1AG+WkyNRafOTmVwqJPMnU6cL+SBM2+9j/C2k3g9a+8hFWRG9fozoAM
	RUWoz//o3kneBVRKrAR6fdCg6yGsjCWEKW1bF0TNGy/NM6N5inPm0257S4PQVpOgQ3K0Qm9pYhJkh
	qWml2Nh203V1fV193g9FnonR/tULX7Xtb7+L45QcvEg+5ANjjeNPXltZv+bb+KO0gINN63c+UtErR
	P/766FMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNpC-0008JT-Qe; Mon, 23 Sep 2019 12:52:19 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNp0-0008Im-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 12:52:07 +0000
Received: from hjc?rock-chips.com (unknown [192.168.167.128])
 by regular1.263xmail.com (Postfix) with ESMTP id D5DE9212;
 Mon, 23 Sep 2019 20:52:04 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P15436T140160991741696S1569243121384240_; 
 Mon, 23 Sep 2019 20:52:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d1a443c7a7b4670935fd59fdd2274a54>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: dri-devel@lists.freedesktop.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Sandy Huang <hjc@rock-chips.com>
To: dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
 Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 22/36] drm/atmel-hlcdc: use bpp instead of cpp for
 drm_format_info
Date: Mon, 23 Sep 2019 20:51:45 +0800
Message-Id: <1569243119-183293-2-git-send-email-hjc@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569243119-183293-1-git-send-email-hjc@rock-chips.com>
References: <1569243119-183293-1-git-send-email-hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_055206_899067_AA837584 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: hjc@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cpp[BytePerPlane] can't describe the 10bit data format correctly,
So we use bpp[BitPerPlane] to instead cpp.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
index 89f5a75..ab7d423 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
@@ -644,7 +644,7 @@ static int atmel_hlcdc_plane_atomic_check(struct drm_plane *p,
 		int xdiv = i ? fb->format->hsub : 1;
 		int ydiv = i ? fb->format->vsub : 1;
 
-		state->bpp[i] = fb->format->cpp[i];
+		state->bpp[i] = fb->format->bpp[i] / 8;
 		if (!state->bpp[i])
 			return -EINVAL;
 
-- 
2.7.4




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
