Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032914D1B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVeEXUxf6CwKgGQGPq+0PoF8XdMJG78qYICaof1GG/s=; b=RKzT0qLAQSLb8u
	YNWyCTas+FZm/paIBHaA8A7ncbScPxh9EBuzI7CaFKpswH8L17YK6rE4pTA019PoXXYK/9y8W4Yva
	ympThklOBNOuXNrlgOUjVqi1NWVZYU8ysMhgA0Ul/RFLrNbLWIi50WradRWJuKF/AzyOP8hn9CY+L
	It4JrioguN9Ntgr+uttyhf1PulRgb7tx1ov2yugKheCgqkHl65BIoFsNLifXhpNPCa9mGxWtQpvvW
	xhDDTZ0bdAf5eo0QLJ3ykoWsmT4yfTO2XuU1LxhTT1yHME3iP+JEhH/7obIF1TTcZbG9b6nxPbwxd
	r3XQ8pVeybjYmNKxOn+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdygc-0002ef-FI; Thu, 20 Jun 2019 15:09:14 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyf8-0001e0-Bu
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:07:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 00920CC561;
 Thu, 20 Jun 2019 17:07:41 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id J0mORD6U6mGi; Thu, 20 Jun 2019 17:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 541B7CC52E;
 Thu, 20 Jun 2019 17:07:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id N8fD3k_QcAls; Thu, 20 Jun 2019 17:07:28 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 8E735CC536;
 Thu, 20 Jun 2019 17:07:27 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 4/5] ARM: dts: mmp2: add camera interfaces
Date: Thu, 20 Jun 2019 17:07:23 +0200
Message-Id: <20190620150724.1406757-5-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150724.1406757-1-lkundrak@v3.sk>
References: <20190620150724.1406757-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080742_580159_562F1FE0 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp2.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/mmp2.dtsi b/arch/arm/boot/dts/mmp2.dtsi
index 21432cb9143f..68b547077323 100644
--- a/arch/arm/boot/dts/mmp2.dtsi
+++ b/arch/arm/boot/dts/mmp2.dtsi
@@ -170,6 +170,28 @@
 				interrupts = <54>;
 				status = "disabled";
 			};
+
+			camera0: camera@d420a000 {
+				compatible = "marvell,mmp2-ccic";
+				reg = <0xd420a000 0x800>;
+				interrupts = <42>;
+				clocks = <&soc_clocks MMP2_CLK_CCIC0>;
+				clock-names = "axi";
+				#clock-cells = <0>;
+				clock-output-names = "mclk";
+				status = "disabled";
+			};
+
+			camera1: camera@d420a800 {
+				compatible = "marvell,mmp2-ccic";
+				reg = <0xd420a800 0x800>;
+				interrupts = <30>;
+				clocks = <&soc_clocks MMP2_CLK_CCIC1>;
+				clock-names = "axi";
+				#clock-cells = <0>;
+				clock-output-names = "mclk";
+				status = "disabled";
+			};
 		};
 
 		apb@d4000000 {	/* APB */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
