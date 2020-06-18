Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92931FF412
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSBXLXEBs0Wvh6OWq2tzJylW5euS9ZLXaczrKs1pUhU=; b=rjiaEUOu7lGTZI
	yamkyNu9XgFCR0RjNkEfeVqPya4sTndLPuoK1qbPwDmFP071DCbtU0nOJsq0OdZtFbzvowrEyEbYU
	7L+zfQQ7/qZME1i2z+uFt4ZWQJemcTqqWpGjQuIKiyVcXbMA4dCCu+ExYxEY9dcWr1BpwtRUw6PsZ
	dg9sGH96mBdpyneD0FMaw8myKoq49JTXzWZBE88FdbKWgKnzQBuKWKumim1c7y0kk74GEXacdNIV1
	pAI8S61QbyqQHyofjS9jErs/Kb6F+Z5XRRLDBVJ181Q/9CJ+gqIPtR5ta1swgwpSVbUIfvHMR8sqq
	twBbSbKIyYcZowe1ctsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlv5w-0007Na-TP; Thu, 18 Jun 2020 14:00:44 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlv5X-0005xN-B9
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592488819; x=1624024819;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uFBBeUdsgnPsuFvnRzCF7Y44JOpXgF4o3vVcEbdN1KY=;
 b=eqPUSvNcZI4ijIKII8Y9ULUCDyNmGz4YbCH4TyDhzntcfFKiKUNQtUAr
 7SJmgHEfkBzNqZlJZNe32rnp/9TBpZYHoBPy9KLxYWYtJgljxzX0wkxGP
 /FRJmiZLYXQlwp0BQHE5UuxHy74JnbrVcVB1CI4w9ZarWwPi4+5xzjytA
 TeyrTWPuqEIICNrVf21kozwspSQTIpY+NWEzvZ7K2UtzvhURWK8r6yxhW
 0XnpTfKxA4PmnBHGbhZLD8K5m+iEOmcNatn8NdaJRqXUV4ldy9RYCry/L
 qbvq8A9LwPMaA9jf0qumKjd00JK+aryqRf1dBu/wf9dYUIm0CVnOUTMPD g==;
IronPort-SDR: fHJmfuPB40utm2y2txw+RULjrzSuEFsZDJi3GD5QFTnuqv4sc4BCu1RV9TjtKHaMPQJoPuwTSG
 3baw0cuCx7ZSb+6ivesYUX8IByWE3tPx/2iTMTFa73KbSBAcdFfl86jC6mj29pcaDQGmg3KGEF
 0fId0Ih3SUXpNsYUKWI7PgWlxgAmKHeD09fhnyoYZkvH5Ea3M5sx7o1Snz5zBffcTDZB9V68OT
 CT3qAS1KvlPi7QHAERSNa7F8Hjxk9qAqxp26e5+CfUdFjQnqtC2ysQYs6L2JFgOVpQhfHYZ5er
 9iw=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="78949046"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 07:00:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 07:00:09 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 18 Jun 2020 07:00:13 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v4 2/3] arm64: dts: sparx5: Add hwmon temperature sensor
Date: Thu, 18 Jun 2020 15:59:50 +0200
Message-ID: <20200618135951.25441-3-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618135951.25441-1-lars.povlsen@microchip.com>
References: <20200618135951.25441-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_070019_484997_749FB103 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a hwmon temperature node sensor to the Sparx5 SoC.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index c9dbd1a8b22b6..7e811e24f0e99 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -244,5 +244,12 @@ i2c1: i2c@600103000 {
 			clock-frequency = <100000>;
 			clocks = <&ahb_clk>;
 		};
+
+		tmon0: tmon@610508110 {
+			compatible = "microchip,sparx5-temp";
+			reg = <0x6 0x10508110 0xc>;
+			#thermal-sensor-cells = <0>;
+			clocks = <&ahb_clk>;
+		};
 	};
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
