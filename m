Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A926D183E32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nzXwAjty14gPsSX7lNomj9KMV0p/lVQeiBYkSVEHCQY=; b=Qodq7eZx3syieXxx58puO31G1B
	vkCXxJgOtNz7q2VJOMV6f5zS+M7jarYmtkUZgf5iBbho66zIIjUEaPz3hcoTaIYWO+uRw5em5FKzn
	FHLzz+tIPZSYyqJqj7NF4601kD1xYgbeHnl1Cs0HBMpI0gwna78s1onk9neVg18dT74sGTSJ6g+cp
	loL7oDxmH/0a5RNk44HzlZjPXkFGBF6BvnbwCvme8EBMYtUfSk9B6tnn3BzIiTTGAKUTf8ChMH8hC
	Iu8SBBj++ByZolt8zTOjGBmDrYWKAOsFy2Fu0qYYhNL2uFQTA1PoTwL7tvBz/eN11FltfRkgELUFw
	cV3Y6peQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYiI-00008I-Bi; Fri, 13 Mar 2020 01:02:10 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYex-0004Cz-U8
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 00:58:45 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 13 Mar 2020 09:58:43 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 873CA603AB;
 Fri, 13 Mar 2020 09:58:43 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 13 Mar 2020 09:58:43 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EB6E41A01BB;
 Fri, 13 Mar 2020 09:58:42 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 10/10] arm64: dts: uniphier: Stabilize Ethernet RGMII mode of
 LD20 global and PXs3 ref board
Date: Fri, 13 Mar 2020 09:58:16 +0900
Message-Id: <1584061096-23686-11-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_175844_139546_467F4B9A 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RGMII PHY needs to change drive-strength properties of the Ethernet
Tx pins to stabilize the PHY.

The devicetree for LD20 global board specifies RMII PHY in the ethernet
node as default, however, there is also another board that has RGMII PHY.
The devicetree for the board doesn't exist, so the users should change
the ethernet properties by outside way.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts | 13 +++++++++++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts    | 16 ++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts b/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
index 2c00008..89b133f 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts
@@ -146,6 +146,19 @@
 	};
 };
 
+&pinctrl_ether_rgmii {
+	tx {
+		pins = "RGMII_TXD0", "RGMII_TXD1", "RGMII_TXD2",
+		       "RGMII_TXD3", "RGMII_TXCTL";
+		drive-strength = <12>;
+	};
+
+	txclk {
+		pins = "RGMII_TXCLK";
+		drive-strength = <9>;
+	};
+};
+
 &usb {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
index fcab6d1..d74a6c6 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
@@ -132,3 +132,19 @@
 		reg = <0>;
 	};
 };
+
+&pinctrl_ether_rgmii {
+	tx {
+		pins = "RGMII0_TXCLK", "RGMII0_TXD0", "RGMII0_TXD1",
+		       "RGMII0_TXD2", "RGMII0_TXD3", "RGMII0_TXCTL";
+		drive-strength = <9>;
+	};
+};
+
+&pinctrl_ether1_rgmii {
+	tx {
+		pins = "RGMII1_TXCLK", "RGMII1_TXD0", "RGMII1_TXD1",
+		       "RGMII1_TXD2", "RGMII1_TXD3", "RGMII1_TXCTL";
+		drive-strength = <9>;
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
