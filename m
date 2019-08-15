Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC268E229
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lg7OkbzgbdWtCuPh/TKIfrDpy5dls522zS/B4lfMp50=; b=ftp6SqC/6Kdy9/
	u412AdZ55Sd/e3Q0RGBDGg2QF3Xb++TFaVkv1JIAuo0BFyhn0xOiU0kF9+F7IFb/ULNqia9VZ1V6d
	RgnLx66or+xeup7ZNBXoQ8BrkfwhAM5FfUPKBAcePgSHosKefzq311ifJgD4fbIV5Sn+0gwQXX2oB
	wyvFboDCSO6fQf9lwFBS45j/LKXA/409s10IRSMX7nfpBdCwQO+wUfPLjvT3omuRX7NxPw8gbbHux
	S3Dn5jx9tovI1eW4nRRPX2XNcg8sYJNUlp4lPUP5/uIkV4mNammyHz4UJaGz2fX3BcMVF/ffDL3Q0
	WOTG38JEokWv0LIA/7TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3zH-0006zV-87; Thu, 15 Aug 2019 00:51:31 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x6-0004bT-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:17 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 1D6D03EA1D;
 Thu, 15 Aug 2019 00:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830154;
 bh=vvUbQvnJ/4OGyTU3jR+k5h+lF40i8YqgCaHr7dOl1Qg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GNUjU00qmOaQpH/H6nGA9HmdDwtETr0KGIReNXp+26ch2MMd1z4kyfQvyaMbZt+HT
 xecw9TYCY+UOayRIlV9u0VzL3URggiPjeSxlavZeF0NQM+UJ3yXYsIJO+ZD9DOLJ5d
 AYCIS3i/+uvfkd3WekVOviCLXubzK8/+7Khmrp0Y=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
Date: Wed, 14 Aug 2019 20:48:48 -0400
Message-Id: <20190815004854.19860-6-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174916_152930_EC83124B 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When attempting to configure this driver on a Nexus 5 phone (msm8974),
setting up the dummy i2c bus for TX_P0 would fail due to an -EBUSY
error. The downstream MSM kernel sources [1] shows that the proper value
for TX_P0 is 0x78, not 0x70, so correct the value to allow device
probing to succeed.

[1] https://github.com/AICP/kernel_lge_hammerhead/blob/n7.1/drivers/video/slimport/slimport_tx_reg.h

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 drivers/gpu/drm/bridge/analogix-anx78xx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.h b/drivers/gpu/drm/bridge/analogix-anx78xx.h
index 25e063bcecbc..bc511fc605c9 100644
--- a/drivers/gpu/drm/bridge/analogix-anx78xx.h
+++ b/drivers/gpu/drm/bridge/analogix-anx78xx.h
@@ -6,7 +6,7 @@
 #ifndef __ANX78xx_H
 #define __ANX78xx_H
 
-#define TX_P0				0x70
+#define TX_P0				0x78
 #define TX_P1				0x7a
 #define TX_P2				0x72
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
