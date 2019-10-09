Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCA8D07CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mMyrHlUCX+ZZGfyMAw0V4DZlM9CaSowiVhomuSJwBRg=; b=nT9
	9CY4FLDp9BYlOMS0na7PWRKUdKgyGX7pl6QoX07JmLLzGKin9ozBnZjxiykBoaR3inUlTXXxp32Ur
	QSmuh00qW6FqspzOAa5tWyOzmH1fTXuk62GZT6EmuByvQxcntBmqOV6yt6bLvUJYtc+WC29rd+XKq
	LVy9pFNiJRJvTmyYleAoJSiwVlBMchMIovAqrGMk4Mybk3/24LhTg3SplwiIbqm8u0K1PkUogxzNT
	FlLOcGaqh0FeTe28QizrE3fIjShiTU9S8C+lnI7iSjCQA+utOxWRcNY1a1+DbVEseXaRehiD90ZOJ
	KOfhGSg5u40aCRfPcrEgTkFnVthQ/dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI63i-0008QT-Qz; Wed, 09 Oct 2019 07:06:54 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI63b-0008Q3-Vz
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:06:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 040F92000D3;
 Wed,  9 Oct 2019 09:06:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0E870200391;
 Wed,  9 Oct 2019 09:06:39 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5E978402DA;
 Wed,  9 Oct 2019 15:06:30 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 l.stach@pengutronix.de, ccaione@baylibre.com, daniel.baluta@nxp.com,
 andrew.smirnov@gmail.com, abel.vesa@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mq-evk: VDD_ARM power rail is always ON
Date: Wed,  9 Oct 2019 15:04:19 +0800
Message-Id: <1570604659-28314-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_000648_168506_92F95CD5 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On i.MX8MQ EVK board, VDD_ARM is from a DC-DC converter which
is always ON, the GPIO1_IO13 is ONLY to switch VDD_ARM's voltage
between 0.9V and 1V for CPU DVFS, so VDD_ARM's GPIO regulator
should be always ON to avoid below confusion after kernel boot
up:

imx8mqevk login:
[   31.776619] vdd_arm: disabling

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index 6ede46f..4e0a281 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -48,6 +48,8 @@
 		gpios = <&gpio1 13 GPIO_ACTIVE_HIGH>;
 		states = <1000000 0x0
 			  900000 0x1>;
+		regulator-boot-on;
+		regulator-always-on;
 	};
 
 	wm8524: audio-codec {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
