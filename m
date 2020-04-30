Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E7D1C02D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5d929Aqdy1okr6nawva1pbuboNVKUw/adR2oZBFQto=; b=I/fkFpDy6I7wuU
	M1FrdiLKQwWhGrrTWWEkz8J7eXY4zS96LbPz6aintEH3EwliDW4pFWk2jKHyatVxIuQunjPEtvPNj
	mEqH4UOUjjeiAXIUVbcVtlwbi7z135zDV9xC+8H2R7096Oy9WHjnUIrLbLqFDMIPC+I3Sb1E2vVw0
	tKeK2BWJ77m8ds0oOetLMKp3UXX9y2/O0VFnW5+zWjX9aDFYNCwpXoOjchLHjTfygHdGAB8o20fXE
	Cb0FlsVrVzmT8JcjXissGaPTV1l5ZGqNpow0CmMVlb9itvjQn090yxQIauMWUtfTl2xKtuwiA9eTX
	Tym8Rw5ND7waq22nlt6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCHL-0006AD-0D; Thu, 30 Apr 2020 16:43:15 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCH9-00067s-VW; Thu, 30 Apr 2020 16:43:05 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 383E71C0005;
 Thu, 30 Apr 2020 16:43:00 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Date: Thu, 30 Apr 2020 18:42:43 +0200
Message-Id: <20200430164245.1630174-3-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
References: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094304_143929_4F523976 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hansverk@cisco.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PX30 features a RGA block: add the necessary node to support it.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f809dd6d5dc3..3de70aa4f1ce 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1102,6 +1102,17 @@ vopl_mmu: iommu@ff470f00 {
 		status = "disabled";
 	};
 
+	rga: rga@ff480000 {
+		compatible = "rockchip,px30-rga", "rockchip,rk3288-rga";
+		reg = <0x0 0xff480000 0x0 0x10000>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
+		reset-names = "core", "axi", "ahb";
+		power-domains = <&power PX30_PD_VO>;
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
