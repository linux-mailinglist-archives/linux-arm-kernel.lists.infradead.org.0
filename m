Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514B919B849
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHCBzbFFBf5ilWyuEnLU0mQa3+Ge6zsLmWLHJ4+7Yio=; b=rmZfNoveNz75Os
	9LMlCP/4Lz3/2PDEyoedGY7H2ujLX3p+qw2VI4MKyHWh6QKrNZND4GJR6CFKo6WSzv6wZsuy9mz98
	T0PY/e5PKCD7TfLxBg7wJv4LH0KDFecTYTA+yxcCLbfzlxffMfvYAG2dKj9k3K6ehC/bF3zA/7iSJ
	LG/ac+WLkDm0ugSh7tAYserrnq8pKDt6hAR5KeA9+stNtopjmXz2G9XFMboYQ+Ionlu56Yi6wHx8B
	KOSi18o3sWBmKdD9HQsSC9u+LYyoTC2kQOhcjB9uQwiiB1AuUWgE7HaqDpPghpz+0p74ai6gKEIT3
	aTVuM915OqwHxEsTEV5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJleD-0006F9-6N; Wed, 01 Apr 2020 22:15:45 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJldn-00060d-Jn
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585779319; x=1617315319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K3miLFKrYLPIkEbM2MSg4gmUTaLvb4ricn3OFJzRkdI=;
 b=eMYhm5bBaPe98xixZYjjiKebUkCRa+2Ce8jExtAoue6T6Cb3L0I9tfID
 eLWJPde3zXChHblm7anJS23w8h3zk7y7M6Ouf3qshvJQie/zAVLF5HTz1
 UZu2mXuP8qk4DCK/OzfSj+fi0a5vZSww0qWIKbpNFIGpo42/XDakgEg5N
 UA4CIw6rQnA+AZCj/qMy4saIgXOHD0MZoW493uyqJk9HRAlHI8oZ4DTXq
 ejM+RA7YswZhIJys6rHxyZvv864dO4lwV2VXJE6J1y1r4d0fAWCJeLFl8
 vPLKGi65TOVkkEyy748Ac6XWfPbkX/0iRGncX7TYskW2BKPgPjwNc1rlB A==;
IronPort-SDR: 6zap22IBfi4TcnWYCqrLeBZPMSliWsCclyeMk4EPI0Hnwd2GCsMKryQyH08EXoTeiwIV1UO8fD
 EjFWzIxhjYo3YQRw8cUe7PPTLc8QWGDXT+CCqX/PkmxwU/WYjDKfiM777jq7BKgaG3ggmTsP7M
 kCB2S5vI1oww5F9EisU14REzmtRhkI0N9s6k729OdamqQt2CddMx8C97AaUCgZabTv+0W/d/VP
 NOXpA8vhLIsDbJzt8IKs8nlwnZijNBjOZIPNDE/kFyySYG+GPGymATZ6PgkNUzxhi7Nc281/O8
 r2s=
X-IronPort-AV: E=Sophos;i="5.72,333,1580799600"; d="scan'208";a="72005448"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Apr 2020 15:15:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Apr 2020 15:15:22 -0700
Received: from sekiro.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 1 Apr 2020 15:15:19 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH 2/5] ARM: dts: at91: sama5d2_ptc_ek: fix vbus pin
Date: Thu, 2 Apr 2020 00:15:01 +0200
Message-ID: <20200401221504.41196-2-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200401221504.41196-1-ludovic.desroches@microchip.com>
References: <20200401221504.41196-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_151519_673057_86116A78 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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

The gpio property for the vbus pin doesn't watch the pinctrl and is
not correct.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
Fixes: 42ed535595ec "ARM: dts: at91: introduce the sama5d2 ptc ek board"
Cc: stable@vger.kernel.org # 4.19 and later
---
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index 772809c54c1f3..b803fa1f20391 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -40,7 +40,7 @@ main_xtal {
 
 	ahb {
 		usb0: gadget@300000 {
-			atmel,vbus-gpio = <&pioA PIN_PA27 GPIO_ACTIVE_HIGH>;
+			atmel,vbus-gpio = <&pioA PIN_PB11 GPIO_ACTIVE_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usba_vbus>;
 			status = "okay";
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
