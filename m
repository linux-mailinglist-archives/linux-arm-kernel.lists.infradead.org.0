Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1683CB1533
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tz1QVKPKMCNM5EhWaNSvaaoq76vsIxNiDjPhEeJDNfg=; b=S+5812IZv7ScWd
	4XZ6VKW9kjKv1YXlgQrzQjDAdLtItwM2cmmYNqlCtPj6f2T51qCUc5wgI23FtkMpDfwmN42UHLQ2M
	wWQkeQSh/ldgHMk+YLSRnD5hS3uf0UjTYFglp/A4BbaqCGCIUFDFAZzkHvxReMkbJdXOf4dET0jI4
	tSzZ7WgTm4R+Buvt483MEpFXzuhSSD5XMPqRRftfH9yvi8r6rIU8ydZ50fO26goT5VOU0fdVFfLb6
	OAnUPBNm+YaPed6ZZT0Ck29xXsjN7V9a2I+BRIIhVSooVOzWn2eP23Vh/J+knhpKJhTU26adzETQj
	dzX2tg4fxGmbjWCO4R+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VPq-0000Vc-QP; Thu, 12 Sep 2019 20:10:08 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VPJ-0000Tx-1P
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:09:36 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: k55UhUVvseHoxsxZLGCkDYEmleLTHCcJbs1dE81Px8bX3JjzxF6xYlGZLivaGo2mRDvt7kBbr/
 a3ihEToS4W7XYroGY5TDJFiexNqi71KTVtgF+o7k7gnG1PPmB9Y//OINJ/DpNkbf36euVED8y8
 h0ltWzOyPwVHm3MuVni3DeS1TNIu1GH8xkRLEY2pgmSJoWotekNwerdhKal5UqEn+d9NKiZGH4
 bVuxuMHJjeCUP1TZswcIWYfYRq+/dngYIcQ+GtnWxg9n8lf3gN/z9DtCa6QM4pX0VBMHmiM/GS
 vLI=
X-IronPort-AV: E=Sophos;i="5.64,498,1559545200"; d="scan'208";a="48745929"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Sep 2019 13:09:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Sep 2019 13:09:31 -0700
Received: from sekiro.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 12 Sep 2019 13:09:29 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: [PATCH 3/3] ARM: dts: at91: sama5d2: set the sdmmc gclk frequency
Date: Thu, 12 Sep 2019 22:09:08 +0200
Message-ID: <20190912200908.31318-3-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190912200908.31318-1-ludovic.desroches@microchip.com>
References: <20190912200908.31318-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_130933_143367_C00F70C6 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, adrian.hunter@intel.com,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set the frequency of the generated clock used by sdmmc devices in order
to not rely on the configuration done by previous components.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---
 arch/arm/boot/dts/sama5d2.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 2e2c1a7b1d1d..8d79ff75e3cd 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -300,6 +300,8 @@
 			interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&pmc PMC_TYPE_PERIPHERAL 31>, <&pmc PMC_TYPE_GCK 31>, <&pmc PMC_TYPE_CORE PMC_MAIN>;
 			clock-names = "hclock", "multclk", "baseclk";
+			assigned-clocks = <&pmc PMC_TYPE_GCK 31>;
+			assigned-clock-rates = <480000000>;
 			status = "disabled";
 		};
 
@@ -309,6 +311,8 @@
 			interrupts = <32 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&pmc PMC_TYPE_PERIPHERAL 32>, <&pmc PMC_TYPE_GCK 32>, <&pmc PMC_TYPE_CORE PMC_MAIN>;
 			clock-names = "hclock", "multclk", "baseclk";
+			assigned-clocks = <&pmc PMC_TYPE_GCK 32>;
+			assigned-clock-rates = <480000000>;
 			status = "disabled";
 		};
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
