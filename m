Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC2013187
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TVawjeNfCiUZ4zxvvWJCqyCGNRSMY5knBG+5kLUZY8=; b=f5B1IjYRIjsja+
	jlN1J+lL7Zw4hjBkRqpM+AG95Hr7mKQfYyu7XxPSZNOzda+5eohItZX6oLiMnBvnRZTuhiKjJty02
	G5ULiqrZwLQa6chqKo9DkBhtCMePFoZBXQRT3zYsEv+d0ObFKB7B0pUSV9MuftK2GQoe0S42mtu3k
	0c/7StDkyNmvWKxZkj1xoTHofc9fXXtW5mZ1Jq4hQXzRUQhzzDzlZcohzRKyl6pY4uYzPx8vqMo3N
	WUJeOjXwHMf7sHD2FXx660jBo7LZ3H5ZZVJAsctHFVa0gW3qZQCHnqEbwokw4M6Z6bl2xLUBxwS6o
	t7Ez/uTjrD4fG4bk4q5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaVK-0003Pn-48; Fri, 03 May 2019 15:53:42 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaUb-0002bD-JY
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:52:59 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 44wc8z5D3Tz1rXvs;
 Fri,  3 May 2019 17:52:51 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 44wc8z50k1z1qtf0;
 Fri,  3 May 2019 17:52:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id ChO0tTj10WhU; Fri,  3 May 2019 17:52:50 +0200 (CEST)
X-Auth-Info: aOVHWMsNa+hTXljZITlWeawYr7TAj8jLBpnypy1MH3o=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri,  3 May 2019 17:52:50 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/8] ARM: dts: imx53: Select netdev trigger for Yellow LED on
 M53Menlo
Date: Fri,  3 May 2019 17:52:31 +0200
Message-Id: <20190503155235.6414-4-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503155235.6414-1-marex@denx.de>
References: <20190503155235.6414-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_085257_993888_6DBCE4C9 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The yellow LED is in the ethernet jack socket, bind it to netdev
trigger to indicate ethernet activity.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index a4cd2c22fa9e..29247a86e5c4 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -30,7 +30,7 @@
 		eth {
 			label = "EthLedYe";
 			gpios = <&gpio2 11 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "none";
+			linux,default-trigger = "netdev";
 		};
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
