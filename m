Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACD819B848
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7s+ADlAYrmYvh11OJEjhz28Bp5QjL1NmSlxOCVTk3ks=; b=UHLDtTbgRQz9kU
	Mv03IenrlcAmixfxCAWiW6QyzagGxCKhW2/lIFwPjlNHn29zQD+AyFWXvjvuimaWT8FHuYX/hZ9dl
	2P8GbngvARlan9T+k80Akg48O+m0oQA7jydpNabUmsjBIpKwM2qX8LSfAfr/DvqHT6vI5WuDttDQg
	dGJeB7lxy90K786wqvnPA/R3LUHrNoMiJ7Fgr8ctjmtiXho5jl7U+sd/M3Tet+90A4HCw9rZAagr6
	pJUMxDwo3q8zzt7Lqod9RY9TOLr8Ln7QNUi1iRgqPGg1kn+C4e9fuTe1csi4bGskFQEAK02QFxX+s
	B1YSlWE2uoUcaQI3Iypg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJle1-00061l-FM; Wed, 01 Apr 2020 22:15:33 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJldk-0005m4-JD
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:15:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585779316; x=1617315316;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pNTIwQ1CqOZCjXOldRhyWpBfPZeO+eg3UOXWN3Y4ZhM=;
 b=EbMv1WRxRfmuD1fqGa1TN5IhV2YMHuGPshy5kt3104mNf3bnn4642whc
 7wPfXraI8P1A6UuFvcWFR8Dx2HDfkLyen9FcfeUL8iEEoJFH0AkFWmUDT
 cer4CoPjxF6Z+dTXo6YnoZvQs+y+iBPb4lSLz9QWXyBL6WNILePxkEebg
 69YTmPS8X+3i4svCoAbFloa79uczqwcbt/wSixV9Xd7y03JcqcTCnnV1r
 14zHH1X31KcrVp++YQkbucyuvpT/nTuSHsSvtpJJPwEaZ1kgtc3eWppnm
 e/Tj0gHUSJfgBsRuQVLN2dpO1ZZH2+UNzlpN90XWI8a0Q68yzMzlyTA+k A==;
IronPort-SDR: qqE3wNJ1NKBF4wpf0zWePNhEAnobjp7/iTV/I5QY/VUA3NjQLZAoAXsRNEV8MseWD6qlejj0Xi
 K3Dg1lQCWf6OyBJ26oZ9uq7AgzMEnDmJN9UcjN3LLKmmcOVgr3owYq395RoEVvrTKdgv9XeGYA
 ysKExkPDqAsLKitmjRYVuuE3zEFv47TsyAsC5kqRotNHT2nleIhE6L5eppUAPbKD82k/9eOhhq
 W0TyUMTOT2xn0x40LfyWjpqneTgz9cKPjhCwZex3lgCGHrtSPTjLkVTAl53KwpfcqumhQl4SGH
 XkQ=
X-IronPort-AV: E=Sophos;i="5.72,333,1580799600"; d="scan'208";a="70956400"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Apr 2020 15:15:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Apr 2020 15:15:12 -0700
Received: from sekiro.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 1 Apr 2020 15:15:15 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH 1/5] ARM: dts: at91: sama5d2_ptc_ek: fix sdmmc0 node
 description
Date: Thu, 2 Apr 2020 00:15:00 +0200
Message-ID: <20200401221504.41196-1-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_151516_693081_15B727BB 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, Ludovic
 Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Codrin.Ciubotariu@microchip.com,
 Cristian.Birsan@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove non-removable and mmc-ddr-1_8v properties from the sdmmc0
node which come probably from an unchecked copy/paste.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
Fixes:42ed535595ec "ARM: dts: at91: introduce the sama5d2 ptc ek board"
Cc: stable@vger.kernel.org # 4.19 and later
---
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index 1c24ac8019ba7..772809c54c1f3 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -125,8 +125,6 @@ sdmmc0: sdio-host@a0000000 {
 			bus-width = <8>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_sdmmc0_default>;
-			non-removable;
-			mmc-ddr-1_8v;
 			status = "okay";
 		};
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
