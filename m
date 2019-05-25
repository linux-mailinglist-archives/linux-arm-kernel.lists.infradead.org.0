Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C88BC2A4B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 15:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hT3AasUtRiDxnfpc8RjCimZjq+3uziAtUHe3HVoQPQA=; b=A9+mOezeXhvga+
	gji4PEayKpgZEYioIRmffVYCCBqBWDhjs9eJ5UHV/b7pVE/R4agss06tcoaV7ZlSW/knGXUJgWljE
	H0iNbDQSEStvzQxogMNTk38Ax2hpy/g3EuF44YPRoVdcrevlEnbIxMJJoKD6ubuOp63wxJ2PmdALc
	oHSAsr4iWbec4ScZR/WMwF92Zk7ogUq7Uvrgwcklb+9O4bdWXU/ana6wl0MWLqcwr4ty2DBfduvsx
	G9sMZZpL5tnIJkmU6wDL7fmANC7QuReY2SUE7I1IrQDS1kUgfoGlRW+13mDO0r+3bjC+d96QwgQhc
	xl9wWd8cCKaf75KjurOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUWwD-0001em-6T; Sat, 25 May 2019 13:42:17 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUWvy-0001Td-22
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 13:42:05 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 911D2FF803;
 Sat, 25 May 2019 13:41:59 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 3/5] dt-bindings: vendor: Add a bunch of vendors
Date: Sat, 25 May 2019 15:41:38 +0200
Message-Id: <20190525134140.6220-3-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_064202_772343_54B38E3C 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Add all the missing vendors used in Allwinner DTS.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../devicetree/bindings/vendor-prefixes.yaml  | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 3e8806b8e385..d628a6189fbe 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -175,6 +175,8 @@ patternProperties:
     description: Common Hardware Reference Platform
   "^chunghwa,.*":
     description: Chunghwa Picture Tubes Ltd.
+  "^chuwi,.*":
+    description: Chuwi Innovation Ltd.
   "^ciaa,.*":
     description: Computadora Industrial Abierta Argentina
   "^cirrus,.*":
@@ -185,8 +187,12 @@ patternProperties:
     description: Chips&Media, Inc.
   "^cnxt,.*":
     description: Conexant Systems, Inc.
+  "^colorfly,.*":
+    description: Colorful GRP, Shenzhen Xueyushi Technology Ltd.
   "^compulab,.*":
     description: CompuLab Ltd.
+  "^corpro,.*":
+    description: Chengdu Corpro Technology Co., Ltd.
   "^cortina,.*":
     description: Cortina Systems, Inc.
   "^cosmic,.*":
@@ -199,6 +205,8 @@ patternProperties:
     description: Crystalfontz America, Inc.
   "^csky,.*":
     description: Hangzhou C-SKY Microsystems Co., Ltd
+  "^csq,.*":
+    description: Shenzen Chuangsiqi Technology Co.,Ltd.
   "^cubietech,.*":
     description: Cubietech, Ltd.
   "^cypress,.*":
@@ -219,6 +227,8 @@ patternProperties:
     description: Devantech, Ltd.
   "^dh,.*":
     description: DH electronics GmbH
+  "^difrnce,.*":
+    description: Shenzhen Yagu Electronic Technology Co., Ltd.
   "^digi,.*":
     description: Digi International Inc.
   "^digilent,.*":
@@ -241,6 +251,8 @@ patternProperties:
     description: DPTechnics
   "^dragino,.*":
     description: Dragino Technology Co., Limited
+  "^dserve,.*":
+    description: dServe Technology B.V.
   "^ea,.*":
     description: Embedded Artists AB
   "^ebs-systart,.*":
@@ -263,6 +275,8 @@ patternProperties:
     description: Emlid, Ltd.
   "^emmicro,.*":
     description: EM Microelectronic
+  "^empire-electronix,.*":
+    description: Empire Electronix
   "^emtrion,.*":
     description: emtrion GmbH
   "^endless,.*":
@@ -331,6 +345,8 @@ patternProperties:
     description: GE Fanuc Intelligent Platforms Embedded Systems, Inc.
   "^GEFanuc,.*":
     description: GE Fanuc Intelligent Platforms Embedded Systems, Inc.
+  "^gemei,.*":
+    description: Gemei Digital Technology Co., Ltd.
   "^geniatech,.*":
     description: Geniatech, Inc.
   "^giantec,.*":
@@ -379,10 +395,14 @@ patternProperties:
     description: Jiangsu HopeRun Software Co., Ltd.
   "^hp,.*":
     description: Hewlett Packard
+  "^hsg,.*":
+    description: HannStar Display Co.
   "^holtek,.*":
     description: Holtek Semiconductor, Inc.
   "^hwacom,.*":
     description: HwaCom Systems Inc.
+  "^hyundai,.*":
+    description: Hyundai Technology
   "^i2se,.*":
     description: I2SE GmbH
   "^ibm,.*":
@@ -397,6 +417,10 @@ patternProperties:
     description: ILI Technology Corporation (ILITEK)
   "^img,.*":
     description: Imagination Technologies Ltd.
+  "^incircuit,.*":
+    description: In-Circuit GmbH
+  "^inet-tek,.*":
+    description: Shenzhen iNet Mobile Internet Technology Co., Ltd
   "^infineon,.*":
     description: Infineon Technologies
   "^inforce,.*":
