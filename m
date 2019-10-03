Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6849ECA155
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 17:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpmaFg69o8FcSSJ8dK7/QGkg9qksTnbcTLA4RQvsYFk=; b=pzS+Ydd1i83TRV
	6gVn5bxB8AK45LNwwOEMh6uubQtGhs2ER0QgHh0ZC2v5TGgkRE8v9ztvVTUg3M7Xd/yeSA1LDwTR8
	lZM79LOVmas8qWFoz16cxZ17KaspRwnDwD6G9aargYIf2tN68JbpFfsEdbES3oRqC5vFEZf5EZ3kH
	/h4uov6Kwfy4vvUBrR3oh17hJHg5lmXXMNUwTLAG+0pgDcjVd/fg7ZrNjfmEIbPFNDt0Fu362u7xW
	DOZ/wrJuCeDfT/rNNj6uoNCFCvdg531FkwIv7o1XsH4HfASAMvxXlECIPMcCkmJ+8L81LVuG+hEFN
	0BfFyZyId7UOOJQGulVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3Lu-0002EP-NW; Thu, 03 Oct 2019 15:49:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3LY-00025x-3H
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 15:48:53 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 491F920700;
 Thu,  3 Oct 2019 15:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570117731;
 bh=F5+Id2+i4uSkOnDF22aTVmR46OVB1/MDlfPr46K2ROk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eJmp3yq38oxw9CiZZkmwvg/ssf1SpaEMEirw53bQ8mbE3FmHpz6b9JFgOIWtXquUG
 H1HbPagLs3aV5GbnWnj9Xxpl5vBdgUSoqCCQXZjjU4glX1xVWWhw3XE5+6Me8JmLv8
 PmUbPR63eYgFpR+vQyjYAEuu1Rq21fVB5l2wlbjM=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, sakari.ailus@linux.intel.com,
 mchehab@kernel.org
Subject: [PATCH 2/2] ARM: dts: sun7i: Drop the module clock from the device
 tree
Date: Thu,  3 Oct 2019 17:48:42 +0200
Message-Id: <20191003154842.248763-2-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003154842.248763-1-mripard@kernel.org>
References: <20191003154842.248763-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_084852_197343_2BE7B0DB 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

What we thought would be the module clock is actually the clock meant to be
used by the sensors, and play no role in the CSI controller. Now that the
binding has been updated to reflect that, let's update the device tree too.

Fixes: d2b9c6444301 ("ARM: dts: sun7i: Add CSI0 controller")
Reported-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 arch/arm/boot/dts/sun7i-a20.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 874231be04e4..8aebefd6accf 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -380,9 +380,8 @@
 			compatible = "allwinner,sun7i-a20-csi0";
 			reg = <0x01c09000 0x1000>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI0>,
-				 <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
-			clock-names = "bus", "mod", "isp", "ram";
+			clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
+			clock-names = "bus", "isp", "ram";
 			resets = <&ccu RST_CSI0>;
 			status = "disabled";
 		};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
