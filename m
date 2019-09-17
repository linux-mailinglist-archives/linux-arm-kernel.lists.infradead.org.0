Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA9CB5090
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7w2t5im6V8tCFfzz94HPCPx+AZs/TqUxUwnGVBL8+tM=; b=kiQK2LbhHKn0zD
	uA/sRzYOOR3Dr+oVdp2PItcF6VWqyk5DZY3VhadlOG3pMSh3DRmIXhUkfk9tFKxKEwkzY+GSmP04T
	LPxjTW4ytn7quPuf5RETAfksoBwBD0CBH3fNkMv8eAGBcrL0yNTe7iBKta1pJAeL9aCi653+DoReq
	Nf8K66oOQacAZdFDjB+tpTq2Lnbb3Wy17mZY9nJejM26cmFpGfG2qArharBqg8dmmzkq8WpmZ2qm/
	1HK1/c2cjeSCxBpFQfFaCP71s9ciupqE+P8yGsUoAgPIcWiC8LjWMCkeENyCbyT3q+TO0xwdRxGcN
	WJ37Gmo3ay/NBVuqhtog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEcK-0006Bb-LW; Tue, 17 Sep 2019 14:38:09 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEbe-0005an-CI
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 14:37:28 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46Xm0f5jQRz1rD9k;
 Tue, 17 Sep 2019 16:37:22 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46Xm0f5D28z1qqkG;
 Tue, 17 Sep 2019 16:37:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id QyKhMABuxtxe; Tue, 17 Sep 2019 16:37:21 +0200 (CEST)
X-Auth-Info: TS+UVXtwyKHVamrZ5z8g1KnJYiecr3TThNCwx5u6/Jk=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 17 Sep 2019 16:37:21 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: imx6q: Add ethernet PHY power GPIO
Date: Tue, 17 Sep 2019 16:37:14 +0200
Message-Id: <20190917143714.12876-2-marex@denx.de>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190917143714.12876-1-marex@denx.de>
References: <20190917143714.12876-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_073726_740520_FD3A82A9 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
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
Cc: Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Ludwig Zenz <lzenz@dh-electronics.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing ethernet PHY power GPIO.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Ludwig Zenz <lzenz@dh-electronics.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/imx6q-dhcom-som.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6q-dhcom-som.dtsi b/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
index 845cfad99bf9..687caedf0784 100644
--- a/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/imx6q-dhcom-som.dtsi
@@ -86,6 +86,7 @@
 	pinctrl-0 = <&pinctrl_enet_100M>;
 	phy-mode = "rmii";
 	phy-handle = <&ethphy0>;
+	power-gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	mdio {
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
