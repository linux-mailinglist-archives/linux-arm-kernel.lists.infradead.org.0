Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3B370944
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yy31JKuAe6NbeOeBIrmvRvQHH2Zw39XEfhun/haYtEM=; b=U1+4bIO2pA/Gjc
	oMpdafn85d4OnzUbnwIVRh95BP0K+zVhSSJO0VGPiudkOaDyMlij8Lvu9ga9Xl6P4OkBWCh8GkaGK
	8o1nhrw0gWvQHZ+p7/c1tbD6LDRwNw72gkbXh18ufKiz0+MkneDMwSaG/k/3MxaaLFD2Z5wNZgmU6
	WQT6kPpP50MoMenueyt+LjtGwVVP6txN5Iman9sApP2oD0PvXppWoi+mH+aoxSGatjKKC9PGio9Z0
	r1Uhst4RWKZSbBkHE1paMRlKaeBx+zNhIaX4H5ZL4KLvsReYngN+tQOtLj2xDU2qmhPnXdqs9IO66
	pJLBfM714+BlH1ZE+tNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdde-0002ld-6w; Mon, 22 Jul 2019 19:06:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdd2-0002XI-5h
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:05:45 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fm6004917;
 Mon, 22 Jul 2019 14:05:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563822341;
 bh=LMkrB4ogGV7W0icznHHDdzkNi5IqJ04YQGCvA1dlQSQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=RtqM9w5dgWF8IVsB6wVUJTKPzyyDHynwMVRV7OEpZ8Xxz3liencId8LVRyv/KMMIC
 r9CBfzq7s9gOQ5aUQdE5kXY35yCfJt/1uBA6Dz9VSj0DTOYZxwdsqKThTrgN0GwVhp
 ceW/rLpzkuy1WsNxIZICMAFBSYbPTJKnPM/e+B/k=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MJ5fiv107429
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 14:05:41 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 14:05:41 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 14:05:41 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fYJ079352;
 Mon, 22 Jul 2019 14:05:41 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MJ5fZ02569; 
 Mon, 22 Jul 2019 14:05:41 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add hwspinlock node
Date: Mon, 22 Jul 2019 14:05:38 -0500
Message-ID: <20190722190539.27816-2-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722190539.27816-1-s-anna@ti.com>
References: <20190722190539.27816-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_120544_260073_2A3CC561 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Main NavSS block on AM65x SoCs contains a HwSpinlock IP instance
that is similar to the IP on some OMAP SoCs. Add the DT node for this
on AM65x SoCs. The node is present within the NavSS block, and is
added as a child node under the cbass_main_navss interconnect node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index ca70ff73f171..8413e80f9d3a 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -413,6 +413,12 @@
 			ti,sci-rm-range-vint = <0x0>;
 			ti,sci-rm-range-global-event = <0x1>;
 		};
+
+		hwspinlock: spinlock@30e00000 {
+			compatible = "ti,am654-hwspinlock";
+			reg = <0x00 0x30e00000 0x00 0x1000>;
+			#hwlock-cells = <1>;
+		};
 	};
 
 	main_gpio0:  main_gpio0@600000 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
