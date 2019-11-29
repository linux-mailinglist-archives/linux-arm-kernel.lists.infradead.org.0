Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A0010D315
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 10:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MokXux+e30TUhuvUGpyAmILGtCayQHqWAKZp3h4/65w=; b=t7QBi9b7QuSA69WEhyPX8rA5g6
	RFReNDxsDYQM5ehvMtkgPw8XnFoIx+TQqKEW7aqora/OOtKu5Puzd3yr8R5gTYmtYnBTzis1/+Xiu
	C4JOLFGm2/GiHIfDirKfpDlzUPm1uiXPiyhjNmcjY/uF+/jFJ8oiqBNAAomwXt2wZQWUr9wEpNsl/
	2ljWsn0KXdgSe/1dLKbrRbxrXKvMS0u/6pqcB4i4YFNTqYoPvYyv8Fw/udpmS6yK+AzC5pZIlqPpr
	/RyYDNTZCEfRCPP2yE4eeVDCytIndmkYAEPrUxQjJO2bHDK3mPqw5lp/owxrhxnd8HfP6QKUmK+va
	Ilry95Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iacMb-0005s8-5u; Fri, 29 Nov 2019 09:14:57 +0000
Received: from olimex.com ([184.105.72.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iacLy-0005TQ-Ru
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 09:14:20 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 29 Nov 2019 01:14:09 -0800
From: Stefan Mavrodiev <stefan@olimex.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), 
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 3/3] arm64: dts: allwinner: a64: olinuxino: Fix SDIO supply
 regulator
Date: Fri, 29 Nov 2019 11:13:36 +0200
Message-Id: <20191129091336.13104-4-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191129091336.13104-1-stefan@olimex.com>
References: <20191129091336.13104-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_011418_922795_7B28BFB1 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-sunxi@googlegroups.com, Stefan Mavrodiev <stefan@olimex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64-OLinuXino uses DCDC1 (VCC-IO) for MMC1 supply. In the dts
ALDO2 is set, which is VCC-PL. Since DCDC1 is always present, the boards
are working without a problem.

THis pacth sets the correct regulator.

Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
index ad3559c576dd..869bb146a9ff 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
@@ -140,7 +140,7 @@
 &mmc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc1_pins>;
-	vmmc-supply = <&reg_aldo2>;
+	vmmc-supply = <&reg_dcdc1>;
 	vqmmc-supply = <&reg_dldo4>;
 	mmc-pwrseq = <&wifi_pwrseq>;
 	bus-width = <4>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
