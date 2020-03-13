Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F33B1850CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rhki5VhJUdXIv5HzDVLn31wInyxQcyIw2VxPqW1FEuI=; b=FZ4WO4Zx+NByqncGQv5Vl1Rg2m
	6vbGkuUv2nji09gTztDhBT7Qb+wal6MAc2EbiZ+XY/jmDDHXw0iiEsuLO83qnt17uuXdBseHGghbq
	eEnJqfDcGkLicfES8lQfoYVAuc4qjW7lMekB5rIj+uqouSQYn0g/mFvMAMMnXn5ZZLgiR+SlcsGP8
	riuuh2V5rLuw0f0YLPEO1Z/GtKl68i6naVdUDHp6lFcc77HoY1DYhHh32Vz4wAwFKZODSC8jpMfl1
	78elpvt/bDPGswTn9eo8mUZ4zyUTWyc/ZrZqZYWRzurj71tp5rPxmkPX3qIh3SA7lb3LaSMgm1jHN
	WCd7aPjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrd1-0007i7-9N; Fri, 13 Mar 2020 21:13:59 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrc5-0006wR-Na
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 21:13:03 +0000
X-IronPort-AV: E=Sophos;i="5.70,550,1574089200"; d="scan'208";a="41620068"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 14 Mar 2020 06:13:01 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 44CD940E09DA;
 Sat, 14 Mar 2020 06:12:57 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Magnus Damm <magnus.damm@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 4/4] ARM: dts: imx6qdl-wandboard: Switch to
 assigned-clock-rates for ov5645 node
Date: Fri, 13 Mar 2020 21:12:34 +0000
Message-Id: <1584133954-6953-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_141301_985134_0B7D39D5 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

clock-frequency property is now marked as deprecated in ov5645 binding,
so switch to assigned-clock-rates for specifying xclk clock frequency.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
index c070893..71f5f75 100644
--- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
@@ -126,7 +126,8 @@
 		reg = <0x3c>;
 		clocks = <&clks IMX6QDL_CLK_CKO2>;
 		clock-names = "xclk";
-		clock-frequency = <24000000>;
+		assigned-clocks = <&clks IMX6QDL_CLK_CKO2>;
+		assigned-clock-rates = <24000000>;
 		vdddo-supply = <&reg_1p8v>;
 		vdda-supply = <&reg_2p8v>;
 		vddd-supply = <&reg_1p5v>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