@@ -431,6 +455,8 @@ patternProperties:
     description: Japan Display Inc.
   "^jedec,.*":
     description: JEDEC Solid State Technology Association
+  "^jesurun,.*":
+    description: Shenzhen Jesurun Electronics Business Dept.
   "^jianda,.*":
     description: Jiandangjing Technology Co., Ltd.
   "^karo,.*":
@@ -463,6 +489,8 @@ patternProperties:
     description: LaCie
   "^laird,.*":
     description: Laird PLC
+  "^lamobo,.*":
+    description: Ketai Huajie Technology Co., Ltd.
   "^lantiq,.*":
     description: Lantiq Semiconductor
   "^lattice,.*":
@@ -481,6 +509,8 @@ patternProperties:
     description: Lichee Pi
   "^linaro,.*":
     description: Linaro Limited
+  "^linksprite,.*":
+    description: LinkSprite Technologies, Inc.
   "^linksys,.*":
     description: Belkin International, Inc. (Linksys)
   "^linux,.*":
@@ -497,6 +527,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^macnica,.*":
     description: Macnica Americas
+  "^mapleboard,.*":
+    description: Mapleboard.org
   "^marvell,.*":
     description: Marvell Technology Group Ltd.
   "^maxbotix,.*":
@@ -537,6 +569,8 @@ patternProperties:
     description: Micron Technology Inc.
   "^mikroe,.*":
     description: MikroElektronika d.o.o.
+  "^miniand,.*":
+    description: Miniand Tech
   "^minix,.*":
     description: MINIX Technology Ltd.
   "^miramems,.*":
@@ -667,6 +701,8 @@ patternProperties:
     description: Picochip Ltd
   "^pine64,.*":
     description: Pine64
+  "^pineriver,.*":
+    description: Shenzhen PineRiver Designs Co., Ltd.
   "^pixcir,.*":
     description: PIXCIR MICROELECTRONICS Co., Ltd
   "^plantower,.*":
@@ -679,12 +715,18 @@ patternProperties:
     description: Broadcom Corporation (formerly PLX Technology)
   "^pni,.*":
     description: PNI Sensor Corporation
+  "^polaroid,.*":
+    description: Polaroid Corporation
   "^portwell,.*":
     description: Portwell Inc.
   "^poslab,.*":
     description: Poslab Technology Co., Ltd.
+  "^pov,.*":
+    description: Point of View International B.V.
   "^powervr,.*":
     description: PowerVR (deprecated, use img)
+  "^primux,.*":
+    description: Primux Trading, S.L.
   "^probox2,.*":
     description: PROBOX2 (by W2COMP Co., Ltd.)
   "^pulsedlight,.*":
@@ -697,6 +739,8 @@ patternProperties:
     description: QEMU, a generic and open source machine emulator and virtualizer
   "^qi,.*":
     description: Qi Hardware
+  "^qihua,.*":
+    description: Chengdu Kaixuan Information Technology Co., Ltd.
   "^qiaodian,.*":
     description: QiaoDian XianShi Corporation
   "^qnap,.*":
@@ -719,6 +763,8 @@ patternProperties:
     description: Realtek Semiconductor Corp.
   "^renesas,.*":
     description: Renesas Electronics Corporation
+  "^rervision,.*":
+    description: Shenzhen Rervision Technology Co., Ltd.
   "^richtek,.*":
     description: Richtek Technology Corporation
   "^ricoh,.*":
@@ -789,6 +835,10 @@ patternProperties:
     description: Silicon Mitus, Inc.
   "^simtek,.*":
     description: Cypress Semiconductor Corporation (Simtek Corporation)
+  "^sinlinx,.*":
+    description: Sinlinx Electronics Technology Co., LTD
+  "^sinovoip,.*":
+    description: SinoVoip Co., Ltd
   "^sirf,.*":
     description: SiRF Technology, Inc.
   "^sis,.*":
@@ -909,6 +959,8 @@ patternProperties:
     description: United Radiant Technology Corporation
   "^usi,.*":
     description: Universal Scientific Industrial Co., Ltd.
+  "^utoo,.*":
+    description: Aigo Digital Technology Co., Ltd.
   "^v3,.*":
     description: V3 Semiconductor
   "^vamrs,.*":
@@ -947,10 +999,14 @@ patternProperties:
     description: Winbond Electronics corp.
   "^winstar,.*":
     description: Winstar Display Corp.
+  "^wits,.*":
+    description: Shenzhen Merrii Technology Co., Ltd. (WITS)
   "^wlf,.*":
     description: Wolfson Microelectronics
   "^wm,.*":
     description: Wondermedia Technologies, Inc.
+  "^wobo,.*":
+    description: Wobo
   "^x-powers,.*":
     description: X-Powers
   "^xes,.*":
@@ -961,6 +1017,8 @@ patternProperties:
     description: Xilinx
   "^xunlong,.*":
     description: Shenzhen Xunlong Software CO.,Limited
+  "^yones-toptech,.*":
+    description: Yones Toptech Co., Ltd.
   "^ysoft,.*":
     description: Y Soft Corporation a.s.
   "^zarlink,.*":
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
