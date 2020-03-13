Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA97B18443A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EYMohpzSMdxMs5GuQ/g0tKVXtPZagMMzv9mQEsZjK/0=; b=UDDdJSrfY0CgMs
	LMmcLfV9Dcex54xUvQJ6GxpG6x6gQg/mS9DDfwpPVdxzhAAVQgyUB2UpIWRc3M0r30C0BXT2zh6BD
	dYREg7uBzCcH+y9VauHCSBJZPVIvyDJIv6KAEwhnTqV7RJ1PdTlImwiXp/QdM/wvatPIMc5yeMSgJ
	2bQgxZEy8RWREMyPfV8QyvXfqP3/jlsNMysxFtC5KjfdaEs2dxQj7aMrC1vOygYvBkH0IXs9OfG3g
	w3hvv2inj2nUJD97l1aNAKfimjBRLhrIQbrcFR0KT5mLMJOvdeW45W04H8sqINTH8wNFQvR8JAAmY
	1BRY5phG0leIOuh6c8qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCh5T-0003EI-Ny; Fri, 13 Mar 2020 09:58:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCh5L-0003Dk-FW
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:58:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jCh5J-0002sv-Kh; Fri, 13 Mar 2020 10:58:29 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: dts: imx51-zii-rdu1: set name prefix for TPA6130A2
Date: Fri, 13 Mar 2020 10:58:29 +0100
Message-Id: <20200313095829.18753-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_025831_515523_4D4977AD 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabio Estevam <festevam@gmail.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set a sound name prefix for the HPA, as otherwise the sound controls
naming will clash with the controls of the DAC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boot/dts/imx51-zii-rdu1.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx51-zii-rdu1.dts b/arch/arm/boot/dts/imx51-zii-rdu1.dts
index 3596060f52e7..e559ab0c3645 100644
--- a/arch/arm/boot/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/boot/dts/imx51-zii-rdu1.dts
@@ -217,8 +217,8 @@
 		simple-audio-card,widgets =
 			"Headphone", "Headphone Jack";
 		simple-audio-card,routing =
-			"Headphone Jack", "HPLEFT",
-			"Headphone Jack", "HPRIGHT";
+			"Headphone Jack", "TPA6130A2 HPLEFT",
+			"Headphone Jack", "TPA6130A2 HPRIGHT";
 		simple-audio-card,aux-devs = <&hpa1>;
 
 		sound_cpu: simple-audio-card,cpu {
@@ -470,6 +470,7 @@
 		compatible = "ti,tpa6130a2";
 		reg = <0x60>;
 		Vdd-supply = <&reg_3p3v>;
+		sound-name-prefix = "TPA6130A2";
 	};
 
 	ds1341: rtc@68 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
