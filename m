Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60EC1353C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3M62vss/gjvW2D8prABnGSgcEMDq3UVRXQ1oP7vZK8=; b=hOoZ3g/7cvjeXJ
	iDBzzczp3CdijgTjDLvDOsDaemYHnq5N4bBJCyUIBoEDiqW4D03uybp4I5jC3AVgOgfd1BRA0Pdrw
	fk+3ydagNBi9SSafDzsbbBtWjqzhe6Gr6ddgWnQNIhaMexWU6lRdhIAVCseDM66gyYHVVit5c7TtL
	756pDq6vXIyrMctlmeM03c5+X64KnA6ZL/jZZK864LmLGAX62T2+6lGPGxzPONdEAQ7z+MTWiXBge
	K2Ah1ctb22XLoQaXapUGde0d8wXO8+rFFAlNgaOX0tlU0sRkz7FCeWnJ7D0YFsB6XNvttRZM8XZJ6
	EmY+f0ccfrsHecVeV4LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSLo-0001Xt-2m; Thu, 09 Jan 2020 07:35:28 +0000
Received: from mail.manjaro.org ([176.9.38.148] helo=manjaro.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSLM-0000AQ-QP; Thu, 09 Jan 2020 07:35:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by manjaro.org (Postfix) with ESMTP id 90B2136E4E25;
 Thu,  9 Jan 2020 08:34:59 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxXOWBz9kZNY; Thu,  9 Jan 2020 08:34:56 +0100 (CET)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 1/1] drm/rockchip: fix integer type used for storing dp
 data rate
Date: Thu,  9 Jan 2020 08:31:29 +0100
Message-Id: <20200109073129.378507-2-t.schramm@manjaro.org>
In-Reply-To: <20200109073129.378507-1-t.schramm@manjaro.org>
References: <20200109073129.378507-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_233501_024962_DBCC6657 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, Tobias Schramm <t.schramm@manjaro.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commmit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changes
the type of variables used to store the display port data rate and
number of lanes to u8. However u8 is not sufficient to store the link
data rate of the display port.
This commit reverts the type of data rate to unsigned int.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.h b/drivers/gpu/drm/rockchip/cdn-dp-core.h
index 83c4586665b4..81ac9b658a70 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.h
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.h
@@ -95,7 +95,7 @@ struct cdn_dp_device {
 	struct cdn_dp_port *port[MAX_PHY];
 	u8 ports;
 	u8 max_lanes;
-	u8 max_rate;
+	unsigned int max_rate;
 	u8 lanes;
 	int active_port;
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
