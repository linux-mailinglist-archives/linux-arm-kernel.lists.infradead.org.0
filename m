Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4557C304
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b1dmMyer6FNEF0Lzq2IzJLwjhuFi3qy7BQxV2DAvf7Y=; b=LZU
	2vNxB31hgYsbvksP8OTHC4yMocdGvodDBkbL/3ge2S7XF6wchJsMCqVUwQH2FRtg1mFzk1edgjcdl
	GU9efYswtI7fj9K1/D39Z0CvlqB0A6L53Ar2mWWjlM8QKo0URG24JoIm3TN+z4FXnr7I37O5s6iP+
	skXjavYdnbnM2w7fn8rbGGoXN2XyreiZB/mHg2WnUmld3pxWO1E32wdojiYTytBqpwIEnb+OAA7Gu
	okMXABqd8qOtGCpe1t1g5QdEWn2yUpcXXeGbI1iCRaq7Lxat+V8XZaXY98m5rkXVcGC6QbcwXDWR9
	MMFBDV20+WaZYKjnbaD0u+VlFi4x18g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoOy-0006uw-M7; Wed, 31 Jul 2019 13:12:20 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoOr-0006uB-DA
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:12:14 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id jRC42000405gfCL01RC4H6; Wed, 31 Jul 2019 15:12:04 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hsoOh-00014Q-U1; Wed, 31 Jul 2019 15:12:03 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hsoOh-0004Mt-R2; Wed, 31 Jul 2019 15:12:03 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Felix Fietkau <nbd@openwrt.org>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] net: mediatek: Drop unneeded dependency on NET_VENDOR_MEDIATEK
Date: Wed, 31 Jul 2019 15:12:02 +0200
Message-Id: <20190731131202.16749-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_061213_604237_35F6F4B1 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The whole block is protected by "if NET_VENDOR_MEDIATEK", so there is
no need for individual driver config symbols to duplicate this
dependency.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/net/ethernet/mediatek/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/Kconfig b/drivers/net/ethernet/mediatek/Kconfig
index 263cd0909fe0de39..1f7fff81f24dbb96 100644
--- a/drivers/net/ethernet/mediatek/Kconfig
+++ b/drivers/net/ethernet/mediatek/Kconfig
@@ -9,7 +9,6 @@ if NET_VENDOR_MEDIATEK
 
 config NET_MEDIATEK_SOC
 	tristate "MediaTek SoC Gigabit Ethernet support"
-	depends on NET_VENDOR_MEDIATEK
 	select PHYLIB
 	---help---
 	  This driver supports the gigabit ethernet MACs in the
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
