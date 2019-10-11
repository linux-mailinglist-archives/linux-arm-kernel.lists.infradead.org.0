Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 685BED3D7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXta6pAn4tV0M94B4Ku1ULb9vfBxryEH/qcZhbOzxL4=; b=N238tsfAbySjVf
	8uq22+4M/Jj9dwqhf5oQXkqrABlJhSnLUOB3bcuCUtMDkUoFWiPrpd4JxR+3tCVhKs0Co2aDZ+yqN
	rpb4+KX3kKoTr9EZnFxZQDJnIFfERAIBmbt1qQjdbZoLZcpNYc/N8ew7XQk7zfoIGsejqqIGLdUbu
	S8DPE8Zx6SbxmB/it+twZXM4UzjzgJ44MWtuLGPkB2n2kx59b9/NrZNVqr6UFO2rAAn9bbO2a0sWy
	BwP3BguvkTry6ILRRcUmnGJb+QI51Xx3GUyMiIKuGuTUMXAJ2JHb9zre5GUZrUpgd1edbJWGzW0cY
	7kSTKN53z6YMoJArJq/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsFo-0001jg-L9; Fri, 11 Oct 2019 10:34:36 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsFA-0001IS-EY
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:33:57 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: PCihShyUn8uVWBomvDgUNav7+OHOSHa/nxBu41vWn6NUxDVv8dzEOQ4Xxln35ijvXHULUT2H7/
 hHE0LCnJ58zi9lTosXYFaUDmB5l10Heay0kJxpyYbElNz4O6L7EHWU2NKFQDhnghShp7OX4BMy
 TnznvxAmO56KpVuV8wGfBxe+hSFHr07bZ2WfTMOq8PrVIkwiw/50if/cNOcN7xhvjPIINCfpR0
 rskOZhGk7wKXmwCrUCsts9Wx1qGeD9Z76SeARSZkXzAZMa5iMyko1hrCMesPXFB61lQ2drE7fm
 77E=
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="51107515"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Oct 2019 03:33:54 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Oct 2019 03:33:52 -0700
Received: from M43218.corp.atmel.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 11 Oct 2019 03:33:50 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-mmc@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: [PATCH v2 3/3] ARM: dts: at91: sama5d2: set the sdmmc gclk frequency
Date: Fri, 11 Oct 2019 12:33:39 +0200
Message-ID: <20191011103340.26749-3-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011103340.26749-1-ludovic.desroches@microchip.com>
References: <20191011103340.26749-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033356_537595_0B509F67 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
 Ludovic Desroches <ludovic.desroches@microchip.com>, robh+dt@kernel.org,
 Eugen.Hristev@microchip.com, adrian.hunter@intel.com,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set the frequency of the generated clock used by sdmmc devices in order
to not rely on the configuration done by previous components.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---

Changes:
-v2: none

 arch/arm/boot/dts/sama5d2.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 565204816e34..7665263af907 100644
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
