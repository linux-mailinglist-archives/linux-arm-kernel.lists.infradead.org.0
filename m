Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF75713CD31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 20:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jLrVBxFekXARghQgw2RBi2jr6SykHqHkzfM1Y2ziw6A=; b=oXH2fRkv1FY6N6
	EGyvaOUhBZZZAZ+K10CjC0yDfqGx8VNvhgHnlK8zQxU0rbE0KIrIx2JozJFpXOw+MIIGc0vX0m8up
	qOoFAxPHLQ+bQbv/LDepJyAMGE1+YQgQaPERp6GxAjNT4amwjjgvTM/63maNFIc2Ob8hf/S5ccTzn
	YIj3+nFt/rRZQMRJ+M2kiJ9ncr0m6JafpiI6UGWcECCKqcNSBqblKyEEMZnkmgAs1++OFPtvZmsCU
	c0hZ+BB43D54DMXjcPe/FbBnQJ0Sbx68wWm0k+h+0V3RCLEN+q3b5ONcIfzX8eWJV5buFNUH5bUqS
	uMU0h4q4EYAV3mUKzq6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroRf-0001qX-Nc; Wed, 15 Jan 2020 19:35:15 +0000
Received: from mailoutvs19.siol.net ([185.57.226.210] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroRN-0001i7-E1
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 19:35:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0AE41522613;
 Wed, 15 Jan 2020 20:34:49 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id q7oHK5Sc6x-2; Wed, 15 Jan 2020 20:34:48 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id B92D752262F;
 Wed, 15 Jan 2020 20:34:48 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id A6357522613;
 Wed, 15 Jan 2020 20:34:46 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 1/3] arm64: dts: allwinner: h6: tanix-tx6: enable emmc
Date: Wed, 15 Jan 2020 20:34:41 +0100
Message-Id: <20200115193441.172902-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_113457_634684_AEA7BB98 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tanix TX6 has 32 GiB eMMC. Add a node for it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../dts/allwinner/sun50i-h6-tanix-tx6.dts     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
index 83e6cb0e59ce..8cbf4e4a761e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
@@ -31,6 +31,13 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	reg_vcc1v8: vcc1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
 	reg_vcc3v3: vcc3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3";
@@ -78,6 +85,15 @@ &mmc0 {
 	status = "okay";
 };
 
+&mmc2 {
+	vmmc-supply = <&reg_vcc3v3>;
+	vqmmc-supply = <&reg_vcc1v8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	bus-width = <8>;
+	status = "okay";
+};
+
 &ohci0 {
 	status = "okay";
 };
@@ -86,6 +102,10 @@ &ohci3 {
 	status = "okay";
 };
 
+&pio {
+	vcc-pc-supply = <&reg_vcc1v8>;
+};
+
 &r_ir {
 	linux,rc-map-name = "rc-tanix-tx5max";
 	status = "okay";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
