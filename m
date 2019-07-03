Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6395EC9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3Avxg3SuGXL0CtoCYiB7hTRmycJCdcMDx1CLyVLrnM=; b=AFkY1jilaIfFa3
	tlu3ezPrUiJlxFqVR+GcUttrBYRTEKvflk1681yt45caJBCaypO+/GsI9pzRBty3Pv+N5yli26kzV
	9WnmR+2z/xxfoEIWys8437dPPpT8q/dRwNIP2mAjMnU3to6P0J3FfbZ20dYVxk0pJTjh+kR8xi3YY
	IkIcKo5ncAeJVjp4J5d8EVE9tgvq3t+VVSGUDo+H8Ve2mIFsrFA5C95BBbXTJrnp22VqcLoB7Hg0v
	LnQnpwI3GB6MBKlEfhw8Nq20fQVhRu2FUzt9G0CzBj3UlvU1UMFgKHKcpnCIyaAfAsLE4bIcznQg5
	xxphkvSA/43vHzol5Hlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikiU-0007QE-51; Wed, 03 Jul 2019 19:14:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikek-0004TF-MF; Wed, 03 Jul 2019 19:11:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 5EFA228ABC7
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v7 14/14] MAINTAINERS: add entry for Rockchip ISP1 driver
Date: Wed,  3 Jul 2019 16:09:10 -0300
Message-Id: <20190703190910.32633-15-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703190910.32633-1-helen.koike@collabora.com>
References: <20190703190910.32633-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_121102_883348_25407359 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: eddie.cai.linux@gmail.com, heiko@sntech.de,
 Linus Walleij <linus.walleij@linaro.org>, laurent.pinchart@ideasonboard.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, kernel@collabora.com,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, zyc@rock-chips.com,
 hans.verkuil@cisco.com, zhengsq@rock-chips.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, jeffy.chen@rock-chips.com,
 Helen Koike <helen.koike@collabora.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 jacob2.chen@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 sakari.ailus@linux.intel.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for the rockchip isp1 driver.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

Changes in v7: None

 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 866969b36a13..47c8f17b0b1f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13518,6 +13518,14 @@ F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 
+ROCKCHIP ISP V1 DRIVER
+M:	Helen Koike <helen.koike@collabora.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	drivers/media/platform/rockchip/isp1/
+F:	Documentation/devicetree/bindings/media/rockchip-isp1.txt
+F:	Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
+
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
 M:	Jacob chen <jacob2.chen@rock-chips.com>
 L:	linux-media@vger.kernel.org
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
